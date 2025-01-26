popup_text = FText("")

function give_player_item(player_item)
    --local player_item_name = FName(item_id_to_item_name[player_item])
    local SaveDataManager = FindFirstOf("KSSaveDataManagerBP_C")
    local default_chest = StaticFindObject("/Game/Environment/BP/Object/TreasureBoxBP.Default__TreasureBoxBP_C")

    -- FName,int32
    --popup_text = FText(item_id_to_item_name[player_item])
    popup_text = FText("kmaoi")
    player_item_name = FName("Olive of Life (M)")
    SaveDataManager:AddItemToBackpack(player_item_name,1)
    
    default_chest:Open()
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
    RegisterHook("/Game/UserInterface/Common/BP/Dialog/UICommonDialogItemBP.UICommonDialogItemBP_C:SetText",PreTextHook,PostTextHook) 
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
