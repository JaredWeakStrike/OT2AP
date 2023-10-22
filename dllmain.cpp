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
#include <windows.h>
#include <Unreal/Property/FNumericProperty.hpp>
#include <Unreal/UStruct.hpp>
#include <Unreal/UScriptStruct.hpp>
#include <Unreal/FText.hpp>
#include <Unreal/FString.hpp>
#include <Unreal/ITextData.hpp>
#include <Unreal/TArray.hpp>
#include <Unreal/FProperty.hpp>
#include <Unreal/Property/FTextProperty.hpp>
#include <Unreal/Property/FArrayProperty.hpp>
#include <Unreal/BPMacros.hpp>
//#include <Unreal/FTa>
#include <StructsAndStuff.hpp>
#include <BattleManager.hpp>
#include <StoryManager.hpp>
#include <GameUtil.hpp>
//#include "Animation/WidgetAnimation.h"
//#include <Unreal/UWidgetAnimation>
using namespace Majesty;
using namespace RC;
using namespace RC::Unreal;

class OT2AP : public RC::CppUserModBase
{
public:

        
    OT2AP() : CppUserModBase()
    {
        ModName = STR("OT2AP");
        ModVersion = STR("1.0");
        ModDescription = STR("OT2 Archipelago");
        ModAuthors = STR("JaredWeakStrike");
        // Do not change this unless you want to target a UE4SS version
        // other than the one you're currently building with somehow.
        //ModIntendedSDKVersion = STR("2.6");
        
        Output::send<LogLevel::Verbose>(STR("OT2AP says hello\n"));

    }

