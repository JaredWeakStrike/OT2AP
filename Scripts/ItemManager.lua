---@diagnostic disable: undefined-global
---@diagnostic disable: undefined-field

require "StaticObjectGetters"
require "DatabaseInfo"

local UEHelpers = require("UEHelpers")
popup_text = FText("")
ChestItemQueue={}
EPlayableCharacterID = {
    ["eNONE"] = 0,
    ["Hikari"] = 1, --eFENCER
    ["Ochette"] = 2,  -- eHunter
    ["Castii"] = 3, -- eALCHEMIST
    ["Partitio"] = 4, --eMERCHANT
    ["Temenos"] = 5, --ePRIEST
    ["Osvald"] = 6, --ePROFESSOR
    ["Throne"] = 7, --eTHIEF
    ["Agnea"] = 8, --eDANCER
    ["eGUEST_000"] = 9,
    ["eGUEST_001"] = 10,
    ["eGUEST_002"] = 11,
    ["eGUEST_003"] = 12,
    ["eGUEST_004"] = 13,
    ["eGUEST_005"] = 14,
    ["eGUEST_006"] = 15,
    ["eGUEST_007"] = 16,
    ["eGUEST_008"] = 17,
    ["eGUEST_009"] = 18,
    ["eGUEST_010"] = 19,
    ["eGUEST_011"] = 20,
    ["eGUEST_012"] = 21,
    ["eGUEST_013"] = 22,
    ["eGUEST_014"] = 23,
    ["eGUEST_015"] = 24,
    ["eGUEST_016"] = 25,
    ["eGUEST_017"] = 26,
    ["eGUEST_018"] = 27,
    ["eGUEST_019"] = 28,
    ["eGUEST_020"] = 29,
    ["eGUEST_021"] = 30,
    ["eGUEST_022"] = 31,
    ["eGUEST_023"] = 32,
    ["eGUEST_024"] = 33,
    ["eGUEST_025"] = 34,
    ["eMAX"] = 35,
    ["EPlayableCharacterID_MAX"] = 36,
}
local CharacterIDToStartingStats ={
    ["Hikari"]   = {["HP"] = 325,["MP"] = 40}, --eFENCER
    ["Ochette"]  = {["HP"] = 250,["MP"] = 40},  -- eHunter
    ["Castii"]   = {["HP"] = 300,["MP"] = 50}, -- eALCHEMIST
    ["Partitio"] = {["HP"] = 275,["MP"] = 50}, --eMERCHANT
    ["Temenos"]  = {["HP"] = 225,["MP"] = 65}, --ePRIEST
    ["Osvald"]   = {["HP"] = 200,["MP"] = 60}, --ePROFESSOR
    ["Throne"]   = {["HP"] = 250,["MP"] = 40}, --eTHIEF
    ["Agnea"]    = {["HP"] = 225,["MP"] = 50}, --eDANCER
}



local pc = UEHelpers:GetPlayerController() -- required for getting world context
local __WorldContext = pc:GetWorld() -- required for some functions.

function OnItemRecieve(ItemName, PlayerName)
    local ItemFunction = GetItemFunction()
    --local LibDialog = StaticFindObject("/Script/Majesty.Default__LibDialog")
    if (ItemFunction==nil) then
        return
    end


    ItemNameLabel = ItemNameToItemLabel[ItemName]

    if(ItemNameLabel == nil)then
        print(ItemName.." is not a valid itemname to add into backpack")
        return
    end

    print("giving item "..ItemNameLabel)
    -- FName ItemId, int32 AddNum, class UObject* __WorldContext, bool& success)
    ItemFunction:AddBackpackItem(FName(ItemNameToItemLabel[ItemName]),1, __WorldContext, {true})
    table.insert(ChestItemQueue,ItemName.." from "..PlayerName)
end


function PreTextHook(self,text)
    print("we ran")
   local ShowTextArgument = text:get()
   local Context = self:get()
   ShowTextArgument=FText("This is the local ShowText Variable")
   local ShowTextArgumen2 = text:get()
   print(ShowTextArgument2:ToString())
    
end


function GiveCharacter(characterName)
    local SaveGame = GetSaveGame()
    print("calling give character")
    local CharSaveDataUtil = GetCharcterSaveDataUtil() 

    if SaveGame==nil or CharSaveDataUtil == nil then
        print_debug("SaveGame or CharacterSaveDataUtil is nil in GiveCharacter")
        return
    end

    local OutResult --bool
    local outIsAddMainMember = true --bool
    if IsMainPartyFull() then
        outIsAddMainMember = false
    end
    SaveGame:JoinPlayerCharacterToParty(EPlayableCharacterID[characterName],OutResult,outIsAddMainMember)
    CharSaveDataUtil:SetCharacterRawHP(EPlayableCharacterID[characterName],CharacterIDToStartingStats[characterName]["HP"])
    CharSaveDataUtil:SetCharacterRawMP(EPlayableCharacterID[characterName],CharacterIDToStartingStats[characterName]["MP"])
end

function RemoveCharacter(partyType,index)
    --local characterID = EPlayableCharacterID[characterName]
    local SaveGame = GetSaveGame()
    if SaveGame==nil then 
        return
    end

    local PlayerParty = SaveGame.PlayerParty
    if PlayerParty==nil then
        return
    end

    if partyType == "MainMember" then
       PlayerParty.MainMemberID[index] = -1
    else
       PlayerParty.SubMemberID[index] = -1
    end
end

function IsMainPartyFull()
    print_debug("Calling is main party full")
    local SaveGame = GetSaveGame()
    if SaveGame==nil then 
        print_debug("Savegame is nil in IsMainPartyFull")
        return
    end

    local PlayerParty = SaveGame.PlayerParty
    if PlayerParty==nil then
        print_debug("PlayerParty is nil in IsMainPartyFull")
        return
    end

    for i=1,4 do
        if PlayerParty[i] == -1 then
            print_debug("returning false in IsMainPartyFull")
            return false
        end
    end
    print_debug("returning true in IsMainPartyFull")
    return true
end
function SetChestText()
    -- might have to make this pre and post function hook
    --RegisterHook("/Game/UserInterface/Common/BP/Dialog/UICommonDialogItemBP.UICommonDialogItemBP_C:SetText",PreTextHook,PostTextHook) 

end



function PostTextHook()
    print("we doing this3")
   --print(self:get())
   --FunctionContext = self:get()
   --self:set(FText("YA")) 
   --FunctionContext.ShowText =FText("YAAA")
    --if popup_text~=FText("") then
    --    FunctionContext.ShowText = popup_text
    --end
end

