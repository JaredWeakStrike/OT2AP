#include <BPMacros.hpp>
#include <Unreal/UObject.hpp>
#include <Unreal/UObjectGlobals.hpp>
#include <Unreal/AActor.hpp>
#include <Unreal/UFunction.hpp>
#include <Unreal/FProperty.hpp>
#include <Unreal/FText.hpp>
#include <Unreal/FString.hpp>
#include <Unreal/Property/FTextProperty.hpp>
#include <Unreal/UStruct.hpp>
#include <Unreal/UScriptStruct.hpp>
#include <Unreal/FProperty.hpp>
#include <Unreal/Property/FTextProperty.hpp>
#include <Unreal/Property/FArrayProperty.hpp>
#include <Unreal/Property/FStructProperty.hpp>
#include <include/RecieveProtos.hpp>
#include <iostream>
#include <string>
#include <include/GameData.hpp>

using namespace GameData;
using namespace RC;
using namespace RC::Unreal;


static FText PopupText;

void OpenDefaultChest() {
    UE_BEGIN_NATIVE_FUNCTION_BODY("/Game/Environment/BP/Object/TreasureBoxBP.TreasureBoxBP_C:Open")
    UE_SET_STATIC_SELF("/Game/Environment/BP/Object/TreasureBoxBP.Default__TreasureBoxBP_C")
    //item message from the client would go here
    GivePlayerItem(L"Olive of Life (M)", 1);
    PopupText.SetString(std::move(FString(STR("Olive of Life (M)"))));
    UE_CALL_STATIC_FUNCTION()
}

void GivePlayerItem(wstring Item,int32 Num) {
    //KSSaveDataManagerBP_C 
    //bool AddItemToBackpack(FName ItemLabel, int32 Num);
    FName ItemLabel = FName(GameData::ItemNameMap[Item].c_str());
    //isnt static so we have to do it all without the macros
    UObject* SaveDataManager = UObjectGlobals::FindFirstOf(STR("KSSaveDataManagerBP_C"));
    if (!SaveDataManager) {
        return;
    }
    auto AddItemToBackpack = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.KSSaveDataManager:AddItemToBackpack"));
    struct {
        FName ItemLabel;
        int32 Num;
    }params;
    params.ItemLabel = ItemLabel;
    params.Num = Num;

    SaveDataManager->ProcessEvent(AddItemToBackpack,&params);
}

void SetChestText() {
    //Function /Game/Environment/BP/Object/TreasureBoxBP.TreasureBoxBP_C:GetOpenText
    //auto functionThing = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Game/Environment/BP/Object/TreasureBoxBP.TreasureBoxBP_C:Open"));
    Output::send<LogLevel::Warning>(STR("Hooking UICommonDialogItemBP_C:SetText\n"));
    auto functionThing = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Game/UserInterface/Common/BP/Dialog/UICommonDialogItemBP.UICommonDialogItemBP_C:SetText"));
    // prehook changes the text but posthook doesnt so we change the global text variable in post
    // Function /Game/Environment/BP/Object/TreasureBoxBP.TreasureBoxBP_C:OpenDialog This only runs if not on default
    auto hookedFunction = UObjectGlobals::RegisterHook(static_cast<UFunction*>(functionThing),
        &PreTextHookFunction,
        &PostSetTextHookFunction,
        nullptr);
    Output::send<LogLevel::Warning>(STR("Hooked UICommonDialogItemBP_C:SetText\n"));
}

auto PreTextHookFunction(UnrealScriptFunctionCallableContext& context, void* yas) -> void {

    Output::send<LogLevel::Warning>(STR("Seting Text in SetText Function\n"));
    if (PopupText.ToString() == STR("")) {
        Output::send<LogLevel::Warning>(STR("No string just return this knuckle sandwhich\n"));
        return;
    }
    auto function = context.TheStack.Node();
    auto property = function->GetPropertyByNameInChain(STR("ShowText"));
    
    *property->ContainerPtrToValuePtr<FText>(context.TheStack.Locals()) = PopupText;
    Output::send<LogLevel::Warning>(STR("Set Text in SetText Function\n"));
}

auto PostSetTextHookFunction(UnrealScriptFunctionCallableContext& context, void* yas) -> void {
    //static FText PopupText;
    // set to nothing so the prehook doesnt change the text if its not on the default chest
    PopupText.SetString(std::move(FString(STR(""))));
}


