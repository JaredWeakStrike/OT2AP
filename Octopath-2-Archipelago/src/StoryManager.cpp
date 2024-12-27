#include <BPMacros.hpp>
#include <include/Majesty_enums.hpp>
#include <Unreal/UObject.hpp>
#include <Unreal/UObjectGlobals.hpp>
#include <Unreal/AActor.hpp>
#include <Unreal/UFunction.hpp>
#include <Unreal/FProperty.hpp>
#include <Unreal/FText.hpp>
#include <Unreal/FString.hpp>
#include <Unreal/Property/FTextProperty.hpp>
//#include <Function/Function.hpp>
using namespace RC;
using namespace RC::Unreal;
using namespace Majesty;

static void SetCompletedPrologueReminiscence(EPlayableCharacterID PlayerCharaId, bool bCompleted)
{

        UE_BEGIN_NATIVE_FUNCTION_BODY("/Script/Majesty.ReminiscenceUtility:SetCompletedPrologueReminiscence")
        UE_SET_STATIC_SELF("/Script/Majesty.Default__ReminiscenceUtility")
        UE_COPY_PROPERTY(PlayerCharaId, EPlayableCharacterID)
        UE_COPY_PROPERTY(bCompleted, bool)
        UE_CALL_STATIC_FUNCTION()
}
static void SetChestText() {
    //Function /Game/Environment/BP/Object/TreasureBoxBP.TreasureBoxBP_C:GetOpenText
    UE_BEGIN_NATIVE_FUNCTION_BODY("/Game/Environment/BP/Object/TreasureBoxBP.TreasureBoxBP_C:Open")
    UE_SET_STATIC_SELF("/Script/Majesty.Default__TreasureBoxBP_C")
    FString TestHUDString = FString(STR("This is my test FString."));
    FText TestHudText;
    TestHudText.SetString(std::move(TestHUDString));
    FTextProperty a;
    //put somme text into a
    UE_COPY_PROPERTY(a,FTextProperty)
    
} 
auto StartChapterOne(int32 charater) -> bool {
    //get fproperty of the propertystruct
    //cast that to struct property
    // get the struct
    // get void pointer to parent object of the fproperty
    // get property by name of the uscriptstruct
    // get void pointer to the struct
    // get propertywithin the struct
    // 

    auto SaveGameBP = UObjectGlobals::FindFirstOf(STR("KSSaveGameBP_C"));
    if (SaveGameBP == NULL) {
        Output::send<LogLevel::Warning>(STR("SaveGameBP is broke\n"));
        return false;
    }

    FProperty* PlayerPartyProperty = SaveGameBP->GetPropertyByNameInChain(STR("PlayerParty"));
    FPlayerParty& PlayerParty = *PlayerPartyProperty->ContainerPtrToValuePtr<FPlayerParty>(SaveGameBP);
    if (PlayerParty.MainMemberID[0] == NULL) {
        Output::send<LogLevel::Warning>(STR("craps\n"));
        return false;
    }
    //FProperty* MainMemberID = SaveGameBP->GetPropertyByNameInChain(STR("MainMemberID"));
    //
    //FProperty* MainStoryData = SaveGameBP->GetPropertyByNameInChain(STR("MainStoryData"));
    //Output::send<LogLevel::Warning>(STR("{}\n"), PlayerParty.MainMemberID[0]);
    //if (MainMemberID == NULL) {
    //    //Output::send<LogLevel::Warning>(STR("MainMemberID is broke\n"));
    //    return false;
    //}
    //return;
    auto SetPlayingReminiscenceId = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.ReminiscenceUtility:SetCompletedPrologueReminiscence"));
    if (SetPlayingReminiscenceId == NULL) {
        Output::send<LogLevel::Warning>(STR("functino is broke\n"));
        return false;
    }
    struct {
        EPlayableCharacterID PlayerCharaId;
        bool bCompleted;
    }params;
    params.PlayerCharaId = (EPlayableCharacterID)charater;
    params.bCompleted = true;
    SaveGameBP->ProcessEvent(SetPlayingReminiscenceId, &params);
    return true;
}
auto StartCharacterChapter(int32 character, int32 chapter) -> bool {
    return true;
}