---@diagnostic disable: lowercase-global
---@diagnostic disable: undefined-global
---@diagnostic disable: undefined-field


require "ItemManager"
require "StaticObjectGetters"
require "DatabaseInfo"
require "ArchipelagoLists"

local AP = require "lua-apclientpp"

-- global to this mod
local game_name = "Octopath Traveler 2"
local items_handling = 7  -- full remote
local client_version = {0, 5, 1}  -- optional, defaults to lib version
local message_format = AP.RenderFormat.TEXT
---@type APClient
local ap = nil
local checked_locations = {}
ScoutedLocations = {}
ChapterUnlocks = {
        ["Hikari Chapter1 Unlock"]                          = false, --"Hikari1",
		["Hikari Chapter2 Unlock"]                          = false, --"Hikari2",
		["Hikari Chapter3 Unlock"]                          = false, --"Hikari3",
		["Hikari Chapter4 Unlock"]                          = false, --"Hikari4",
		["Hikari Chapter5 Unlock"]                          = false, --"Hikari5",
		["Ochette Chapter1 Unlock"]                         = false, --"Ochette1",
		["Ochette Chapter2 Acta Unlock"]                    = false, --"Ochette2A",
		["Ochette Chapter2 Tera Unlock"]                    = false, --"Ochette2T",
		["Ochette Chapter2 Glacis Unlock"]                  = false, --"Ochette2G",
		["Ochette Chapter3 Unlock"]                         = false, --"Ochette3",
		["Castti Chapter1 Unlock"]                          = false, --"Castti1",
		["Castti Chapter2 Sai Unlock"]                      = false, --"Castti2S",
		["Castti Chapter2 Winterbloom Unlock"]              = false, --"Castti2W",
		["Castti Chapter3 Unlock"]                          = false, --"Castti3",
		["Castti Chapter4 Unlock"]                          = false, --"Castti4",
		["Partitio Chapter1 Unlock"]                        = false, --"Partitio1",
		["Partitio Chapter2 Unlock"]                        = false, --"Partitio2",
		["Partitio Chapter3 Unlock"]                        = false, --"Partitio3",
		["Partitio Toto'haha Grand Terry Quest Unlock"]     = false, --"PartitioTGT",
		["Partitio Winterbloom Gramophone Quest Unlock"]    = false, --"PartitioWBG",
		["Partitio Sai Archives Quest Unlock"]              = false, --"PartitioSAQ",
		["Temenos Chapter1 Unlock"]                         = false, --"Temenos1",
		["Temenos Chapter2 Unlock"]                         = false, --"Temenos2",
		["Temenos Chapter3 Stormhail"]                      = false, --"Temenos3S",
		["Temenos Chapter3 Crackridge Unlock"]              = false, --"Temenos3C",
		["Temenos Chapter4 Unlock"]                         = false, --"Temenos4",
		["Osvald Chapter1 Unlock"]                          = false, --"Osvald1",
		["Osvald Chapter3 Unlock"]                          = false, --"Osvald3",
		["Osvald Chapter4 Unlock"]                          = false, --"Osvald4",
		["Osvald Chapter5 Unlock"]                          = false, --"Osvald5",
		["Throne Chapter1 Unlock"]                          = false, --"Throne1",
		["Throne Chapter2 Mother Unlock"]                   = false, --"Throne2M",
		["Throne Chapter2 Father Unlock"]                   = false, --"Throne2F",
		["Throne Chapter3 Mother Unlock"]                   = false, --"Throne3M",
		["Throne Chapter3 Father Unlock"]                   = false, --"Throne3F",
		["Throne Chapter4 Unlock"]                          = false, --"Throne4",
		["Agnea Chapter1 Unlock"]                           = false, --"Agnea1",
		["Agnea Chapter2 Unlock"]                           = false, --"Agnea2",
		["Agnea Chapter3 Unlock"]                           = false, --"Agnea3",
		["Agnea Chapter4 Unlock"]                           = false, --"Agnea4",
		["Agnea Chapter5 Unlock"]                           = false, --"Agnea5",
		["Osvald and Partitio Chapter 1 Unlock"]            = false, --"OsvaldPartitio1",
		["Osvald and Partitio Chapter 2 Unlock"]            = false, --"OsvaldPartitio2",
		["Castti and Ochette Chapter 1 Unlock"]             = false, --"CasttiOchette1",
		["Castti and Ochette Chapter 2 Unlock"]             = false, --"CasttiOchette2",
		["Hikari and Agnea Chapter 1 Unlock"]               = false, --"HikariAgnea1",
		["Hikari and Agnea Chapter 2 Unlock"]               = false, --"HikariAgnea2",
		["Temenos and Throne Chapter 1 Unlock"]             = false, --"TemenosThrone1",
		["Temenos and Throne Chapter 2 Unlock"]             = false, --"TemenosThrone2",
		["Finale"]                                          = false
}
Characters = {
    ["Hikari"]   = false, --eFENCER
    ["Ochette"]  = false, --eHunter
    ["Castii"]   = true, --eALCHEMIST
    ["Partitio"] = false, --eMERCHANT
    ["Temenos"]  = false, --ePRIEST
    ["Osvald"]   = false, --ePROFESSOR
    ["Throne"]   = false, --eTHIEF
    ["Agnea"]    = false, --eDANCER
}
StartingCharacter = nil
Goal = nil
APNameToChestID = {}
print("filling APName to Chest")
for ChestID, APName in pairs(ChestIDToName) do
    if APNameToChestID[APName]~=nil then
        print(APName)
    else
        APNameToChestID[APName] = ChestID
    end
