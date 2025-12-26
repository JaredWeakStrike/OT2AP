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
        TextTemplate = TextDB:FindRow("eMUSIC_PLAYER_FOOTER_PLAY")
        ItemTemplate = ItemDB:FindRow("ITM_INF_Twn_Wld_3_1_A_030")
        TextTemplate.Text = FText(" ")
        local BaseID = 11080
        for i = 1,10 do
            TextDB:AddRow("APItemText"..i,TextTemplate)
            ItemTemplate.ID = BaseID+i
            ItemTemplate.ItemNameID = FName("APItemText"..i)
            ItemDB:AddRow("APItem"..i,ItemTemplate)
        end
    end
    connectToAp(host, slot, password)
    
end

