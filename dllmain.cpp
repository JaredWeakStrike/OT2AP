#include <stdio.h>
#include <Mod/CppUserModBase.hpp>
#include <DynamicOutput/DynamicOutput.hpp>
#include <Unreal/UObjectGlobals.hpp>
#include <Unreal/UObject.hpp>
#include <Unreal/UFunction.hpp>
#include <Unreal/AActor.hpp>
#include <Unreal/UClass.hpp>
#include <Unreal/World.hpp>
#include <vector>
#include <Unreal/Property/FNumericProperty.hpp>
#include <Unreal/UStruct.hpp>
#include <Unreal/UScriptStruct.hpp>
#include <Unreal/FText.hpp>
#include <Unreal/FString.hpp>
#include <Unreal/ITextData.hpp>
#include <Unreal/TArray.hpp>
#include <Unreal/Property/FTextProperty.hpp>


//#include "Animation/WidgetAnimation.h"
//#include <Unreal/UWidgetAnimation>

using namespace RC;
using namespace RC::Unreal;

class MyAwesomeMod : public RC::CppUserModBase
{
public:
    MyAwesomeMod() : CppUserModBase()
    {
        ModName = STR("MyAwesomeMod");
        ModVersion = STR("1.0");
        ModDescription = STR("This is my awesome mod");
        ModAuthors = STR("UE4SS Team");
        // Do not change this unless you want to target a UE4SS version
        // other than the one you're currently building with somehow.
        //ModIntendedSDKVersion = STR("2.6");
        
        Output::send<LogLevel::Verbose>(STR("MyAwesomeMod says hello\n"));
    }

    ~MyAwesomeMod()
    {

    }

