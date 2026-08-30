require "ItemManager"
require "LocationManager"
require "StaticObjectGetters"
require "DatabaseInfo"
require "QOL"
require "archipelago"
local UEHelpers = require("UEHelpers")
local DEBUG_KEYBIND = false

if DEBUG_KEYBIND then 
    RegisterKeyBind(Key.V,function()
        GoNormalSpeed()
    end)
    RegisterKeyBind(Key.B,function()
       --OnItemRecieve("Shady Inspiriting Plum","Player1")
       --OnItemRecieve("Desert Spear","Player1")
       --OnItemRecieve("Frost Axe","Player2")
       --OnItemRecieve("Vest of Joy","Player3")
        GoZoom()

    end)
    RegisterKeyBind(Key.L,function()
       --OnItemRecieve("Shady Inspiriting Plum","Player1")
       --OnItemRecieve("Desert Spear","Player1")
       --OnItemRecieve("Frost Axe","Player2")
       --OnItemRecieve("Vest of Joy","Player3")
        UnlockAllWarps()
        print("unlocking all warps")

    end)
    RegisterKeyBind(Key.P, function()
        MaxLevel()
        OnItemRecieve("Spurning Ribbon","debug")
    end)


    RegisterKeyBind(Key.K, function ()
        KillAllEnemy()
        --RegisterConsoleCommandHandler("Connect", function(FullCommand)
        --    print("RegisterConsoleCommandHandler:\n")
--
        --    print(string.format("Command: %s\n", FullCommand))
        --end)
        print("we ran this stuff")
    end)

    RegisterKeyBind(Key.O,function ()
        OpenAllChets()
    end)

    RegisterKeyBind(Key.J, function()
        StartStoryFlag()
        print("we have started story flag")
    end)
    RegisterKeyBind(Key.H, function()
        print("we are running")
    end)

end


RegisterConsoleCommandHandler("connect", function(FullCommand,userInput)
    print("Calling connect")
    Connect(FullCommand,userInput)
    return true
end)

RegisterConsoleCommandHandler("Connect", function(FullCommand,userInput)
    print("Calling Connect")
    Connect(FullCommand,userInput)
    return true
end)

RegisterConsoleCommandHandler("/connect", function(FullCommand,userInput)
    print("Calling /connect")
    Connect(FullCommand,userInput)
    return true
end)

RegisterConsoleCommandHandler("/Connect", function(FullCommand,userInput)
    print("Calling /Connect")
    Connect(FullCommand,userInput)
    return true
end)

RegisterConsoleCommandHandler("Send", function(FullCommand,userInput)
    print("Calling SendLocation")
    SendLocation(userInput[1])
    return true
end)

RegisterConsoleCommandHandler("Sendname", function(FullCommand,userInput)
    print("Calling Sendname")
    local locationID = GetAPLocationIDfromName(userInput[1])
    SendLocation(userInput[1])
    return true
end)

RegisterConsoleCommandHandler("disconnect", function(FullCommand,userInput)
    print("Calling disconnect")
    disconnect()
    return true
end)
-- so when I accidently add a space in the command it doesnt crash the game
RegisterConsoleCommandHandler("disconnect ", function(FullCommand,userInput)
    print("Calling disconnect")
    disconnect()
    return true
end)

RegisterConsoleCommandHandler("openchest", function(FullCommand,userInput)
    print("Calling open chest")
    OpenDefaultChest(userInput[1])
    return true
end)

RegisterConsoleCommandHandler("setindex", function(FullCommand,userInput)
    print("Updating index")
    local saveData = GetSaveGame()
    saveData.PlayerMember[35].RawHP = userInput[1]
    return true
end)
RegisterConsoleCommandHandler("getindex", function(FullCommand,userInput)
    local saveData = GetSaveGame()
    print(saveData.PlayerMember[35].RawHP)
    return true
end)

