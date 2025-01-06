#include <BPMacros.hpp>
//#include <include/Majesty_enums.hpp>
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
#include <include/TimeManagement_enums.hpp>
//#include <Function/Function.hpp>
using namespace RC;
using namespace RC::Unreal;



//using namespace Majesty;
//
//static void SetCompletedPrologueReminiscence(EPlayableCharacterID PlayerCharaId, bool bCompleted)
//{
//
//        UE_BEGIN_NATIVE_FUNCTION_BODY("/Script/Majesty.ReminiscenceUtility:SetCompletedPrologueReminiscence")
//        UE_SET_STATIC_SELF("/Script/Majesty.Default__ReminiscenceUtility")
//        UE_COPY_PROPERTY(PlayerCharaId, EPlayableCharacterID)
//        UE_COPY_PROPERTY(bCompleted, bool)
//        UE_CALL_STATIC_FUNCTION()
//}




void GetChestInfo() {
    
    //Output::send<LogLevel::Warning>(STR("we ran2\n"));
    //auto UIPopupbaby = UObjectGlobals::FindFirstOf(STR("UICommonDialogBP_C_2147482495"));
    //FProperty* ObjectData = UIPopupbaby->GetPropertyByNameInChain(STR("CurrentParam"));
    //
    //FStructProperty* StructProperty = static_cast<FStructProperty*>(ObjectData);
    //UScriptStruct* ScriptStruct = StructProperty->GetStruct();
    //FProperty* DetailTextProperty = ScriptStruct->GetPropertyByNameInChain(STR("DetailText"));
    //
    //void* StructDataPointer = StructProperty->ContainerPtrToValuePtr<void>(UIPopupbaby);
    //FString TestHUDString = FString(STR("This is my test Ftext."));
    //FText GetGameText_OutText;
    //GetGameText_OutText.SetString(std::move(TestHUDString));
    //*DetailTextProperty->ContainerPtrToValuePtr<FText>(StructDataPointer) = GetGameText_OutText;
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
        Output::send<LogLevel::Warning>(STR("[{}] Function KismetMathLibrary:Add_IntInt not found.\n"));
        return;
    }
    bool true_var = true;
    bool false_var = false;
    TimeZoneManagerBP->ProcessEvent(Function, &false_var);
    Output::send<LogLevel::Warning>(STR("[{}] \n"), false_var);
    //if (!has_ran) {
    Function2->ProcessEvent(Function2, &true_var);
}
//auto process_function_pre_watch(UnrealScriptFunctionCallableContext& context, void*) {
//
//}
//auto StartChapterOne(int32 charater) -> bool {
//    //get fproperty of the propertystruct
//    //cast that to struct property
//    // get the struct
//    // get void pointer to parent object of the fproperty
//    // get property by name of the uscriptstruct
//    // get void pointer to the struct
//    // get propertywithin the struct
//    // 
//
//    auto SaveGameBP = UObjectGlobals::FindFirstOf(STR("KSSaveGameBP_C"));
//    if (SaveGameBP == NULL) {
//        Output::send<LogLevel::Warning>(STR("SaveGameBP is broke\n"));
//        return false;
//    }
//
//    FProperty* PlayerPartyProperty = SaveGameBP->GetPropertyByNameInChain(STR("PlayerParty"));
//    FPlayerParty& PlayerParty = *PlayerPartyProperty->ContainerPtrToValuePtr<FPlayerParty>(SaveGameBP);
//    if (PlayerParty.MainMemberID[0] == NULL) {
//        Output::send<LogLevel::Warning>(STR("craps\n"));
//        return false;
//    }
//    //FProperty* MainMemberID = SaveGameBP->GetPropertyByNameInChain(STR("MainMemberID"));
//    //
//    //FProperty* MainStoryData = SaveGameBP->GetPropertyByNameInChain(STR("MainStoryData"));
//    //Output::send<LogLevel::Warning>(STR("{}\n"), PlayerParty.MainMemberID[0]);
//    //if (MainMemberID == NULL) {
//    //    //Output::send<LogLevel::Warning>(STR("MainMemberID is broke\n"));
//    //    return false;
//    //}
//    //return;
//    auto SetPlayingReminiscenceId = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.ReminiscenceUtility:SetCompletedPrologueReminiscence"));
//    if (SetPlayingReminiscenceId == NULL) {
//        Output::send<LogLevel::Warning>(STR("functino is broke\n"));
//        return false;
//    }
//    struct {
//        EPlayableCharacterID PlayerCharaId;
//        bool bCompleted;
//    }params;
//    params.PlayerCharaId = (EPlayableCharacterID)charater;
//    params.bCompleted = true;
//    SaveGameBP->ProcessEvent(SetPlayingReminiscenceId, &params);
//    return true;
//}
//auto StartCharacterChapter(int32 character, int32 chapter) -> bool {
//    return true;
//}