---@meta

---@class AKSObjectBP_C : AKSObjectBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ObjectMesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field ObjectId FName
---@field ParticleSystem UParticleSystemComponent
---@field BoxCollision UBoxComponent
---@field ObjectData FKSObjectData
---@field IsHouseIn boolean
local AKSObjectBP_C = {}

---@param ObjectData FKSObjectData
function AKSObjectBP_C:SetObjectData(ObjectData) end
---@param Location FVector
function AKSObjectBP_C:SetInitLocation(Location) end
function AKSObjectBP_C:ReceiveBeginPlay() end
---@param EndPlayReason EEndPlayReason::Type
function AKSObjectBP_C:ReceiveEndPlay(EndPlayReason) end
---@param EntryPoint int32
function AKSObjectBP_C:ExecuteUbergraph_KSObjectBP(EntryPoint) end


