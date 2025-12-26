---@diagnostic disable: lowercase-global

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
        ap:LocationChecks({0x88888888})  
    end


    function on_slot_refused(reasons)
        print("Slot refused: " .. table.concat(reasons, ", "))
    end

    function on_items_received(items)
        print("Items received:")
        for _, item in ipairs(items) do
            print(item.item)
        end
    end

    function on_location_info(items)
        print("Locations scouted:")
        for _, item in ipairs(items) do
            PlaceScoutedItems(item,_)
        end
    end
    
    function on_location_checked(locations)
        print("calling location checked")
        print("Locations checked:" .. table.concat(locations, ", "))
        print("Checked locations: " .. table.concat(ap.checked_locations, ", "))
        for index, value in ipairs(locations) do
            checked_locations[value] = true
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
----print("shutting down...");
--ap = nil
--collectgarbage("collect")