---@diagnostic disable: undefined-global
---@diagnostic disable: undefined-field

require "StaticObjectGetters"
require "DatabaseInfo"

local UEHelpers = require("UEHelpers")
popup_text = FText("")
ChestItemQueue={}

local pc = UEHelpers:GetPlayerController() -- required for getting world context
local __WorldContext = pc:GetWorld() -- required for some functions.

function OnItemRecieve(ItemName, PlayerName)
    local ItemFunction = GetItemFunction()
    local LibDialog = StaticFindObject("/Script/Majesty.Default__LibDialog")

    ItemNameLabel = ItemNameToItemLabel[ItemName]
    if(ItemNameLabel == nil)then
        print(ItemName.." is not a valid itemname")
    else
        
        print("giving item "..ItemNameLabel)
        -- FName ItemId, int32 AddNum, class UObject* __WorldContext, bool& success)
        ItemFunction:AddBackpackItem(FName(ItemNameToItemLabel[ItemName]),1, __WorldContext, {true})
        table.insert(ChestItemQueue,ItemName.." from "..PlayerName)
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