RegisterConsoleCommandHandler("setindex2", function(FullCommand,userInput)
    print("Updating index")
    local saveData = GetSaveGame()
    saveData.PlayerMember[35].RawHP = userInput[1]
    return true
end)
RegisterConsoleCommandHandler("getindex2", function(FullCommand,userInput)
    local saveData = GetSaveGame()
    print(saveData.PlayerMember[35].RawHP)
    return true
end)

RegisterConsoleCommandHandler("giveplayer", function(FullCommand,userInput)
    GiveCharacter(userInput[1])
    --HasCharacter("Hikari")
    return true
end)

RegisterConsoleCommandHandler("getiteminback", function(FullCommand,userInput)
    local ItemSaveDataUtil = StaticFindObject("/Script/Majesty.Default__ItemSaveDataUtil")
    print(ItemSaveDataUtil:GetItemNumInBackpackByLabel(FName(userInput[1])))
    local SaveManager = GetSaveManager()
    print(SaveManager.m_TemporaryBackpackItemList:Find(10774):get())
    return true
end)

RegisterConsoleCommandHandler("giveiteminback", function(FullCommand,userInput)
    local ItemFunction = GetItemFunction()
    local pc = UEHelpers:GetPlayerController() -- required for getting world context
    local __WorldContext = pc:GetWorld() -- required for some functions.
    local ItemDB = GetItemDB()
    
    ItemFunction:AddBackpackItem(FName(userInput[1]),9999999, __WorldContext, {true})
    return true
end)

RegisterConsoleCommandHandler("getmp", function(FullCommand,userInput)
    local HP = GetCharcterSaveDataUtil()
    --print(HP:GetRawHP_FromSaveCharacterData(userInput[1]))
    GiveCharacter(userInput[1])
    
    --HasCharacter("Hikari")
    return true
end)

RegisterConsoleCommandHandler("startstory", function(FullCommand,userInput)
    local SaveGame = GetSaveGame()
    for name,storyID in pairs(CharacterChapterToStoryID) do
        SaveGame.MainStoryData[storyID["index"]].StoryID = storyID["storyID"]
        SaveGame.MainStoryData[storyID["index"]].CurrentTaskID = 0
        SaveGame.MainStoryData[storyID["index"]].State = 1
        SaveGame.MainStoryData[storyID["index"]].ConfirmedFlag = false
    end
        SaveGame.MainStoryData[51].StoryID = 601
        SaveGame.MainStoryData[51].CurrentTaskID = 0
        SaveGame.MainStoryData[51].State = 1
        SaveGame.MainStoryData[51].ConfirmedFlag = false
    return true
end)

RegisterConsoleCommandHandler("endstory", function(FullCommand,userInput)
    local SaveGame = GetSaveGame()
    for name,storyID in pairs(CharacterChapterToStoryID) do
        SaveGame.MainStoryData[storyID["index"]].StoryID = storyID["storyID"]
        SaveGame.MainStoryData[storyID["index"]].CurrentTaskID = 0
        SaveGame.MainStoryData[storyID["index"]].State = 7
        SaveGame.MainStoryData[storyID["index"]].ConfirmedFlag = false
    end
    return true
end)

RegisterConsoleCommandHandler("finishstory", function(FullCommand,userInput)
    local SaveGame = GetSaveGame()
    for name, storyID in pairs(CharacterChapterToStoryID) do
        SaveGame.MainStoryData[storyID["index"]].StoryID = storyID["storyID"]
        SaveGame.MainStoryData[storyID["index"]].CurrentTaskID = 0
        SaveGame.MainStoryData[storyID["index"]].State = 5
        SaveGame.MainStoryData[storyID["index"]].ConfirmedFlag = false
    end
    return true
end)

RegisterConsoleCommandHandler("kill", function(FullCommand,userInput)
    BreakEnemy()
    KillAllEnemy()
    return true
end)

