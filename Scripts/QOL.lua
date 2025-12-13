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
function MaxLevel()
    local SaveGame = GetSaveGame()
    if(SaveGame~=nil)then
        SaveGame.PlayerMember[1].Exp =9999999
        SaveGame.PlayerMember[2].Exp =9999999
        SaveGame.PlayerMember[3].Exp =9999999
        SaveGame.PlayerMember[4].Exp =9999999
        SaveGame.PlayerMember[5].Exp =9999999
        SaveGame.PlayerMember[6].Exp =9999999
        SaveGame.PlayerMember[7].Exp =9999999
        SaveGame.PlayerMember[8].Exp =9999999
    end
end
function UnlockAllWarps()
    local SaveUtil = GetSaveDataUtil()
    local StoryUtil = GetStoryDataUtil()
    local SaveStoryUtil = GetSaveStoryDataUtil()
    for i = 0,255,1 do 
        SaveUtil:SetVisitedMap(true,i)
        --StoryUtil:GetSaveStoryDataUtil(i)
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

function StartStoryFlag(StoryFlag)
    local SaveGame = GetSaveGame()
    local SaveStoryUtil = GetSaveStoryDataUtil()
    if(SaveGame==nil)then
        print("Save game is nil, Start Story Flag")
        return
    end
    if(SaveStoryUtil==nil)then
        print("SaveStoryUtil, Start Story Flag")
        return
    end
    stuffs = {}
    --SaveStoryUtil.SetPlayingMainStoryID(1,102)
    SaveStoryUtil.SetMainStoryState(304,1)
    SaveStoryUtil.SetMainStoryState(301,0)
    SaveStoryUtil.GetAllPlayingMainStoryIDs(stuffs)
    
end