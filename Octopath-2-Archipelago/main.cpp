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
//#include <Unreal/TArray.hpp>
#include <Unreal/FProperty.hpp>
#include <Unreal/Property/FTextProperty.hpp>
#include <Unreal/Property/FArrayProperty.hpp>
#include <Unreal/BPMacros.hpp>
#include <Unreal/UObject.hpp>
#include <Unreal/UObjectGlobals.hpp>

#include <include/TimeManagement_enums.hpp>
// function prototypes
#include <include/RecieveProtos.hpp>
#include <include/SendProtos.hpp>
#include <include/StoryProtos.hpp>

//#include <Unreal/FTa>
//#include <StructsAndStuff.hpp>
//#include <BattleManager.hpp>
//#include <src/StoryManager.cpp>
//#include "include/Majesty_enums.hpp"
//#include <GameUtil.hpp>
//#include "Animation/WidgetAnimation.h"
//#include <Unreal/UWidgetAnimation>
//using namespace Majesty;
using namespace RC;
using namespace RC::Unreal;


class AP_Randomizer: public RC::CppUserModBase
{
public:
    AP_Randomizer() : CppUserModBase()
    {
        ModName = STR("Octopath 2 Archipelago");
        ModVersion = STR("1.0");
        ModDescription = STR("Octopath 2 Archipelago client stuff");
        ModAuthors = STR("JaredWeakStrike");
        // Do not change this unless you want to target a UE4SS version
        // other than the one you're currently building with somehow.
        //ModIntendedSDKVersion = STR("2.6");
        
        printf("MyAwesomeMod says hello\n");
    }

    ~AP_Randomizer() override
    {
    }
    auto is_default_chest_open() -> void{

    }
    bool openDefault = false;
    auto is_chest_open() -> void
    {
        //std::vector<UObject*> YasQueen;
        //UObjectGlobals::FindAllOf(STR("TreasureBoxBP_C"), YasQueen);
        //
        //for (UObject* chest : YasQueen)
        //{
        
            auto chest = UObjectGlobals::StaticFindObject<UObject*>(nullptr, nullptr, STR("/Game/Environment/BP/Object/TreasureBoxBP.Default__TreasureBoxBP_C"));
            if (!chest) {
                return;
            }
            bool chest_is_open = chest->GetPropertyByName(STR("IsOpenFlag"));
            if (chest_is_open) {
                const Unreal::TCHAR* PropertyName = STR("ID");
                const Unreal::TCHAR* ChestTextProperty = STR("HaveItemLabel");
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
                //if (object_data_id == NULL) {
                //    Output::send<LogLevel::Warning>(STR("object_data_id is null\n"));
                //    return;
                //}
                if (chest_text == FName(STR("ITM_CSM_0030"))) {
                    Output::send<LogLevel::Warning>(STR("ITM_CSM_0030 thing\n"));
                    
                    *ChestText->ContainerPtrToValuePtr<FName>(StructDataPointer)=FName(STR("ITM_CSM_0010"));
                    SetChestText();
                    openDefault = true;
                    return;
                }
                if (openDefault) {
                    Output::send<LogLevel::Warning>(STR("ITM_CSM_0020 thing\n"));
                    openDefault = false;
                    //*ChestText->ContainerPtrToValuePtr<FName>(StructDataPointer) = FName(STR("ITM_CSM_0010"));
                    OpenDefaultChest();
                    return;
                }
                //*PropertyWithinStruct->ContainerPtrToValuePtr<int>(StructDataPointer) = 2;
                //*ChestText->ContainerPtrToValuePtr<FName>(StructDataPointer) = FName(STR("ITM_CSM_0030"));
                //Output::send<LogLevel::Warning>(STR("[{}]\n"), *PropertyWithinStruct->ContainerPtrToValuePtr<int>(StructDataPointer));
            }
        //}
    }
    auto on_update() -> void override
    {

        //SetChestText();
        // Continue execution in main thread.
        //while (f.wait_for(2s) != std::future_status::ready) {
        //    std::cout << "still waiting..." << std::endl;
        //}
        is_chest_open();

        //std::cout << "Input was: " << f.get() << std::endl;
        // Use the UE4SS object dumper, and find your function there to find the full name.
        // Replace this the string with your function.
        // You may need to use UObjectGlobals::StaticFindObject(nullptr, nullptr, STR("FuncName")) in a loop in the on_unreal_init function to guarantee that your function exists before you hook it.
        //static constexpr auto func_name = STR("/Game/Environment/BP/Object/TreasureBoxBP.TreasureBoxBP_C:Open");
        //Unreal::UObjectGlobals::RegisterHook(func_name, [](Unreal::UnrealScriptFunctionCallableContext& context, void* custom_data) {
        //    // Pre-hook callback
        //    }, [](Unreal::UnrealScriptFunctionCallableContext& context, void* custom_data) {
        //        // Post-hook callback
        //        }, nullptr); // This nullptr is custom data, cast to void*, cast back to your real type in the hook callback.
        
    }
};

#define AP_Randomizer_API __declspec(dllexport)
extern "C"
{
    AP_Randomizer_API RC::CppUserModBase* start_mod()
    {
        return new AP_Randomizer();
    }

    AP_Randomizer_API void uninstall_mod(RC::CppUserModBase* mod)
    {
        delete mod;
    }
}