RegisterConsoleCommandHandler("killPlayer", function(FullCommand,userInput)
    local GameOver = StaticFindObject("/Game/Level/Persistent.Persistent:PersistentLevel.BPC_LevelManager_Others_C_2147482499")
    if GameOver==nil then
        print("we nil")
    end
    GameOver:OnStartGameOver()
    return true
end)
RegisterConsoleCommandHandler("killPlayerCombat", function(FullCommand,userInput)
    local Characters = FindAllOf("BattlePlayerBP_C")
    for _,Characters in ipairs(Characters) do
        Characters.IsDead = true
    end
    return true
end)

RegisterConsoleCommandHandler("giveboat", function(FullCommand,userInput)
    local SaveGame = GetSaveGame()
    SaveGame.BitFlag[7] = SaveGame.BitFlag[7]+1
    SaveGame.BitFlag[7] = SaveGame.BitFlag[7]|6400 -- boat 6400
    SaveGame.BitFlag[5] = 0
    SaveGame.BitFlag[6] = 0
    local SaveDataUtil = GetLevelSaveDataUtil()
    for i = 1,65300 do
        SaveDataUtil:SetVisitedMap(true,i)
        SaveDataUtil:SetShowMapIcon(true,i)
    end 
    return true
end)

RegisterConsoleCommandHandler("unlockmap", function(FullCommand,userInput)
    local SaveDataUtil = GetLevelSaveDataUtil()
    for i = 1,65300 do
        SaveDataUtil:SetVisitedMap(true,i)
        SaveDataUtil:SetShowMapIcon(true,i)
    end 
    return true
end)

RegisterConsoleCommandHandler("maxmoney", function(FullCommand,userInput)
    local CharcterSaveDataUtil = GetCharcterSaveDataUtil()
    CharcterSaveDataUtil:SetPlayerMoney(9999999)
    return true
end)

RegisterConsoleCommandHandler("maxlevel", function(FullCommand,userInput)
    local SaveGame = GetSaveGame()
    local CharcterSaveDataUtil = GetCharcterSaveDataUtil()
    for i=0,7 do
        CharcterSaveDataUtil:SetCharacterLevelAndExp(i,99,9999)
    end
    --SaveGame.BitFlag[1066] = SaveGame.BitFlag[1066] + 2^19
    return true
end)

RegisterConsoleCommandHandler("giverib", function(FullCommand,userInput)
    local ItemFunction = GetItemFunction()
    local pc = UEHelpers:GetPlayerController() -- required for getting world context
    local __WorldContext = pc:GetWorld() -- required for some functions.
    local ItemDB = GetItemDB()
    --local nut = ItemDB:FindRow("ITM_FLV_0090")
    --if nut==nil then
    --    print("no nut")
    --end
    --nut.MaxNum = 300
    
    ItemFunction:AddBackpackItem(FName("ITM_EQP_ACS_031"),99, __WorldContext, {true})
    return true
end)


RegisterConsoleCommandHandler("BitFlagMax", function(FullCommand,userInput)
    local SaveGame = GetSaveGame()
    local PlaceDataTable = StaticFindObject("/Game/Placement/Database/PlacementData.PlacementData")
    local LevelTriggerTable = StaticFindObject("/Game/Level/Database/LevelTriggerTable.LevelTriggerTable")
--
    --1065
    --for i=1,1065 do
    --    SaveGame.BitFlag[i] = 2147483647
    --end
    SaveGame.BitFlag[1066] = SaveGame.BitFlag[1066] + 2^19
    --for i=1,100 do
    --    if SaveGame.MainStoryData[i].StoryID==1300 then
    --        SaveGame.MainStoryData[i].CurrentTaskID=0
    --        SaveGame.MainStoryData[i].State = 5
--
    --        SaveGame.MainStoryData[i+1].StoryID=1301
    --        SaveGame.MainStoryData[i+1].State = 5
    --        SaveGame.MainStoryData[i+1].CurrentTaskID=0
    --        SaveGame.MainStoryData[i+1].ConfirmedFlag = true
--
    --        SaveGame.MainStoryData[i+2].StoryID=1302
    --        SaveGame.MainStoryData[i+2].CurrentTaskID=0
    --        SaveGame.MainStoryData[i+2].State = 5
    --        SaveGame.MainStoryData[i+2].ConfirmedFlag = true
--
    --        SaveGame.MainStoryData[i+3].StoryID=1303
    --        SaveGame.MainStoryData[i+3].CurrentTaskID=0
    --        SaveGame.MainStoryData[i+3].State = 5
    --        SaveGame.MainStoryData[i+3].ConfirmedFlag = true
--
    --        SaveGame.MainStoryData[i+4].StoryID=1304
    --        SaveGame.MainStoryData[i+4].CurrentTaskID=0
    --        SaveGame.MainStoryData[i+4].State = 5
    --        SaveGame.MainStoryData[i+4].ConfirmedFlag = true
--
    --        SaveGame.MainStoryData[i+5].StoryID=1305
    --        SaveGame.MainStoryData[i+5].CurrentTaskID=0
    --        SaveGame.MainStoryData[i+5].State = 1
    --        SaveGame.MainStoryData[i+5].ConfirmedFlag = false
    --        break
    --    end
    --end

    return true
end)

