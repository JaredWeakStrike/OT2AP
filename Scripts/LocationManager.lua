---@diagnostic disable: undefined-global
---@diagnostic disable: undefined-field
require "archipelago"
local NoChestName = {}


function SendLocation()
    local AllLodadedChests = GetAllChests()
    if(AllLodadedChests==nil) then
        print_debug("AllloadedChests is nil in SendLocation")
        return output
    end 
    
    for _,Chest in ipairs(AllLodadedChests) do
        if(Chest.IsOpen==false)then
            table.insert(ChestItemQueue,"You have opend chest ID ")
        end
    end
end

function CheckChests()
    local output = {}
    local ChestIDs = {}
    local AllLodadedChests = GetAllChests()
    if(AllLodadedChests==nil) then
        --print_debug("AllloadedChests is nil in ChestChests")
        return output
    end 

    for _, Chest in pairs(AllLodadedChests) do
        local ChestName = ChestNamefromID(Chest.ObjectData.ID)
        if(ChestName == nil) then
            if(NoChestName[Chest.ObjectData.ID]==nil) then
                print(Chest.ObjectData.ID.." is invalid for id")
                NoChestName[Chest.ObjectData.ID] = true
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

        if(Chest.IsOpenFlag == true and IsLocationChecked(APID)==false) then
            print("we have inserted the apid to the output")
            table.insert(output, APID)
        end

        if(ScoutedLocations[APID]==nil)then
            table.insert(ChestIDs,APID)
        end

    end
    --ScoutLocations(ChestIDs)
    return output
end

local PopupLoopHasRun = false
local PopupTimer = 0
function PopupLoop()
    local LevelManagerUtil = GetLevelManagerUtil()
    if PopupLoopHasRun == false then
        PlayerCharacters = FindAllOf("KSPlayerCharacter_C")
        if PlayerCharacters~=nil and #PlayerCharacters>=1 then
            print("incrementing popup timer "..PopupTimer)
            PopupTimer = PopupTimer+1
        end
        if PopupTimer==10 then
            local CharacterResourceManager = GetCharacterResourceManager()
            CharacterResourceManager:RefreshLoadCharacters({FName("ShoJ000_Mle")}) -- load partitio
            PopupLoopHasRun = true
        end

    elseif(IsGameOverPlaying() == false and LevelManagerUtil:GetNowLevelName():ToString()~="None" and next(ChestItemQueue))then
        MerchantPopup(ChestItemQueue[1])
        table.remove(ChestItemQueue,1)
    end

end

function OpenDefaultChest(text)
    -- todo: make this a global thing
    local DefaultChest = GetDefaultChest()
    local TextDataUtil = StaticFindObject("/Script/Majesty.Default__TextDataUtility")
    if TextDataUtil==nil then
        print_debug("TextDataUtil is nil in OpenDefaultChest")
        return
    end
    local TextRows = TextDataUtil:GetGameTextDB(1) -- GameTextEN

    if DefaultChest==nil or TextRows==nil then
        print_debug("Default chest or text rows is nil in OpenDefaultChest")
        return
    end

    TextRows:FindRow("eTHIEF_TREASUREBOX").Text = FText(text)
    DefaultChest:Open()
end

local MerchantResultcounter = 0
function MerchantPopup(text)
    local LibUI = GetLibUI()
    local GameTextDB = GetGameTextDB()
    local UIManager = StaticFindObject("/Script/Majesty.Default__BusinessWithNpcNotificationBase")
    ---@class FSpActMerchantResult
    local MerchantResult = UIManager.m_SpActMerchantResult
    MerchantResult.NPCID=9007 --unsed character
    MerchantResult.ResultTextLabel = FName("eTHIEF_TREASUREBOX")
    MerchantResult.Result=1
    
    GameTextDB:FindRow("eTHIEF_TREASUREBOX").Text = FText(text)
    print(text)
    print(MerchantResultcounter)
    MerchantResultcounter=MerchantResultcounter+1
    LibUI:OpenBusinessWithNpcNotification(MerchantResult,false)
    print("called OpenBuisness")
end

function OpenAllChets()
    local ItemDataUtility = GetItemDataUtility()
    local AllLodadedChests = GetAllChests()
    if ItemDataUtility==nil or AllLodadedChests==nil then
        print_debug("itemdata util or allloaded chest is nil")
        return
    end

    for _,Chest in ipairs(AllLodadedChests) do
        if(Chest.IsOpenFlag==false)then
            Chest:Open()
            local ItemLabelID = ItemDataUtility:ItemLabelToID(Chest.ObjectData.HaveItemLabel)
            local ItemIDToFName = ItemDataUtility:ItemIDToLabel(ItemLabelID)
            local ItemName = ItemLabelToName[ItemIDToFName:ToString()]
            if (ItemName~=nil) then
                 table.insert(ChestItemQueue,"You have opend chest ID "..Chest.ObjectData.ID.." That contains "..ItemName)
            else 
                table.insert(ChestItemQueue,"You have opend chest ID "..Chest.ObjectData.ID.." That contains "..ItemIDToFName:ToString())
            end
            --table.insert(ChestItemQueue,"You have opend chest ID "..v.ObjectData.ID.." That contains "..)
           -- ChestPopupLoop()
        end
    end
end