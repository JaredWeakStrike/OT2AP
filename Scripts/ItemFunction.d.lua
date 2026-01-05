---@meta

---@class UItemFunction_C : UBlueprintFunctionLibrary
local UItemFunction_C = {}

---@param EquippedItemData TMap<FName, FEquippedItemData>
---@param RemoveFixedEquip boolean
---@param __WorldContext UObject
function UItemFunction_C:GetEquippedItemData_ForGaldera(EquippedItemData, RemoveFixedEquip, __WorldContext) end
---@param ItemData FItemData
---@param ItemLabel FName
---@param __WorldContext UObject
---@param ItemAilment TArray<FAilmentHandler>
function UItemFunction_C:GetItemAilmentFromData_MenuOnly(ItemData, ItemLabel, __WorldContext, ItemAilment) end
---@param ItemLabel TArray<FName>
---@param __WorldContext UObject
---@param RetText FText
UItemFunction_C['Get Item Text Name Only'] = function(self, ItemLabel, __WorldContext, RetText) end
---@param ItemLabel FName
---@param __WorldContext UObject
---@param IsMax boolean
function UItemFunction_C:IsBackpackItemMax(ItemLabel, __WorldContext, IsMax) end
---@param CharacterID int32
---@param InvMinusAilment boolean
---@param Part EEQUIPMENT_PART
---@param __WorldContext UObject
---@param CharacterParam FCharacterParam
function UItemFunction_C:GetAllArmorEffectParamsByStructureToRemoveSelectPart(CharacterID, InvMinusAilment, Part, __WorldContext, CharacterParam) end
---@param AilmentType EAILMENT_TYPE::Type
---@param ItemLabel FName
---@param __WorldContext UObject
---@param HasAilment boolean
function UItemFunction_C:HasAilmentFromSelectedItem(AilmentType, ItemLabel, __WorldContext, HasAilment) end
---@param CharaID int32
---@param AilmentType EAILMENT_TYPE::Type
---@param __WorldContext UObject
---@param HasAilment boolean
function UItemFunction_C:HasAilmentFromEquipItem(CharaID, AilmentType, __WorldContext, HasAilment) end
---@param ItemLabelList TArray<FName>
---@param NumList TArray<int32>
---@param ShowBackpack boolean
---@param __WorldContext UObject
---@param Text FText
function UItemFunction_C:GetItemTextFromArray(ItemLabelList, NumList, ShowBackpack, __WorldContext, Text) end
---@param ItemLabel FName
---@param Num int32
---@param ShowBackpack boolean
---@param __WorldContext UObject
---@param Text FText
UItemFunction_C['Get Item Text'] = function(self, ItemLabel, Num, ShowBackpack, __WorldContext, Text) end
---@param Money int32
---@param __WorldContext UObject
---@param Text FText
UItemFunction_C['Get Money Text'] = function(self, Money, __WorldContext, Text) end
---@param ItemLabel FName
---@param __WorldContext UObject
---@param IsMoney boolean
UItemFunction_C['Is Item Money'] = function(self, ItemLabel, __WorldContext, IsMoney) end
---@param __WorldContext UObject
---@param Num int32
UItemFunction_C['Get Meet Num'] = function(self, __WorldContext, Num) end
---@param SubNum int32
---@param __WorldContext UObject
function UItemFunction_C:SubMeetItem(SubNum, __WorldContext) end
---@param ItemLabel FName
---@param AdditionNum int32
---@param __WorldContext UObject
---@param AddItem boolean
UItemFunction_C['Has Add Item'] = function(self, ItemLabel, AdditionNum, __WorldContext, AddItem) end
---@param ItemLabel FName
---@param CharacterID int32
---@param invMinusParam boolean
---@param __WorldContext UObject
---@param EquipmentRevision FCharacterParam
---@param Result boolean
function UItemFunction_C:GetEquipmentRevision(ItemLabel, CharacterID, invMinusParam, __WorldContext, EquipmentRevision, Result) end
---@param ItemData FItemData
---@param CharacterID int32
---@param invMinusParam boolean
---@param __WorldContext UObject
---@param EquipmentRevision FCharacterParam
function UItemFunction_C:GetEquipmentRevisionFromData(ItemData, CharacterID, invMinusParam, __WorldContext, EquipmentRevision) end
---@param ItemData FItemData
---@param __WorldContext UObject
---@param TargetType EBATTLE_TARGET_TYPE
function UItemFunction_C:GetItemTargetFromData(ItemData, __WorldContext, TargetType) end
---@param ItemData FItemData
---@param __WorldContext UObject
---@param Attribute EATTRIBUTE_TYPE
function UItemFunction_C:GetItemAttributeFromData(ItemData, __WorldContext, Attribute) end
---@param ItemLabel FName
---@param __WorldContext UObject
---@param Attribute EATTRIBUTE_TYPE
---@param Result boolean
function UItemFunction_C:GetItemAttribute(ItemLabel, __WorldContext, Attribute, Result) end
---@param ItemLabel FName
---@param __WorldContext UObject
---@param CommandEffecter UDataTable
---@param Result boolean
function UItemFunction_C:GetItemCommandEffecter(ItemLabel, __WorldContext, CommandEffecter, Result) end
---@param ItemData FItemData
---@param __WorldContext UObject
---@param Result boolean
function UItemFunction_C:IsEquipmentItemByData(ItemData, __WorldContext, Result) end
---@param ItemLabel FName
---@param __WorldContext UObject
---@param Result boolean
function UItemFunction_C:IsEquipmentItemByID(ItemLabel, __WorldContext, Result) end
---@param __WorldContext UObject
---@param ItemData FItemData
function UItemFunction_C:MakeInvalidItemData(__WorldContext, ItemData) end
---@param ItemData FItemData
---@param __WorldContext UObject
---@param ItemAilment TArray<FAilmentHandler>
function UItemFunction_C:GetItemAilmentFromData(ItemData, __WorldContext, ItemAilment) end
---@param ItemLabel FName
---@param __WorldContext UObject
---@param Result boolean
---@param ItemAilment TArray<FAilmentHandler>
function UItemFunction_C:GetItemAilment(ItemLabel, __WorldContext, Result, ItemAilment) end
---@param ItemLabel FName
---@param __WorldContext UObject
---@param EquipmentCategory EEquipmentCategory
---@param Result boolean
function UItemFunction_C:GetItemEquipmentCategory(ItemLabel, __WorldContext, EquipmentCategory, Result) end
---@param ItemLabel FName
---@param __WorldContext UObject
---@param ItemId int32
---@param Result boolean
function UItemFunction_C:GetItemID(ItemLabel, __WorldContext, ItemId, Result) end
---@param __WorldContext UObject
---@param ItemLabels TArray<FName>
function UItemFunction_C:GetItemLabels(__WorldContext, ItemLabels) end
---@param ItemLabel FName
---@param __WorldContext UObject
---@param ItemNameID FName
---@param Result boolean
function UItemFunction_C:GetItemName(ItemLabel, __WorldContext, ItemNameID, Result) end
---@param ItemLabel FName
---@param __WorldContext UObject
---@param DisplayType EITEM_DISPLAY_TYPE
function UItemFunction_C:GetItemDisplayType(ItemLabel, __WorldContext, DisplayType) end
---@param ItemId FName
---@param CharacterID int32
---@param __WorldContext UObject
---@param CharacterParam FCharacterParam
function UItemFunction_C:GetEquipEffectParamsByStructure(ItemId, CharacterID, __WorldContext, CharacterParam) end
---@param Index EEQUIPMENT_PART
---@param __WorldContext UObject
---@param ItemId int32
---@param ItemLabel FName
function UItemFunction_C:GetFirstEquipmentID(Index, __WorldContext, ItemId, ItemLabel) end
---@param ItemId FName
---@param OutEquipEffectParam FCharacterParam
---@param CharacterID int32
---@param InvMinusAilment boolean
---@param __WorldContext UObject
function UItemFunction_C:AddWeaponEffectParamsByStructure(ItemId, OutEquipEffectParam, CharacterID, InvMinusAilment, __WorldContext) end
---@param EquipmentCategory EEquipmentCategory
---@param __WorldContext UObject
---@param EquipmentPart EEQUIPMENT_PART
function UItemFunction_C:EquipmentCategoryToEquipmentPart(EquipmentCategory, __WorldContext, EquipmentPart) end
---@param CharacterID int32
---@param SelectedWeaponLabel FName
---@param InvMinusAilment boolean
---@param __WorldContext UObject
---@param Params TArray<int32>
function UItemFunction_C:GetAllArmorAndWeaponParamByIntArray(CharacterID, SelectedWeaponLabel, InvMinusAilment, __WorldContext, Params) end
---@param CharacterParam FCharacterParam
---@param __WorldContext UObject
---@param Params TArray<int32>
function UItemFunction_C:ConvertCharacterParamToEquipIntArray(CharacterParam, __WorldContext, Params) end
---@param CharacterID int32
---@param InvMinusAilment boolean
---@param __WorldContext UObject
---@param CharacterParam FCharacterParam
function UItemFunction_C:GetAllArmorEffectParamsByStructure(CharacterID, InvMinusAilment, __WorldContext, CharacterParam) end
---@param ItemId FName
---@param OutEquipEffectParam FCharacterParam
---@param CharacterID int32
---@param invMinusParam boolean
---@param __WorldContext UObject
function UItemFunction_C:AddEquipEffectParamsByStructure(ItemId, OutEquipEffectParam, CharacterID, invMinusParam, __WorldContext) end
---@param ItemCategory EItemCategoryData
---@param EquipmentCategory EEquipmentCategory
---@param __WorldContext UObject
---@param Icon UTexture2D
function UItemFunction_C:GetIconTexture(ItemCategory, EquipmentCategory, __WorldContext, Icon) end
---@param EquipmentCategory EEquipmentCategory
---@param __WorldContext UObject
---@param Weapon boolean
function UItemFunction_C:IsWeapon(EquipmentCategory, __WorldContext, Weapon) end
---@param ItemLabel FName
---@param __WorldContext UObject
---@param Max int32
function UItemFunction_C:GetBackpackItemMax(ItemLabel, __WorldContext, Max) end
---@param __WorldContext UObject
---@return int32
function UItemFunction_C:GetItemDataCount(__WorldContext) end
---@param EquippedItemData TMap<FName, FEquippedItemData>
---@param RemoveFixedEquip boolean
---@param __WorldContext UObject
function UItemFunction_C:GetEquippedItemData(EquippedItemData, RemoveFixedEquip, __WorldContext) end
---@param ItemLabel FName
---@param __WorldContext UObject
---@param Find boolean
---@param Num int32
function UItemFunction_C:FindBackpackItem(ItemLabel, __WorldContext, Find, Num) end
---@param ItemId FName
---@param AddNum int32
---@param __WorldContext UObject
---@param success boolean
function UItemFunction_C:AddBackpackItem(ItemId, AddNum, __WorldContext, success) end
---@param ItemId FName
---@param SubNum int32
---@param __WorldContext UObject
function UItemFunction_C:SubBackpackItem(ItemId, SubNum, __WorldContext) end


