---@meta

---@class ATreasureBoxBP_C : AKSObjectBP_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CloseTreasure_Ocean_Wood1 UStaticMeshComponent
---@field ParticleSystem4 UParticleSystemComponent
---@field CloseTreasure_Ocean_Wood UStaticMeshComponent
---@field OpenTreasure_Ocean_Wood1 UStaticMeshComponent
---@field ParticleSystem3 UParticleSystemComponent
---@field OpenTreasure_Ocean_Wood UStaticMeshComponent
---@field ParticleSystem2 UParticleSystemComponent
---@field ParticleSystem1 UParticleSystemComponent
---@field CloseTreasure_Ocean1 UStaticMeshComponent
---@field OpenTreasure_Ocean1 UStaticMeshComponent
---@field CloseTreasure_Ocean UStaticMeshComponent
---@field OpenTreasure_Ocean UStaticMeshComponent
---@field TreasureOpenTrigger UBoxComponent
---@field OpenTreasure_Wood UStaticMeshComponent
---@field CloseTreasure_Wood UStaticMeshComponent
---@field OpenTreasure UStaticMeshComponent
---@field CloseTreasure UStaticMeshComponent
---@field IsOpenFlag boolean
---@field OpenTimer float
---@field Position FVector
---@field SecretAccessPoint UParticleSystemComponent
---@field EventName FName
---@field SetOffset boolean
---@field LotteryItemRand_0 int32
local ATreasureBoxBP_C = {}

function ATreasureBoxBP_C:SetInputModeToChara() end
---@param IsOpen boolean
function ATreasureBoxBP_C:SpawnSecretPointEffect(IsOpen) end
---@param ObjectData FKSObjectData
function ATreasureBoxBP_C:SetObjectData(ObjectData) end
---@param ItemLabel FName
function ATreasureBoxBP_C:OpenMaxItemNumDialog(ItemLabel) end
---@param Item_Label FName
---@param Item_Num int32
function ATreasureBoxBP_C:LotteryItem(Item_Label, Item_Num) end
---@param return boolean
function ATreasureBoxBP_C:IsRandomItem(Result) end
---@param ItemLabel FName
---@param ItemCount int32
function ATreasureBoxBP_C:PickItem(ItemLabel, ItemCount) end
---@param SelectIndex int32
function ATreasureBoxBP_C:MaxItemNumDialogCallback(SelectIndex) end
function ATreasureBoxBP_C:PlayEvent() end
---@param Result EREQUEST_RESULT
function ATreasureBoxBP_C:SequenceRequestCallback(Result) end
---@return FName
function ATreasureBoxBP_C:GetOpenText() end
---@return boolean
function ATreasureBoxBP_C:IsOpenedTreasureBox() end
---@param SelectIndex int32
function ATreasureBoxBP_C:DialogFinishCallback(SelectIndex) end
---@param IsEnable boolean
function ATreasureBoxBP_C:CheckAccessPoint(IsEnable) end
---@param IsOpen boolean
function ATreasureBoxBP_C:SetupTreasureBoxVisible(IsOpen) end
---@param IsComplete boolean
function ATreasureBoxBP_C:IsCanOpenBox(IsComplete) end
---@param TreasureIndex int32
---@param Position FVector
function ATreasureBoxBP_C:AlreadyOpenCheck(TreasureIndex, Position) end
---@param success boolean
function ATreasureBoxBP_C:OpenDialog(success) end
function ATreasureBoxBP_C:Open() end
---@param Enable boolean
function ATreasureBoxBP_C:SetObjectEnable(Enable) end
function ATreasureBoxBP_C:ReceiveDestroyed() end
function ATreasureBoxBP_C:ActionEnter() end
---@param DeltaSeconds float
function ATreasureBoxBP_C:ReceiveTick(DeltaSeconds) end
function ATreasureBoxBP_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ATreasureBoxBP_C:ExecuteUbergraph_TreasureBoxBP(EntryPoint) end


