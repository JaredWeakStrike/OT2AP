---@diagnostic disable: undefined-global
---@diagnostic disable: undefined-field
require "archipelago"
local NoChestName = {}

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

    local AllLodadedChests = GetAllChests()
    if(AllLodadedChests==nil)then
        return output
    end 
    for k,v in ipairs(AllLodadedChests) do
        local ChestName = ChestNamefromID(v.ObjectData.ID)
        if(ChestName == nil) then
            if(NoChestName[v.ObjectData.ID]==nil) then
                print(v.ObjectData.ID.." is invalid for id")
                NoChestName[v.ObjectData.ID] = true
            end
            return output
        end

        local APID = GetAPLocationIDfromName(ChestName)
        if (APID == nil) then
            if NoChestName[ChestName]==nil then
                NoChestName[ChestName]=true
                print(ChestName.." Has no APID")
            end
            return output
        end

        if(v.IsOpenFlag == true and IsLocationChecked(APID)==false) then
            print("we have inserted the apid to the output")
            table.insert(output, APID)
        end
    end

    return output
end


function ChestPopupLoop()
    local LibDialog = GetLibDialog()
    IsRunningReturn = {}
    --void IsDialogRunning(bool& IsRunning);
    -- if IsRunning == false then no dialog is running thus able to call chest popup
    if(LibDialog~=nil) then
        LibDialog:IsDialogRunning(IsRunningReturn)
    end

    if(IsRunningReturn.IsRunning==false and next(ChestItemQueue))then
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