end
-- TODO: user input
local host = "localhost"
local slot = "Player1"
local password = ""


function connect(server, slot, password)
    print("we are calling archipelago.lua connect")
    function on_socket_connected()
        print("Socket connected")
    end

    function on_socket_error(msg)
        print("Socket error: " .. msg)
    end

    function on_socket_disconnected()
        print("Socket disconnected")
    end

    function on_room_info()
        print("Room info")
        ap:ConnectSlot(slot, password, items_handling, {"Lua-APClientPP"}, client_version)
    end

    function on_slot_connected(slot_data)
        print("Slot connected")
        ap:Say("Hello World!")
        ap:Bounce({name="test"}, {game_name})
        ap:ConnectUpdate(nil, {"Lua-APClientPP"})
        --ap:LocationChecks({0x88888888})  
        StartingCharacter = slot_data["StartingCharacter"]
        Goal              = slot_data["Goal"]
        local StartingCharacterToName = {
            "Osvald","Castii","Temenos","Ochette","Partitio","Agnea","Hikari"
        }
        Characters[StartingCharacterToName[StartingCharacter]] = true
        local locations_to_scout = {}
        for locationName, locationID in pairs(LocationNameToAPId) do
            table.insert(locations_to_scout,locationID)
        end
        ap:LocationScouts(locations_to_scout, false)
        SetInterruptedStoryFlags()
    end


    function on_slot_refused(reasons)
        print("Slot refused: " .. table.concat(reasons, ", "))
    end

    function on_items_received(items)
        print("Items received:")
        for _, item in ipairs(items) do
            if item.index > GetIndex() then
                ApItemName = APItemIdToName[item.item]
                print(APItemIdToName[item.item].." from "..ap:get_player_alias(item.player))
                if ChapterUnlocks[ApItemName] == false then
                    ChapterUnlocks[ApItemName] = true
                else
                    OnItemRecieve(ApItemName,ap:get_player_alias(item.player))
                end

                SetIndex(item.index)
            else
                print("item is out of index")
            end
        end
    end

    function on_location_info(items)
        print("Locations scouted:")
        for _, item in ipairs(items) do
            if ScoutedLocations[item.location]==nil then
                print("placing item "..ap:get_item_name(item.item,ap:get_player_game(item.player)).." in location"..item.location)
                print("apnamelength "..#APNameToChestID)
                local APLocationName = APLocationIdToName[item.location]
                if APLocationName == nil then
                    print("we sajdklajskl")
                end
                local chestID = APNameToChestID[APLocationName]
                if chestID==nil then
                    print("we have messed up")
                end
                ScoutedLocations[chestID] = {["ItemName"] = ap:get_item_name(item.item,ap:get_player_game(item.player)),["PlayerName"] = ap:get_player_alias(item.player)}
            end
        end
    end
    
    function on_location_checked(locations)
        print("calling location checked")
        print("Locations checked:" .. table.concat(locations, ", "))
        print("Checked locations: " .. table.concat(ap.checked_locations, ", "))
        for _, LocationID in ipairs(locations) do
            checked_locations[LocationID] = true
        end
    end

    function on_data_package_changed(data_package)
        print("Data package changed:")
        print(data_package)
    end

    function on_print(msg)
        print(msg)
    end

    function on_print_json(msg, extra)
        print(ap:render_json(msg, message_format))
        for key, value in pairs(extra) do
            -- print("  " .. key .. ": " .. tostring(value))
        end
    end

    function on_bounced(bounce)
        print("Bounced:")
        print(bounce)
    end

    function on_retrieved(map, keys, extra)
        print("Retrieved:")
        -- since lua tables won't contain nil values, we can use keys array
        for _, key in ipairs(keys) do
            print("  " .. key .. ": " .. tostring(map[key]))
        end
        -- extra will include extra fields from Get
        print("Extra:")
        for key, value in pairs(extra) do
            print("  " .. key .. ": " .. tostring(value))
        end
        -- both keys and extra are optional
    end

    function on_set_reply(message)
        print("Set Reply:")
        for key, value in pairs(message) do
            print("  " .. key .. ": " .. tostring(value))
            if key == "value" and type(value) == "table" then
                for subkey, subvalue in pairs(value) do
                    print("    " .. subkey .. ": " .. tostring(subvalue))
                end
            end
        end
    end


    local uuid = ""
    ap = AP(uuid, game_name, server);
    print("Connecting to " .. server .. " ...")
    ap:set_socket_connected_handler(on_socket_connected)
    ap:set_socket_error_handler(on_socket_error)
    ap:set_socket_disconnected_handler(on_socket_disconnected)
    ap:set_room_info_handler(on_room_info)
    ap:set_slot_connected_handler(on_slot_connected)
    ap:set_slot_refused_handler(on_slot_refused)
    ap:set_items_received_handler(on_items_received)
    ap:set_location_info_handler(on_location_info)
    ap:set_location_checked_handler(on_location_checked)
    ap:set_data_package_changed_handler(on_data_package_changed)
    ap:set_print_handler(on_print)
    ap:set_print_json_handler(on_print_json)
    ap:set_bounced_handler(on_bounced)
    ap:set_retrieved_handler(on_retrieved)
    ap:set_set_reply_handler(on_set_reply)
end

function connectToAp(host, slot, password)
    ExecuteAsync(function ()
    connect(host, slot, "")

    PopupQueue = {}

    while ap do
        ap:poll()
        CheckedLocations = CheckChests()
        if #CheckedLocations>0 then
            ap:LocationChecks(CheckedLocations)
            for _, APID in ipairs(CheckedLocations) do
                checked_locations[APID] = true
            end
        end
        VerifyCharacters()
        VerifyStoryFlags()
        pcall(FillScoutedLocations)

    end

    end)
end

function disconnect()
---@diagnostic disable-next-line: cast-local-type
    checked_locations = {}
    ap = nil
    collectgarbage("collect")
end

function SendLocation(locationID)
    if ap == nil then
        print("AP client not connected, cannot send location")
        return
    end
    print("Sending location ID: "..locationID)
    ap:LocationChecks({tonumber(locationID)})
end

function IsLocationChecked(locationID)
    if checked_locations==nil then
        return nil
    end
    return checked_locations[locationID] ~= nil
end

function SendLocationFromName(locationName)
    local locationID = GetAPLocationIDfromName(locationName)
    if ap == nil then
        print("AP client not connected, cannot send location")
        return
    end

    if locationID == nil then
        print("Location name:"..locationName.."Is not valid.")
        return
    end
    print("Sending location name: "..locationName)

    ap:LocationChecks({tonumber(locationID)})
end


function GetAPLocationIDfromName(locationName)
    return LocationNameToAPId[locationName]
end

function GetAPNamefromLocationID(locationID)
    return APLocationIdToName[locationID]
end

function GetAPItemIDfromName(itemName)
    return ItemNameToAPId[itemName]
end

function GetItemNamefromAPItemID(itemID)
    return APItemIdToName[itemID]
end

function ChestNamefromID(ChestID)
    return ChestIDToName[ChestID]
end

function ChestFilenameFromChestID(ChestID)
    return ChestIDToFilename[ChestID]
end

function GetAPCheckedLocations()
    return ap.checked_locations
end

function GetAPMissingLocations()
    return ap.missing_locations
end

function ScoutLocations(ScoutLocations)
    if #ScoutLocations>0 then
        ap:LocationScouts(ScoutLocations,0)
    end
end



function FillScoutedLocations()
    local AllLodadedChests = GetAllChests()
    local TextDB = GetGameTextDB()
    if AllLodadedChests==nil or TextDB==nil then
        return
    end

    for _, Chest in ipairs(AllLodadedChests) do
        if ScoutedLocations[Chest.ObjectData.ID] ~= nil and Chest.ObjectData.HaveItemLabel:ToString() ~= "APItem".._ and Chest.IsOpenFlag == false then
            if Chest.ObjectData.IsMoney == true then
                Chest.ObjectData.IsMoney = false
            end
            local ScoutedLocationV = ScoutedLocations[Chest.ObjectData.ID]
            print(ScoutedLocationV["ItemName"].." for "..ScoutedLocationV["PlayerName"])
            
            Chest.ObjectData.HaveItemLabel = FName("APItem".._)
            TextDB:FindRow("APItemText".._).Text = FText(ScoutedLocationV["ItemName"].." for "..ScoutedLocationV["PlayerName"])

        end
    end
end

function GetIndex()
    local SaveGame = GetSaveGame()
    if SaveGame~=nil then
        return SaveGame.PlayerMember[40].RawHP
    end
    return nil
end

function SetIndex(newIndex)
    local SaveGame = GetSaveGame()
    print("Setting Index: "..newIndex)
    if SaveGame~=nil then
        SaveGame.PlayerMember[40].RawHP = newIndex
    end
end

function VerifyCharacters()
    if StartingCharacter==nil then
        return
    end

    for CharName, CharBool in pairs(Characters) do
        --print("charname "..CharName)
        local HasCharReturn = HasCharacter(CharName)
        if CharBool~=HasCharReturn["HasCharacter"] then
            print("giving character "..CharName)
            print("HasCharReturn ")
            print(HasCharReturn["HasCharacter"])
            if CharBool then
                GiveCharacter(CharName)
            else 
                RemoveCharacter(HasCharReturn["PartyType"],HasCharReturn["Index"])
            end
        end
    end
end

function HasCharacter(CharacterName)
    --print("charactername: " ..CharacterName)
    local CharacterID = EPlayableCharacterID[CharacterName] - 1
    local SaveGame = GetSaveGame()
    if SaveGame==nil then
        return {["HasCharacter"] = false}
    end
    local PlayerParty = SaveGame.PlayerParty

    --local SubPlayerParty = SaveGame.SubMemberID
    for i = 1,4 do
        if PlayerParty.MainMemberID[i] == CharacterID then
            return {["HasCharacter"] = true,["Index"] = i,["PartyType"]="MainMember"}
        end
    end
    for i = 1,8 do
        if PlayerParty.SubMemberID[i] == CharacterID then
            return {["HasCharacter"] = true,["Index"] = i,["PartyType"]="SubMember"}
        end
    end

    return {["HasCharacter"] = false}
end

function VerifyStoryFlags()
    if StartingCharacter==nil then
        return
    end
    local SaveGame = GetSaveGame()
    if SaveGame==nil then
        return
    end
    
    for ChapterName, StoryInfo in pairs(CharacterChapterToStoryID) do
        if ChapterUnlocks[ChapterName] == true then
            if SaveGame.MainStoryData[StoryInfo["index"]].StoryID == StoryInfo["storyID"] and SaveGame.MainStoryData[StoryInfo["index"]].State == 7 then
                SaveGame.MainStoryData[StoryInfo["index"]].StoryID = StoryInfo["storyID"]
                SaveGame.MainStoryData[StoryInfo["index"]].CurrentTaskID = 0
                SaveGame.MainStoryData[StoryInfo["index"]].State = 1
                SaveGame.MainStoryData[StoryInfo["index"]].ConfirmedFlag = false
            end  
        else --ChapterUnlocks[ChapterName] == false
            if SaveGame.MainStoryData[StoryInfo["index"]].StoryID == StoryInfo["storyID"] and SaveGame.MainStoryData[StoryInfo["index"]].State ~= 7 then
                print("removing story flag "..StoryInfo["storyID"])
                SaveGame.MainStoryData[StoryInfo["index"]].StoryID = StoryInfo["storyID"]
                SaveGame.MainStoryData[StoryInfo["index"]].CurrentTaskID = 0
                SaveGame.MainStoryData[StoryInfo["index"]].State = 7
                SaveGame.MainStoryData[StoryInfo["index"]].ConfirmedFlag = false
            end  
        end
    end
end 

function SetInterruptedStoryFlags()
    if StartingCharacter==nil then
        return
    end
    local SaveGame = GetSaveGame()
    if SaveGame==nil then
        return
    end

    
    for ChapterName, StoryInfo in pairs(CharacterChapterToStoryID) do
        if SaveGame.MainStoryData[StoryInfo["index"]].StoryID ~= StoryInfo["storyID"] and SaveGame.MainStoryData[StoryInfo["index"]].State ~= 7 then
            SaveGame.MainStoryData[StoryInfo["index"]].StoryID = StoryInfo["storyID"]
            SaveGame.MainStoryData[StoryInfo["index"]].CurrentTaskID = 0
            SaveGame.MainStoryData[StoryInfo["index"]].State = 7
            SaveGame.MainStoryData[StoryInfo["index"]].ConfirmedFlag = false
        end 
    end

end
