require "ItemManager"
require "LocationManager"
require "StaticObjectGetters"
require "DatabaseInfo"
require "QOL"
require "archipelago"

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

RegisterConsoleCommandHandler("updateindex", function(FullCommand,userInput)
    print("Calling open chest")
    local saveData = GetSaveGame()
    saveData.PlayerMember[40].RawHP = userInput[1]
    return true
end)

RegisterConsoleCommandHandler("giveplayer", function(FullCommand,userInput)
    OnItemRecieve("Hikari Chapter1 Unlock"," ")
    return true
end)

RegisterConsoleCommandHandler("getiteminback", function(FullCommand,userInput)
    local ItemSaveDataUtil = StaticFindObject("/Script/Majesty.Default__ItemSaveDataUtil")
    print(ItemSaveDataUtil:GetItemNumInBackpackByLabel(FName(userInput[1])))
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
    if(ItemDB~=nil and TextDB~=nil)then
        print("we got itemdb babyyy")
        --11080
        
        local TextTemplate = TextDB:FindRow("eMUSIC_PLAYER_FOOTER_PLAY")
        local ItemTemplate = ItemDB:FindRow("ITM_INF_Twn_Wld_3_1_A_030") -- unused item that doesnt showup in inventory

        local BackupText = TextTemplate.Text
        local BackupItemName = ItemTemplate.ItemNameID
        local BackupItemTempID = ItemTemplate.ID


        TextTemplate.Text = FText(" ")
        
        local BaseID = 21080
        for i = 1,10 do
            BaseID = BaseID + 1
            TextDB:AddRow("APItemText"..i,TextTemplate)
            ItemTemplate.ID = BaseID
            ItemTemplate.ItemNameID = FName("APItemText"..i)
            ItemDB:AddRow("APItem"..i,ItemTemplate)
        end
        --ItemDB:FindRow("ITM_EQP_JOB_0005").MaxNum = 99

        -- restore the references back to what they were before modifying them
        TextTemplate.Text = BackupText
        ItemTemplate.ID = BackupItemTempID
        ItemTemplate.ItemNameID = BackupItemName
    end
    connectToAp(host, slot, password)
    
end