RegisterConsoleCommandHandler("PlayEvent", function(FullCommand,userInput)
    local SaveGame = GetSaveGame()
    local EventManager = GetEventManager()
    local LevelManagerUtil = GetLevelManagerUtil()
    --EventManager:PlayEvent(FString("MS_END_30_0500"),nil)
    print(LevelManagerUtil:GetNowLevelName():ToString())
    return true
end)

RegisterConsoleCommandHandler("Vide", function(FullCommand,userInput)
    local SaveGame = GetSaveGame()

    --SaveGame.MainStoryData[57].StoryID = StoryInfo["storyID"]
    --SaveGame.MainStoryData[57].CurrentTaskID = 1097
    --SaveGame.MainStoryData[57].State = 2
    --SaveGame.MainStoryData[57].ConfirmedFlag = false
    --SaveGame.BitFlag[305] = 12582912
    --EventManagerBP = FindFirstOf("EventManagerBP_C")
    --EventManagerBP:PlayEvent(FName("MS_END_30_0200"),nil)
    for i=1,2000 do
        SaveGame.BitFlag[i] = 2147483647
    end
    for i=1,100 do
        if SaveGame.MainStoryData[i].StoryID==1305 then
            print("we changing this thing")
            SaveGame.MainStoryData[i].CurrentTaskID=1097
            SaveGame.MainStoryData[i].State = 2
            SaveGame.MainStoryData[i].ConfirmedFlag = false
        end
    end
    return true
end)

RegisterConsoleCommandHandler("GoFast", function(FullCommand,userInput)
    print("Going Fast")
    local EventManager = GetEventManager()
    EventManager:SetMaxSkipInputTime(0.00001)
    local SaveGame = GetSaveGame()
    SaveGame.BattleSpeedStep = 400
    return true
end)

--local PlacementDataAPFixes = {
--    ["NPC_Fld_Dst_3_1_B_SHOP01"] = 0,
--    ["NPC_Fld_Dst_3_1_B_SHOP02"] = 0,
--    ["NPC_SYS_BARTENDER_Fld_Dst_3_1_B_0000"] = 0 -- spawn shops for hikari chapter 5
--}

RegisterConsoleCommandHandler("indatatable", function(FullCommand,userInput)
    local GameTextDB = GetGameTextDB()
    print(GameTextDB:FindRow(userInput[1])~=nil)
    return true
end)

function Connect(commandName,userInput) 
    if #userInput < 2 then 
        print("Error trying to connect. Correct input: connect <host> <slot> [password]")
        return
    end
    local host = userInput[1]
    local slot = userInput[2]
    local password = ""

    if #userInput >=3 then 
        password = userInput[3]
    end

    print("trying to connect to "..userInput[1].." with slot "..userInput[2].." and password "..password)    
    connectToAp(host, slot, password)

end

