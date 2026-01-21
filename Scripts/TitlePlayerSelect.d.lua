---@meta

---@class UTitlePlayerSelect_C : UTitleBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Today UWidgetAnimation
---@field ToNight UWidgetAnimation
---@field ['3DWorldMapWidget'] UWBP_3DPlayerSelectWidget_C
---@field BPW_TimeChangeButton UBPW_TimeChangeButton_C
---@field Image_64 UAcqImage
---@field MapFilter UAcqImage
---@field PlayerPanel UPlayerPanel_C
---@field CurrentTime float
---@field CurrentTimeType ETimeZoneType
---@field SelectingCharacter EPlayableCharacterID
local UTitlePlayerSelect_C = {}

---@param Result boolean
function UTitlePlayerSelect_C:Initialize(Result) end
---@param PlayerCharaId EPlayableCharacterID
---@param Result boolean
function UTitlePlayerSelect_C:SetupNewGame(PlayerCharaId, Result) end
function UTitlePlayerSelect_C:onDecidePlayer() end
---@return boolean
function UTitlePlayerSelect_C:IsChangingTime() end
---@param CurrentTime float
function UTitlePlayerSelect_C:SetCurrentTime(CurrentTime) end
---@param Time ETimeZoneType
---@param IsInitialize boolean
---@param IsTimeChanged boolean
function UTitlePlayerSelect_C:ChangeTime(Time, IsInitialize, IsTimeChanged) end
function UTitlePlayerSelect_C:OnFinishedFadeIn() end
function UTitlePlayerSelect_C:OnFinishedFadeOut() end
---@param IsSelect boolean
function UTitlePlayerSelect_C:OnFocusPlayer(IsSelect) end
---@param Result EREQUEST_RESULT
function UTitlePlayerSelect_C:StartMainStory(Result) end
function UTitlePlayerSelect_C:SetupFirstSaveData() end
function UTitlePlayerSelect_C:End() end
---@return boolean
function UTitlePlayerSelect_C:IsEnd() end
function UTitlePlayerSelect_C:Start() end
function UTitlePlayerSelect_C:OnCursorUp() end
function UTitlePlayerSelect_C:OnCursorDown() end
function UTitlePlayerSelect_C:OnCursorLeft() end
function UTitlePlayerSelect_C:OnCursorRight() end
function UTitlePlayerSelect_C:OnMenuButtonX() end
function UTitlePlayerSelect_C:OnMenuButtonY() end
function UTitlePlayerSelect_C:OnMenuLB() end
function UTitlePlayerSelect_C:OnMenuRB() end
function UTitlePlayerSelect_C:OnMenuButtonStart() end
function UTitlePlayerSelect_C:OnMenuButtonSelect() end
function UTitlePlayerSelect_C:OnCursorUpRepeat() end
function UTitlePlayerSelect_C:OnCursorDownRepeat() end
function UTitlePlayerSelect_C:OnCursorLeftRepeat() end
function UTitlePlayerSelect_C:OnCursorRightRepeat() end
function UTitlePlayerSelect_C:OnMenuDecideRepeat() end
function UTitlePlayerSelect_C:OnMenuCancelRepeat() end
function UTitlePlayerSelect_C:OnMenuButtonXRepeat() end
function UTitlePlayerSelect_C:OnMenuButtonYRepeat() end
function UTitlePlayerSelect_C:OnMenuButtonStartRepeat() end
function UTitlePlayerSelect_C:OnMenuButtonSelectRepeat() end
---@param AxisValue float
function UTitlePlayerSelect_C:OnRightAxisX(AxisValue) end
---@param AxisValue float
function UTitlePlayerSelect_C:OnRightAxisY(AxisValue) end
function UTitlePlayerSelect_C:OnMenuLStickButton() end
function UTitlePlayerSelect_C:OnMenuRStickButton() end
function UTitlePlayerSelect_C:OnPlusButton() end
function UTitlePlayerSelect_C:OnMinusButton() end
function UTitlePlayerSelect_C:OnRightAxisUp() end
function UTitlePlayerSelect_C:OnRightAxisDown() end
function UTitlePlayerSelect_C:OnMenuRBRelease() end
---@param AxisValue float
function UTitlePlayerSelect_C:OnGamePadAxisX(AxisValue) end
---@param AxisValue float
function UTitlePlayerSelect_C:OnGamePadAxisY(AxisValue) end
function UTitlePlayerSelect_C:OnCursorUpRelease() end
function UTitlePlayerSelect_C:OnCursorDownRelease() end
function UTitlePlayerSelect_C:OnCursorLeftRelease() end
function UTitlePlayerSelect_C:OnCursorRightRelease() end
function UTitlePlayerSelect_C:OnAnyButton() end
---@param IsLeftInput boolean
function UTitlePlayerSelect_C:OnListPaging(IsLeftInput) end
function UTitlePlayerSelect_C:OnMenuRTrigger() end
function UTitlePlayerSelect_C:OnMenuLTrigger() end
function UTitlePlayerSelect_C:OnMenuRightUpRepeat() end
function UTitlePlayerSelect_C:OnMenuRightDownRepeat() end
function UTitlePlayerSelect_C:ChangeTimeZone() end
function UTitlePlayerSelect_C:WorldMapZoomIn() end
function UTitlePlayerSelect_C:WorldMapZoomOut() end
function UTitlePlayerSelect_C:ChangeStatusRight() end
function UTitlePlayerSelect_C:ChangeStatusLeft() end
---@param AxisaValue float
function UTitlePlayerSelect_C:HelpScrollAxis(AxisaValue) end
function UTitlePlayerSelect_C:OnAnyKey() end
function UTitlePlayerSelect_C:Construct() end
---@param AxisValue float
function UTitlePlayerSelect_C:OnLeftAxisY(AxisValue) end
---@param AxisValue float
function UTitlePlayerSelect_C:OnLeftAxisX(AxisValue) end
function UTitlePlayerSelect_C:OnMenuDecide() end
function UTitlePlayerSelect_C:OnMenuCancel() end
function UTitlePlayerSelect_C:OnMenuLBRepeat() end
function UTitlePlayerSelect_C:OnMenuRBRepeat() end
---@param AxisValue float
function UTitlePlayerSelect_C:WorldMapSlowCursorX(AxisValue) end
---@param AxisValue float
function UTitlePlayerSelect_C:WorldMapSlowCursorY(AxisValue) end
---@param EntryPoint int32
function UTitlePlayerSelect_C:ExecuteUbergraph_TitlePlayerSelect(EntryPoint) end