    auto on_update() -> void override
    {
        //Output::send<LogLevel::Verbose>(STR("Object Name: {}\n"));
        //test_math_addition();
        //death_link();
        //ecount_manager();
        //lock_time();
        //is_chest_open();
        //get_game_text();
        //get_level_id();
        //auto_save();
        //spawn_chest();
        change_text();
    }
    auto change_text() -> void {

        UObject* GameTextEN = UObjectGlobals::StaticFindObject<UObject*>(nullptr, nullptr, STR("/Game/GameText/Database/GameTextEN.GameTextEN"));
        if (!GameTextEN) {
            Output::send<LogLevel::Warning>(STR("[{}] GameTextEN isnt working\n"), ModName);
        }
        else {
            FProperty* RowStruct = GameTextEN->GetPropertyByName(TEXT("RowStruct"));
            if (RowStruct == NULL) {
              Output::send<LogLevel::Warning>(STR("RowStruct inst working\n"));
             return;
            }
            FStructProperty* StructProperty = static_cast<FStructProperty*>(RowStruct);
            if (StructProperty == NULL) {
                Output::send<LogLevel::Warning>(STR("StructProperty isnt working \n"));
                return;
            }
            UScriptStruct* ScriptStruct = StructProperty->GetStruct();
            if (ScriptStruct == NULL) {
                Output::send<LogLevel::Warning>(STR("ScriptStruct isnt working\n"));
                return;
            }
            FProperty* PropertyWithinStruct = ScriptStruct->GetPropertyByName(TEXT("eTHIEF_TREASUREBOX"));
            if (PropertyWithinStruct == NULL) {
                Output::send<LogLevel::Warning>(STR("PropertyWithinStruct isnt working\n"));
                return;
            }
        }
    }
    auto spawn_chest() -> void {
        UClass* yourmom =UObjectGlobals::StaticFindObject<UClass*>(nullptr,nullptr,STR("/Game/Environment/BP/Object/KSObjectBP.KSObjectBP_C"));
        UObject* yourdad = UObjectGlobals::StaticFindObject<UClass*>(nullptr, nullptr, STR("/Game/Environment/BP/Object/KSObjectBP.KSObjectBP_C"));
        auto chest_objectparam = FStaticConstructObjectParameters(yourmom,yourdad);
        auto chest_hopefully = UObjectGlobals::StaticConstructObject(chest_objectparam);
        //UObjectGlobals::Co
        FString TestHUDString = FString(TEXT("This is my test FString."));
        FText ahh;
        ahh.SetString(std::move(TestHUDString));

    }
    auto auto_save() -> void {
        auto auto_saving = UObjectGlobals::FindFirstOf(STR("UIAutoSaving_C"));
        if (!auto_saving) {
            Output::send<LogLevel::Warning>(STR("[{}] Crap\n"), ModName);
        }
        auto OpenUI = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.KSAutoSavingWidget:OpenUI"));
        struct {
            bool ReturnValue;
        }params;
        auto_saving->ProcessEvent(OpenUI,&params);
        

    }
    auto get_level_id() -> void{
        auto save_system = UObjectGlobals::FindFirstOf(STR("KSSaveSystem"));
        //auto save_data_util = UObjectGlobals::FindFirstOf(STR("DebugSaveDataUti"));
        auto save_data_util = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.Default__LevelSaveDataUtil"));
        if (!save_system) {
            Output::send<LogLevel::Warning>(STR("[{}] Crap\n"), ModName);
            return;
        }
        if (!save_data_util) {
            Output::send<LogLevel::Warning>(STR("[{}] save data crap\n"), ModName);
            return;
        }
        auto GetSlotData = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.KSSaveSystem:GetSlotdata"));
        auto CloseTreasureBox = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.LevelSaveDataUtil:DEBUG_CloseTreasureBox"));
        auto OpenTreasureBox = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.LevelSaveDataUtil:OpenTreasureBox"));

        struct {
            EKSSaveSlotName param1;
            FKSSaveSlotData param2;
            bool ReturnValue;
        }params;
        struct {
            int32 levelid;
            int32 objectid;
        }CloseTreasureBoxParams;
        CloseTreasureBoxParams.levelid = 86;
        CloseTreasureBoxParams.objectid = 3;
        params.param1 = EKSSaveSlotName::AUTO_SAVE;
        save_system->ProcessEvent(GetSlotData, &params);
        save_data_util->ProcessEvent(CloseTreasureBox, &CloseTreasureBoxParams);
        Output::send<LogLevel::Warning>(STR("[{}] not Crap\n"), params.param2.levelId);
        // levelid 100 objectid 982
    }
    struct FKSSaveSlotData
    {
        int32 PlayTime;                                                                   // 0x0000 (size: 0x4)
        int32 SaveDate_Year;                                                              // 0x0004 (size: 0x4)
        int32 SaveDate_Month;                                                             // 0x0008 (size: 0x4)
        int32 SaveDate_Day;                                                               // 0x000C (size: 0x4)
        int32 SaveDate_Hour;                                                              // 0x0010 (size: 0x4)
        int32 SaveDate_Minute;                                                            // 0x0014 (size: 0x4)
        int32 SaveDate_Second;                                                            // 0x0018 (size: 0x4)
        int32 levelId;                                                                    // 0x001C (size: 0x4)
        int32 LevelAreaID;                                                                // 0x0020 (size: 0x4)
        int32 ClearFlag;                                                                  // 0x0024 (size: 0x4)
        int32 LeaderCharaLevel;                                                           // 0x0028 (size: 0x4)
        TArray<int32> MainMemberCharacterID;                                              // 0x0030 (size: 0x10)
        TArray<int32> MainMemberJobID;                                                    // 0x0040 (size: 0x10)
        TArray<uint8> CharaForm;                                                          // 0x0050 (size: 0x10)
        bool IsEnabled;                                                                   // 0x0060 (size: 0x1)
        bool IsAutoSaveLine;                                                              // 0x0061 (size: 0x1)
        bool IsForcusAnimImmideate;                                                       // 0x0062 (size: 0x1)
        bool IsInReminiscence;                                                            // 0x0063 (size: 0x1)
        int32 ReminiscenceStoryIndex;                                                     // 0x0064 (size: 0x4)
    };
    enum class EKSSaveSlotName {
        AUTO_SAVE = 0,
        SLOT_1 = 1,
        SLOT_2 = 2,
        SLOT_3 = 3,
        SLOT_4 = 4,
        SLOT_5 = 5,
        SLOT_6 = 6,
        SLOT_7 = 7,
        SLOT_8 = 8,
        SLOT_9 = 9,
        EKSSaveSlotName_MAX = 10,
    };
    auto get_game_text() -> void {
        auto game_text = UObjectGlobals::StaticFindObject(nullptr, nullptr, STR("/Game/UserInterface/TimeZone/BP/BPW_TimeChangeButton.BPW_TimeChangeButton_C:WidgetTree.MainText"));
        auto game_text2 = UObjectGlobals::StaticFindObject(nullptr, nullptr, STR("/Game/UserInterface/SaveLoad/BP/UIAutoSaving.UIAutoSaving_C:WidgetTree.Text_AS"));
        if (!game_text) {
            Output::send<LogLevel::Verbose>(STR("Crap\n"));
        }
        else {
            //Output::send<LogLevel::Verbose>(STR("Not crap\n"));
            FString TestHUDString = FString(TEXT("This is my test FString."));
            FText ahh;
            ahh.SetString(std::move(TestHUDString));
            FProperty* ObjectData = game_text->GetPropertyByNameInChain(TEXT("Text"));
            FProperty* ObjectData2 = game_text2->GetPropertyByNameInChain(TEXT("Text"));
            void* text_hopefully = ObjectData->ContainerPtrToValuePtr<void>(game_text);
            void* text_hopefully2 = ObjectData2->ContainerPtrToValuePtr<void>(game_text2);
            FText yourdad = *ObjectData->ContainerPtrToValuePtr<FText>(text_hopefully);
            FText yourdaddy = *ObjectData2->ContainerPtrToValuePtr<FText>(text_hopefully2);
            *ObjectData->ContainerPtrToValuePtr<FText>(text_hopefully)=yourdaddy;
            //Output::send<LogLevel::Verbose>(STR("extra extra crap crap\n"));
            //const TCHAR* ChestTextProperty = STR("HaveItemLabel");
            //Output::send<LogLevel::Verbose>(STR("extra extra crap crap\n"));
            //
            ////FString yourmom = ChestTextProperty;
            //const wchar_t* yourmom = TEXT("yourmom");
            //
            
            //if (yourdad==NULL) {
            //    Output::send<LogLevel::Verbose>(STR("extra extra crap\n"));
            //    return;
            //}
            //else {
            //    Output::send<LogLevel::Verbose>(STR("extra crap\n"));
            //}
            //const TCHAR* PropertyName = STR("eINFO_AP");
            //if (ObjectData == NULL) {
            //    Output::send<LogLevel::Verbose>(STR("extra crap\n"));
            //    return;
            //}
            //else {
            //    return;
            //    //FString yas=ObjectData->
            //    //Output::send<LogLevel::Warning>(STR("I Hate this item{[]}\n"), yas);
            //    //return;
            //    FStructProperty* StructProperty = static_cast<FStructProperty*>(ObjectData);
            //    //if(StructProperty)
            //    UScriptStruct* ScriptStruct = StructProperty->GetStruct();
            //    void* StructDataPointer = StructProperty->ContainerPtrToValuePtr<void>(game_text);
            //    FProperty* PropertyWithinStruct = ScriptStruct->GetPropertyByNameInChain(PropertyName);
            //    //FProperty::
            //    //UObject yourmom = *StructDataPointer;
            //    
            //    //PropertyWithinStruct->
            //    if (ObjectData == NULL) {
            //        Output::send<LogLevel::Warning>(STR("ima screem2\n"));
            //        return;
            //    }
            //    if (StructProperty == NULL) {
            //        Output::send<LogLevel::Warning>(STR("StructProperty isnt working \n"));
            //        return;
            //    }
            //    if (ScriptStruct == NULL) {
            //        Output::send<LogLevel::Warning>(STR("ScriptStruct isnt working\n"));
            //        return;
            //    }
            //    if (PropertyWithinStruct == NULL) {
            //        Output::send<LogLevel::Warning>(STR("I Hate this item\n"));
            //        return;
            //    }
            //   // auto yourmom = PropertyWithinStruct->GetCPPType();
            //    //// FName item_name = *PropertyWithinStruct->ContainerPtrToValuePtr<FName>(StructDataPointer);
            //    //if (item_name == NULL) {
            //    //    Output::send<LogLevel::Verbose>(STR("crap2\n"));
            //    //}
            //    //item_name.ToString();
            //   // auto yourdad = yourmom.GetCharArray();
            //    //const TCHAR* CharArray = yourmom;
            //    //const wchar_t* WideCharArray = static_cast<const wchar_t*>(CharArray);
            //
            //    
            //   Output::send<LogLevel::Warning>(STR("Sea of stars sucks\n"));
            //}
        }
    }
    auto on_unreal_init() -> void override
    {
        // You are allowed to use the 'Unreal' namespace in this function and anywhere else after this function has fired.
        auto Object = UObjectGlobals::StaticFindObject(nullptr, nullptr, STR("/Script/CoreUObject.Object"));
        Output::send<LogLevel::Verbose>(STR("Object Name: {}\n"), Object->GetFullName());
    }
    auto lock_time() -> void
    {
        UObject* TimeZoneManagerBP = UObjectGlobals::FindFirstOf(STR("TimeZoneManagerBP_C"));
        if (TimeZoneManagerBP == NULL) {
            Output::send<LogLevel::Verbose>(STR("TimeZoneManager is not found\n"));
            return;
        }
        //else {
        //    Output::send<LogLevel::Verbose>(STR("TimeZoneManager is found\n"));
        //}
        auto Function = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.TimeZoneManager:SetChangeTimeEnable"));
        auto Function2 = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.TimeZoneManager:ChangeNextTimeZone"));
        auto Function3 = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.TimeZoneManager:Refresh"));
        if (!Function)
        {
            Output::send<LogLevel::Warning>(STR("[{}] Function KismetMathLibrary:Add_IntInt not found.\n"), ModName);
            return;
        }
        bool true_var = true;
        bool false_var = false;
        TimeZoneManagerBP->ProcessEvent(Function, &false_var);
        Output::send<LogLevel::Warning>(STR("[{}] \n"), false_var);
        //if (!has_ran) {
        Function2->ProcessEvent(Function2, &true_var);
    }
    auto add_money_on_update() -> void
    {
        auto KismetMathLibrary = UObjectGlobals::FindFirstOf(STR("KSSaveGameBP_C"));
        if (!KismetMathLibrary)
        {
            Output::send<LogLevel::Warning>(STR("[{}] KismetMathLibrary not found.\n"), ModName);
            return;
        }

        auto Function = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Game/System/BP/SaveLoad/KSSaveGameBP.KSSaveGameBP_C:AddPlayerMoney"));
        if (!Function)
        {
            Output::send<LogLevel::Warning>(STR("[{}] Function KismetMathLibrary:Add_IntInt not found.\n"), ModName);
            return;
        }
        
        //struct Add_IntInt_Params {
        //    int A;
        //    int B;
        //    int ReturnValue; // <- will be filled after ProcessEvent is called
        //};
        //
        //Add_IntInt_Params Params{};
        //Params.A = A;
        //Params.B = B;
        static int j = 5000;
        KismetMathLibrary->ProcessEvent(Function, &j);
        return;
        // Params.ReturnValue should be equal to A + B now
        //return Params.ReturnValue;
    }
    auto ecount_manager() -> void 
    {
        UObject* EcountManager = UObjectGlobals::FindFirstOf(STR("EncountManagerBP_C"));
        if (EcountManager==NULL) {
            Output::send<LogLevel::Warning>(STR("[{}] EncountManagerBP_C not found.\n"));
        }
        else {
            auto Function = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.EventManager:UpdateResetBattleWipeMPC_PlayingEvent"));
            if (!Function)
            {
                Output::send<LogLevel::Warning>(STR("[{}] Function EncountManagerBP_C:UpdateResetBattleWipeMPC_PlayingEvent not found.\n"), ModName);
                return;
            }
            Output::send<LogLevel::Warning>(STR("[{}] EncountManagerBP_C was found.\n"));
            bool yas = true;
            EcountManager->ProcessEvent(Function, &yas);
        }
    }
    auto battle_manager() -> void
    {
        UObject* BattleWipeBase = UObjectGlobals::FindFirstOf(STR("BattleWipe_C"));
        if (BattleWipeBase == NULL) {
            Output::send<LogLevel::Warning>(STR("[{}] BattleWipe_C not found.\n"), ModName);
            return;
        }
        else
        {
            Output::send<LogLevel::Warning>(STR("[{}] BattleWipe_C was found found.\n"), ModName);

            auto Function = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.BattleWipeBase:WipeOutAtBattleStart"));
            if (!Function)
            {
                Output::send<LogLevel::Warning>(STR("[{}] Function EncountManagerBP_C:UpdateResetBattleWipeMPC_PlayingEvent not found.\n"), ModName);
                return;
            }
            //Output::send<LogLevel::Warning>(STR("[{}] EncountManagerBP_C was found.\n"));
            bool yas = true;
            BattleWipeBase->ProcessEvent(Function, nullptr);
            return;
        }
    }
    auto death_link() -> void
    {
        //SetBattleWipeWhiteOutFlag
        std::vector<UObject*> BattleManagers;
        UObject* BattleManager = UObjectGlobals::FindFirstOf(STR("BattleManagerBP_C"));
        if (BattleManager == NULL)
        {
            Output::send<LogLevel::Warning>(STR("[{}] BattleManager_BP_C not found.\n"), ModName);
            return;
        }
        else {
            Output::send<LogLevel::Warning>(STR("[{}] BattleManager_BP_C was found.\n"), ModName);
        }

        auto Function = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.BattleSequenceDirector:SetBattleWipeWhiteOutFlag"));
        if (!Function)
        {
            Output::send<LogLevel::Warning>(STR("[{}] Function KismetMathLibrary:Add_IntInt not found.\n"), ModName);
            return;
        }
        static bool g = true;
        BattleManager->ProcessEvent(Function, &g);
    }
    auto is_chest_open() -> void
    {   
        std::vector<UObject*> YasQueen;
        UObjectGlobals::FindAllOf(STR("TreasureBoxBP_C"), YasQueen);

        for (UObject* chest: YasQueen)
        {
            bool chest_is_open = chest->GetPropertyByName(TEXT("IsOpenFlag"));
            if (chest_is_open) {
                const TCHAR* PropertyName = STR("ID");
                const TCHAR* ChestTextProperty= STR("HaveItemLabel");
                FProperty* ObjectData = chest->GetPropertyByNameInChain(TEXT("ObjectData"));
                //FProperty* ChestText = chest->
                if (ObjectData == NULL) {
                    Output::send<LogLevel::Warning>(STR("ima screem2\n"));
                    return;
                }
                FStructProperty* StructProperty = static_cast<FStructProperty*>(ObjectData);
                if (StructProperty == NULL) {
                    Output::send<LogLevel::Warning>(STR("StructProperty isnt working \n"));
                    return;
                }
                UScriptStruct* ScriptStruct = StructProperty->GetStruct();
                if (ScriptStruct == NULL) {
                    Output::send<LogLevel::Warning>(STR("ScriptStruct isnt working\n"));
                    return;
                }

                void* StructDataPointer = StructProperty->ContainerPtrToValuePtr<void>(chest);

                FProperty* PropertyWithinStruct = ScriptStruct->GetPropertyByNameInChain(PropertyName);
                FProperty* ChestText = ScriptStruct->GetPropertyByNameInChain(ChestTextProperty);
                if (PropertyWithinStruct == NULL) {
                    Output::send<LogLevel::Warning>(STR("PropertyWithinStruct isnt working\n"));
                    return;
                }

                int object_data_id = *PropertyWithinStruct->ContainerPtrToValuePtr<int>(StructDataPointer);
                FName chest_text = *ChestText->ContainerPtrToValuePtr<FName>(StructDataPointer);
                if (object_data_id == NULL) {
                    Output::send<LogLevel::Warning>(STR("object_data_id is null\n"));
                    return;
                }
                *PropertyWithinStruct->ContainerPtrToValuePtr<int>(StructDataPointer) = 2;
                *ChestText->ContainerPtrToValuePtr<FName>(StructDataPointer) = FName(TEXT("ITM_CSM_0030"));
                Output::send<LogLevel::Warning>(STR("[{}]\n"), *PropertyWithinStruct->ContainerPtrToValuePtr<int>(StructDataPointer));
            }
        }
    }
};

#define MY_AWESOME_MOD_API __declspec(dllexport)
extern "C"
{
    MY_AWESOME_MOD_API RC::CppUserModBase* start_mod()
    {
        return new MyAwesomeMod();
    }

    MY_AWESOME_MOD_API void uninstall_mod(RC::CppUserModBase* mod)
    {
        delete mod;
    }
}