---@diagnostic disable: undefined-global
---@diagnostic disable: undefined-field
require "archipelago"

function SendLocation()
    local AllLodadedChests = GetAllChests()
    for k,v in ipairs(AllLodadedChests) do
        if(v.IsOpen==false)then
            table.insert(ChestItemQueue,"You have opend chest ID ")
        end
    end
end

function CheckChests()
    local output = {}
    print("we are checking chests")
    local AllLodadedChests = GetAllChests()
    if(AllLodadedChests==nil)then
        return output
    end 
    for k,v in ipairs(AllLodadedChests) do
        local ChestName = ChestNamefromID(v.ObjectData.ID)
        if(ChestName == nil) then
            print(v.ObjectData.ID.." is invalid for id")
            return output
        end

        local APID = GetAPLocationIDfromName(ChestName)
        if (APID == nil)then
            print(ChestName.." Has no APID")
            return output
        end
        for k2,v2 in ipairs(GetAPMissingLocations()) do
            --print(string.format("%x",v2))
            --
        end
        print(GetAPMissingLocations()[APID])
        --print(GetAPMissingLocations())
        if(v.IsOpenFlag == true and GetAPMissingLocations()[APID] ~= nil) then
            print("we have inserted the apid to the output")
            table.insert(output, APID)
        end
    end

    return output
end

function IsLocationChecked(locationID)
    local MissingLocations = GetAPMissingLocations()
    local CheckedLocations = GetAPCheckedLocations()
    if #MissingLocations > #CheckedLocations then
        for _, v in ipairs(CheckedLocations) do
            if (v==locationID) then
                return true
            end
        end
    else -- checked locations > missing locations
        for _, v in ipairs(MissingLocations) do
            if (v==locationID) then
                return false
            end
        end
    end
    return nil
end


function ChestPopupLoop()
    local LibDialog = GetLibDialog()
    output = {}
    --void IsDialogRunning(bool& IsRunning);
    -- if IsRunning == false then no dialog is running thus able to call chest popup
    if(LibDialog~=nil)then
        LibDialog:IsDialogRunning(output)
    end

    if(output.IsRunning==false and next(ChestItemQueue))then
        OpenDefaultChest(ChestItemQueue[1])
        table.remove(ChestItemQueue,1)
    end
end

function OpenDefaultChest(text)
    -- todo: make this a global thing
    local DeafaultChest = GetDefaultChest()
    local foo = StaticFindObject("/Script/Majesty.Default__TextDataUtility")
    local TextRows = foo:GetGameTextDB(1) -- GameTextEN
    local TreasureBoxRow = TextRows:FindRow("eTHIEF_TREASUREBOX")
    TreasureBoxRow.Text = FText(text)
    TextRows:RemoveRow("eTHIEF_TREASUREBOX")
    TextRows:AddRow("eTHIEF_TREASUREBOX",TreasureBoxRow)
    DeafaultChest:Open()
end   


function OpenAllChets()
    local ItemDataUtility = GetItemDataUtility()
    local AllLodadedChests = GetAllChests()
    if(AllLodadedChests~=nil)then
        for k,v in ipairs(AllLodadedChests) do

            if(v.IsOpenFlag==false)then
                v:Open()
                local ItemLabelID = ItemDataUtility:ItemLabelToID(v.ObjectData.HaveItemLabel)
                local ItemIDToFName = ItemDataUtility:ItemIDToLabel(ItemLabelID)
                local ItemName = ItemLabelToName[ItemIDToFName:ToString()]
                if (ItemName~=nil) then
                     table.insert(ChestItemQueue,"You have opend chest ID "..v.ObjectData.ID.." That contains "..ItemName)
                else 
                    table.insert(ChestItemQueue,"You have opend chest ID "..v.ObjectData.ID.." That contains "..ItemIDToFName:ToString())
                end
                --table.insert(ChestItemQueue,"You have opend chest ID "..v.ObjectData.ID.." That contains "..)
               -- ChestPopupLoop()
            end
        end
    end
end