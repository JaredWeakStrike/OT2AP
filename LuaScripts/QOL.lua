---@diagnostic disable: undefined-global
require "StaticObjectGetters"

function GoZoom()
    local PlayerCharacter = FindFirstOf("KSPlayerCharacter_C")
    if(PlayerCharacter~=nil)then
        PlayerCharacter:AddMoveSpeed(100000000000)
    end
    local SaveGame = GetSaveGame()
    if(SaveGame~=nil)then
        SaveGame.BattleSpeedStep = 400
    end
end
function GoNormalSpeed()
    local PlayerCharacter = FindFirstOf("KSPlayerCharacter_C")
    if(PlayerCharacter~=nil)then
        PlayerCharacter:AddMoveSpeed(0)
    end
    -- pressing battle speed change in battle fixes the super fast ^tm 
    local SaveGame = GetSaveGame()
    if(SaveGame~=nil)then
        SaveGame.BattleSpeedStep = 2
    end
end
function KillAllEnemy()
    local BattleSequence = FindFirstOf("BattleSequenceDirectorBP_C")
    if(BattleSequence~=nil)then
        BattleSequence:InstantDeath_EnemyAll()
    end
end