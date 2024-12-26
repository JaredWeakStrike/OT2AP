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
//#include <Unreal/FTa>
//#include <StructsAndStuff.hpp>
//#include <BattleManager.hpp>
#include <src/StoryManager.cpp>
#include "include/Majesty_enums.hpp"
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

    auto on_update() -> void override
    {
        // Use the UE4SS object dumper, and find your function there to find the full name.
        // Replace this the string with your function.
        // You may need to use UObjectGlobals::StaticFindObject(nullptr, nullptr, STR("FuncName")) in a loop in the on_unreal_init function to guarantee that your function exists before you hook it.
        static constexpr auto func_name = STR("/Game/Environment/BP/Object/TreasureBoxBP.TreasureBoxBP_C:Open");
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