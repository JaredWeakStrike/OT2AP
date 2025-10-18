require "StaticObjectGetters"
require "DatabaseInfo"
local UEHelpers = require("UEHelpers")
popup_text = FText("")
ChestItemQueue={}
local pc = UEHelpers:GetPlayerController()
local __WorldContext = pc:GetWorld()
function OnItemRecieve(ItemName, PlayerName)
    --local FItemName = FName("Iron Sword")
    local ItemFunction = GetItemFunction()
    local LibDialog = StaticFindObject("/Script/Majesty.Default__LibDialog")
    --local Chest = FindFirstOf("TreasureBoxBP_C")
    --local tempFunction = ItemFunction.AddBackpackItem
    --print("adding backpack item")
    ItemNameLabel = ItemNameToItemLabel[ItemName]
    if(ItemNameLabel == nil)then
        print(ItemName.." is not a valid itemname")
    else
        -- get item function
        -- item id is the filename of for the item ITM_CSM_0220 is empowing lychee
        -- world context is an objcet but the world world works great
        -- true is the bool success but we dont care about that rn
        --FName ItemId, int32 AddNum, class UObject* __WorldContext, bool& success)
        ItemFunction:AddBackpackItem(FName(ItemNameToItemLabel[ItemName]),1, __WorldContext, {true})
        table.insert(ChestItemQueue,ItemName.." from "..PlayerName)
    end
end

function SendLocation()
    local AllLodadedChests = GetAllChests()
    for k,v in ipairs(AllLodadedChests) do
        
    end
end

function foo()
    
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

function PreTextHook(self,text)
    print("we ran")
   local ShowTextArgument = text:get()
   local Context = self:get()
   ShowTextArgument=FText("This is the local ShowText Variable")
   local ShowTextArgumen2 = text:get()
   print(ShowTextArgument2:ToString())
    
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

