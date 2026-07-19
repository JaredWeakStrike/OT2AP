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
    --local nut = ItemDB:FindRow("ITM_FLV_0090")
    --if nut==nil then
    --    print("no nut")
    --end
    --nut.MaxNum = 300
    
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

RegisterConsoleCommandHandler("startgame", function(FullCommand,userInput)
    local TitlePlayer = GetTitlePlayerSelect()
    TitlePlayer:SetupNewGame(userInput[1],{true})
    TitlePlayer:SetupFirstSaveData()
    TitlePlayer:StartMainStory({1})
    
    return true
end)

RegisterConsoleCommandHandler("startgame2", function(FullCommand,userInput)
    --local TitlePlayer = GetTitlePlayerSelect()
    --RegisterHook("/Game/UserInterface/Title/BP/Scene/TitlePlayerSelect.TitlePlayerSelect_C:OnFocusPlayer",function(Context,IsSelect)
    --    print("calling on focus player"..tostring(IsSelect:Get()))
    --    --ContextStuff.IsSelect = false
    --    IsSelect:Set(false)
    --end)
    --TitlePlayer:SetupFirstSaveData()
    --TitlePlayer:StartMainStory({1})
    local CharacterIcons = GetTitlePlayerIcons()
        for _, CharacterIcon in ipairs(CharacterIcons) do
            CharacterIcon:SetWorldMapData(FName(CharNameToMap["Hikari"]))
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
    local CharcterSaveDataUtil = GetCharcterSaveDataUtil()
    for i=0,7 do
        CharcterSaveDataUtil:SetCharacterLevelAndExp(i,99,9999)
    end
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
--DataTable /Game/Placement/Database/PlacementData.PlacementData

RegisterConsoleCommandHandler("spawnshop", function(FullCommand,userInput)
    local PlaceDataTable = StaticFindObject("/Game/Placement/Database/PlacementData.PlacementData")
    local shop1 = PlaceDataTable:FindRow("NPC_Fld_Dst_3_1_B_SHOP01")
    local shop2 = PlaceDataTable:FindRow("NPC_Fld_Dst_3_1_B_SHOP02")
    local shop3 = PlaceDataTable:FindRow("NPC_SYS_BARTENDER_Fld_Dst_3_1_B_0000")
    local shop4 = PlaceDataTable:FindRow("NPC_Fld_Dst_3_1_B_SHOP04")
    shop1.SpawnStartFlag = 0
    shop2.SpawnStartFlag = 0
    shop3.SpawnStartFlag = 0
    shop4.SpawnStartFlag = 0
    --local nut = ItemDB:FindRow("ITM_FLV_0090")
    --if nut==nil then
    --    print("no nut")
    --end
    --nut.MaxNum = 300
    
    --ItemFunction:AddBackpackItem(FName("ITM_EQP_ACS_031"),99, __WorldContext, {true})
    return true
end)

RegisterConsoleCommandHandler("BitFlagMax", function(FullCommand,userInput)
    local SaveGame = GetSaveGame()
    --1060 1065 2147483647
    --1 , 500
    -- 173,175
    --for i=173,175 do
    --    print("setting bitflag index "..i)
    --    SaveGame.BitFlag[i] = 0 
    --end
    --print(SaveGame.BitFlag[174])
    --16384 
    --32768
    --65536
    --131072
    --262144 2^18
    -- 2^19
    --print(__len(SaveGame.MainStoryTaskData))
    --print(SaveGame.MainStoryTaskData:__len())
    --for i,FMainStoryTaskSaveData in pairs(SaveGame.MainStoryTaskData) do
    --    print(FMainStoryTaskSaveData.Flag)
    --end  
    shipIsThere = {
       --[33] = 210110598,
       --[34] = 16811280,
       --[43] = 139526344,
       --[176] = 0,
       --[177] = 0,
       --[594] = 0,
       --[793] = 0,
       [796] = 64, --2



        --[797] = 268435456,
        --[1065] = 805830656,
        --[1066] = 4096

    }
    for k,v in pairs(shipIsThere) do
        SaveGame.BitFlag[k] = v
    end
    for i=1,2047 do
        print("\"index"..i.."\":"..SaveGame.BitFlag[i]..", \n")
    end
    --print(type(SaveGame.MainStoryTaskData))
    --SaveGame.MainStoryTaskData:ForEach(function(key, value)
    --    print("Key:", key:get())
--
    --    local task = value:get()
    --    print("Flag:", task.Flag)
    --    print("State:", task.State)
    --    print("PlayedTimeZone:", task.PlayedTimeZone)
--
    --    --for i, flag in ipairs(task.EventFlagList) do
    --    --    print("EventFlag", i, flag)
    --    --end
    --end)
    --print(SaveGame.MainStoryTaskData)
    --local keys = SaveGame.MainStoryTaskData:GetKeys()
    --for i, key in ipairs(keys) do
    --    local value = SaveGame.MainStoryTaskData[key]
    --    print(key, value.State)
    --end
    --SaveGame.BitFlag[174] = SaveGame.BitFlag[174] | 67108864
    --SaveGame.BitFlag[174] = 0
    stuff = {
    ["LF_MS_SIN_20_001 "] = {["Recieved"]=false, ["Index"]=787, ["Bitflag"]=1024},
    ["LF_MS_SIN_20_002 "] = {["Recieved"]=false, ["Index"]=787, ["Bitflag"]=2048},
    ["LF_MS_SIN_20_003 "] = {["Recieved"]=false, ["Index"]=787, ["Bitflag"]=4096},
    ["LF_MS_SIN_20_004 "] = {["Recieved"]=false, ["Index"]=787, ["Bitflag"]=8192},
    ["LF_MS_SIN_20_005 "] = {["Recieved"]=false, ["Index"]=787, ["Bitflag"]=16384},
    ["LF_MS_SIN_20_006 "] = {["Recieved"]=false, ["Index"]=787, ["Bitflag"]=32768},
    ["LF_MS_SIN_20_007 "] = {["Recieved"]=false, ["Index"]=787, ["Bitflag"]=65536},
    }
    --local SaveGame = GetSaveGame()
    --local BitFlags = SaveGame.Bitflag
    --for name, Flag in pairs(stuff) do
    --    local index = Flag["Index"]
    --    local bitflag = Flag["Bitflag"]
    --    BitFlags[index] = 0 --BitFlags[index] | bitflag
    --end
    --SaveGame.BitFlag[1065] = SaveGame.BitFlag[1065] | 262144
    --MF_KEN_50_0600
    --SaveGame.BitFlag[1065] = 262144
    --SaveGame.BitFlag[7] = SaveGame.BitFlag[7]+1
    --SaveGame.BitFlag[7] = SaveGame.BitFlag[7]|6400 -- boat 6400
    --SaveGame.BitFlag[5] = 0
    --SaveGame.BitFlag[6] = 0
    --local SaveDataUtil = GetLevelSaveDataUtil()
    --for i = 1,65300 do
    --    SaveDataUtil:SetVisitedMap(true,i)
    --    SaveDataUtil:SetShowMapIcon(true,i)
    --end 
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


RegisterConsoleCommandHandler("FixChap3", function(FullCommand,userInput)
    local stuff = StaticFindObject("/Game/Character/Database/PlayableCharacterDB.PlayableCharacterDB")
    local stuff2 = stuff:FindRow("eFENCER")
    stuff2.SecondPotentialityActionFlag = 0
    print(stuff2.SecondPotentialityActionFlag)
    --stuff2.SecondPotentialityActionLabel = stuff2.PotentialityActionLabel
    return true
end)

RegisterConsoleCommandHandler("GiveCharacter", function(FullCommand,userInput)
    local SaveGame = GetSaveGame()
    SaveGame.PlayerParty.SubMemberID[1] = 3
    return true
end)

RegisterConsoleCommandHandler("StartVide", function(FullCommand,userInput)
    local SaveGame = GetSaveGame()
    --todo look into mainstorytask stuff
    SaveGame.MainStoryData[51].StoryID=1303
    SaveGame.MainStoryData[51].State=1
    return true
end)

local PlacementDataAPFixes = {
    ["NPC_Fld_Dst_3_1_B_SHOP01"] = 0,
    ["NPC_Fld_Dst_3_1_B_SHOP02"] = 0,
    ["NPC_SYS_BARTENDER_Fld_Dst_3_1_B_0000"] = 0, -- spawn shops for hikari chapter 5
    ["NPC_Fld_Dst_3_1_B_SHOP04"] = 0, -- TODO figure out which one of these is the invisable wall
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0100_D000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0100_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0200_D000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0200_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0300_D000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0300_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0400_D000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0400_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0500_D000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0500_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0600_D000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0600_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0700_D000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_0700_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_1100_D000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_1100_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_1200_D000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_1200_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_1300_D000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_1300_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_1400_D000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_1400_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_1500_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_1600_D000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_1600_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_2100_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_2200_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_2300_N000"] = 0,
    ["NPC_SIN_20_00_Twn_Sea_1_1_A_2400_N000"] = 0
}

local MainStoryFixes = {
    ["MS_SIN_3A_0000"] = 0
}

RegisterConsoleCommandHandler("PlacementDataFix", function(FullCommand,userInput)
    local PlacementData = GetPlacementDB()
    for name,flag in pairs(PlacementDataAPFixes) do
        PlacementData:FindRow(name).SpawnStartFlag = flag
    end
    return true
end)

RegisterConsoleCommandHandler("MainStoryFix", function(FullCommand,userInput)
    local MainStoryDB = GetMainStoryDB()
    --for name,flag in pairs(MainStoryFixes) do
        print(MainStoryDB:GetRowMap())
        
    local rowMap = MainStoryDB:GetRowMap()

    for rowName, rowData in pairs(rowMap) do
        print("Row:", rowName)

        -- If the row data is a Lua table
        if type(rowData) == "table" then
            for fieldName, fieldValue in pairs(rowData) do
                print("    ", fieldName, tostring(fieldValue))
            end
        else
            -- If it's a UScriptStruct
            print("    ", tostring(rowData))
        end
    end
    print(MainStoryDB:FindRow("MS_SIN_03"))
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
    --print("we tried but have failed")
    -- FItemData
    local ItemDB = GetItemDB()
    local TextDB = GetGameTextDB()
    local PlacementData = GetPlacementDB()
    for name,flag in pairs(PlacementDataAPFixes) do
        PlacementData:FindRow(name).SpawnStartFlag = flag
    end
    if(ItemDB~=nil and TextDB~=nil)then
        print("we got itemdb babyyy")
        --11080
        
        local TextTemplate = TextDB:FindRow("eMUSIC_PLAYER_FOOTER_PLAY")
        local ItemTemplate = ItemDB:FindRow("ITM_INF_Twn_Wld_3_1_A_030") -- unused item that doesnt showup in inventory

        local BackupText = TextTemplate.Text
        --local BackupItemName = ItemTemplate.ItemNameID
        local BackupItemTempID = ItemTemplate.ID


        TextTemplate.Text = FText(" ")
        
        local BaseID = 21080
        for i = 1,10 do
            BaseID = BaseID + 1
            TextDB:AddRow("APItemText"..i,TextTemplate)
            ItemTemplate.ID = BaseID
            ItemTemplate.ItemNameID = FName("APItemText"..i)
            ItemTemplate.MaxNum = 9999999
            ItemDB:AddRow("APItem"..i,ItemTemplate)
        end
        --ItemDB:FindRow("ITM_EQP_JOB_0005").MaxNum = 99
        TextTemplate.Text = FText("APItemIndex")
        TextDB:AddRow("APItemIndexText",TextTemplate)
        --ItemTemplate.ID = BaseID + 1
        --ItemTemplate.ItemNameID = FName"APItemIndexText")
        --ItemTemplate.ItemCategory = 2
        --ItemDB:AddRow("APItemIndex",ItemTemplate)
        
        -- restore the references back to what they were before modifying them
        TextTemplate.Text = BackupText
        ItemTemplate.ID = BackupItemTempID
        ItemTemplate.ItemNameID = FName("APItemIndexText")
        ItemTemplate.ItemCategory = 2
        ItemTemplate.MaxNum = 9999999
    end
    connectToAp(host, slot, password)
    
end

