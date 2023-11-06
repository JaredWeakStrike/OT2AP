using namespace Majesty;
using namespace RC;
using namespace RC::Unreal;
auto add_speed() -> void {
    std::vector<UObject*> PlayerCharacters;
    UObjectGlobals::FindAllOf(STR("KSPlayerCharacter_C"), PlayerCharacters);

    for (UObject* character : PlayerCharacters)
    {
        if (character == NULL) {
            Output::send<LogLevel::Warning>(STR("character\n"));
            return;
        }

        auto Function = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.KSCharacterBase:SetLantern"));
        auto AddMoveSpeed = UObjectGlobals::StaticFindObject<UFunction*>(nullptr, nullptr, STR("/Script/Majesty.KSCharacterBase:AddMoveSpeed"));
        if (AddMoveSpeed == NULL) {
            Output::send<LogLevel::Warning>(STR("SetCharacterCollision\n"));
            return;
        }

        //Output::send<LogLevel::Warning>(STR("{}\n"), is_moving);
        FProperty* MoveSpeed = character->GetPropertyByNameInChain(STR("MoveSpeed"));
        TArray<float>& MoveSpeedValue = *MoveSpeed->ContainerPtrToValuePtr<TArray<float>>(character);
        int32 counter = 0;
        float running_speed = 70000;
        for (float num : MoveSpeedValue) {
            if (num != 70000) {
                MoveSpeedValue[counter] = running_speed;
            }
            counter++;
        }
        //struct {
        //    bool object_col;
        //}params;
        //params.object_col = true;
        //character->ProcessEvent(Function, &params);
        //struct {
        //    float speed;
        //}params2;
        //params2.speed = 50000000000000000.00;
        //character->ProcessEvent(AddMoveSpeed, &params2);
        break;
    }
}