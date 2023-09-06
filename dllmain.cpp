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
        lock_time();
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
                FProperty* ObjectData = chest->GetPropertyByNameInChain(TEXT("ObjectData"));
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
                if (PropertyWithinStruct == NULL) {
                    Output::send<LogLevel::Warning>(STR("PropertyWithinStruct isnt working\n"));
                    return;
                }

                int object_data_id = *PropertyWithinStruct->ContainerPtrToValuePtr<int>(StructDataPointer);
                if (object_data_id == NULL) {
                    Output::send<LogLevel::Warning>(STR("object_data_id is null\n"));
                    return;
                }
                Output::send<LogLevel::Warning>(STR("[{}]\n"), object_data_id);
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