    ~OT2AP()
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
        //change_text();
        add_speed();
        //spawn_chara();
        //wrong_warp();
        //close_chest();
        casti_chapter2_reset();

    }
    



    
   
    auto casti_chapter2_reset() -> void {
        //auto SaveGameBP = UObjectGlobals::StaticFindObject(nullptr, nullptr, STR("/Engine/Transient.KSSaveGameBP_C_2147479029"));
        auto SaveGameBP = UObjectGlobals::FindFirstOf(STR("KSSaveGameBP_C"));
        if (SaveGameBP == NULL) {
            Output::send<LogLevel::Warning>(STR("SaveGameBP is broke\n"));
            return;
        }
        FProperty* MainStoryData = SaveGameBP->GetPropertyByNameInChain(STR("MainStoryData"));
        TArray<int32>& property_value = *MainStoryData->ContainerPtrToValuePtr<TArray<int32>>(SaveGameBP);
        
        if (MainStoryData) {

            if (MainStoryData == NULL) {
                Output::send<LogLevel::Warning>(STR("MainStoryData is broke\n"));
                return;
            }
            TArray<FMainStorySaveData>& property_value = *MainStoryData->ContainerPtrToValuePtr<TArray<FMainStorySaveData>>(SaveGameBP);
            int32 counter = 0;
            //for (FMainStorySaveData i : property_value) {
            //    auto yourmom = property_value[counter].StoryID;
            //    if (yourmom == 0) {
            //        //Output::send<LogLevel::Warning>(STR("functino is broke\n"));
            //        property_value[counter].StoryID = 403;
            //        property_value[counter].State = 1;
            //    }
            //    else if(yourmom!=403){
            //        property_value[counter].StoryID = 0;
            //        property_value[counter].State = 0;
            //    }
            //    Output::send(STR("Data: {}, Num: {}, Max: {}\n"), i.StoryID, property_value.Num(), property_value.Max());
            //    counter++;
            //}
            auto ReminiscenceUtil = UObjectGlobals::StaticFindObject<UObject*>(nullptr,nullptr,STR("/Script/Majesty.Default__ReminiscenceUtility"));
            auto yourmom = ReminiscenceUtil->GetFunctionByNameInChain(STR("SetCompletedPrologueReminiscence"));
            auto SetCompletedPrologueReminiscence = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.ReminiscenceUtility:SetCompletedPrologueReminiscence"));
            if (SetCompletedPrologueReminiscence == NULL) {
                Output::send<LogLevel::Warning>(STR("functino is broke\n"));
                return;
            }
            struct {
                Majesty::EPlayableCharacterID param1;
                bool param2;
            }params;
            params.param1 = EPlayableCharacterID::eMERCHANT;
            params.param2 = true;

            ReminiscenceUtil->ProcessEvent(yourmom, &params);
            Output::send<LogLevel::Warning>(STR("{}\n"), params.param2);
             //Output::send<LogLevel::Warning>(STR("functino is not broke\n"));
            //for (int32 i = 0; i < 7; i++) {
            //    struct {
            //        Majesty::EPlayableCharacterID param1;
            //        bool param2;
            //    }params;
            //    params.param1 = (Majesty::EPlayableCharacterID)i;
            //    params.param2 = true;
            //    SaveGameBP->ProcessEvent(SetPlayingReminiscenceId, &params);
            //}

        }
        else {
            Output::send<LogLevel::Warning>(STR("MainStoryData is broke\n"));
        }
    }
    
    auto close_chest() -> void {
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
        auto SetMapData = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.LevelSaveDataUtil:SetMapData"));
        auto GetMapData = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.LevelSaveDataUtil:FindMapData"));
        if (GetMapData == NULL) {
            Output::send<LogLevel::Warning>(STR("imapoop\n"));
            return;
        }
        struct {
            int32 levelid;
            int32 objectid;
        }CloseTreasureBoxParams;
        struct {
            int32 levelid;
            FMapData TreasureState;
            bool returnvalue;
        }bitstuff;
        bitstuff.levelid = 83;
        //bitstuff.TreasureState.TreasureStateArray[0] = 1;
        CloseTreasureBoxParams.levelid = 86;
        CloseTreasureBoxParams.objectid = 3;
        save_data_util->ProcessEvent(GetMapData, &bitstuff);
        bool yourmom = true;
        //bitstuff.TreasureState.TreasureStateArray;
        // levelid 100 objectid 982
        for (int i : bitstuff.TreasureState.TreasureStateArray) {
            //Output::send<LogLevel::Warning>(STR("[{}] Crap\n"), ModName);
            Output::send<LogLevel::Warning>(STR("[{}]\n"), bitstuff.TreasureState.TreasureStateArray[i]);
            //Output::send<LogLevel::Warning>(STR("[{}]\n"), i);
        }
        
    }
    
    auto wrong_warp() -> void {
        UObject* event_manager = UObjectGlobals::FindFirstOf(STR("EventManagerBP_C"));
        if (!event_manager) {
            Output::send<LogLevel::Warning>(STR("event_manager\n"));
            return;
        }
        TArray<FString> yourmom;
        UFunction* StartSetFastTravel = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.EventManager:StartSetFastTravel"));
        if (!StartSetFastTravel) {
            Output::send<LogLevel::Warning>(STR("StartSetFastTravel\n"));
            return;
        }
        struct FEventData
        {
            int32 Command;                                                                    // 0x0008 (size: 0x4)
            int32 Target;                                                                     // 0x000C (size: 0x4)
            FVector Pos;                                                                      // 0x0010 (size: 0xC)
            int32 Dir;                                                                        // 0x001C (size: 0x4)
            FString Text;                                                                     // 0x0020 (size: 0x10)
            bool Async;                                                                       // 0x0030 (size: 0x1)
            TArray<FString> OptAry;                                                           // 0x0038 (size: 0x10)
        }params;
        params.Command = 5;
        params.Target = 5;
        params.Pos.SetX(2);
        params.Pos.SetY(2);
        params.Pos.SetZ(2);
        params.Dir = 50;
        params.Text = FString(STR("Yourmom"));
        params.Async = false;
        params.OptAry = yourmom;
        event_manager->ProcessEvent(StartSetFastTravel, &params);

    }
    auto spawn_chara() -> void {
        //"RichEventCommandBase /Script/Majesty.Default__RichEventCommandBase"
        auto event_base = UObjectGlobals::StaticFindObject<UObject*>(nullptr,nullptr,STR("/Script/Majesty.Default__RichEventCommandBase"));
        if (!event_base) {
            Output::send<LogLevel::Warning>(STR("event_base is cooked\n"));
            return;
        }
        bool IsGameOverFinish = event_base->GetPropertyByNameInChain(STR("IsGameOverFinish"));
        if (IsGameOverFinish == NULL) {
            Output::send<LogLevel::Warning>(STR("IsGameOverFinish\n"));
            return;
        }
        //else {
        //    Output::send<LogLevel::Warning>(STR("we in bussin\n"));
        //    return;
        //}
        void* akscharbase = event_base->GetValuePtrByPropertyName(STR("AKSCharacterBase"));
        UFunction* SpawnCharaFunction = event_base->GetFunctionByNameInChain(STR("SpawnCharaFunction"));
        if (SpawnCharaFunction == NULL) {
            Output::send<LogLevel::Warning>(STR("SetOpenEventGameOverUI\n"));
            return;
        }
        else {
            Output::send<LogLevel::Warning>(STR("function is goated\n"));
            struct {
                UClass eventchara;
                FName charalabelname;
                EKSCharacterDir setdir;
                FName addtagname;
            }params;
            //params.eventchara= *akscharbase;
            params.charalabelname=FName(STR("NPC_EPI_FENCER"));
            params.addtagname = FName(STR("NPC_EPI_FENCER"));
            params.setdir = EKSCharacterDir::FRONT;
            event_base->ProcessEvent(SpawnCharaFunction, &params);
            return;
        }
    }
    
    

    auto change_text() -> void {

        UObject* GameTextEN = UObjectGlobals::StaticFindObject<UObject*>(nullptr, nullptr, STR("/Game/GameText/Database/GameTextEN.GameTextEN"));
        if (!GameTextEN) {
            Output::send<LogLevel::Warning>(STR("[{}] GameTextEN isnt working\n"), ModName);
        }
        else {
            FProperty* RowStruct = GameTextEN->GetPropertyByName(STR("RowStruct"));
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
            FProperty* PropertyWithinStruct = ScriptStruct->GetPropertyByName(STR("eTHIEF_TREASUREBOX"));
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
        FString TestHUDString = FString(STR("This is my test FString."));
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
            Majesty::EKSSaveSlotName param1;
            Majesty::FKSSaveSlotData param2;
            bool ReturnValue;
        }params;
        struct {
            int32 levelid;
            int32 objectid;
        }CloseTreasureBoxParams;
        CloseTreasureBoxParams.levelid = 86;
        CloseTreasureBoxParams.objectid = 3;
        params.param1 = Majesty::EKSSaveSlotName::AUTO_SAVE;
        save_system->ProcessEvent(GetSlotData, &params);
        save_data_util->ProcessEvent(CloseTreasureBox, &CloseTreasureBoxParams);
        Output::send<LogLevel::Warning>(STR("[{}] not Crap\n"), params.param2.levelId);
        // levelid 100 objectid 982
    }
    
    auto get_game_text() -> void {
        auto game_text = UObjectGlobals::StaticFindObject(nullptr, nullptr, STR("/Game/UserInterface/TimeZone/BP/BPW_TimeChangeButton.BPW_TimeChangeButton_C:WidgetTree.MainText"));
        auto game_text2 = UObjectGlobals::StaticFindObject(nullptr, nullptr, STR("/Game/UserInterface/SaveLoad/BP/UIAutoSaving.UIAutoSaving_C:WidgetTree.Text_AS"));
        if (!game_text) {
            Output::send<LogLevel::Verbose>(STR("Crap\n"));
        }
        else {
            //Output::send<LogLevel::Verbose>(STR("Not crap\n"));
            FString TestHUDString = FString(STR("This is my test FString."));
            FText ahh;
            ahh.SetString(std::move(TestHUDString));
            FProperty* ObjectData = game_text->GetPropertyByNameInChain(STR("Text"));
            FProperty* ObjectData2 = game_text2->GetPropertyByNameInChain(STR("Text"));
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
            bool chest_is_open = chest->GetPropertyByName(STR("IsOpenFlag"));
            if (chest_is_open) {
                const Unreal::TCHAR* PropertyName = STR("ID");
                const Unreal::TCHAR* ChestTextProperty= STR("HaveItemLabel");
                FProperty* ObjectData = chest->GetPropertyByNameInChain(STR("ObjectData"));
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
                *ChestText->ContainerPtrToValuePtr<FName>(StructDataPointer) = FName(STR("ITM_CSM_0030"));
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
        return new OT2AP();
    }

    MY_AWESOME_MOD_API void uninstall_mod(RC::CppUserModBase* mod)
    {
        delete mod;
    }
}

