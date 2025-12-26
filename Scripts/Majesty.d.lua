---@meta

---@class AAchievementManager : AAcqManagerBase
---@field m_Service UServiceConnecter
local AAchievementManager = {}

---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnWorldMapOpen(eNoticeType, NoticeArgs) end
function AAchievementManager:OnUnLockAchievement() end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnTitleScene(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnSwoonNpcByFc(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnSubStoryRecordOpen(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnSubStoryClear(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnStoryRecordReOpen(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnStoryRecordOpen(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnStartFieldMainSequenceAfterExBoss(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnRefreshFollowCharacter(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnPartyMemberChangeMenuOpen(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnOpenEndCardEpilogue(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnOpenEndCard(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnMusicRecordOpen(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnMainStoryTaskClear(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnMainStoryClear(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnJoinedCharacter(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnJobMenuOpen(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnItemMenuOpen(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnInformationFieldCommandOpen(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnGetItem(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnFinishFieldCommand(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnEquipMenuOpen(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnCreatedPlayerController(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnChangeVisitedLevel(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnBreak(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnBoostAttack(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnBeginLinerShip(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnAttack(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnAcquisitionAdvancedAbility(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnAcquisitionAbility(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:OnAbilityMenuOpen(eNoticeType, NoticeArgs) end
---@return AAchievementManager
function AAchievementManager:GetInstance() end
---@param achiveLabel FName
---@return EAchievementStatus
function AAchievementManager:GetAchievementStatus(achiveLabel) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:DelayOnEpilogueEndCardUnlockAchievement(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AAchievementManager:DelayOnEndCardUnlockAchievement(eNoticeType, NoticeArgs) end
---@param bEnable boolean
function AAchievementManager:Debug_ShowDebugInfo(bEnable) end
---@param FCType MJFieldCommandType
---@param Count int32
function AAchievementManager:Debug_SetFieldCommandSuccessCount(FCType, Count) end
---@return boolean
function AAchievementManager:Debug_ResetAllAchievement() end
---@param AchieveLabel FName
---@return boolean
function AAchievementManager:Debug_ForceUnlockAchievement(AchieveLabel) end
---@param AchieveLabel FName
---@return boolean
function AAchievementManager:Debug_ForceLockAchievement(AchieveLabel) end


---@class AAcqManagerBase : AActor
local AAcqManagerBase = {}

---@param DeltaSeconds float
function AAcqManagerBase:UpdateManager(DeltaSeconds) end
function AAcqManagerBase:StartManager() end
---@return boolean
function AAcqManagerBase:ResetManagerFromTitle() end
---@return boolean
function AAcqManagerBase:ResetManager() end
---@return boolean
function AAcqManagerBase:PrepareManager() end
function AAcqManagerBase:PostInitManager() end
function AAcqManagerBase:OnBeginPlay() end
---@return boolean
function AAcqManagerBase:IsAvailable() end
---@return boolean
function AAcqManagerBase:DestroyManager() end


---@class AAcqManagerFactory : AActor
---@field m_ManagerList UDataTable
---@field m_NameToClass TMap<FName, UClass>
---@field m_NameToBaseClass TMap<FName, UClass>
---@field m_BaseClassToName TMap<UClass, FName>
---@field m_apManagerTable TMap<FName, TWeakObjectPtr<AAcqManagerBase>>
local AAcqManagerFactory = {}

---@param CreatePhase EMANAGER_CREATE_PHASE
function AAcqManagerFactory:StartManagers(CreatePhase) end
---@param managerName FName
---@param initAfterSpawn FSetInitAfterSpawnInitAfterSpawn
function AAcqManagerFactory:SetInitAfterSpawn(managerName, initAfterSpawn) end
function AAcqManagerFactory:ResetTables() end
function AAcqManagerFactory:ResetManagersFromTitle() end
function AAcqManagerFactory:ResetManagersAll() end
---@param CreatePhase EMANAGER_CREATE_PHASE
function AAcqManagerFactory:ResetManagers(CreatePhase) end
---@param CreatePhase EMANAGER_CREATE_PHASE
function AAcqManagerFactory:PostInitManagers(CreatePhase) end
---@param objList TArray<UObject>
function AAcqManagerFactory:OnLoadedClassObject(objList) end
---@param managerName FName
---@return boolean
function AAcqManagerFactory:IsExist(managerName) end
---@param CreatePhase EMANAGER_CREATE_PHASE
---@return boolean
function AAcqManagerFactory:IsAvailableByCategory(CreatePhase) end
---@param managerTable TSoftObjectPtr<UDataTable>
function AAcqManagerFactory:Initialize(managerTable) end
---@param managerClass UClass
---@return AAcqManagerBase
function AAcqManagerFactory:GetManagerInstance(managerClass) end
---@param managerName FName
---@return AAcqManagerBase
function AAcqManagerFactory:GetManager(managerName) end
---@return AAcqManagerFactory
function AAcqManagerFactory:GetInstance() end
---@param CreatePhase EMANAGER_CREATE_PHASE
function AAcqManagerFactory:DestroyManagers(CreatePhase) end
---@param managerName FName
function AAcqManagerFactory:DestroyManager(managerName) end
---@param bShow boolean
function AAcqManagerFactory:Debug_ShowManagerInfo(bShow) end
---@param outDebugInfo FString
function AAcqManagerFactory:Debug_GetManagerInfo(outDebugInfo) end
---@param CreatePhase EMANAGER_CREATE_PHASE
---@return boolean
function AAcqManagerFactory:CreateManagersSequentially(CreatePhase) end
---@param CreatePhase EMANAGER_CREATE_PHASE
function AAcqManagerFactory:CreateManagers(CreatePhase) end
---@param CreatePhase EMANAGER_CREATE_PHASE
---@return boolean
function AAcqManagerFactory:CreateManagerClassesSequentially(CreatePhase) end


---@class AActionCommandBase : AActor
---@field m_strActionLabel FName
---@field m_cEnforcer ABattleCharacterBase
---@field m_acSubEnforcerList TArray<ABattleCharacterBase>
---@field m_acTarget TArray<ABattleCharacterBase>
---@field m_acSubTargetList TArray<ABattleCharacterBase>
---@field m_nOptionIndex int32
---@field m_strOptionData FName
---@field m_astrOptionDataList TArray<FName>
---@field m_bEnableRandomTarget boolean
---@field m_bEnableSkillALL boolean
---@field m_bEnableDamageUpWithFullHP boolean
---@field m_bSettledPlayOnce_OnRecovered boolean
---@field m_bAblityHit boolean
---@field m_bAttackHitFailed boolean
---@field m_bIsLastHit boolean
---@field m_bEnableRandomCover boolean
---@field m_bExecRandomCover boolean
---@field m_cRandomCoverEnforcer ABattleCharacterBase
---@field m_bExecutedCounterTrap boolean
---@field m_bIsForceWeakness boolean
---@field m_nAdditiveBreakDamage int32
---@field m_cSummonOwnerAbility AActionCommandBase
---@field m_bIsSummonAbility boolean
---@field m_bIsSummonLastHit boolean
---@field m_bIsSettledAutoTameMonster boolean
---@field m_cActionCommandSequencePlayer ULevelSequencePlayer
---@field m_cActionCommandSequenceActor ABattleAbilitySequenceActor
---@field m_cCommandSequence ULevelSequence
---@field m_bEnableCommandSequence boolean
---@field m_bReadyCommandSequence boolean
---@field m_nTotalSlideFrame int32
---@field m_bExecCommandSequence boolean
---@field m_bIsInfomation boolean
---@field m_bIsOnHitSE boolean
---@field m_strOnHitSEID FName
---@field m_bIsSessionSupport boolean
---@field m_bIsBusinessSupport boolean
---@field m_strBusinessSupportInfo FText
local AActionCommandBase = {}

---@param WeaponType EWEAPON_CATEGORY
---@return boolean
function AActionCommandBase:WeaponChangeCommand(WeaponType) end
---@return boolean
function AActionCommandBase:WaitSummonAbilityCommand() end
function AActionCommandBase:WaitSummonAbility() end
---@return boolean
function AActionCommandBase:WaitSessionSupporterCommand() end
---@return boolean
function AActionCommandBase:WaitSessionAbilityCommand() end
function AActionCommandBase:WaitLoadCommandSequence() end
---@return boolean
function AActionCommandBase:WaitEnemyActionCommand() end
function AActionCommandBase:WaitCaptureMainPartyCommand() end
function AActionCommandBase:WaitCallSubPartyCommand() end
---@return boolean
function AActionCommandBase:WaitBusinessSupporterCommand() end
function AActionCommandBase:SuspendActionCommand() end
function AActionCommandBase:StartCommandSequence() end
---@param TextID FName
---@return boolean
function AActionCommandBase:ShowInfomationCommand(TextID) end
---@return boolean
function AActionCommandBase:ShowBusinessSupportInfomationCommand() end
---@return boolean
function AActionCommandBase:SetupRandomAbilityEffect() end
---@param acTargetList TArray<ABattleCharacterBase>
function AActionCommandBase:SetTargetList(acTargetList) end
---@param bEnable boolean
---@param bLastHit boolean
---@param strActionLabel FName
---@param cOwnerAbility AActionCommandBase
---@return boolean
function AActionCommandBase:SetSummonAbility(bEnable, bLastHit, strActionLabel, cOwnerAbility) end
---@param acSubTargetList TArray<ABattleCharacterBase>
function AActionCommandBase:SetSubTargetList(acSubTargetList) end
---@param acSubEnforcerList TArray<ABattleCharacterBase>
function AActionCommandBase:SetSubEnforcerList(acSubEnforcerList) end
---@param bEnable boolean
function AActionCommandBase:SetSettledPlayOnce_OnRecovered(bEnable) end
---@param bExec boolean
function AActionCommandBase:SetSettledAutoTameMonster(bExec) end
---@param astrOptionDataList TArray<FName>
---@param strActionLabel FName
---@param nOptionIndex int32
---@param bUseGrowMagicBuff boolean
function AActionCommandBase:SetOptionDataList(astrOptionDataList, strActionLabel, nOptionIndex, bUseGrowMagicBuff) end
---@param strOptionData FName
---@param nOptionIndex int32
function AActionCommandBase:SetOptionData(strOptionData, nOptionIndex) end
---@param bExec boolean
function AActionCommandBase:SetExecutedCounterTrap(bExec) end
---@param cEnforcer ABattleCharacterBase
function AActionCommandBase:SetEnforcer(cEnforcer) end
---@param strInfoText FText
function AActionCommandBase:SetBusinessSupportInfomationText(strInfoText) end
---@param bFailed boolean
function AActionCommandBase:SetAttackHitFailed(bFailed) end
---@param nBreakDamage int32
function AActionCommandBase:SetAdditiveBreakDamage(nBreakDamage) end
---@param cSequenceActor ABattleAbilitySequenceActor
function AActionCommandBase:SetActionCommandSequenceActor(cSequenceActor) end
---@return boolean
function AActionCommandBase:ReturnSummonCharacterCommand() end
---@return boolean
function AActionCommandBase:ReturnSessionSupporterCommand() end
---@return boolean
function AActionCommandBase:ReturnBusinessSupporterCommand() end
---@param ActionCharacter ABattleCharacterBase
---@return boolean
function AActionCommandBase:ResumeActionModeForKSParty(ActionCharacter) end
function AActionCommandBase:ResumeActionCommandSequencer() end
---@param cCommandSequence TSoftObjectPtr<ULevelSequence>
function AActionCommandBase:RequestLoadCommandSequence(cCommandSequence) end
---@param SEID FName
---@return boolean
function AActionCommandBase:RegisterOnHitSECommand(SEID) end
---@param ActionCharacter ABattleCharacterBase
---@return boolean
function AActionCommandBase:PlayWeaponAttackCommand(ActionCharacter) end
---@param VoiceID EBATTLE_VOICE_TYPE
---@param UniqueCharaID EPlayableCharacterID
---@param UniqueVoiceID EBATTLE_VOICE_TYPE
---@param nBorder int32
---@return boolean
function AActionCommandBase:PlayVoiceCommandWithBorder(VoiceID, UniqueCharaID, UniqueVoiceID, nBorder) end
---@param VoiceID EBATTLE_VOICE_TYPE
---@param UniqueCharaID EPlayableCharacterID
---@param UniqueVoiceID EBATTLE_VOICE_TYPE
---@return boolean
function AActionCommandBase:PlayVoiceCommand(VoiceID, UniqueCharaID, UniqueVoiceID) end
---@param VibrationID FName
---@param Power EVibrationPower
---@return boolean
function AActionCommandBase:PlayVibrationCommand(VibrationID, Power) end
---@param BattleActionID EKSCharacterAction
---@return boolean
function AActionCommandBase:PlaySessionActionCommand(BattleActionID) end
---@param SEID FName
---@return boolean
function AActionCommandBase:PlaySECommand(SEID) end
---@param BattleActionID EKSCharacterAction
---@return boolean
function AActionCommandBase:PlayBusinessSupportActionCommand(BattleActionID) end
---@param ActionCharacter ABattleCharacterBase
---@param BattleSelfActionID EKSCharacterAction
---@param BattleOtherActionID EKSCharacterAction
---@param bExceptEnforcer boolean
---@return boolean
function AActionCommandBase:PlayActionForSelfOnlyCommand(ActionCharacter, BattleSelfActionID, BattleOtherActionID, bExceptEnforcer) end
---@param ActionCharacter ABattleCharacterBase
---@param BattleActionID EKSCharacterAction
---@param UniqueCharaID EPlayableCharacterID
---@param UniqueActionID EKSCharacterAction
---@param bExceptEnforcer boolean
---@return boolean
function AActionCommandBase:PlayActionCommand(ActionCharacter, BattleActionID, UniqueCharaID, UniqueActionID, bExceptEnforcer) end
---@param Index int32
---@return boolean
function AActionCommandBase:PlayAbilitySECommand(Index) end
function AActionCommandBase:PauseActionCommandSequencer() end
---@param cEnforcer ABattleCharacterBase
---@return boolean
function AActionCommandBase:OnAttackDamageSP(cEnforcer) end
---@param cEnforcer ABattleCharacterBase
---@return boolean
function AActionCommandBase:OnAttackDamageHP(cEnforcer) end
---@param bIsUseItemCommand boolean
---@param bIsMeatItem boolean
function AActionCommandBase:IsUseItemCommand(bIsUseItemCommand, bIsMeatItem) end
---@return boolean
function AActionCommandBase:IsSettledAutoTameMonster() end
---@return boolean
function AActionCommandBase:IsSessionSupportCommand() end
---@return boolean
function AActionCommandBase:IsPlayOnHitDamageVoice() end
---@param bIsSong boolean
---@param bIsDance boolean
function AActionCommandBase:IsMusicalCommand(bIsSong, bIsDance) end
---@return boolean
function AActionCommandBase:IsForceWeakness() end
---@return boolean
function AActionCommandBase:IsBusinessSupportCommand() end
---@return boolean
function AActionCommandBase:HideInfomationCommand() end
---@return TArray<ABattleCharacterBase>
function AActionCommandBase:GetTargetList() end
---@return TArray<ABattleCharacterBase>
function AActionCommandBase:GetSubTargetList() end
---@return TArray<ABattleCharacterBase>
function AActionCommandBase:GetSubEnforcerList() end
---@return boolean
function AActionCommandBase:GetSettledPlayOnce_OnRecovered() end
---@param outCharacterSize ECHARACTER_SIZE
function AActionCommandBase:GetInvadeMonsterSize(outCharacterSize) end
---@return boolean
function AActionCommandBase:GetExecutedCounterTrap() end
---@return ABattleCharacterBase
function AActionCommandBase:GetEnforcer() end
---@param bCritical boolean
---@param outRatio float
function AActionCommandBase:GetCriticalPower(bCritical, outRatio) end
---@return boolean
function AActionCommandBase:GetAttackHitFailed() end
---@return FName
function AActionCommandBase:GetActionLabel() end
---@param nIndex int32
---@return FName
function AActionCommandBase:GetAbilityEffect(nIndex) end
function AActionCommandBase:FinishCommandSequence() end
---@param nSummonIndex int32
---@param bRandom boolean
---@return boolean
function AActionCommandBase:ExecSummonCharacterCommand(nSummonIndex, bRandom) end
---@param nSummonIndex int32
---@return boolean
function AActionCommandBase:ExecSummonAbilityCommand(nSummonIndex) end
---@return boolean
function AActionCommandBase:ExecStepCounter() end
---@param cCommandOffset FVector
---@return boolean
function AActionCommandBase:ExecStartCharacterWarpCommand(cCommandOffset) end
---@return boolean
function AActionCommandBase:ExecSpecialAilmentCommand() end
---@return boolean
function AActionCommandBase:ExecSessionAbilityCommand() end
---@return boolean
function AActionCommandBase:ExecPlayDiseaseMissUI() end
---@return boolean
function AActionCommandBase:ExecEndCharacterWarpCommand() end
---@param ActionCharacter ABattleCharacterBase
---@return boolean
function AActionCommandBase:ExecChangeActionModeForKSParty(ActionCharacter) end
function AActionCommandBase:ExecCaptureMainPartyCommand() end
function AActionCommandBase:ExecCallSubPartyCommand() end
---@param Index int32
---@param AllAilment boolean
---@param LastHit boolean
---@return boolean
function AActionCommandBase:ExecAilmentCommand(Index, AllAilment, LastHit) end
---@param nFrameNumber int32
---@param cFrameRate FFrameRate
---@return float
function AActionCommandBase:ConvertFrameToSecondByFrameRate(nFrameNumber, cFrameRate) end
---@param cStealTarget ABattleCharacterBase
---@param nStealRateMin int32
---@return boolean
function AActionCommandBase:CheckStealMoney(cStealTarget, nStealRateMin) end
---@param cStealTarget ABattleCharacterBase
---@param nStealRateMin int32
---@return boolean
function AActionCommandBase:CheckStealItem(cStealTarget, nStealRateMin) end
---@return EBATTLE_SEQUENCE_PATTERN_TYPE
function AActionCommandBase:CheckSequencePattern() end
---@param cTarget ABattleCharacterBase
---@return boolean
function AActionCommandBase:CheckLastHit(cTarget) end
---@return boolean
function AActionCommandBase:CheckEnableExcitementBuff() end
---@return boolean
function AActionCommandBase:CheckEnableAutoTameMonster() end
---@param nBorderLevel int32
---@param bContainEqual boolean
---@return boolean
function AActionCommandBase:CheckBoostLevelLess(nBorderLevel, bContainEqual) end
---@param nBorderLevel int32
---@param bContainEqual boolean
---@return boolean
function AActionCommandBase:CheckBoostLevelGreater(nBorderLevel, bContainEqual) end
---@return boolean
function AActionCommandBase:CheckAttackCounter() end
---@return boolean
function AActionCommandBase:CheckAbilityHit() end
---@return boolean
function AActionCommandBase:CallSessionSupporterCommand() end
---@return boolean
function AActionCommandBase:CallBusinessSupporterCommand() end
---@param eAttributeWeak EATTRIBUTE_RESIST
---@param eWeaponWeak EATTRIBUTE_RESIST
---@param outBreakDamage int32
function AActionCommandBase:CalcBreakDamage(eAttributeWeak, eWeaponWeak, outBreakDamage) end


---@class AActivityManager : AAcqManagerBase
---@field m_CacheSaveDataForMerge UKSSaveSystem
local AActivityManager = {}

---@param saveDataOther UKSSaveSystem
function AActivityManager:SetSystemSaveDataForMerge(saveDataOther) end
function AActivityManager:MergeActivitySaveDataOnPostLoadSlot() end
---@param saveDataOther UKSSaveSystem
function AActivityManager:MergeActivitySaveData(saveDataOther) end
function AActivityManager:ClearSystemSaveDataForMerge() end


---@class ABattleAbilitySequenceActor : ALevelSequenceActor
---@field m_acAbilityHitEffectList TArray<ABattleSequenceEmitter>
---@field m_acSupportRotationEffectList TArray<ABattleSequenceEmitter>
---@field m_bPauseAbilitySequenceUpdate boolean
local ABattleAbilitySequenceActor = {}

---@param acEffectList TArray<ABattleSequenceEmitter>
function ABattleAbilitySequenceActor:SetSupportRotationEffectList(acEffectList) end
---@param bPauseEnable boolean
function ABattleAbilitySequenceActor:SetAbilitySequencePause(bPauseEnable) end
---@param acEffectList TArray<ABattleSequenceEmitter>
function ABattleAbilitySequenceActor:SetAbilityHitEffectList(acEffectList) end
---@return boolean
function ABattleAbilitySequenceActor:GetAbilitySequencePause() end


---@class ABattleActionOrder : AActor
---@field m_acActionOrderPool TArray<FActionOrderData>
---@field m_acCurrentOrder TArray<FActionOrderData>
---@field m_acReserveCurrentOrder TArray<FActionOrderData>
---@field m_acCurrentCharacter TArray<ABattleCharacterBase>
---@field m_acEstimateCurrentOrder TArray<FActionOrderData>
---@field m_acNextOrder TArray<FActionOrderData>
---@field m_acReserveNextOrder TArray<FActionOrderData>
---@field m_acNextCharacter TArray<ABattleCharacterBase>
---@field m_acEstimateNextOrder TArray<FActionOrderData>
---@field m_acCurrentCharacterForSubParty TArray<ABattleCharacterBase>
---@field m_acNextCharacterForSubParty TArray<ABattleCharacterBase>
---@field m_acCurrentOrderForSubParty TArray<FActionOrderData>
---@field m_acNextOrderForSubParty TArray<FActionOrderData>
---@field m_acSubPartyPlayerList TArray<ABattleCharacterBase>
---@field m_acSubEnemyList TArray<ABattleCharacterBase>
---@field m_nActionCharacterCount int32
local ABattleActionOrder = {}

---@return boolean
function ABattleActionOrder:UpdateNextOrderIndex() end
---@return boolean
function ABattleActionOrder:UpdateNextOrderForFirstAction() end
---@return boolean
function ABattleActionOrder:UpdateNextOrder() end
---@return boolean
function ABattleActionOrder:UpdateCurrentOrderIndex() end
---@return boolean
function ABattleActionOrder:SubActionCharacterCount() end
---@param cElementA FActionOrderData
---@param cElementB FActionOrderData
---@return boolean
function ABattleActionOrder:SortPredicateByWaitTime(cElementA, cElementB) end
---@param cElementA FActionOrderData
---@param cElementB FActionOrderData
---@return boolean
function ABattleActionOrder:SortPredicateByNextTime(cElementA, cElementB) end
---@param acTargetOrder TArray<FActionOrderData>
---@return boolean
function ABattleActionOrder:SortActionOrderByWaitTime(acTargetOrder) end
---@param acTargetOrder TArray<FActionOrderData>
---@return boolean
function ABattleActionOrder:SortActionOrderByNextTime(acTargetOrder) end
---@param acTargetOrder TArray<FActionOrderData>
---@return boolean
function ABattleActionOrder:ShuffleActionOrder(acTargetOrder) end
---@param acSubPartyPlayer TArray<ABattleCharacterBase>
---@return boolean
function ABattleActionOrder:SetupSubPartyPlayer(acSubPartyPlayer) end
---@return boolean
function ABattleActionOrder:SetupFirstTurnPlayer() end
---@param cTargetCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:SetNextOrderChange(cTargetCharacter) end
---@param acNextCharacterList TArray<ABattleCharacterBase>
---@return boolean
function ABattleActionOrder:SetNextCharacter(acNextCharacterList) end
---@param acTargetOrder TArray<FActionOrderData>
---@param cTargetCharacter ABattleCharacterBase
---@param eOrderType EACTION_ORDER_TYPE
---@param bBuffOrder boolean
---@param bIsFirstParty boolean
---@param FindCharacter boolean
function ABattleActionOrder:SetEstimateActionOrderChange(acTargetOrder, cTargetCharacter, eOrderType, bBuffOrder, bIsFirstParty, FindCharacter) end
---@param cTargetCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:SetCurrentOrderChange(cTargetCharacter) end
---@param acFirstActionCharacter TArray<ABattleCharacterBase>
---@return boolean
function ABattleActionOrder:SetBattleFirstActionTurn(acFirstActionCharacter) end
---@param acTargetOrder TArray<FActionOrderData>
---@param cTargetCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:SetActionOrderChange(acTargetOrder, cTargetCharacter) end
---@param cTarget ABattleCharacterBase
---@param cTargetOrder FActionOrderData
---@param bSealNextOrder boolean
---@return boolean
function ABattleActionOrder:SealActionOrder(cTarget, cTargetOrder, bSealNextOrder) end
---@return boolean
function ABattleActionOrder:ResetNextOrderForIsOrderChange() end
---@return boolean
function ABattleActionOrder:ResetEstimateNextOrder() end
---@return boolean
function ABattleActionOrder:ResetEstimateCurrentOrder() end
---@param cBoutEnforcer ABattleCharacterBase
---@param cBoutTarget ABattleCharacterBase
---@return boolean
function ABattleActionOrder:ResetCurrentOrderForKSPartyBoutAction(cBoutEnforcer, cBoutTarget) end
---@return boolean
function ABattleActionOrder:ResetCurrentOrderForIsOrderChange() end
---@return boolean
function ABattleActionOrder:ResetCurrentCharacterWaitTime() end
---@param acTargetOrder TArray<FActionOrderData>
---@return boolean
function ABattleActionOrder:ResetActionOrderForIsOrderChange(acTargetOrder) end
---@param acTargetOrder TArray<FActionOrderData>
---@param acReserveList TArray<FActionOrderData>
---@param eType EACTION_ORDER_TYPE
---@param cReplaceCharacter ABattleCharacterBase
---@param nReplaceIndex int32
---@param bReturnOrderToReserve boolean
---@param cReplaceOrder FActionOrderData
---@return boolean
function ABattleActionOrder:ReplaceActionOrder(acTargetOrder, acReserveList, eType, cReplaceCharacter, nReplaceIndex, bReturnOrderToReserve, cReplaceOrder) end
---@param cTargetCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:RemoveNextOrderForSubParty(cTargetCharacter) end
---@param cTargetCharacter ABattleCharacterBase
---@param bEverSince boolean
---@return boolean
function ABattleActionOrder:RemoveNextOrder(cTargetCharacter, bEverSince) end
---@param cTargetCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:RemoveCurrentOrderForSubParty(cTargetCharacter) end
---@param cTargetCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:RemoveCurrentOrder(cTargetCharacter) end
---@param acTargetOrder TArray<FActionOrderData>
---@param acReserveList TArray<FActionOrderData>
---@return boolean
function ABattleActionOrder:RemoveBreakStyleOrder(acTargetOrder, acReserveList) end
---@return boolean
function ABattleActionOrder:RemoveBreakStyle() end
---@param acTargetOrder TArray<FActionOrderData>
---@param cTargetCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:RemoveActionOrderForEstimate(acTargetOrder, cTargetCharacter) end
---@param acTargetOrder TArray<FActionOrderData>
---@param acReserveList TArray<FActionOrderData>
---@param nRemoveIndex int32
---@return boolean
function ABattleActionOrder:RemoveActionOrderByIndex(acTargetOrder, acReserveList, nRemoveIndex) end
---@param acTargetOrder TArray<FActionOrderData>
---@param acReserveList TArray<FActionOrderData>
---@param cTargetCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:RemoveActionOrder(acTargetOrder, acReserveList, cTargetCharacter) end
---@param cNextCharacter ABattleCharacterBase
---@param cNextOrderData FActionOrderData
function ABattleActionOrder:PopOrder(cNextCharacter, cNextOrderData) end
---@param OrderData TArray<FActionOrderData>
---@return boolean
function ABattleActionOrder:PlaySubIconOpenAnim(OrderData) end
---@param OrderData TArray<FActionOrderData>
---@return boolean
function ABattleActionOrder:PlaySubIconCloseAnim(OrderData) end
---@param acTargetOrder TArray<FActionOrderData>
---@param nTargetIndex int32
---@param nToIndex int32
---@return boolean
function ABattleActionOrder:MoveActionOrderByIndex(acTargetOrder, nTargetIndex, nToIndex) end
---@param acTargetOrder TArray<FActionOrderData>
---@param eType EACTION_ORDER_TYPE
---@param nMoveCount int32
---@param bIsNextOrder boolean
---@return boolean
function ABattleActionOrder:MoveActionOrder(acTargetOrder, eType, nMoveCount, bIsNextOrder) end
---@return boolean
function ABattleActionOrder:IsSettledOrderForEightBattle() end
---@return boolean
function ABattleActionOrder:IsNextCharacterCross() end
---@param cCheckCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:IsNextCharacterContinue(cCheckCharacter) end
---@return boolean
function ABattleActionOrder:IsCurrentOrderComplete() end
---@param nInsetIndex int32
---@param cTargetCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:InsertNextOrderForSubParty(nInsetIndex, cTargetCharacter) end
---@param nInsetIndex int32
---@param cTargetCharacter ABattleCharacterBase
---@param eType EACTION_ORDER_TYPE
---@param fDelay float
---@param bUseIcon boolean
---@return boolean
function ABattleActionOrder:InsertNextOrder(nInsetIndex, cTargetCharacter, eType, fDelay, bUseIcon) end
---@param nInsetIndex int32
---@param cTargetCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:InsertCurrentOrderForSubParty(nInsetIndex, cTargetCharacter) end
---@param nInsetIndex int32
---@param cTargetCharacter ABattleCharacterBase
---@param eType EACTION_ORDER_TYPE
---@param fDelay float
---@param bUseIcon boolean
---@return boolean
function ABattleActionOrder:InsertCurrentOrder(nInsetIndex, cTargetCharacter, eType, fDelay, bUseIcon) end
---@param acTargetOrder TArray<FActionOrderData>
---@param cInsertOrder FActionOrderData
---@param nInsetIndex int32
---@return boolean
function ABattleActionOrder:InsertActionOrder(acTargetOrder, cInsertOrder, nInsetIndex) end
---@param acBattlePlayer TArray<ABattleCharacterBase>
---@param acBattleEnemy TArray<ABattleCharacterBase>
---@param eStartType EBATTLE_START_TYPE
---@return boolean
function ABattleActionOrder:InitializeActionOrder(acBattlePlayer, acBattleEnemy, eStartType) end
---@param searchArray TArray<FActionOrderData>
---@param targetRef ABattleCharacterBase
---@param Data FActionOrderData
---@return boolean
function ABattleActionOrder:GetOrderIconFromCharaRef(searchArray, targetRef, Data) end
---@param cNextCharacter ABattleCharacterBase
---@param cNextOrderData FActionOrderData
function ABattleActionOrder:GetOrder(cNextCharacter, cNextOrderData) end
---@param acCurrentOrder TArray<FActionOrderData>
---@param acNextOrder TArray<FActionOrderData>
function ABattleActionOrder:GetEstimateActionOrderList(acCurrentOrder, acNextOrder) end
---@param acCurrentOrder TArray<FActionOrderData>
---@param acNextOrder TArray<FActionOrderData>
function ABattleActionOrder:GetActionOrderList(acCurrentOrder, acNextOrder) end
---@param cTargetCharacter ABattleCharacterBase
---@param acFindOrderList TArray<FActionOrderData>
---@return boolean
function ABattleActionOrder:FindNextOrderByCharacter(cTargetCharacter, acFindOrderList) end
---@param cTargetCharacter ABattleCharacterBase
---@param acFindOrderList TArray<FActionOrderData>
---@return boolean
function ABattleActionOrder:FindCurrentOrderByCharacter(cTargetCharacter, acFindOrderList) end
---@param eType EACTION_ORDER_TYPE
---@param nMoveCount int32
---@return boolean
function ABattleActionOrder:ExecMoveNextOrder(eType, nMoveCount) end
---@param eType EACTION_ORDER_TYPE
---@param nMoveCount int32
---@return boolean
function ABattleActionOrder:ExecMoveCurrentOrder(eType, nMoveCount) end
---@param acTargetCharacter TArray<ABattleCharacterBase>
---@param eOrderType EACTION_ORDER_TYPE
---@param nMoveCount int32
---@return boolean
function ABattleActionOrder:ExecEstimateNextOrder(acTargetCharacter, eOrderType, nMoveCount) end
---@param acTargetCharacter TArray<ABattleCharacterBase>
---@param eOrderType EACTION_ORDER_TYPE
---@param nMoveCount int32
---@return boolean
function ABattleActionOrder:ExecEstimateCurrentOrder(acTargetCharacter, eOrderType, nMoveCount) end
---@param acTargetCharacter TArray<ABattleCharacterBase>
---@param eOrderType EACTION_ORDER_TYPE
---@param nMoveCount int32
---@param bContainCurrentOrder boolean
---@param bContinueEstimate boolean
---@param bIsFirstParty boolean
---@return boolean
function ABattleActionOrder:ExecEstimateActionOrder(acTargetCharacter, eOrderType, nMoveCount, bContainCurrentOrder, bContinueEstimate, bIsFirstParty) end
---@return boolean
function ABattleActionOrder:ExecCurrentOrderClearForCurseOfBind() end
---@return boolean
function ABattleActionOrder:EndCharacterOrderForEightBattle() end
---@param Title FString
---@param BodyList TArray<FString>
---@return boolean
function ABattleActionOrder:Debug_OutputOrderLogFromBodyList(Title, BodyList) end
---@param Title FString
---@param Body FString
---@return boolean
function ABattleActionOrder:Debug_OutputOrderLog(Title, Body) end
---@param cIcon UActionOrderIcon
---@param Title FString
---@return boolean
function ABattleActionOrder:Debug_OutputOrderIconLog(cIcon, Title) end
---@param cTarget FActionOrderData
---@param IsCurrent boolean
---@param OutBody FString
---@return boolean
function ABattleActionOrder:Debug_GetCommonOrderDataLog(cTarget, IsCurrent, OutBody) end
---@param acSubPartyCharacter TArray<ABattleCharacterBase>
---@param acOriginalOrder TArray<FActionOrderData>
---@param acOrderResult TArray<FActionOrderData>
---@param acReserveList TArray<FActionOrderData>
---@param acBribeOrderList TArray<FActionOrderData>
---@param IsNextOrder boolean
---@return boolean
function ABattleActionOrder:CreateSubPartyOrder(acSubPartyCharacter, acOriginalOrder, acOrderResult, acReserveList, acBribeOrderList, IsNextOrder) end
---@param acSubPartyCharacter TArray<ABattleCharacterBase>
---@param acOrderResult TArray<FActionOrderData>
---@param IsNextOrder boolean
---@return boolean
function ABattleActionOrder:CreateSubPartyCharacterList(acSubPartyCharacter, acOrderResult, IsNextOrder) end
---@param acOriginalOrder TArray<FActionOrderData>
---@param acOrderResult TArray<FActionOrderData>
---@return boolean
function ABattleActionOrder:CreateMainPartyCharacterList(acOriginalOrder, acOrderResult) end
---@param acBattleCharacter TArray<ABattleCharacterBase>
---@param acOrderResult TArray<FActionOrderData>
---@param acReserveList TArray<FActionOrderData>
---@return boolean
function ABattleActionOrder:CreateActionOrder(acBattleCharacter, acOrderResult, acReserveList) end
---@return boolean
function ABattleActionOrder:ClearCurrentOrder() end
---@param AbilityID int32
---@return boolean
function ABattleActionOrder:CheckSpecialOrderAllAGIUp(AbilityID) end
---@param AbilityID int32
---@return boolean
function ABattleActionOrder:CheckSpecialOrderAGIUpSelfDown(AbilityID) end
---@param cTargetOrder FActionOrderData
---@return boolean
function ABattleActionOrder:CheckShuffleEnable(cTargetOrder) end
---@param eOrderType EACTION_ORDER_TYPE
---@return boolean
function ABattleActionOrder:CheckEnablePartyChangeOrder(eOrderType) end
---@return boolean
function ABattleActionOrder:ChangeBattleTurn() end
---@param cActiveCharacter ABattleCharacterBase
---@param DefeatChange boolean
---@return boolean
function ABattleActionOrder:ChangeBattleSubParty(cActiveCharacter, DefeatChange) end
---@param acChangePlayerList TArray<ABattleCharacterBase>
---@return boolean
function ABattleActionOrder:ChangeBattlePartyMember(acChangePlayerList) end
---@param cEnforcer ABattleCharacterBase
---@param cTarget ABattleCharacterBase
---@param cReplaceOrder FActionOrderData
---@param cTargetOrder FActionOrderData
---@param bReplaceNextOrder boolean
---@return boolean
function ABattleActionOrder:BribeActionOrder(cEnforcer, cTarget, cReplaceOrder, cTargetOrder, bReplaceNextOrder) end
---@param cTargetCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:BreakActionOrder(cTargetCharacter) end
function ABattleActionOrder:AssignNextOrderIndex() end
function ABattleActionOrder:AssignCurrentOrderIndex() end
---@param cAddCharacter ABattleCharacterBase
---@return boolean
function ABattleActionOrder:AddNextOrderCharacter(cAddCharacter) end
---@param acTargetOrder TArray<FActionOrderData>
---@param cInsertOrder FActionOrderData
---@param nInsetIndex int32
---@return boolean
function ABattleActionOrder:AddLastActionOrder(acTargetOrder, cInsertOrder, nInsetIndex) end


---@class ABattleCamera : ACineCameraActor
---@field m_cCameraInitData FBattleCameraInitData
---@field m_eCameraType EBATTLE_CAMERA_TYPE
---@field m_cResumeTransform FTransform
---@field m_cStartTransformForTargetFocus FTransform
---@field m_cGoalTransformForTargetFocus FTransform
---@field m_sBaseTransform FTransform
---@field CameraTransform FTransform
---@field bCameraWaitMove boolean
local ABattleCamera = {}

---@param eResultType EBATTLE_RESULT_TYPE
---@param bIsFront boolean
function ABattleCamera:StartResulttCamera(eResultType, bIsFront) end
---@param eBreakType EBREAK_CAMERA_TYPE
function ABattleCamera:StartEnemyDeadCamera(eBreakType) end
function ABattleCamera:StartEncountCamera() end
---@param eBreakType EBREAK_CAMERA_TYPE
function ABattleCamera:StartBreakCamera(eBreakType) end
---@param nBoostLevel int32
---@param eTargetType EBATTLE_TARGET_TYPE
---@param nSlideFrame int32
---@param cActionCommand AActionCommandBase
---@param bEnemySide boolean
---@param bIsFront boolean
---@param strAbilityName FName
function ABattleCamera:StartAbilityCamera(nBoostLevel, eTargetType, nSlideFrame, cActionCommand, bEnemySide, bIsFront, strAbilityName) end
function ABattleCamera:SetupBaseTransform() end
---@param eTargetType EBATTLE_TARGET_TYPE
---@param cTarget ABattleCharacterBase
function ABattleCamera:SetTargetFocusCamera(eTargetType, cTarget) end
---@param cInterpolationCurve UCurveFloat
function ABattleCamera:SetInterpolationCurveForAbilityCamera(cInterpolationCurve) end
---@param bEnable boolean
function ABattleCamera:SetCameraWaitMove(bEnable) end
---@param cTransform FTransform
function ABattleCamera:SetCameraTransform(cTransform) end
function ABattleCamera:ResumeWaitMove() end
function ABattleCamera:ResetTargetFocusCamera() end
function ABattleCamera:ResetCameraTransform() end
---@param DeltaTime float
function ABattleCamera:PostCameraTick(DeltaTime) end
---@param fRatio float
---@param cTargetCamera ACineCameraActor
function ABattleCamera:InterpolationResultCamera(fRatio, cTargetCamera) end
---@param cInterpolationCurve UCurveFloat
---@param fRatio float
---@param cTargetCamera ACineCameraActor
function ABattleCamera:InterpolationBattleCamera(cInterpolationCurve, fRatio, cTargetCamera) end
---@param fRatio float
---@param cTargetCamera ACineCameraActor
function ABattleCamera:InterpolationAbilityCamera(fRatio, cTargetCamera) end
---@param cTargetCamera ACineCameraActor
---@return FRotator
function ABattleCamera:GetLastLookatTrackingRotation(cTargetCamera) end
---@param cTargetCamera ACineCameraActor
---@return FVector
function ABattleCamera:GetLastLookatTrackingPosition(cTargetCamera) end
---@param outPostSetting FPostProcessSettings
---@param outFocusSetting FCameraFocusSettings
---@param outFilmbackSetting FCameraFilmbackSettings
---@param outLensSetting FCameraLensSettings
---@param outCurrentAperture float
---@param outFOV float
function ABattleCamera:GetCameraInitParameterForAbilityCamera(outPostSetting, outFocusSetting, outFilmbackSetting, outLensSetting, outCurrentAperture, outFOV) end
---@param OutLocation FVector
---@param outFrontDir FVector
---@param outRightDir FVector
function ABattleCamera:GetAudioListenerPosition(OutLocation, outFrontDir, outRightDir) end
function ABattleCamera:FixBattleCamera() end
function ABattleCamera:FinishResultCamera() end
function ABattleCamera:FinishEncountCamera() end
function ABattleCamera:FinishBreakCamera() end
function ABattleCamera:FinishAbilityCamera() end
---@param cRotator FRotator
---@return boolean
function ABattleCamera:CheckZeroRotator(cRotator) end


---@class ABattleCharacterBase : AActor
---@field m_nCharacterID int32
---@field m_cAnimationCharacter AKSCharacterBase
---@field m_acSubAnimationCharacter TArray<AKSCharacterBase>
---@field m_cMasterParameter FCharacterParam
---@field m_nCurrentHP int32
---@field m_nDecreaseHPMax int32
---@field m_bIsChangedHPMax boolean
---@field m_nCurrentMP int32
---@field m_nCurrentBP int32
---@field m_nCurrentBPMax int32
---@field m_nCurrentShieldPoint int32
---@field m_nShieldPointMax int32
---@field m_cOwnerPlayer ABattleCharacterBase
---@field m_nUseBPInCurrentOrder int32
---@field m_bUseBoost boolean
---@field m_bBreakEnemyInCurrentOrder boolean
---@field m_bExecBreakAct boolean
---@field m_bCharacterReady boolean
---@field m_bAbilityHitFlag boolean
---@field m_bAbilityHitInvisible boolean
---@field m_bUseDamageCutShield boolean
---@field m_bJustKillInAilment boolean
---@field m_bReflectionEnforcer boolean
---@field m_bHeadHuntingFlag boolean
---@field m_aeDiseaseResist TMap<EDISEASE_TYPE, EATTRIBUTE_RESIST>
---@field m_bHitDiseaseInAction boolean
---@field m_bIsExceptField boolean
---@field m_nDragInIndex int32
---@field m_nDragInIndexTest int32
---@field m_bSealedLicense boolean
---@field m_bPlayJobChangeAction boolean
---@field m_vForceMovementStart FVector
---@field m_vForceMovementGoal FVector
---@field m_bIsExecForceMovement boolean
---@field m_bResumeIdleAction boolean
---@field m_bResumeIdleActionFixed boolean
---@field m_eResumeIdleActionType EBATTLE_ACTION_TYPE
---@field m_bIsAutoTameMonster boolean
---@field m_bEnableBlind boolean
---@field m_cActionOrderComponent UActionOrderComponent
---@field m_nOrderCountMax int32
---@field m_nCurrentOrderCountMax int32
---@field m_nCurrentOrderCounter int32
---@field m_nCurrentActionTimeBase int32
---@field m_nNextActionTimeBase int32
---@field m_acNextActionOrderData TArray<FActionOrderData>
---@field m_cBattleVoiceComponent UBattleVoiceComponent
---@field m_bPlayOnRecoveredVoice boolean
---@field m_bSettledPlayOnce_OnRecovered boolean
---@field m_cDefaultEffectSocket USceneComponent
---@field m_cGroundEffectSocket USceneComponent
---@field m_cChargeActionEffectSocket USceneComponent
---@field m_sBaseTransform FTransform
---@field m_bIsCharacterWarpMode boolean
---@field m_bEnableDeadCharacterControl boolean
---@field CharaTransform FTransform
---@field CanoeTransform FTransform
---@field VisibleCanoe boolean
---@field EnableCanoeTrace boolean
---@field CharacterOpacity float
---@field DisableBattleCameraOpacity boolean
---@field PotentialityAction_BodyColor FLinearColor
---@field PotentialityAction_EyesColor float
---@field m_aeSupportAilment TArray<ESUPPORT_AILMENT_TYPE>
---@field m_acSupportAbilityData TMap<ESUPPORT_AILMENT_TYPE, FSupportAbilityDataBase>
---@field m_eWeaponStance EWEAPON_STANCE
---@field m_aeEquipmentWeaponList TArray<EWEAPON_CATEGORY>
---@field m_eMainWeapon EWEAPON_CATEGORY
---@field m_nMainWeaponIndex int32
---@field m_eNormalAttackWeapon EWEAPON_CATEGORY
---@field m_nNormalAttackWeaponIndex int32
---@field m_nSwitchWeaponIndex int32
---@field m_eForteWeapon EWEAPON_CATEGORY
---@field m_strForteWeaponID FName
---@field m_cPotentialityActionComponent UPotentialityActionComponent
---@field m_bPotentialityActionEnable boolean
---@field m_nExcitementPoint int32
---@field m_bMasqueradeEnable boolean
---@field m_cMasqueradeComponent UMasqueradeComponent
---@field m_bInventorEnable boolean
---@field m_cInventorComponent UInventorComponent
---@field m_bChargeActionEnable boolean
---@field m_acChargeActionDataList TArray<FBattleAdditiveOrderData>
---@field m_cBattleAIComponent UBattleAIBase
---@field m_bBattleAIReady boolean
---@field m_bIsPreparation boolean
---@field m_bIsWeakIconFullOpen boolean
---@field m_cCurrentWeakLockData FWeakLockData
---@field m_cRequestWeakLockData FWeakLockData
---@field m_bIsUpdateWeakLockData boolean
---@field m_cCurrentWeakChangeData FWeakChangeData
---@field m_cRequestWeakChangeData FWeakChangeData
---@field m_bIsUpdateWeakChangeData boolean
---@field m_cCurrentShieldChangeData FShieldChangeData
---@field m_cRequestShieldChangeData FShieldChangeData
---@field m_bIsUpdateShieldChangeData boolean
---@field m_bIsUpdateShieldChangeDataTest boolean
---@field m_aeOpenedAttributeList TArray<EATTRIBUTE_TYPE>
---@field m_nBribeCounter int32
---@field m_fBribeRatio float
---@field m_bIsStealAllMoney boolean
---@field m_nStealAllMoneyValue int32
---@field m_bIsSettledStealMoneyForTressa boolean
---@field m_bSkipCountDownAbility boolean
---@field m_bExcludeFromBattleOutcome boolean
---@field m_bRequestSettingNextOrder boolean
---@field m_RequestSettingNextOrderData TArray<FRequestActionOrderData>
---@field m_bRequestSettingNextTurnOnly boolean
---@field m_eCharmedPlayerID EPlayableCharacterID
local ABattleCharacterBase = {}

---@param eWeakLockType int32
---@return TArray<boolean>
function ABattleCharacterBase:WeakTypeToWeaponType(eWeakLockType) end
---@param eWeakLockType int32
---@return TArray<boolean>
function ABattleCharacterBase:WeakTypeToMagicType(eWeakLockType) end
---@return boolean
function ABattleCharacterBase:UpdateWeakLock_PostOrder() end
---@return boolean
function ABattleCharacterBase:UpdateWeakChange_PostOrder() end
---@param UpdateBoost boolean
---@param UpdatePotential boolean
---@return boolean
function ABattleCharacterBase:UpdateSubStatusParam(UpdateBoost, UpdatePotential) end
---@param UpdateBoost boolean
---@param UpdatePotential boolean
---@return boolean
function ABattleCharacterBase:UpdateStatusParam(UpdateBoost, UpdatePotential) end
---@return boolean
function ABattleCharacterBase:UpdateShieldChange_PostOrder() end
---@return boolean
function ABattleCharacterBase:UpdateRequestSettingNextOrder_PostOrder() end
---@return boolean
function ABattleCharacterBase:UpdateChargeActionCount() end
---@return boolean
function ABattleCharacterBase:TurnONStatusUI() end
---@return boolean
function ABattleCharacterBase:TurnOffStatusUI() end
---@param bDirNext boolean
---@param nWeaponIndex int32
---@return boolean
function ABattleCharacterBase:SwitchNormalAttackWeapon(bDirNext, nWeaponIndex) end
---@param bDirNext boolean
---@param nWeaponIndex int32
---@return boolean
function ABattleCharacterBase:SwitchMainWeapon(bDirNext, nWeaponIndex) end
---@param bDirNext boolean
---@param nWeaponIndex int32
---@return boolean
function ABattleCharacterBase:SwitchCatapultWeapon(bDirNext, nWeaponIndex) end
---@param nOpenedNum int32
---@param nWeakPointMax int32
---@return boolean
function ABattleCharacterBase:SurveyOpenedWeakPoint(nOpenedNum, nWeakPointMax) end
function ABattleCharacterBase:StopForceMovementTimeline() end
function ABattleCharacterBase:StartForceMovementTimeline() end
---@param eStance EWEAPON_STANCE
function ABattleCharacterBase:SetWeaponStance(eStance) end
---@param bIsFullOpen boolean
---@return boolean
function ABattleCharacterBase:SetWeakIconFullOpen(bIsFullOpen) end
---@param bVisible boolean
function ABattleCharacterBase:SetVisibleCanoe(bVisible) end
---@param bUseShield boolean
function ABattleCharacterBase:SetUseDamageCutShield(bUseShield) end
---@param acTarget TArray<ABattleCharacterBase>
---@param cCommandOffset FVector
---@return boolean
function ABattleCharacterBase:SetupSubAnimationCharacter(acTarget, cCommandOffset) end
---@param eResetType EBATTLE_CHARA_POSITION_RESET_TYPE
---@param bEnableDeadCharacterControl boolean
function ABattleCharacterBase:SetupBaseTransform(eResetType, bEnableDeadCharacterControl) end
---@param bEnable boolean
---@return boolean
function ABattleCharacterBase:SetupActionOrderSealAction(bEnable) end
---@param bEnable boolean
---@return boolean
function ABattleCharacterBase:SetupActionOrderBribe(bEnable) end
---@param bEnable boolean
---@return boolean
function ABattleCharacterBase:SetupActionOrderBlindFast(bEnable) end
---@param bEnable boolean
---@return boolean
function ABattleCharacterBase:SetupActionOrderBlind(bEnable) end
---@param cSupportAbilityData FSupportAbilityDataBase
---@return boolean
function ABattleCharacterBase:SetSupportAilment(cSupportAbilityData) end
---@param nMoneyValue int32
function ABattleCharacterBase:SetStealAllMoney(nMoneyValue) end
---@param EnableSkip boolean
function ABattleCharacterBase:SetSkipCountDownAbility(EnableSkip) end
---@param nShieldMax int32
---@return boolean
function ABattleCharacterBase:SetShieldPointMax(nShieldMax) end
---@param bSettled boolean
function ABattleCharacterBase:SetSettledStealMoneyForTressa(bSettled) end
---@param bEnable boolean
function ABattleCharacterBase:SetReflactionEnforcer(bEnable) end
---@param fAlpha float
function ABattleCharacterBase:SetPotentialityAction_EyesColor(fAlpha) end
---@param cColor FLinearColor
function ABattleCharacterBase:SetPotentialityAction_BodyColor(cColor) end
---@param bEnable boolean
function ABattleCharacterBase:SetHeadHuntingFlag(bEnable) end
---@param nGetBackBoostPoint int32
function ABattleCharacterBase:SetGetBackBoostPoint(nGetBackBoostPoint) end
---@param cMovementRatio UCurveFloat
---@param cMovementOffset UCurveVector
---@param cOpacityCurve UCurveFloat
---@param fTimelineLength float
function ABattleCharacterBase:SetForceMovementTimelineCurve(cMovementRatio, cMovementOffset, cOpacityCurve, fTimelineLength) end
---@param vStartPoint FVector
---@param vGoalPoint FVector
---@param bResumeIdle boolean
---@param eResumeIdleType EBATTLE_ACTION_TYPE
---@param bResumeIdleFixed boolean
function ABattleCharacterBase:SetForceMovementParameter(vStartPoint, vGoalPoint, bResumeIdle, eResumeIdleType, bResumeIdleFixed) end
---@param bEnable boolean
function ABattleCharacterBase:SetExcludeFromBattleOutcome(bEnable) end
---@param cEnforcer ABattleCharacterBase
---@param nBoostLevel int32
function ABattleCharacterBase:SetExcitementPoint(cEnforcer, nBoostLevel) end
---@return boolean
function ABattleCharacterBase:SetEnableWeakLockData() end
---@return boolean
function ABattleCharacterBase:SetEnableWeakChangeData() end
---@return boolean
function ABattleCharacterBase:SetEnableShieldChangeData() end
---@param bEnable boolean
function ABattleCharacterBase:SetEnablePlayOnRecoveredVoice(bEnable) end
---@param bEnable boolean
function ABattleCharacterBase:SetEnableCanoeTrace(bEnable) end
---@param bDisable boolean
function ABattleCharacterBase:SetDisableBattleCameraOpacity(bDisable) end
---@param bInMainParty boolean
function ABattleCharacterBase:SetDefaultLocation(bInMainParty) end
---@param DecreaseValue int32
function ABattleCharacterBase:SetDecreaseHPMax(DecreaseValue) end
---@param eType EBATTLE_DEBUG_SWITCH
---@param bValue boolean
function ABattleCharacterBase:SetDebugSwitch(eType, bValue) end
---@param bDeadFlag boolean
function ABattleCharacterBase:SetDeadFlagForReplay(bDeadFlag) end
---@param ePlayerID EPlayableCharacterID
function ABattleCharacterBase:SetCharmedPlayerID(ePlayerID) end
---@param cTransform FTransform
function ABattleCharacterBase:SetCharaTransform(cTransform) end
---@param fOpacity float
function ABattleCharacterBase:SetCharacterOpacityForActionCommand(fOpacity) end
---@param fOpacity float
function ABattleCharacterBase:SetCharacterOpacity(fOpacity) end
---@param strCharacterNameLabel FName
function ABattleCharacterBase:SetCharacterName(strCharacterNameLabel) end
---@param cTransform FTransform
function ABattleCharacterBase:SetCanoeTransform(cTransform) end
---@param nBoostMax int32
---@return boolean
function ABattleCharacterBase:SetBoostPointMax(nBoostMax) end
---@param bAbilityHit boolean
---@param bAbilityHitInvisible boolean
function ABattleCharacterBase:SetAbilityHitFlag(bAbilityHit, bAbilityHitInvisible) end
---@param DiseaseType EDISEASE_TYPE
---@return boolean
function ABattleCharacterBase:SearchDiseaseForAI(DiseaseType) end
---@param DiseaseCategory EDISEASE_CATEGORY
---@return boolean
function ABattleCharacterBase:SearchDiseaseByCategoryForAI(DiseaseCategory) end
---@return boolean
function ABattleCharacterBase:SaveCharacterParameter() end
function ABattleCharacterBase:ReturnCaptureMove() end
function ABattleCharacterBase:ResumeSealLicense() end
---@return boolean
function ABattleCharacterBase:ResumeActionModeForKSParty() end
---@return boolean
function ABattleCharacterBase:RestoreGroggy() end
---@return boolean
function ABattleCharacterBase:RestoreBreak() end
function ABattleCharacterBase:ResetVoiceFlagForPreAction() end
function ABattleCharacterBase:ResetStealAllMoney() end
---@param eTargetWeapon EWEAPON_CATEGORY
---@return boolean
function ABattleCharacterBase:ResetSelectWeaponForMasquerade(eTargetWeapon) end
function ABattleCharacterBase:ResetHitDiseaseForPreAction() end
function ABattleCharacterBase:ResetExcitementPoint() end
function ABattleCharacterBase:ResetCanoeTransform() end
function ABattleCharacterBase:ResetBattleCharacterForReplay() end
---@param cNewWeakLockData FWeakLockData
---@return boolean
function ABattleCharacterBase:RequestWeakLock(cNewWeakLockData) end
---@param cNewWeakChangeData FWeakChangeData
---@return boolean
function ABattleCharacterBase:RequestWeakChange(cNewWeakChangeData) end
---@param cNewShieldChangeData FShieldChangeData
---@return boolean
function ABattleCharacterBase:RequestShieldChange(cNewShieldChangeData) end
---@param DiseaseName FName
---@return boolean
function ABattleCharacterBase:RemoveDiseaseForSequencer(DiseaseName) end
---@param DiseaseType EDISEASE_TYPE
---@return boolean
function ABattleCharacterBase:RemoveDiseaseForAI(DiseaseType) end
function ABattleCharacterBase:RemoveCurseOfBindAction() end
function ABattleCharacterBase:ReleasePotentialityAction() end
---@param cEnforcer ABattleCharacterBase
---@param nValue int32
---@param bUseRecoveryUI boolean
---@param bIsMeatItem boolean
function ABattleCharacterBase:RecoveryPotentialityActionPoint(cEnforcer, nValue, bUseRecoveryUI, bIsMeatItem) end
---@param cEnforcer ABattleCharacterBase
---@param nValue int32
---@param bOverHeal boolean
---@param bUseRecoveryUI boolean
---@param bIsMeatItem boolean
function ABattleCharacterBase:RecoveryMP(cEnforcer, nValue, bOverHeal, bUseRecoveryUI, bIsMeatItem) end
---@param cEnforcer ABattleCharacterBase
---@param nValue int32
---@param bOverHeal boolean
---@param bUseRecoveryUI boolean
---@param bIsMeatItem boolean
function ABattleCharacterBase:RecoveryHP(cEnforcer, nValue, bOverHeal, bUseRecoveryUI, bIsMeatItem) end
---@param cEnforcer ABattleCharacterBase
---@param nValue int32
---@param bUseRecoveryUI boolean
---@param bIsMeatItem boolean
function ABattleCharacterBase:RecoveryBP(cEnforcer, nValue, bUseRecoveryUI, bIsMeatItem) end
---@return FBattleAdditiveOrderData
function ABattleCharacterBase:PopChargeActionData() end
function ABattleCharacterBase:PlayCaptureMove() end
---@param nDamageValue int32
---@param cActionCommand AActionCommandBase
---@return boolean
function ABattleCharacterBase:PlayBattleVoiceForDamage(nDamageValue, cActionCommand) end
---@param eBattleVoiceType EBATTLE_VOICE_TYPE
---@param cPlayCondition FBattleVoiceSetData
---@param bIsSkipDiseaseCheck boolean
---@return boolean
function ABattleCharacterBase:PlayBattleVoice(eBattleVoiceType, cPlayCondition, bIsSkipDiseaseCheck) end
---@param nIndex int32
---@param bRandom boolean
---@param bPreparation boolean
---@param bPlay2nd boolean
---@param bOpenIndex int32
---@return boolean
function ABattleCharacterBase:OpenWeakIcon(nIndex, bRandom, bPreparation, bPlay2nd, bOpenIndex) end
---@param eDiseaseType EDISEASE_TYPE
---@return boolean
function ABattleCharacterBase:OnTakeNewDisease(eDiseaseType) end
---@param cEnforcer ABattleCharacterBase
---@param eDiseaseType EDISEASE_TYPE
---@param eDiseaseCategory EDISEASE_CATEGORY
---@param nInvocationValue int32
---@param nBoostLevel int32
---@param bIsNewDisease boolean
---@return boolean
function ABattleCharacterBase:OnTakeDisease(cEnforcer, eDiseaseType, eDiseaseCategory, nInvocationValue, nBoostLevel, bIsNewDisease) end
---@return boolean
function ABattleCharacterBase:OnPotentialityAction() end
---@param bIsBreakAttack boolean
---@return boolean
function ABattleCharacterBase:OnHitDamageSP(bIsBreakAttack) end
---@param bIsBreakAttack boolean
---@param bIsBreakTarget boolean
---@param eTotalResist EATTRIBUTE_RESIST
---@param eWeaponResist EATTRIBUTE_RESIST
---@return boolean
function ABattleCharacterBase:OnHitDamageHP(bIsBreakAttack, bIsBreakTarget, eTotalResist, eWeaponResist) end
function ABattleCharacterBase:OnFinish_CreateBattleAI() end
---@param bCancel boolean
---@return boolean
function ABattleCharacterBase:OffPotentialityAction(bCancel) end
function ABattleCharacterBase:MoveLastNextOrder() end
---@return boolean
function ABattleCharacterBase:IsWeakIconFullOpen() end
---@return boolean
function ABattleCharacterBase:IsSupporterComplete() end
---@return boolean
function ABattleCharacterBase:IsSelecterEffectVisibleSealAction() end
---@return boolean
function ABattleCharacterBase:IsSelecterEffectVisibleNormal() end
---@return boolean
function ABattleCharacterBase:IsSelecterEffectVisibleBribe() end
---@return boolean
function ABattleCharacterBase:IsPotentialityActionEnable() end
---@return boolean
function ABattleCharacterBase:IsPlayingJobChangeAction() end
---@return boolean
function ABattleCharacterBase:IsMasqueradeEnable() end
---@param bJustKill boolean
function ABattleCharacterBase:IsJustKillInAilment(bJustKill) end
---@return boolean
function ABattleCharacterBase:IsInventorEnable() end
---@return boolean
function ABattleCharacterBase:IsHitDiseaseInAction() end
---@param AbilityName FName
---@return boolean
function ABattleCharacterBase:IsGarderaAbility(AbilityName) end
---@return boolean
function ABattleCharacterBase:IsExecForceMovement() end
---@return boolean
function ABattleCharacterBase:IsExecBreakAct() end
---@return boolean
function ABattleCharacterBase:IsExceptField() end
---@return boolean
function ABattleCharacterBase:IsCharacterTameMonster() end
---@return boolean
function ABattleCharacterBase:IsCharacterSupporter() end
---@return boolean
function ABattleCharacterBase:IsCharacterReady() end
---@return boolean
function ABattleCharacterBase:IsCharacterPinch() end
---@return boolean
function ABattleCharacterBase:IsCharacterNPC() end
---@return boolean
function ABattleCharacterBase:IsCharacterNonPartsBattle() end
---@param bIsGroggy boolean
---@param bEnableCurrentAction boolean
---@param bEnableNextAction boolean
function ABattleCharacterBase:IsCharacterGroggy(bIsGroggy, bEnableCurrentAction, bEnableNextAction) end
---@return boolean
function ABattleCharacterBase:IsCharacterEnemy() end
---@return boolean
function ABattleCharacterBase:IsCharacterDisableAction() end
---@return boolean
function ABattleCharacterBase:IsCharacterDecondition() end
---@return boolean
function ABattleCharacterBase:IsCharacterDeadlySense() end
---@return boolean
function ABattleCharacterBase:IsCharacterDead() end
---@return boolean
function ABattleCharacterBase:IsCharacterBreak() end
---@return boolean
function ABattleCharacterBase:IsAutoTameMonster() end
---@param cActionOrderData FRequestActionOrderData
function ABattleCharacterBase:InterruptCurrentOrder(cActionOrderData) end
function ABattleCharacterBase:InitUseDamageCutShield() end
---@param strVoiceCharacterID FName
---@return boolean
function ABattleCharacterBase:InitializeBattleVoiceDataData(strVoiceCharacterID) end
---@return boolean
function ABattleCharacterBase:InitializeActionOrderData() end
---@return EWEAPON_STANCE
function ABattleCharacterBase:GetWeaponStance() end
---@param eAttackWeapon EWEAPON_CATEGORY
---@param bCheckWeakLock boolean
---@param eResistResult EATTRIBUTE_RESIST
function ABattleCharacterBase:GetWeaponResist(eAttackWeapon, bCheckWeakLock, eResistResult) end
---@param nWaitFrame int32
function ABattleCharacterBase:GetWaitEnemyActionFrame(nWaitFrame) end
---@param bTameEnable boolean
---@param fTameRateBase float
function ABattleCharacterBase:GetTameMonsterData(bTameEnable, fTameRateBase) end
---@return int32
function ABattleCharacterBase:GetSwitchWeaponIndex() end
---@param nMoneyValue int32
---@param bIsStealMoney boolean
function ABattleCharacterBase:GetStealAllMoney(nMoneyValue, bIsStealMoney) end
---@return boolean
function ABattleCharacterBase:GetSettledStealMoneyForTressa() end
---@return ESESSION_SE_TYPE
function ABattleCharacterBase:GetSessionSEType() end
---@param bIsSelfTurn boolean
---@param eReplayStatus EBATTLE_REPLAY_CHARA_STATUS
function ABattleCharacterBase:GetReplayStatus(bIsSelfTurn, eReplayStatus) end
---@param nDiseaseMask int32
function ABattleCharacterBase:GetReplayDiseaseMask(nDiseaseMask) end
---@return boolean
function ABattleCharacterBase:GetRecieveHeadHunting() end
---@return UPotentialityActionComponent
function ABattleCharacterBase:GetPotentialityActionComponent() end
---@param eCharaID EPlayableCharacterID
function ABattleCharacterBase:GetPlayableCharacterID(eCharaID) end
---@return ABattleCharacterBase
function ABattleCharacterBase:GetOwnerPlayer() end
---@param nIndex int32
---@param eResult EATTRIBUTE_TYPE
---@return boolean
function ABattleCharacterBase:GetOpenedAttribute(nIndex, eResult) end
---@return int32
function ABattleCharacterBase:GetNormalAttackWeaponIndex() end
---@return EWEAPON_CATEGORY
function ABattleCharacterBase:GetNormalAttackWeaponCategory() end
---@param nOrderIndex int32
---@return FActionOrderData
function ABattleCharacterBase:GetNextActionOrderData(nOrderIndex) end
---@return UMasqueradeComponent
function ABattleCharacterBase:GetMasqueradeComponent() end
---@return EWEAPON_CATEGORY
function ABattleCharacterBase:GetMainWeaponCategory() end
---@return UInventorComponent
function ABattleCharacterBase:GetInventorComponent() end
---@return FName
function ABattleCharacterBase:GetForteWeaponID() end
---@return int32
function ABattleCharacterBase:GetExcitementPoint() end
---@return TArray<EWEAPON_CATEGORY>
function ABattleCharacterBase:GetEquipmentWeaponCategory() end
---@return TArray<FItemData>
function ABattleCharacterBase:GetEquipmentList() end
---@return TArray<FName>
function ABattleCharacterBase:GetEquipmentLabelList() end
---@param eCheckWeapon EWEAPON_CATEGORY
---@param eEnchantAttribute EATTRIBUTE_TYPE
---@return boolean
function ABattleCharacterBase:GetEnchantAttribute(eCheckWeapon, eEnchantAttribute) end
---@return boolean
function ABattleCharacterBase:GetEnablePlayOnRecoveredVoice() end
---@return boolean
function ABattleCharacterBase:GetEnableBlind() end
---@param eDiseaseType EDISEASE_TYPE
---@param eResistResult EATTRIBUTE_RESIST
function ABattleCharacterBase:GetDiseaseResist(eDiseaseType, eResistResult) end
---@param acActionDelaySEData TArray<FActionDelaySEData>
---@param bEnable boolean
function ABattleCharacterBase:GetDelayEnemyActionSE(acActionDelaySEData, bEnable) end
---@return FVector
function ABattleCharacterBase:GetDefaultWarpPosition() end
---@return int32
function ABattleCharacterBase:GetDecreaseHPMax() end
---@return UDebugBattleCharaComponent
function ABattleCharacterBase:GetDebugComponent() end
---@return FVector
function ABattleCharacterBase:GetCursorPosition() end
---@return FVector
function ABattleCharacterBase:GetCurrentPosition() end
---@return FName
function ABattleCharacterBase:GetCharmEnemyLabel() end
---@return EPlayableCharacterID
function ABattleCharacterBase:GetCharmedPlayerID() end
---@param strVoiceID FName
---@param bFindVoiceID boolean
function ABattleCharacterBase:GetCharacterVoice_BattleStart(strVoiceID, bFindVoiceID) end
---@param strCharacterName FText
function ABattleCharacterBase:GetCharacterName(strCharacterName) end
---@param nFirstJob int32
---@param nSecondJob int32
function ABattleCharacterBase:GetCharacterJobByRowID(nFirstJob, nSecondJob) end
---@param eFirstJob EJOB_TYPE
---@param eSecondJob EJOB_TYPE
---@param bEnableSecondJob boolean
function ABattleCharacterBase:GetCharacterJob(eFirstJob, eSecondJob, bEnableSecondJob) end
---@param nCharaID int32
function ABattleCharacterBase:GetCharacterID(nCharaID) end
---@param Result int32
---@param Ratio float
function ABattleCharacterBase:GetCharacterEvation(Result, Ratio) end
---@param CalcType EAILMENT_CALC_TYPE
---@param Result int32
---@param Ratio float
function ABattleCharacterBase:GetCharacterDefence(CalcType, Result, Ratio) end
---@param Result int32
---@param Ratio float
function ABattleCharacterBase:GetCharacterConcentrate(Result, Ratio) end
---@param CalcType EAILMENT_CALC_TYPE
---@param DamageTarget ABattleCharacterBase
---@param Result int32
---@param Ratio float
function ABattleCharacterBase:GetCharacterAttack(CalcType, DamageTarget, Result, Ratio) end
---@param Result int32
---@param Ratio float
function ABattleCharacterBase:GetCharacterAgility(Result, Ratio) end
---@param Result int32
---@param Ratio float
function ABattleCharacterBase:GetCharacterAccuracy(Result, Ratio) end
---@param BribeEnable boolean
---@param BribeMoney int32
---@return boolean
function ABattleCharacterBase:GetBribeData(BribeEnable, BribeMoney) end
---@return UBattleVoiceComponent
function ABattleCharacterBase:GetBattleVoiceComponent() end
---@param bGround boolean
---@return USceneComponent
function ABattleCharacterBase:GetBattleEffectSocket(bGround) end
---@return UBattleAIBase
function ABattleCharacterBase:GetBattleAIComponent() end
---@param eAttackAttribute EATTRIBUTE_TYPE
---@param bCheckWeakLock boolean
---@param eResistResult EATTRIBUTE_RESIST
function ABattleCharacterBase:GetAttributeResist(eAttackAttribute, bCheckWeakLock, eResistResult) end
---@return AKSCharacterBase
function ABattleCharacterBase:GetAnimationCharacter() end
---@return AActor
function ABattleCharacterBase:GetAnimationActorForAttach() end
---@param eType EACTION_ORDER_TYPE
---@param fDelayRatio float
---@return int32
function ABattleCharacterBase:GetActionTimeForNextTurn(eType, fDelayRatio) end
---@param eType EACTION_ORDER_TYPE
---@param fDelayRatio float
---@return int32
function ABattleCharacterBase:GetActionTimeForCurrentTurn(eType, fDelayRatio) end
---@return UActionOrderComponent
function ABattleCharacterBase:GetActionOrderComponent() end
---@param nIndex int32
---@return FName
function ABattleCharacterBase:GetAbilityData(nIndex) end
---@param bCheckResume boolean
---@return boolean
function ABattleCharacterBase:FinishPotentialityAction(bCheckResume) end
function ABattleCharacterBase:FinishChangePartySequence() end
function ABattleCharacterBase:ExecSwitchSlidePartySubToMain() end
function ABattleCharacterBase:ExecSwitchSlidePartyMainToSub() end
---@return boolean
function ABattleCharacterBase:ExecStartCharacterWarp() end
---@param acActionOrderData TArray<FRequestActionOrderData>
---@param bNextTurnOnly boolean
---@param bRequest boolean
function ABattleCharacterBase:ExecSettingNextOrder(acActionOrderData, bNextTurnOnly, bRequest) end
function ABattleCharacterBase:ExecSealLicense() end
---@param cEnforcer ABattleCharacterBase
---@param nReviveHP int32
---@param bOverHeal boolean
---@param bUseRecoveryUI boolean
---@param bUseReviveVoice boolean
function ABattleCharacterBase:ExecRevive(cEnforcer, nReviveHP, bOverHeal, bUseRecoveryUI, bUseReviveVoice) end
function ABattleCharacterBase:ExecReturnSupporterActionForKSParty() end
---@param bWithReturnText boolean
function ABattleCharacterBase:ExecReturnSupporterAction(bWithReturnText) end
function ABattleCharacterBase:ExecReturnCharmActionForKSParty() end
function ABattleCharacterBase:ExecReturnCharmAction() end
---@return boolean
function ABattleCharacterBase:ExecEndCharacterWarp() end
---@param Enforcer ABattleCharacterBase
---@param nInvocationTurn int32
---@param eDragInType EBATTLE_DRAG_IN_TYPE
function ABattleCharacterBase:ExecDragInAction(Enforcer, nInvocationTurn, eDragInType) end
function ABattleCharacterBase:ExecCurseOfBindIdle() end
---@param Enforcer ABattleCharacterBase
function ABattleCharacterBase:ExecCurseOfBindAction(Enforcer) end
---@param Enforcer ABattleCharacterBase
function ABattleCharacterBase:ExecCharmAction(Enforcer) end
---@param Enforcer ABattleCharacterBase
---@param nInvocationTurn int32
function ABattleCharacterBase:ExecBlowAwayAction(Enforcer, nInvocationTurn) end
---@param fWaitTime float
---@return boolean
function ABattleCharacterBase:EndCharacterOrder(fWaitTime) end
---@param fWaitTime float
---@return boolean
function ABattleCharacterBase:EndBattleTurnForSubParty(fWaitTime) end
---@param fWaitTime float
---@return boolean
function ABattleCharacterBase:DecideActionForSubParty(fWaitTime) end
---@param cSEData TArray<FActionDelaySEData>
---@return boolean
function ABattleCharacterBase:Debug_SetActionDelaySEData(cSEData) end
---@param cSEData TArray<FActionDelaySEData>
---@return boolean
function ABattleCharacterBase:Debug_GetActionDelaySEData(cSEData) end
---@param nCreateNum int32
function ABattleCharacterBase:CreateSubAnimationCharacter(nCreateNum) end
---@param nAttributeNum int32
---@param nAttributeMax int32
---@return boolean
function ABattleCharacterBase:CreateOpenedAttributeList(nAttributeNum, nAttributeMax) end
---@param vEffectOffset FVector
function ABattleCharacterBase:CreateBattleEffectSocket(vEffectOffset) end
---@param cBattleAIClass TSoftClassPtr<UBattleAIBase>
---@param bAutoInitialize boolean
function ABattleCharacterBase:CreateBattleAI(cBattleAIClass, bAutoInitialize) end
---@param cTargetOrderData FActionOrderData
---@param eRequestType EACTION_ORDER_TYPE
---@param bIsNextTurn boolean
---@param bMoveForward boolean
---@return boolean
function ABattleCharacterBase:CheckWrapAroundEnable(cTargetOrderData, eRequestType, bIsNextTurn, bMoveForward) end
---@param eWeaponCategory EWEAPON_CATEGORY
---@param bOpened boolean
function ABattleCharacterBase:CheckWeaponWeakOpen(eWeaponCategory, bOpened) end
---@param bUseShield boolean
function ABattleCharacterBase:CheckUseDamageCutShield(bUseShield) end
---@param eSupportAilment ESUPPORT_AILMENT_TYPE
---@param cSupportAbilityData FSupportAbilityDataBase
---@return boolean
function ABattleCharacterBase:CheckSupportAilment(eSupportAilment, cSupportAbilityData) end
---@return boolean
function ABattleCharacterBase:CheckShuffleEnable() end
---@return boolean
function ABattleCharacterBase:CheckReflactionEnforcer() end
---@param eSubMenuType ECOMMAND_SUB_MENU_TYPE
---@return boolean
function ABattleCharacterBase:CheckPreparationSealing(eSubMenuType) end
---@param eActionType EPOTENTIALITY_ACTION_TYPE
---@return boolean
function ABattleCharacterBase:CheckPotentialityActionExec(eActionType) end
---@param cTargetOrderData FActionOrderData
---@param eRequestType EACTION_ORDER_TYPE
---@param bIsNextTurn boolean
---@return boolean
function ABattleCharacterBase:CheckOverTakeEnable(cTargetOrderData, eRequestType, bIsNextTurn) end
---@return boolean
function ABattleCharacterBase:CheckLastOrderInTurn() end
---@return boolean
function ABattleCharacterBase:CheckFirstOrderInTurn() end
---@return boolean
function ABattleCharacterBase:CheckExecedPreparation() end
---@param bEnable boolean
function ABattleCharacterBase:CheckExecDiseaseForPostOrder(bEnable) end
---@return boolean
function ABattleCharacterBase:CheckExcludeFromBattleOutcome() end
---@param eCheckWeapon EWEAPON_CATEGORY
---@return boolean
function ABattleCharacterBase:CheckEquipmentWeapon(eCheckWeapon) end
---@return boolean
function ABattleCharacterBase:CheckEnableStealthTarget() end
---@return boolean
function ABattleCharacterBase:CheckEnableStealthCursor() end
---@return boolean
function ABattleCharacterBase:CheckEnableStealthActionOrder() end
---@param strEnemyID FName
---@param cNPCData FNPCData
---@return boolean
function ABattleCharacterBase:CheckEnableHeadHunting(strEnemyID, cNPCData) end
---@return boolean
function ABattleCharacterBase:CheckEnableCountDownAbility() end
---@param eType EBATTLE_DEBUG_SWITCH
---@return boolean
function ABattleCharacterBase:CheckDebugSwitch(eType) end
---@param bReviveAndRecovery boolean
---@return boolean
function ABattleCharacterBase:CheckCharacterReviveEnable(bReviveAndRecovery) end
---@return boolean
function ABattleCharacterBase:CheckBoostPointMax() end
---@param eAttributeType EATTRIBUTE_TYPE
---@param bOpened boolean
function ABattleCharacterBase:CheckAttributeWeakOpen(eAttributeType, bOpened) end
---@param bAbilityHitFlag boolean
---@param bAbilityHitInvisible boolean
function ABattleCharacterBase:CheckAbilityHitFlag(bAbilityHitFlag, bAbilityHitInvisible) end
---@param eTargetWeapon EWEAPON_CATEGORY
---@param bUseWeaponTexture boolean
---@return boolean
function ABattleCharacterBase:ChangeMainWeapon(eTargetWeapon, bUseWeaponTexture) end
---@return boolean
function ABattleCharacterBase:ChangeActionModeForKSParty() end
---@return boolean
function ABattleCharacterBase:ChangeActionModeForGaldera() end
---@param bIsSpecial boolean
---@param nModeIndex int32
---@param bUseTransition boolean
---@return boolean
function ABattleCharacterBase:ChangeActionMode(bIsSpecial, nModeIndex, bUseTransition) end
---@param fWaitTime float
---@return boolean
function ABattleCharacterBase:BeginCharacterOrder(fWaitTime) end
---@return boolean
function ABattleCharacterBase:ApplyChangeActionMode() end
---@param nAddPoint int32
---@param bIgnore boolean
---@return boolean
function ABattleCharacterBase:AddPotentialityActionPoint(nAddPoint, bIgnore) end
---@param nAdditiveMaxHP int32
---@return boolean
function ABattleCharacterBase:AddMaxHP(nAdditiveMaxHP) end
---@param DiseaseName FName
---@param InvocationValue int32
---@param InvocationTurn int32
---@return boolean
function ABattleCharacterBase:AddDiseaseForSequencer(DiseaseName, InvocationValue, InvocationTurn) end
---@param DiseaseName FName
---@param InvocationValue int32
---@param InvocationTurn int32
---@param Enforcer ABattleCharacterBase
---@return boolean
function ABattleCharacterBase:AddDiseaseForAI(DiseaseName, InvocationValue, InvocationTurn, Enforcer) end
---@param strAbilityName FName
---@param acTargetList TArray<ABattleCharacterBase>
---@return boolean
function ABattleCharacterBase:AddChargeActionData(strAbilityName, acTargetList) end
---@return boolean
function ABattleCharacterBase:AddBribeCounter() end
---@param cActorComponentClass UClass
---@return UActorComponent
function ABattleCharacterBase:AddActorComponent(cActorComponentClass) end


---@class ABattleCommandMenuActor : AActor
---@field m_bIsTargetEnemySide boolean
---@field m_astrOptionDataList TArray<FName>
---@field m_strUseActionLabel FName
---@field m_acCommandSealingList TArray<boolean>
---@field m_acDivineSealingList TArray<boolean>
local ABattleCommandMenuActor = {}

function ABattleCommandMenuActor:SetupCommandSealingList() end
---@param eType EDIVINE_SEALING_TYPE
---@param bSealing boolean
function ABattleCommandMenuActor:SetDivineSealing(eType, bSealing) end
---@param eType ECOMMAND_SEALING_TYPE
---@param bSealing boolean
function ABattleCommandMenuActor:SetCommandSealing(eType, bSealing) end
---@return boolean
function ABattleCommandMenuActor:OnStyleChange() end
---@return boolean
function ABattleCommandMenuActor:OnPotentialityAction() end
---@return boolean
function ABattleCommandMenuActor:OnBreakStyle() end
---@return boolean
function ABattleCommandMenuActor:OnBoostStyle() end
---@return boolean
function ABattleCommandMenuActor:OffPotentialityAction() end
---@return boolean
function ABattleCommandMenuActor:OffBreakStyle() end
---@return boolean
function ABattleCommandMenuActor:OffBoostStyle() end
---@param eType EDIVINE_SEALING_TYPE
---@return boolean
function ABattleCommandMenuActor:IsDivineSealing(eType) end
---@param eType ECOMMAND_SEALING_TYPE
---@return boolean
function ABattleCommandMenuActor:IsCommandSealing(eType) end
---@param astrOptionDataList TArray<FName>
---@param strUseActionLabel FName
function ABattleCommandMenuActor:GetOptionDataList(astrOptionDataList, strUseActionLabel) end
---@param FlagName FName
---@param Value boolean
function ABattleCommandMenuActor:GetEventFlag(FlagName, Value) end
---@return boolean
function ABattleCommandMenuActor:ExecPotentialityAction() end
function ABattleCommandMenuActor:ClearDivineSealing() end
function ABattleCommandMenuActor:ClearCommandSealing() end
---@param cEnforceer ABattleCharacterBase
---@param cItemData FItemData
---@param eCommandUseable EACTION_COMMAND_USEABLE
function ABattleCommandMenuActor:CheckCommandSealingListForItem(cEnforceer, cItemData, eCommandUseable) end
---@param cEnforceer ABattleCharacterBase
---@param cInvadeData FInvadeData
---@param eCommandUseable EACTION_COMMAND_USEABLE
function ABattleCommandMenuActor:CheckCommandSealingListForInvade(cEnforceer, cInvadeData, eCommandUseable) end
---@param cEnforceer ABattleCharacterBase
---@param cAbilitySet FAbilitySetDataBase
---@param eCommandUseable EACTION_COMMAND_USEABLE
function ABattleCommandMenuActor:CheckCommandSealingList(cEnforceer, cAbilitySet, eCommandUseable) end


---@class ABattleManager : AAcqManagerBase
---@field m_eBattleMode EBATTLE_ENCOUNT_TYPE
---@field m_bIsViewerMode boolean
---@field m_nBattleTurnCount int32
---@field m_nEnemyBreakCount int32
---@field m_bUsedRepeatAbility boolean
---@field m_cRareCatlinParam FRareEnemyParam
---@field m_cRareOctlinParam FRareEnemyParam
---@field m_bIsWaterSideMode boolean
---@field m_nBattleOrderCount int32
---@field m_nBattleOrderCountMax int32
---@field m_bUseSubPartyBattle boolean
---@field m_bBoutInBattleMode boolean
---@field m_acBattleCharacter TArray<ABattleCharacterBase>
---@field m_acBattlePlayer TArray<ABattleCharacterBase>
---@field m_acBattleEnemy TArray<ABattleCharacterBase>
---@field m_acBattleSupporter TArray<ABattleCharacterBase>
---@field m_acSubBattlePlayer TArray<ABattleCharacterBase>
---@field m_acSubBattleSupporter TArray<ABattleCharacterBase>
---@field m_cBoutInBattleEnforcer ABattleCharacterBase
---@field m_cBoutInBattleTarget ABattleCharacterBase
---@field m_cCurseOfBindTarget ABattleCharacterBase
---@field m_cCurseOfBindSubTarget ABattleCharacterBase
---@field m_bEnableSyncAnimationCharacter boolean
---@field m_cSyncAnimationCharacter_Parent ABattleCharacterBase
---@field m_acSyncAnimationCharacter_Childs TArray<ABattleCharacterBase>
---@field m_cPrevNoticeCharacter_Pinch ABattleCharacterBase
---@field m_cPrevNoticeCharacter_JustBreak ABattleCharacterBase
---@field m_acReflectionEnforcerList TArray<ABattleCharacterBase>
---@field m_cBattleCamera ABattleCamera
---@field m_cBattleDirector ABattleSequenceDirector
---@field m_bExecutedReturnDragInEffect_Sea boolean
---@field m_abDragInIndex TArray<boolean>
---@field m_acPlayerIconTexture TMap<int32, UTexture2D>
---@field m_acBattleVoiceSetList TMap<FName, FBattleVoiceSetList>
---@field m_cCurrentAdditiveOrderData FBattleAdditiveOrderData
---@field m_bExecSessionAbility boolean
---@field m_cCurrentActionCommand AActionCommandBase
---@field m_cBattleEventSequence ULevelSequence
---@field m_bIsBattleEvent boolean
---@field m_bReadyBattleEvent boolean
---@field m_bExecBattleEvent boolean
---@field m_bExecBattleStartDash boolean
---@field m_cBattleCommandMenuActor ABattleCommandMenuActor
---@field m_acUsedOnceMonsterList TArray<FName>
---@field m_acUsedAwakingMonsterList TArray<FName>
---@field m_bIsAutoTameMonster boolean
---@field m_cAutoTameTarget ABattleCharacterBase
---@field m_cBattleActionOrder ABattleActionOrder
---@field m_acFirstActionCharacter TArray<ABattleCharacterBase>
---@field m_bIsFirstActionCharacter boolean
---@field m_bExecFirstActionTurn boolean
---@field m_cActiveCharacter ABattleCharacterBase
---@field m_cActionCharacter ABattleCharacterBase
---@field m_cAdditiveCharacter ABattleCharacterBase
---@field m_cCurrentOrderData FActionOrderData
---@field m_bRequestErosionCounter boolean
---@field m_nTotalRewardMoney int32
---@field m_nTotalRewardExp int32
---@field m_nTotalRewardJP int32
---@field m_nRewardLuckyMoney int32
---@field m_nRewardLuckyExp int32
---@field m_nRewardLuckyJP int32
---@field m_fMoneyRatioByAbility float
---@field m_fExpRatioByAbility float
---@field m_fJPRatioByAbility float
---@field m_fMoneyRatioByEquipment float
---@field m_fExpRatioByEquipment float
---@field m_fJPRatioByEquipment float
---@field m_fMoneyRatioBySupport float
---@field m_fExpRatioBySupport float
---@field m_fJPRatioBySupport float
---@field m_fExpRatioBySupportInNight float
---@field m_fJPRatioBySupportInNight float
---@field m_bOverrideBattleSpeed boolean
---@field m_bAllowChangeBattleSpeed boolean
---@field m_bMainPartyIsFrontMember boolean
---@field m_bOnePartyDead boolean
---@field m_bExecChangePartySequencer boolean
---@field m_nSettledPlayerNum int32
---@field m_WeaponUnloadManage FWeaponTexutreUnloadManage
---@field m_bDebugRelaseWeaponTexture boolean
local ABattleManager = {}

function ABattleManager:UpdateBattleNumberUI() end
---@return boolean
function ABattleManager:UpdateBattleFieldDisease() end
---@return boolean
function ABattleManager:SwapBattlePlayerForEightBattle() end
---@param cEnforcer ABattleCharacterBase
---@param cTarget ABattleCharacterBase
---@return boolean
function ABattleManager:StartBoutInBattleMode(cEnforcer, cTarget) end
function ABattleManager:StartBattleRequest() end
---@param bEnable boolean
function ABattleManager:SetUsedRepeatAbility(bEnable) end
---@param cTarget ABattleCharacterBase
---@return boolean
function ABattleManager:SetupAutoTameMonster(cTarget) end
---@param eType EWEAPON_UNLOAD_GC_TYPE
function ABattleManager:SetUnloadWeaponGCType(eType) end
---@param uMax uint8
function ABattleManager:SetUnloadWeaponCntMax(uMax) end
---@param cCharacter ABattleCharacterBase
function ABattleManager:SetSyncAnimationCharacterParent(cCharacter) end
---@param cPinchCharacter ABattleCharacterBase
function ABattleManager:SetPrevNoticeCharacter_Pinch(cPinchCharacter) end
---@param cJustBreakCharacter ABattleCharacterBase
function ABattleManager:SetPrevNoticeCharacter_JustBreak(cJustBreakCharacter) end
---@param fRatio float
---@return boolean
function ABattleManager:SetMoneyRatioBySupport(fRatio) end
---@param fRatio float
---@return boolean
function ABattleManager:SetMoneyRatioByEquipment(fRatio) end
---@param fRatio float
---@return boolean
function ABattleManager:SetMoneyRatioByAbility(fRatio) end
---@param fRatio float
---@return boolean
function ABattleManager:SetJPRatioBySupportInNight(fRatio) end
---@param fRatio float
---@return boolean
function ABattleManager:SetJPRatioBySupport(fRatio) end
---@param fRatio float
---@return boolean
function ABattleManager:SetJPRatioByEquipment(fRatio) end
---@param fRatio float
---@return boolean
function ABattleManager:SetJPRatioByAbility(fRatio) end
---@param fRatio float
---@return boolean
function ABattleManager:SetExpRatioBySupportInNight(fRatio) end
---@param fRatio float
---@return boolean
function ABattleManager:SetExpRatioBySupport(fRatio) end
---@param fRatio float
---@return boolean
function ABattleManager:SetExpRatioByEquipment(fRatio) end
---@param fRatio float
---@return boolean
function ABattleManager:SetExpRatioByAbility(fRatio) end
---@param bEnable boolean
function ABattleManager:SetExecSessionAbilityForTutorial(bEnable) end
---@param bRelease boolean
function ABattleManager:SetEnableRelaseWeaponTexture(bRelease) end
---@param eType EBATTLE_DEBUG_SWITCH
---@param bValue boolean
function ABattleManager:SetDebugSwitch(eType, bValue) end
---@param eType EBATTLE_DEBUG_SWITCH
---@param nValue int32
function ABattleManager:SetDebugParameter(eType, nValue) end
---@param StartType EBATTLE_START_TYPE
---@param WaterSide boolean
---@return boolean
function ABattleManager:SetBattleStartType(StartType, WaterSide) end
---@param eCharaID EPlayableCharacterID
---@param PlayerCharacter ABattleCharacterBase
---@param bFindCharacter boolean
---@param bCharacterAlive boolean
function ABattleManager:SearchPlayerCharacter(eCharaID, PlayerCharacter, bFindCharacter, bCharacterAlive) end
---@param strEnemyID FName
---@param EnemyCharacter ABattleCharacterBase
---@param bFindCharacter boolean
---@param bCharacterAlive boolean
function ABattleManager:SearchEnemyCharacter(strEnemyID, EnemyCharacter, bFindCharacter, bCharacterAlive) end
---@param DiseaseType EFIELD_DISEASE_TYPE
---@return boolean
function ABattleManager:SearchBattleFieldDisease(DiseaseType) end
---@param nIndex int32
function ABattleManager:ReturnDragInIndex(nIndex) end
function ABattleManager:ResetDragInIndex() end
function ABattleManager:RequestSettingErosionCounter() end
---@param fWaitTime float
---@return boolean
function ABattleManager:RequestPlayActionWaitTime(fWaitTime) end
---@param eSegment EEndRollSegmentSet
function ABattleManager:RequestLoadForEndroll(eSegment) end
---@param cEventSequence TSoftObjectPtr<ULevelSequence>
function ABattleManager:RequestLoadBattleEvent(cEventSequence) end
---@return boolean
function ABattleManager:RequestChangeBattleParty() end
---@param EventSequence TSoftObjectPtr<ULevelSequence>
---@param MainActor ABattleCharacterBase
---@param EventEnforcer ABattleCharacterBase
function ABattleManager:RequestBattleEvent(EventSequence, MainActor, EventEnforcer) end
function ABattleManager:RemoveCurseOfBind() end
---@param DiseaseType EFIELD_DISEASE_TYPE
---@return boolean
function ABattleManager:RemoveBattleFieldDisease(DiseaseType) end
function ABattleManager:ReleasePotentialityAction() end
---@param cReturnCharacter ABattleCharacterBase
---@param eDragInType EBATTLE_DRAG_IN_TYPE
function ABattleManager:PlayReturnDragInEffect(cReturnCharacter, eDragInType) end
---@param strFirstText FText
---@param strSecondText FText
function ABattleManager:OpenMultiLineInfomation(strFirstText, strSecondText) end
---@param astrInfomationText TArray<FText>
---@param fShowTime float
function ABattleManager:OpenChainInfomation(astrInfomationText, fShowTime) end
---@param strInfomationText FText
function ABattleManager:OpenActionInfomation(strInfomationText) end
---@return boolean
function ABattleManager:IsKSPartyBattle() end
---@return boolean
function ABattleManager:IsItemCommandSeal() end
---@return boolean
function ABattleManager:IsItemCommandEnable() end
---@return boolean
function ABattleManager:IsGuardCommandEnable() end
---@return boolean
function ABattleManager:IsFirstActionTurn() end
---@return boolean
function ABattleManager:IsExVideBattle() end
---@return boolean
function ABattleManager:IsExecBattleStartDash() end
---@return boolean
function ABattleManager:IsEscapeCommandEnable() end
---@return boolean
function ABattleManager:IsEndrollReplayMode() end
---@return boolean
function ABattleManager:IsEnableRelaseWeaponTexture() end
---@return boolean
function ABattleManager:IsEightBattleMode() end
---@param bEnable boolean
---@param bExecutable boolean
function ABattleManager:IsChangeBattlePartyEnable(bEnable, bExecutable) end
---@return boolean
function ABattleManager:IsBoutInBattleMode() end
---@return boolean
function ABattleManager:IsBoostCommandEnable() end
---@return boolean
function ABattleManager:IsBattleSpeedOverride() end
---@return boolean
function ABattleManager:IsAutoTameMonster() end
---@return boolean
function ABattleManager:IsAllowChangeBattleSpeed() end
---@return boolean
function ABattleManager:InitUsedInvadeMonster() end
function ABattleManager:InitSyncAnimationCharacter() end
function ABattleManager:InitPrevNoticeCharacter() end
function ABattleManager:InitializeResultValue() end
function ABattleManager:InitBattleOrderCount() end
---@return boolean
function ABattleManager:InitBattleFirstActionCharacter() end
---@return boolean
function ABattleManager:GetWaterSideMode() end
---@return boolean
function ABattleManager:GetUsedRepeatAbility() end
---@param cParent ABattleCharacterBase
---@param acChilds TArray<ABattleCharacterBase>
---@return boolean
function ABattleManager:GetSyncAnimationCharacter(cParent, acChilds) end
---@return TArray<ABattleCharacterBase>
function ABattleManager:GetSubBattlePlayerList() end
---@return int32
function ABattleManager:GetSettledPlayerNum() end
---@return float
function ABattleManager:GetResultMoneyRatio() end
---@return float
function ABattleManager:GetResultJPRatio() end
---@return float
function ABattleManager:GetResultExpRatio() end
---@param bFindEnemy boolean
---@return TArray<ABattleCharacterBase>
function ABattleManager:GetRespawnableEnemyList(bFindEnemy) end
---@param nIndex int32
---@param cRespawnableEnemy ABattleCharacterBase
---@param bFindEnemy boolean
function ABattleManager:GetRespawnableEnemy(nIndex, cRespawnableEnemy, bFindEnemy) end
---@param cPinchCharacter ABattleCharacterBase
---@return boolean
function ABattleManager:GetPrevNoticeCharacter_Pinch(cPinchCharacter) end
---@param cJustBreakCharacter ABattleCharacterBase
---@return boolean
function ABattleManager:GetPrevNoticeCharacter_JustBreak(cJustBreakCharacter) end
---@return boolean
function ABattleManager:GetOnePartyDead() end
---@param cMapObjectRoot AActor
function ABattleManager:GetMapObjectRoot(cMapObjectRoot) end
---@return boolean
function ABattleManager:GetMainPartyIsFrontMember() end
---@return ABattleManager
function ABattleManager:GetInstance() end
---@param FlagName FName
---@param Value boolean
function ABattleManager:GetEventFlag(FlagName, Value) end
---@return FName
function ABattleManager:GetEnemyGroupID() end
---@return int32
function ABattleManager:GetEnemyBreakCount() end
---@param eType EBATTLE_DEBUG_SWITCH
---@return int32
function ABattleManager:GetDebugParameter(eType) end
---@return UDebugBattleLogComponent
function ABattleManager:GetDebugLogComponent() end
---@return UDebugBattleManagerComponent
function ABattleManager:GetDebugComponent() end
---@param cTarget ABattleCharacterBase
---@param cSubTarget ABattleCharacterBase
function ABattleManager:GetCurseOfBindTarget(cTarget, cSubTarget) end
---@param cAdditiveOrderData FBattleAdditiveOrderData
---@return boolean
function ABattleManager:GetCurrentAdditiveOrderData(cAdditiveOrderData) end
---@param cActionData FActionOrderData
function ABattleManager:GetCurrentActionOrderData(cActionData) end
---@param cActionCommand AActionCommandBase
---@return boolean
function ABattleManager:GetCurrentActionCommand(cActionCommand) end
---@return ABattleCommandMenuActor
function ABattleManager:GetCommandMenuActor() end
---@param cEnforcer ABattleCharacterBase
---@param cTarget ABattleCharacterBase
function ABattleManager:GetBoutInBattleCharacter(cEnforcer, cTarget) end
---@param strCharacterID FName
---@param astrBattleVoiceLabel TArray<FName>
---@return boolean
function ABattleManager:GetBattleVoiceSetList(strCharacterID, astrBattleVoiceLabel) end
---@return boolean
function ABattleManager:GetBattleViewerMode() end
---@return int32
function ABattleManager:GetBattleTurnCount() end
---@return TArray<ABattleCharacterBase>
function ABattleManager:GetBattleSupporterList() end
---@return EBATTLE_START_TYPE
function ABattleManager:GetBattleStartType() end
---@param cSteamAuraA AEmitter
---@param cSteamFieldA AEmitter
function ABattleManager:GetBattleSequencerObject_SteamEffect(cSteamAuraA, cSteamFieldA) end
---@param cAntlionSandA AStaticMeshActor
---@param cAntlionSandB AStaticMeshActor
function ABattleManager:GetBattleSequencerObject_AntlionSand(cAntlionSandA, cAntlionSandB) end
---@return ABattleSequenceDirector
function ABattleManager:GetBattleSequenceDirector() end
---@param acFrontParty TArray<ABattleCharacterBase>
---@param acBackParty TArray<ABattleCharacterBase>
function ABattleManager:GetBattlePlayerListForSequencer(acFrontParty, acBackParty) end
---@return TArray<ABattleCharacterBase>
function ABattleManager:GetBattlePlayerListForEightBattle() end
---@return TArray<ABattleCharacterBase>
function ABattleManager:GetBattlePlayerList() end
---@param nOrderCount int32
---@param nOrderCountMax int32
function ABattleManager:GetBattleOrderCount(nOrderCount, nOrderCountMax) end
---@return EBATTLE_ENCOUNT_TYPE
function ABattleManager:GetBattleMode() end
---@param strEnemyGroupID FName
---@param bBossBattle boolean
---@param bFieldCommandBattle boolean
---@return boolean
function ABattleManager:GetBattleInfomation(strEnemyGroupID, bBossBattle, bFieldCommandBattle) end
---@return TArray<ABattleCharacterBase>
function ABattleManager:GetBattleEnemyList() end
---@return TArray<ABattleCharacterBase>
function ABattleManager:GetBattleCharacterList() end
---@return ABattleCamera
function ABattleManager:GetBattleCamera() end
---@param bBoostMode boolean
function ABattleManager:GetBattleBoostMode(bBoostMode) end
---@param cActiveCharacter ABattleCharacterBase
function ABattleManager:GetBattleActiveCharacter(cActiveCharacter) end
---@return ABattleActionOrder
function ABattleManager:GetBattleActionOrder() end
---@param cAutoTameTarget ABattleCharacterBase
---@return boolean
function ABattleManager:GetAutoTameTarget(cAutoTameTarget) end
---@return int32
function ABattleManager:GetAddDragInIndex() end
function ABattleManager:FinishChangePartySequencer() end
function ABattleManager:FinishBattleStartDash() end
function ABattleManager:FinishBattleEvent() end
---@param Enforcer ABattleCharacterBase
function ABattleManager:ExecSealLicense(Enforcer) end
---@return boolean
function ABattleManager:ExecInitializeEnemyResourceList() end
---@param cEventSequence TSoftObjectPtr<ULevelSequence>
---@param cMainActor ABattleCharacterBase
---@param cEventEnforcer ABattleCharacterBase
function ABattleManager:ExecDebugPlayBattleEvent(cEventSequence, cMainActor, cEventEnforcer) end
---@param strAbilityLabel FName
---@param nBoostLevel int32
---@param bPlayerSide boolean
---@return boolean
function ABattleManager:ExecDebugPlayAbility(strAbilityLabel, nBoostLevel, bPlayerSide) end
---@return boolean
function ABattleManager:ExecChangeBattleSpeed() end
function ABattleManager:ExecBattleSuspend() end
---@return boolean
function ABattleManager:ExecBattleFieldDiseaseForErosion() end
---@param DiseaseType EFIELD_DISEASE_TYPE
---@return boolean
function ABattleManager:ExecBattleFieldDisease(DiseaseType) end
---@param bEnable boolean
---@param bPlayerOnly boolean
---@return boolean
function ABattleManager:ExecActionOrderBlind(bEnable, bPlayerOnly) end
---@return boolean
function ABattleManager:Debug_IsReadyBattleSuspend() end
---@return boolean
function ABattleManager:CreateStationaryBattleUI() end
function ABattleManager:CloseActionInfomation() end
---@param strCheckMonsterLabel FName
---@return boolean
function ABattleManager:CheckUsedOnceMonster(strCheckMonsterLabel) end
---@param strCheckMonsterLabel FName
---@return boolean
function ABattleManager:CheckUsedAwakingMonster(strCheckMonsterLabel) end
---@param eAilmentType ESUPPORT_AILMENT_TYPE
---@param cAbilityData FSupportAbilityDataBase
---@return boolean
function ABattleManager:CheckSupportAilmentInParty(eAilmentType, cAbilityData) end
---@param eType EBATTLE_DEBUG_SWITCH
---@return boolean
function ABattleManager:CheckDebugSwitch(eType) end
---@return boolean
function ABattleManager:CheckBattleVictory() end
---@return boolean
function ABattleManager:CheckBattleTutorial_OpenCommandMenu() end
---@param cTargetPlayer ABattleCharacterBase
---@return boolean
function ABattleManager:CheckBattlePlayerInMainParty(cTargetPlayer) end
---@param bBattleDefeat boolean
---@param bEightBattleChange boolean
function ABattleManager:CheckBattleDefeat(bBattleDefeat, bEightBattleChange) end
function ABattleManager:ChangeBattlePartyForAbility() end
function ABattleManager:ApplyAllDebugSwitch() end
---@param strUsedMonsterLabel FName
---@return boolean
function ABattleManager:AddUsedOnceMonster(strUsedMonsterLabel) end
---@param strUsedMonsterLabel FName
---@return boolean
function ABattleManager:AddUsedAwakingMonster(strUsedMonsterLabel) end
---@param weaponList TArray<FName>
function ABattleManager:AddUnloadWeaponTextureLabel(weaponList) end
---@param cCharacter ABattleCharacterBase
function ABattleManager:AddSyncAnimationCharacterChilds(cCharacter) end
---@param SealingValue int32
---@param Enforcer ABattleCharacterBase
---@return boolean
function ABattleManager:AddSealEightDivineDisease(SealingValue, Enforcer) end
---@param nValue int32
---@return boolean
function ABattleManager:AddRewardLuckyMoney(nValue) end
---@param nValue int32
---@return boolean
function ABattleManager:AddRewardLuckyJP(nValue) end
---@param nValue int32
---@return boolean
function ABattleManager:AddRewardLuckyExp(nValue) end
---@param cCharacter ABattleCharacterBase
function ABattleManager:AddReflectionEnforcerList(cCharacter) end
---@param weaponList TArray<FName>
function ABattleManager:AddloadWeaponTextureLabel(weaponList) end
function ABattleManager:AddEnemyBreakCount() end
function ABattleManager:AddBattleTurnCount() end
function ABattleManager:AddBattleOrderCount() end
---@param strBattleLog FString
function ABattleManager:AddBattleLogForOneLine(strBattleLog) end
---@param cBattleLog FDebugBattleLog
function ABattleManager:AddBattleLog(cBattleLog) end
---@param cActionCharacter ABattleCharacterBase
---@return boolean
function ABattleManager:AddBattleFirstActionCharacter(cActionCharacter) end
---@param DiseaseType EFIELD_DISEASE_TYPE
---@param InvocationValue int32
---@param InvocationTurn int32
---@param DiseaseLevel int32
---@param Enforcer ABattleCharacterBase
---@return boolean
function ABattleManager:AddBattleFieldDisease(DiseaseType, InvocationValue, InvocationTurn, DiseaseLevel, Enforcer) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@return boolean
function ABattleManager:AddAdditiveOrderForSong(Enforcer, AbilityName) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@return boolean
function ABattleManager:AddAdditiveOrderForSignOfBoost(Enforcer, AbilityName) end
---@param Enforcer ABattleCharacterBase
---@return boolean
function ABattleManager:AddAdditiveOrderForReraise(Enforcer) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@param acTargetList TArray<ABattleCharacterBase>
---@return boolean
function ABattleManager:AddAdditiveOrderForRepeat(Enforcer, AbilityName, acTargetList) end
---@param Enforcer ABattleCharacterBase
---@param strAbilityName FName
---@param strAilmentName FName
---@param nInvocationValue int32
---@param eAttribute EATTRIBUTE_TYPE
---@param cTargetList ABattleCharacterBase
---@return boolean
function ABattleManager:AddAdditiveOrderForReflection(Enforcer, strAbilityName, strAilmentName, nInvocationValue, eAttribute, cTargetList) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@param acTargetList TArray<ABattleCharacterBase>
---@return boolean
function ABattleManager:AddAdditiveOrderForLastAttack(Enforcer, AbilityName, acTargetList) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@param acTargetList TArray<ABattleCharacterBase>
---@return boolean
function ABattleManager:AddAdditiveOrderForFirstAttack(Enforcer, AbilityName, acTargetList) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@param acTargetList TArray<ABattleCharacterBase>
---@return boolean
function ABattleManager:AddAdditiveOrderForEnchant(Enforcer, AbilityName, acTargetList) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@param cTarget ABattleCharacterBase
---@return boolean
function ABattleManager:AddAdditiveOrderForCounterOnDodge(Enforcer, AbilityName, cTarget) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@return boolean
function ABattleManager:AddAdditiveOrderForCounterOnDisease(Enforcer, AbilityName) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@return boolean
function ABattleManager:AddAdditiveOrderForCounterOnBreak(Enforcer, AbilityName) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@param bOnDead boolean
---@param bCounterOnce boolean
---@param cTargetList ABattleCharacterBase
---@return boolean
function ABattleManager:AddAdditiveOrderForCounter(Enforcer, AbilityName, bOnDead, bCounterOnce, cTargetList) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@param acTargetList TArray<ABattleCharacterBase>
---@return boolean
function ABattleManager:AddAdditiveOrderForCountDownAbility(Enforcer, AbilityName, acTargetList) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@param ContinuousTurn int32
---@return boolean
function ABattleManager:AddAdditiveOrderForContinuousAbility(Enforcer, AbilityName, ContinuousTurn) end
---@param Enforcer ABattleCharacterBase
---@param AbilityName FName
---@param acTargetList TArray<ABattleCharacterBase>
---@return boolean
function ABattleManager:AddAdditiveOrderForChaseAttack(Enforcer, AbilityName, acTargetList) end
---@param cEnforcer ABattleCharacterBase
---@param cTarget ABattleCharacterBase
---@return boolean
function ABattleManager:AddAdditiveOrderForAutoTameMonster(cEnforcer, cTarget) end


---@class ABattleSequenceDirector : AActor
---@field m_acManualUpdateSequencerList TArray<ALevelSequenceActor>
---@field m_cBoostSequenceActor ALevelSequenceActor
---@field m_cAbilityCameraSequenceActor ALevelSequenceActor
---@field m_cWeatherSequenceActor ALevelSequenceActor
---@field m_cEncountSequenceActor ALevelSequenceActor
---@field m_cBreakSequenceActor ALevelSequenceActor
---@field m_cActionCommandSequenceActor ABattleAbilitySequenceActor
---@field m_acSubActionCommandSequenceActor TArray<ABattleAbilitySequenceActor>
---@field m_cBattleEventSequenceActor ALevelSequenceActor
---@field m_cBattleDashSequenceActor ALevelSequenceActor
---@field m_cBattleResultSequenceActor ALevelSequenceActor
---@field m_cBattlePartyChangeSequenceActor ALevelSequenceActor
---@field m_cBattleKSPartyDashSequenceActor ALevelSequenceActor
---@field m_cBattleCamera ABattleCamera
---@field m_cPostProcessVolume APostProcessVolume
---@field m_nBoostLevel int32
---@field m_cBattleDustEffectActor AActor
---@field m_cBoostEffectLv1Actor ABattleSequenceEmitter
---@field m_cBoostEffectLv2Actor ABattleSequenceEmitter
---@field m_cBoostEffectLv3Actor ABattleSequenceEmitter
---@field m_cPointLightActor ABattleSequencePointLight
---@field m_eAbilityCameraSlideSequence EBATTLE_CAMERA_SEQUENCE
---@field m_cAbilityCameraSlideStartFrame FFrameTime
---@field m_cAbilityCameraSlideEndFrame FFrameTime
---@field m_eAbilityCameraBackSequence EBATTLE_CAMERA_SEQUENCE
---@field m_cAbilityCameraBackStartFrame FFrameTime
---@field m_cAbilityCameraBackEndFrame FFrameTime
---@field m_cActionCommand AActionCommandBase
---@field SUB_ACTION_COMMAND_MAX int32
---@field m_nSubActionCommandCounter int32
---@field m_acSubActionCommand TArray<AActionCommandBase>
---@field ABILITY_POINT_LIGHT_MAX int32
---@field m_acAbilityPointLightActor TArray<ABattleSequencePointLight>
---@field m_cPartyAreaMounter AActor
---@field m_cEnemyAreaMounter AActor
---@field m_acAbilityEffectList TArray<ABattleSequenceEmitter>
---@field m_acAbilityHitEffectList TArray<ABattleSequenceEmitter>
---@field m_acSupportRotationEffectList TArray<ABattleSequenceEmitter>
---@field m_cEventBalloon UBalloonBase
local ABattleSequenceDirector = {}

function ABattleSequenceDirector:WaitTutorialFinish() end
function ABattleSequenceDirector:WaitTalkBalloonFinish() end
function ABattleSequenceDirector:WaitReturnCaptureCommand() end
function ABattleSequenceDirector:WaitResultUIFinishCommand() end
function ABattleSequenceDirector:WaitResultUIFinish() end
function ABattleSequenceDirector:WaitActionCommandDirector() end
---@param cPlayer ULevelSequencePlayer
---@param fSlideRate float
function ABattleSequenceDirector:UpdateAbilityCameraSlideSegment(cPlayer, fSlideRate) end
---@param cPlayer ULevelSequencePlayer
---@param fBackRate float
function ABattleSequenceDirector:UpdateAbilityCameraBackSegment(cPlayer, fBackRate) end
---@param cPlayer ULevelSequencePlayer
function ABattleSequenceDirector:UnRegisterSequenceUpdated(cPlayer) end
---@param cAbilitySequence ABattleAbilitySequenceActor
function ABattleSequenceDirector:UnRegisterAbilitySequenceUpdated(cAbilitySequence) end
---@param fDeltaSeconds float
function ABattleSequenceDirector:TickManualSequencerUpdate(fDeltaSeconds) end
---@param nBoostLevel int32
---@return boolean
function ABattleSequenceDirector:SuspendBoostSequencer(nBoostLevel) end
function ABattleSequenceDirector:SuspendActionCommand() end
function ABattleSequenceDirector:StartBattleFade() end
---@param nBoostLevel int32
---@return UParticleSystemComponent
function ABattleSequenceDirector:SpawnBoostEffect(nBoostLevel) end
---@param bRestoreState boolean
function ABattleSequenceDirector:SetWeatherSequencerRestoreFlag(bRestoreState) end
---@param cSequenceActor ALevelSequenceActor
---@param cTrackID FMovieSceneObjectBindingID
---@param bDisable boolean
---@return boolean
function ABattleSequenceDirector:SetSequenceTrackDisable(cSequenceActor, cTrackID, bDisable) end
---@param bEnable boolean
function ABattleSequenceDirector:SetBattleWipeWhiteOutFlag(bEnable) end
---@param bVisible boolean
function ABattleSequenceDirector:SetBattleEnemyVisibility(bVisible) end
---@param CharacterID EPlayableCharacterID
---@param nIndex int32
---@param bEnable boolean
function ABattleSequenceDirector:SetAdvancedAbility(CharacterID, nIndex, bEnable) end
function ABattleSequenceDirector:ReturnCaptureCommand() end
function ABattleSequenceDirector:ResumeActionCommandDirector() end
---@param cSequenceActor ABattleAbilitySequenceActor
---@param bIsSubCommand boolean
---@return boolean
function ABattleSequenceDirector:ResetActionCommandDirector(cSequenceActor, bIsSubCommand) end
function ABattleSequenceDirector:RemoveBoostEffect() end
---@param CharacterID EPlayableCharacterID
function ABattleSequenceDirector:ReleasePotentialityAction(CharacterID) end
---@param cPlayer ULevelSequencePlayer
---@param cDelegate FRegisterSequenceUpdatedCDelegate
function ABattleSequenceDirector:RegisterSequenceUpdated(cPlayer, cDelegate) end
---@param cAbilitySequence ABattleAbilitySequenceActor
function ABattleSequenceDirector:RegisterAbilitySequenceUpdated(cAbilitySequence) end
---@param VibrationID FName
---@param Power EVibrationPower
function ABattleSequenceDirector:PlayVibrationCommand(VibrationID, Power) end
---@param SEID FName
function ABattleSequenceDirector:PlaySECommand(SEID) end
---@param ActionCharacter ABattleCharacterBase
---@param BattleActionID EKSCharacterAction
function ABattleSequenceDirector:PlayActionCommand(ActionCharacter, BattleActionID) end
---@param eTutorialType ETUTORIAL_TYPE
---@param bForcedDisplay boolean
function ABattleSequenceDirector:OpenTutorialCommand(eTutorialType, bForcedDisplay) end
---@param TalkTextID FName
---@param Offset FVector2D
---@param WaitFinish boolean
function ABattleSequenceDirector:OpenTalkCommand(TalkTextID, Offset, WaitFinish) end
function ABattleSequenceDirector:OpenResultUICommand() end
---@param TextID FName
---@param CharaID EPlayableCharacterID
---@param AbilityIndex int32
function ABattleSequenceDirector:OpenActionInfoFromAdvancedAbility(TextID, CharaID, AbilityIndex) end
---@param TextID FName
function ABattleSequenceDirector:OpenActionInfoForEightBattle(TextID) end
---@param TextID FName
function ABattleSequenceDirector:OpenActionInfo(TextID) end
---@param cTargetCamera ACineCameraActor
function ABattleSequenceDirector:NotifyCameraCut(cTargetCamera) end
---@param fRatio float
function ABattleSequenceDirector:InterpolationResultCamera(fRatio) end
---@param fRatio float
function ABattleSequenceDirector:InterpolationAbilityCamera(fRatio) end
function ABattleSequenceDirector:InstantDeath_EnemyAll() end
---@param eTimeZone ETimeZoneType
---@param eChangeType EBATTLE_SEQUENCER_CHANGE_TYPE
---@return ULevelSequence
function ABattleSequenceDirector:GetWeatherSequence(eTimeZone, eChangeType) end
---@param nPlayerID int32
---@return FName
function ABattleSequenceDirector:GetPlayerLabelByIntID(nPlayerID) end
---@param bFrontToBack boolean
---@return ULevelSequence
function ABattleSequenceDirector:GetPartyChangeSequence(bFrontToBack) end
---@param cPlayer ULevelSequencePlayer
---@return ULevelSequenceDirector
function ABattleSequenceDirector:GetLevelSequenceDirector(cPlayer) end
---@param bSuccess boolean
---@return ULevelSequence
function ABattleSequenceDirector:GetEscapeDashSequence(bSuccess) end
---@param eCameraType EBATTLE_CAMERA_TYPE
---@return ULevelSequence
function ABattleSequenceDirector:GetEncountSequence(eCameraType) end
---@param eBreakType EBREAK_CAMERA_TYPE
---@param eCameraType EBATTLE_CAMERA_TYPE
---@return ULevelSequence
function ABattleSequenceDirector:GetBreakSequence(eBreakType, eCameraType) end
---@param nBoostLevel int32
---@param eChangeType EBATTLE_SEQUENCER_CHANGE_TYPE
---@return ULevelSequence
function ABattleSequenceDirector:GetBoostSequence(nBoostLevel, eChangeType) end
---@param eStartDashType EBATTLE_START_DASH_TYPE
---@return ULevelSequence
function ABattleSequenceDirector:GetBattleStartDashSequence(eStartDashType) end
---@param eResultType EBATTLE_RESULT_TYPE
---@param eCameraType EBATTLE_CAMERA_TYPE
---@param bIsFront boolean
---@return ULevelSequence
function ABattleSequenceDirector:GetBattleResultSequence(eResultType, eCameraType, bIsFront) end
---@param cPlayer ULevelSequencePlayer
---@param fLength float
---@return boolean
function ABattleSequenceDirector:GetAbilityCameraSlideSegment(cPlayer, fLength) end
---@param nBoostLevel int32
---@param eTargetType EBATTLE_TARGET_TYPE
---@param eCameraType EBATTLE_CAMERA_TYPE
---@param bEnemySide boolean
---@param bIsFront boolean
---@param strAbilityName FName
---@return ULevelSequence
function ABattleSequenceDirector:GetAbilityCameraSequence(nBoostLevel, eTargetType, eCameraType, bEnemySide, bIsFront, strAbilityName) end
---@param cPlayer ULevelSequencePlayer
---@param fLength float
---@return boolean
function ABattleSequenceDirector:GetAbilityCameraBackSegment(cPlayer, fLength) end
function ABattleSequenceDirector:FixBattleCameraCommand() end
function ABattleSequenceDirector:FinishSubActionCommandDirector() end
function ABattleSequenceDirector:FinishResultDash() end
function ABattleSequenceDirector:FinishPartyChange() end
function ABattleSequenceDirector:FinishEscapeDash() end
function ABattleSequenceDirector:FinishEncountCamera() end
function ABattleSequenceDirector:FinishBreaktCamera() end
function ABattleSequenceDirector:FinishBoostShutDown() end
function ABattleSequenceDirector:FinishBattleStartDash() end
function ABattleSequenceDirector:FinishBattleResult() end
function ABattleSequenceDirector:FinishBattleEvent() end
function ABattleSequenceDirector:FinishActionCommandDirector() end
function ABattleSequenceDirector:FinishAbilityCamera() end
---@param cSequenceActor ALevelSequenceActor
---@param strTag FName
---@param eAttachType EBATTLE_EFFECT_ATTACH_TYPE
---@return boolean
function ABattleSequenceDirector:FindTrackAttachInfoByTag(cSequenceActor, strTag, eAttachType) end
---@param cSequenceActor ALevelSequenceActor
---@param strTag FName
---@return boolean
function ABattleSequenceDirector:FindEventActorTrackByTag(cSequenceActor, strTag) end
---@param cSequenceActor ALevelSequenceActor
---@param strTag FName
---@param acEmitterTemplate TArray<UParticleSystem>
---@param acBindingID TArray<FMovieSceneObjectBindingID>
---@return boolean
function ABattleSequenceDirector:FindEmitterTemplateByTag(cSequenceActor, strTag, acEmitterTemplate, acBindingID) end
---@param eTimeZone ETimeZoneType
---@param eChangeType EBATTLE_SEQUENCER_CHANGE_TYPE
---@return boolean
function ABattleSequenceDirector:ExecWeatherSequencer(eTimeZone, eChangeType) end
function ABattleSequenceDirector:ExecWeatherLoop() end
---@param cActionCommand AActionCommandBase
---@param cExecSequence ULevelSequence
function ABattleSequenceDirector:ExecSubActionCommandDirector(cActionCommand, cExecSequence) end
---@return boolean
function ABattleSequenceDirector:ExecResultDashSequencer() end
function ABattleSequenceDirector:ExecResultDash() end
---@param ActionCharacter ABattleCharacterBase
function ABattleSequenceDirector:ExecPotentialityAction(ActionCharacter) end
---@param bFrontToBack boolean
---@return boolean
function ABattleSequenceDirector:ExecPartyChangeSequencer(bFrontToBack) end
---@param bFrontToBack boolean
function ABattleSequenceDirector:ExecPartyChange(bFrontToBack) end
function ABattleSequenceDirector:ExecNextBoostEvent() end
---@param cTargetCameraRig ACameraRig_Rail
function ABattleSequenceDirector:ExecForceTickForRigRail(cTargetCameraRig) end
---@param cTargetCamera ACineCameraActor
function ABattleSequenceDirector:ExecForceTickForCineCamera(cTargetCamera) end
---@param bSuccess boolean
---@return boolean
function ABattleSequenceDirector:ExecEscapeDashSequencer(bSuccess) end
---@param bSuccess boolean
function ABattleSequenceDirector:ExecEscapeDash(bSuccess) end
---@param eCameraType EBATTLE_CAMERA_TYPE
---@return boolean
function ABattleSequenceDirector:ExecEncountCameraSequencer(eCameraType) end
---@param eCameraType EBATTLE_CAMERA_TYPE
function ABattleSequenceDirector:ExecEncountCamera(eCameraType) end
---@param eBreakType EBREAK_CAMERA_TYPE
---@param eCameraType EBATTLE_CAMERA_TYPE
---@return boolean
function ABattleSequenceDirector:ExecBreakCameraSequencer(eBreakType, eCameraType) end
---@param eBreakType EBREAK_CAMERA_TYPE
---@param eCameraType EBATTLE_CAMERA_TYPE
function ABattleSequenceDirector:ExecBreakCamera(eBreakType, eCameraType) end
---@param nBoostLevel int32
function ABattleSequenceDirector:ExecBoostStart(nBoostLevel) end
---@param bWithWeather boolean
function ABattleSequenceDirector:ExecBoostShutDown(bWithWeather) end
---@param nBoostLevel int32
---@param eChangeType EBATTLE_SEQUENCER_CHANGE_TYPE
---@return boolean
function ABattleSequenceDirector:ExecBoostSequencer(nBoostLevel, eChangeType) end
function ABattleSequenceDirector:ExecBoostLoop() end
function ABattleSequenceDirector:ExecBattleSuspendCommand() end
---@param eStartDashType EBATTLE_START_DASH_TYPE
---@return boolean
function ABattleSequenceDirector:ExecBattleStartDashSequencer(eStartDashType) end
---@param eStartDashType EBATTLE_START_DASH_TYPE
function ABattleSequenceDirector:ExecBattleStartDash(eStartDashType) end
---@param eResultType EBATTLE_RESULT_TYPE
---@param eCameraType EBATTLE_CAMERA_TYPE
---@param bIsFront boolean
---@return boolean
function ABattleSequenceDirector:ExecBattleResultSequencer(eResultType, eCameraType, bIsFront) end
---@param eResultType EBATTLE_RESULT_TYPE
---@param eCameraType EBATTLE_CAMERA_TYPE
---@param bIsFront boolean
function ABattleSequenceDirector:ExecBattleResult(eResultType, eCameraType, bIsFront) end
---@param cExecSequence ULevelSequence
---@param cEventActor ABattleCharacterBase
---@param ePositionType EBATTLE_CHARA_POSITION_RESET_TYPE
---@return boolean
function ABattleSequenceDirector:ExecBattleEventSequencer(cExecSequence, cEventActor, ePositionType) end
---@param cExecSequence ULevelSequence
---@param cEventActor ABattleCharacterBase
---@param ePositionType EBATTLE_CHARA_POSITION_RESET_TYPE
function ABattleSequenceDirector:ExecBattleEvent(cExecSequence, cEventActor, ePositionType) end
---@param cActionCommand AActionCommandBase
---@param cExecSequence ULevelSequence
---@param cSequenceActor ABattleAbilitySequenceActor
---@param bIsSubCommand boolean
---@return boolean
function ABattleSequenceDirector:ExecActionCommandSequencer(cActionCommand, cExecSequence, cSequenceActor, bIsSubCommand) end
---@param cActionCommand AActionCommandBase
---@param cExecSequence ULevelSequence
function ABattleSequenceDirector:ExecActionCommandDirector(cActionCommand, cExecSequence) end
---@param nBoostLevel int32
---@param eTargetType EBATTLE_TARGET_TYPE
---@param eCameraType EBATTLE_CAMERA_TYPE
---@param nSlideFrame int32
---@param cActionCommand AActionCommandBase
---@param bEnemySide boolean
---@param bIsFront boolean
---@param strAbilityName FName
---@return boolean
function ABattleSequenceDirector:ExecAbilityCameraSequencer(nBoostLevel, eTargetType, eCameraType, nSlideFrame, cActionCommand, bEnemySide, bIsFront, strAbilityName) end
---@param nBoostLevel int32
---@param eTargetType EBATTLE_TARGET_TYPE
---@param eCameraType EBATTLE_CAMERA_TYPE
---@param nSlideFrame int32
---@param cActionCommand AActionCommandBase
---@param bEnemySide boolean
---@param bIsFront boolean
---@param strAbilityName FName
function ABattleSequenceDirector:ExecAbilityCamera(nBoostLevel, eTargetType, eCameraType, nSlideFrame, cActionCommand, bEnemySide, bIsFront, strAbilityName) end
function ABattleSequenceDirector:EnableAbilityHitEffect() end
---@param WorldContextObject UObject
---@param cLevelSequence ULevelSequence
---@param cSettings FMovieSceneSequencePlaybackSettings
---@param OutActor ABattleAbilitySequenceActor
---@return ULevelSequencePlayer
function ABattleSequenceDirector:CreateAbilitySequencePlayer(WorldContextObject, cLevelSequence, cSettings, OutActor) end
---@param cTemplate UParticleSystem
---@param eAttachType EBATTLE_EFFECT_ATTACH_TYPE
---@param cActionCommand AActionCommandBase
---@param bGroundEffect boolean
---@param bReviveEffect boolean
---@param bAttachSocket boolean
---@return TArray<ABattleSequenceEmitter>
function ABattleSequenceDirector:CreateAbilityEffect(cTemplate, eAttachType, cActionCommand, bGroundEffect, bReviveEffect, bAttachSocket) end
function ABattleSequenceDirector:CloseTalkCommand() end
function ABattleSequenceDirector:CloseActionInfo() end
---@param cSequenceActor ALevelSequenceActor
---@param cTrackID FMovieSceneObjectBindingID
---@param strCheckTag FName
---@return boolean
function ABattleSequenceDirector:CheckTrackHaveSpecifiedTag(cSequenceActor, cTrackID, strCheckTag) end
---@param cSequenceActor ALevelSequenceActor
---@param strCheckTag FName
---@return boolean
function ABattleSequenceDirector:CheckSequencerHaveSpecifiedTag(cSequenceActor, strCheckTag) end
---@param ActionCharacter ABattleCharacterBase
---@param BoostLevel int32
function ABattleSequenceDirector:ChangeBoostLevelCommand(ActionCharacter, BoostLevel) end
---@param nBoostLevel int32
---@param bAddLevel boolean
function ABattleSequenceDirector:ChangeBoostLevel(nBoostLevel, bAddLevel) end


---@class ABattleSequenceEmitter : AEmitter
---@field m_cOriginalEffect UParticleSystemComponent
---@field m_bEmitterTrigger boolean
---@field m_bEnableAttachTarget boolean
---@field m_cEnforcerOffsetComponent UEnforcerOffsetComponent
---@field m_cAttachBattleCharacter ABattleCharacterBase
local ABattleSequenceEmitter = {}

---@param bVisible boolean
function ABattleSequenceEmitter:UpdateBattleEmitterVisibility(bVisible) end
---@param cTemplate UParticleSystem
function ABattleSequenceEmitter:SetParticleSystemTemplate(cTemplate) end
---@param cComponent UParticleSystemComponent
function ABattleSequenceEmitter:SetParticleSystemComponent(cComponent) end
---@param bEnable boolean
function ABattleSequenceEmitter:SetEnableAttachTarget(bEnable) end
---@param bTrigger boolean
function ABattleSequenceEmitter:SetEmitterTrigger(bTrigger) end
---@param cCharacter ABattleCharacterBase
function ABattleSequenceEmitter:SetAttachBattleCharacter(cCharacter) end
function ABattleSequenceEmitter:ReleaseParticleSystemComponent() end
---@return boolean
function ABattleSequenceEmitter:IsEnableAttachTarget() end
---@return boolean
function ABattleSequenceEmitter:IsEmitterTrigger() end
---@return ABattleCharacterBase
function ABattleSequenceEmitter:GetAttachBattleCharacter() end


---@class ABattleSequencePointLight : AActor
---@field PointLightComponent UPointLightComponent
---@field ShadowResolutionScale float
local ABattleSequencePointLight = {}

---@param fValue float
function ABattleSequencePointLight:SetShadowResolutionScale(fValue) end


---@class ABlockingVolumeFootStep : AVolume
---@field m_eFootStepType EPhysicalSurface
local ABlockingVolumeFootStep = {}



---@class ACalcBillboard : AActor
---@field m_pCineCamComp UCameraComponent
local ACalcBillboard = {}



---@class ACameraLockTrigger : AMJBoxTrigger
---@field m_bLock boolean
---@field m_bUnlock boolean
---@field m_bLockX boolean
---@field m_bLockY boolean
---@field m_bLockZ boolean
---@field m_LimitLock FVector
---@field m_LimitLockFar FVector
---@field m_LimitUnlock FVector
local ACameraLockTrigger = {}

---@param limitLock FVector
---@param limitLockFar FVector
---@param limitUnlock FVector
function ACameraLockTrigger:SetLimitPosition(limitLock, limitLockFar, limitUnlock) end
---@return UBoxComponent
function ACameraLockTrigger:GetCollision() end
---@param lockPosition FVector
---@return FVector
function ACameraLockTrigger:ClamptLockPositionInRange(lockPosition) end


---@class ACameraLockTriggerHolder : AActor
local ACameraLockTriggerHolder = {}


---@class ACanoeDockTrigger : AMJBoxTrigger
local ACanoeDockTrigger = {}


---@class AChallengeBattleModeManager : AAcqManagerBase
---@field ChallengeBattleBackupData UChallengeBattleBackupData
---@field SaveWorker AChallengeBattleSaveWorker
---@field TutorialSaveWorker AChallengeBattleTutorialSaveWorker
local AChallengeBattleModeManager = {}

---@return boolean
function AChallengeBattleModeManager:UpdateChallengeBattleUI() end
---@return boolean
function AChallengeBattleModeManager:UpdateChallengeBattleTutorialSave() end
---@return boolean
function AChallengeBattleModeManager:UpdateChallengeBattleSave() end
---@return boolean
function AChallengeBattleModeManager:UpdateChallengeBattlePreProcess() end
---@return boolean
function AChallengeBattleModeManager:UpdateChallengeBattlePostProcess() end
---@return boolean
function AChallengeBattleModeManager:StartChallengeBattleUI() end
---@return boolean
function AChallengeBattleModeManager:StartChallengeBattleTutorialSave() end
---@return boolean
function AChallengeBattleModeManager:StartChallengeBattleSave() end
---@return boolean
function AChallengeBattleModeManager:StartChallengeBattlePreProcess() end
---@return boolean
function AChallengeBattleModeManager:StartChallengeBattlePostProcess() end
---@param battleType EChallengeBattleType
function AChallengeBattleModeManager:PlayChallengeBattleStartEvent(battleType) end
---@return EKSSaveSlotName
function AChallengeBattleModeManager:GetActiveSaveSlot() end


---@class AChallengeBattleSaveWorker : AActor
---@field SaveGame UMJSaveData
local AChallengeBattleSaveWorker = {}

---@param SlotName FString
---@param UserIndex int32
---@param IsSuccesss boolean
function AChallengeBattleSaveWorker:OnSavedSystemData(SlotName, UserIndex, IsSuccesss) end
---@param SlotName FString
---@param UserIndex int32
---@param IsSuccesss boolean
function AChallengeBattleSaveWorker:OnSavedGameData(SlotName, UserIndex, IsSuccesss) end
---@param SlotName FString
---@param UserIndex int32
---@param saveSystem UKSSaveSystem
function AChallengeBattleSaveWorker:OnLoadedSystemData(SlotName, UserIndex, saveSystem) end
---@param SlotName FString
---@param UserIndex int32
---@param SaveGame UMJSaveData
function AChallengeBattleSaveWorker:OnLoadedGameData(SlotName, UserIndex, SaveGame) end


---@class AChallengeBattleTutorialSaveWorker : AActor
local AChallengeBattleTutorialSaveWorker = {}

---@param SlotName FString
---@param UserIndex int32
---@param IsSuccesss boolean
function AChallengeBattleTutorialSaveWorker:OnSavedGameData(SlotName, UserIndex, IsSuccesss) end
---@param SlotName FString
---@param UserIndex int32
---@param SaveGame UMJSaveData
function AChallengeBattleTutorialSaveWorker:OnLoadedGameData(SlotName, UserIndex, SaveGame) end


---@class ACharacterResourceManager : AAcqManagerBase
---@field m_LoadQueue TArray<ULoadCharaAssetQueue>
---@field m_LoadedFlipbookResource TMap<FName, FLoadedObject>
---@field m_SubPartyMemberResource TArray<UObject>
local ACharacterResourceManager = {}

---@param CharaResourceIds TArray<FName>
function ACharacterResourceManager:RequestUnLoadCharactersAsset(CharaResourceIds) end
---@return boolean
function ACharacterResourceManager:RequestLoadSubPartyCharactersAsset() end
---@param CharaResourceIds TArray<FName>
---@return boolean
function ACharacterResourceManager:RequestLoadCharactersAsset(CharaResourceIds) end
---@param CharaResourceIds TArray<FSimpleActionLoad>
---@return boolean
function ACharacterResourceManager:RequestLoadCharactersActionAsset(CharaResourceIds) end
---@param CharaResLabel FName
---@param LoadedCallback FRequestLoadCharacterAssetSync_SelectActionLoadedCallback
---@param ActionLabels TArray<EKSCharacterAction>
---@return boolean
function ACharacterResourceManager:RequestLoadCharacterAssetSync_SelectAction(CharaResLabel, LoadedCallback, ActionLabels) end
---@param CharaResLabel FName
---@param LoadedCallback FRequestLoadCharacterAssetSyncLoadedCallback
---@return boolean
function ACharacterResourceManager:RequestLoadCharacterAssetSync(CharaResLabel, LoadedCallback) end
---@param CharaResLabel FName
---@param LoadedCallback FRequestLoadCharacterAssetLoadedCallback
---@param ActionLabels TArray<EKSCharacterAction>
---@param bBattle boolean
---@return boolean
function ACharacterResourceManager:RequestLoadCharacterAsset(CharaResLabel, LoadedCallback, ActionLabels, bBattle) end
---@param NewCharactersResourceId TArray<FName>
---@return boolean
function ACharacterResourceManager:RefreshLoadCharacters(NewCharactersResourceId) end
---@param loadedResource TArray<UObject>
function ACharacterResourceManager:OnLoadedSubPartyResource(loadedResource) end
---@param loadedResource TArray<UObject>
function ACharacterResourceManager:OnLoadedMainPartyResource(loadedResource) end
---@return boolean
function ACharacterResourceManager:IsLoading() end
---@param Enable boolean
function ACharacterResourceManager:Debug_SetAlwaysEnableTick(Enable) end
---@param CharacterResourceIds TArray<FName>
---@return boolean
function ACharacterResourceManager:Debug_LoadCharacterAssetSync(CharacterResourceIds) end
---@param outDebugInfo FString
function ACharacterResourceManager:Debug_GetDebugInfo(outDebugInfo) end


---@class ADBAccessManager : AActor
---@field m_SupporterLabelToNpcLableTable TMap<FName, FName>
---@field m_EnemyLabelToNpcLableTable TMap<FName, FName>
local ADBAccessManager = {}

---@param WeaponLabel FName
---@param AbilitySetLabel FName
---@return boolean
function ADBAccessManager:SearchAbilitySetFromRestricWeapon(WeaponLabel, AbilitySetLabel) end
---@param Index int32
---@return boolean
function ADBAccessManager:PrepareDBAccess(Index) end
---@param ItemData FItemData
---@param CharacterID int32
---@return FText
function ADBAccessManager:MakeItemDetailText(ItemData, CharacterID) end
---@param outLabel FName
---@param SupporterLabel FName
---@return boolean
function ADBAccessManager:GetNpcLabelBySupporterLabel(outLabel, SupporterLabel) end
---@param outLabel FName
---@param EnemyLabel FName
---@return boolean
function ADBAccessManager:GetNpcLabelByEnemyLabel(outLabel, EnemyLabel) end
---@param OutData FNPCData
---@param SupporterLabel FName
---@return boolean
function ADBAccessManager:GetNpcDataBySupporterLabel(OutData, SupporterLabel) end
---@param OutData FNPCData
---@param EnemyLabel FName
---@return boolean
function ADBAccessManager:GetNpcDataByEnemyLabel(OutData, EnemyLabel) end
---@param outJobList TArray<FName>
function ADBAccessManager:GetMenuJobLabelList(outJobList) end
---@param outIDList TArray<int32>
function ADBAccessManager:GetMenuJobIDList(outIDList) end
---@param ItemLabel FName
---@param Value FItemDataForMenu
---@return boolean
function ADBAccessManager:GetItemDataForMenu(ItemLabel, Value) end
---@return ADBAccessManager
function ADBAccessManager:GetInstance() end
---@param NPCUniqID int32
---@param NPCLabel FName
---@return boolean
function ADBAccessManager:ConvertUniqueIDToLabel(NPCUniqID, NPCLabel) end
---@param SuportAbilityId int32
---@param SuportAbilityLabel FName
---@return boolean
function ADBAccessManager:ConvertSupportAbilityIdToLabel(SuportAbilityId, SuportAbilityLabel) end
---@param AbilitySetLabel FName
---@param AbilitySetID int32
---@return boolean
function ADBAccessManager:ConvertLabelToAbilitySetID(AbilitySetLabel, AbilitySetID) end


---@class ADatabaseManager : AAcqManagerBase
---@field m_DatabaseInfo UDataTable
---@field m_StructToName TMap<UScriptStruct, FName>
---@field m_DatabaseTable TMap<FName, UDataTable>
---@field m_RowNameIdSet TMap<FName, FRowNameIdSet>
---@field m_AsyncLoading TMap<FName, FString>
local ADatabaseManager = {}

---@param dbName FName
function ADatabaseManager:Static_Unload(dbName) end
---@param dbName FName
---@return boolean
function ADatabaseManager:Static_LoadSyncSingle(dbName) end
---@param LoadTiming EDB_LOAD_TIMING
---@return boolean
function ADatabaseManager:Static_LoadSyncByTiming(LoadTiming) end
---@param dbName FName
---@return boolean
function ADatabaseManager:Static_LoadAsyncSingle(dbName) end
---@param LoadTiming EDB_LOAD_TIMING
---@return boolean
function ADatabaseManager:Static_LoadAsyncByTiming(LoadTiming) end
---@param dbName FName
---@return boolean
function ADatabaseManager:Static_IsLoading(dbName) end
---@param dbName FName
---@return boolean
function ADatabaseManager:Static_IsLoaded(dbName) end
---@return boolean
function ADatabaseManager:Static_IsAnythingLoading() end
---@param OutRowNames TArray<FName>
---@param dbName FName
---@return boolean
function ADatabaseManager:Static_GetRowNames(OutRowNames, dbName) end
---@param dbName FName
---@param rowId int32
---@return FName
function ADatabaseManager:Static_GetRowName(dbName, rowId) end
---@param dbName FName
---@param RowName FName
---@return int32
function ADatabaseManager:Static_GetRowID(dbName, RowName) end
---@param dbName FName
---@return UDataTable
function ADatabaseManager:Static_GetDBPtr(dbName) end
---@param dbInfo TSoftObjectPtr<UDataTable>
---@return boolean
function ADatabaseManager:SetDbInfoTable(dbInfo) end
---@param objList TArray<UObject>
function ADatabaseManager:OnLoaded(objList) end
---@param bEnable boolean
function ADatabaseManager:Debug_ShowDBInfo(bEnable) end


---@class ADebugLoadCheatCommand : AActor
local ADebugLoadCheatCommand = {}


---@class ADialogManager : AAcqManagerBase
---@field DialogList TArray<UCommonDialog>
---@field RequestParam FMJUICommonDialogParam
local ADialogManager = {}

---@param SelectSE TArray<FName>
function ADialogManager:SetSelectSE(SelectSE) end
---@return boolean
function ADialogManager:SetReference() end
---@param Visible boolean
function ADialogManager:SetButtonVisible(Visible) end
---@param Param FMJUICommonDialogParam
---@return UCommonDialog
function ADialogManager:OpenRequestDialog(Param) end
function ADialogManager:OnDialogCloseFinishCallback() end
---@return boolean
function ADialogManager:IsDialogRunning() end
---@return boolean
function ADialogManager:Initialize() end
---@return UCommonDialog
function ADialogManager:GetTopDialog() end
---@return boolean
function ADialogManager:CloseRequestDialog() end


---@class AEncountManager : AAcqManagerBase
---@field m_bIsViewerMode boolean
---@field EncountPosition FVector
---@field EncountDir EKSCharacterDir
---@field TressaSpeialStepLevel FName
---@field m_RequestRestoreEncountVolume boolean
---@field m_eFixFirstOrderPlayerID EPlayableCharacterID
---@field Debug_BattleViewerMode EBATTLE_VIEWER_MODE
---@field Debug_EnemyGroupID FName
---@field Debug_EnemyIDList TArray<FName>
---@field Debug_PlacementID FName
---@field Debug_UseBattleViewerParty boolean
---@field Debug_UseBattleRandomParty boolean
---@field Debug_UseExtraJob boolean
---@field Debug_RandomPartyLevel int32
---@field Debug_RandomPartyLevelRange int32
---@field Debug_RandomPartyNum int32
---@field Debug_BattleViewePartyList TArray<EPlayableCharacterID>
---@field Debug_UseBattleViewerMap boolean
---@field Debug_BattleViewerMapID FName
---@field Debug_IsWaterSide boolean
---@field Debug_UseFixedSituation boolean
---@field Debug_FixedSituation EBATTLE_START_TYPE
---@field Debug_FixedBattleMode EBATTLE_ENCOUNT_TYPE
local AEncountManager = {}

---@param EnemyGroupID FName
---@param StartType EBATTLE_START_TYPE
---@param IsPlayEventAfterBattle boolean
---@param nBattleMapIndex int32
---@return boolean
function AEncountManager:StartRobBattle(EnemyGroupID, StartType, IsPlayEventAfterBattle, nBattleMapIndex) end
---@param EnemyGroupID FName
---@param IsPlayEventAfterBattle boolean
---@param nBattleMapIndex int32
---@return boolean
function AEncountManager:StartRevealBattle(EnemyGroupID, IsPlayEventAfterBattle, nBattleMapIndex) end
---@param EnemyGroupID FName
---@param IsPlayEventAfterBattle boolean
---@param nBattleMapIndex int32
---@return boolean
function AEncountManager:StartPreparationBattle(EnemyGroupID, IsPlayEventAfterBattle, nBattleMapIndex) end
---@param EnemyGroupID FName
---@param StartType EBATTLE_START_TYPE
---@param IsPlayEventAfterBattle boolean
---@param nBattleMapIndex int32
---@return boolean
function AEncountManager:StartInvadeBattle(EnemyGroupID, StartType, IsPlayEventAfterBattle, nBattleMapIndex) end
---@param EncountVolumeID FName
---@param IsEventBGM boolean
---@param SingleBattle boolean
---@param CharacterID EPlayableCharacterID
---@param IsNextEvent boolean
---@param FixFirstOrderPlayer EPlayableCharacterID
---@return boolean
function AEncountManager:StartEventBattle(EncountVolumeID, IsEventBGM, SingleBattle, CharacterID, IsNextEvent, FixFirstOrderPlayer) end
---@param EnemyGroupID FName
---@param IsPlayEventAfterBattle boolean
---@param nBattleMapIndex int32
---@param MainParty TArray<EPlayableCharacterID>
---@param SubParty TArray<EPlayableCharacterID>
---@return boolean
function AEncountManager:StartEightBattle(EnemyGroupID, IsPlayEventAfterBattle, nBattleMapIndex, MainParty, SubParty) end
---@param EnemyGroupID FName
---@param IsPlayEventAfterBattle boolean
---@param nBattleMapIndex int32
---@param eBattleCHaraID EPlayableCharacterID
---@return boolean
function AEncountManager:StartBoutBattle(EnemyGroupID, IsPlayEventAfterBattle, nBattleMapIndex, eBattleCHaraID) end
---@return boolean
function AEncountManager:SettingBattleParam() end
---@param SkipLiquidation boolean
---@return boolean
function AEncountManager:SetLiquidationSkip(SkipLiquidation) end
---@param nForceStopEncountStepCount int32
---@return boolean
function AEncountManager:SetForceStopEncountStep(nForceStopEncountStepCount) end
---@param TriggerData FEncountTriggerData
---@return boolean
function AEncountManager:SetEncountVolume(TriggerData) end
---@return boolean
function AEncountManager:SetAfterMainMenu() end
---@return boolean
function AEncountManager:RestoreEncountVolumeFromSaveData() end
---@return boolean
function AEncountManager:RestoreEncount() end
---@return boolean
function AEncountManager:ResetTrigger() end
---@return boolean
function AEncountManager:ResetEncountVolume() end
---@return boolean
function AEncountManager:ResetEncountStep() end
function AEncountManager:RequestRestoreEncountVolumeFromSaveData() end
---@return boolean
function AEncountManager:RefleshEncountVolume() end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AEncountManager:OnLevelChanged(eNoticeType, NoticeArgs) end
---@param chkEncountData FEncountFlagStartEndData
---@return boolean
function AEncountManager:IsChkEncountFlagStartEndData(chkEncountData) end
---@param eViewerMode EBATTLE_VIEWER_MODE
---@param astrEnemyIDList TArray<FName>
---@param strPlacementID FName
---@return boolean
function AEncountManager:GetViewerParameter(eViewerMode, astrEnemyIDList, strPlacementID) end
---@param chkData FEncountFlagData
---@param EncountTriggerLabel FName
---@return boolean
function AEncountManager:GetReplaceEncountFlagData(chkData, EncountTriggerLabel) end
---@param SkipLiquidation boolean
function AEncountManager:GetLiquidationSkip(SkipLiquidation) end
---@return EPlayableCharacterID
function AEncountManager:GetFixFirstOrderPlayer() end
---@param EncountType EBATTLE_ENCOUNT_TYPE
function AEncountManager:GetEncountType(EncountType) end
---@param TriggerID int32
function AEncountManager:GetEncountTriggerID(TriggerID) end
---@param strEnemyGroupID FName
---@param bIsEventBGM boolean
---@param eEncountType EBATTLE_ENCOUNT_TYPE
---@return boolean
function AEncountManager:GetEncountParameter(strEnemyGroupID, bIsEventBGM, eEncountType) end
---@return int32
function AEncountManager:GetEncounterLevel() end
---@param EncountSign FRotator
function AEncountManager:GetEncountCameraRotation(EncountSign) end
---@return int32
function AEncountManager:GetDangerLevel() end
---@return FEncountTriggerData
function AEncountManager:GetCurrentEncountTrigger() end
---@return boolean
function AEncountManager:GetBattleViewerMode() end
---@param cRareCatlinParam FRareEnemyParam
---@param cRareOctlinParam FRareEnemyParam
---@param eArea EAreaID
---@return boolean
function AEncountManager:GeRareEnemyParameter(cRareCatlinParam, cRareOctlinParam, eArea) end
---@return boolean
function AEncountManager:Debug_StartViewerBattle() end
---@param Situation int32
---@return boolean
function AEncountManager:Debug_SetFixedSituation(Situation) end
---@param GrounpID FName
---@return boolean
function AEncountManager:Debug_SetFixedEnemyGroupID(GrounpID) end
---@param Fixed boolean
---@return boolean
function AEncountManager:Debug_SetFixedEncount(Fixed) end
---@param Enable boolean
---@return boolean
function AEncountManager:Debug_SetEncountSoon(Enable) end
---@param PartyLevel int32
---@param LevelRange int32
---@param bEnableEightBattle boolean
---@return boolean
function AEncountManager:Debug_SetEightBattle(PartyLevel, LevelRange, bEnableEightBattle) end
---@param Enable boolean
---@return boolean
function AEncountManager:Debug_SetDisableStepRandom(Enable) end
---@param FixedSituation EBATTLE_START_TYPE
---@param UseFixedSituation boolean
---@return boolean
function AEncountManager:Debug_SetBattleViewerSituation(FixedSituation, UseFixedSituation) end
---@param PartyList TArray<EPlayableCharacterID>
---@param UseBattleViewerParty boolean
---@return boolean
function AEncountManager:Debug_SetBattleViewerParty(PartyList, UseBattleViewerParty) end
---@param ViewerMode EBATTLE_VIEWER_MODE
---@return boolean
function AEncountManager:Debug_SetBattleViewerMode(ViewerMode) end
---@param ViewerMapID FName
---@param IsWaterSide boolean
---@param UseBattleViewerMap boolean
---@return boolean
function AEncountManager:Debug_SetBattleViewerMap(ViewerMapID, IsWaterSide, UseBattleViewerMap) end
---@param EnemyGroupID FName
---@param EnemyIDList TArray<FName>
---@param PlacementID FName
---@return boolean
function AEncountManager:Debug_SetBattleViewerEnemy(EnemyGroupID, EnemyIDList, PlacementID) end
---@param PartyLevel int32
---@param LevelRange int32
---@param PartyNum int32
---@param UseExtraJob boolean
---@param UseRandomParty boolean
---@return boolean
function AEncountManager:Debug_SetBattleRandomParty(PartyLevel, LevelRange, PartyNum, UseExtraJob, UseRandomParty) end
---@param eBattleMode EBATTLE_ENCOUNT_TYPE
---@return boolean
function AEncountManager:Debug_SetBattleMode(eBattleMode) end
---@param Fixed boolean
function AEncountManager:Debug_GetFixedEncount(Fixed) end
---@param Enable boolean
function AEncountManager:Debug_GetEncountSoon(Enable) end
---@param outDebugInfo FString
function AEncountManager:Debug_GetEncountInfo(outDebugInfo) end
---@param Enable boolean
function AEncountManager:Debug_GetDisableStepRandom(Enable) end
---@return boolean
function AEncountManager:Debug_GetBattleRandomParty() end
---@return FName
function AEncountManager:Debug_GetActiveEncountVolumeLabel() end
---@param CharacterID int32
---@param PartyLevel int32
---@param UseExtraJob boolean
---@return boolean
function AEncountManager:Debug_CreateRandomPartyData(CharacterID, PartyLevel, UseExtraJob) end
---@param levelId int32
---@param EncounterLevel int32
---@param DangerLevel int32
function AEncountManager:CalcEncounterLevel(levelId, EncounterLevel, DangerLevel) end
---@return boolean
function AEncountManager:BattleStartExec() end
---@return boolean
function AEncountManager:BackupEncount() end
---@param Trigger AKSTriggerBase
---@return boolean
function AEncountManager:AddEncountTrigger(Trigger) end


---@class AEncountTriggerBase : AMJBoxTrigger
---@field bDisableTrigger boolean
local AEncountTriggerBase = {}

function AEncountTriggerBase:SetEncountVolume() end
---@return FString
function AEncountTriggerBase:Debug_GetDebugInfo_BP() end


---@class AEndRollFlowManager : AActor
---@field CurrentState EEndRollFlowState
---@field StagingTimer float
---@field SegmentList TArray<UEndRollSegmentPlayData>
local AEndRollFlowManager = {}

---@param DeltaTime float
function AEndRollFlowManager:UpdateStagingTime(DeltaTime) end
function AEndRollFlowManager:UpdateSegments() end
---@param DeltaSeconds float
function AEndRollFlowManager:UpdateManager(DeltaSeconds) end
function AEndRollFlowManager:StopEndRoll() end
function AEndRollFlowManager:StartEndroll() end
---@param Segment UEndRollSegmentPlayData
function AEndRollFlowManager:SegmentTransitionCallback(Segment) end
function AEndRollFlowManager:ResetEndRoll() end
function AEndRollFlowManager:OnStop() end
function AEndRollFlowManager:OnStart() end
function AEndRollFlowManager:OnReset() end
function AEndRollFlowManager:OnBeginPlay() end
---@return boolean
function AEndRollFlowManager:IsSegmentsCompleted() end
---@return boolean
function AEndRollFlowManager:IsReadyEndRoll() end
---@return boolean
function AEndRollFlowManager:IsPlayingEndRoll() end
---@return boolean
function AEndRollFlowManager:IsDisplayDebugInfo() end
---@return EEndRollSegmentSet
function AEndRollFlowManager:GetNextPlaySegmentID() end
function AEndRollFlowManager:DebugUpdate() end
---@return boolean
function AEndRollFlowManager:CreateSegmentPlayData() end
---@param NextState EEndRollFlowState
function AEndRollFlowManager:ChangeState(NextState) end
---@param State EEndRollSegmentState
---@param Segment UEndRollSegmentPlayData
---@return boolean
function AEndRollFlowManager:ChangeSegmentTransition(State, Segment) end
---@param segmentData FEndRollSegmentData
---@param segSetID EEndRollSegmentSet
---@param IsEnable boolean
---@param startEvImageTime float
---@param startBattleTime float
---@param EndTime float
---@param wipeTime float
function AEndRollFlowManager:AddSegment(segmentData, segSetID, IsEnable, startEvImageTime, startBattleTime, EndTime, wipeTime) end


---@class AEnvSound : AAtomSound
---@field m_FirstWaitTime float
---@field m_NightEnvSound USoundAtomCue
---@field m_DayTimeEnvSound USoundAtomCue
local AEnvSound = {}

---@param DeltaSeconds float
function AEnvSound:UpdateFade(DeltaSeconds) end
---@param nFadeOutTime int32
function AEnvSound:StopEnvSound(nFadeOutTime) end
---@param ETimeZoneType ETimeZoneType
---@param nFadeInTime int32
function AEnvSound:PlayEnvSound(ETimeZoneType, nFadeInTime) end
---@param bPause boolean
function AEnvSound:PauseSE(bPause) end
---@return boolean
function AEnvSound:IsFade() end
function AEnvSound:Init() end
---@return UAtomComponent
function AEnvSound:GetAtomComponent() end
---@param eTimeZone ETimeZoneType
---@return boolean
function AEnvSound:ChangeEnvSound(eTimeZone) end
function AEnvSound:BattleChange_SavePlayingState() end
function AEnvSound:BattleChange_RestorePlayingState() end
---@return boolean
function AEnvSound:ApplyOptionVolume() end


---@class AEnvSoundObjectBase : AActor
---@field m_cpAtomComponent UAtomComponent
local AEnvSoundObjectBase = {}

function AEnvSoundObjectBase:BattleChange_SavePlayingState() end
function AEnvSoundObjectBase:BattleChange_RestorePlayingState() end


---@class AEventFlagObjectBase : AActor
---@field m_anEventFlagData TArray<FEventFlagData>
---@field PrologueForceHidden boolean
---@field SwitchVisibilityOnPostTick boolean
local AEventFlagObjectBase = {}

---@param bEnable boolean
function AEventFlagObjectBase:SetVisible(bEnable) end
---@return boolean
function AEventFlagObjectBase:SetupEventFlagVisible() end
---@param nFlagIndex int32
---@param bStatusFlag boolean
function AEventFlagObjectBase:SetupEnable(nFlagIndex, bStatusFlag) end
---@return TArray<FEventFlagData>
function AEventFlagObjectBase:GetEventFlagArray() end


---@class AEventManager : AAcqManagerBase
---@field AtomCueArray TArray<FEventAtomSoundData>
---@field m_pMPC UMaterialParameterCollection
---@field JsonFilename FString
---@field EventData TArray<FEventData>
---@field EventIndex int32
---@field EndIndex int32
---@field EventListDb UDataTable
---@field PlayerCharacter AKSCharacterBase
---@field PlayActionCharacter AKSCharacterBase
---@field TargetObject AKSObjectBase
---@field EventTargetCharacter AKSCharacterBase
---@field EventArgs TArray<FString>
---@field CommandTime float
---@field WaitTime float
---@field TalkIndex int32
---@field ActiveTalkIndex int32
---@field PlayEventName FString
---@field NextEventName FString
---@field DialogEventName TArray<FName>
---@field BattleEndNextEventID int32
---@field BattleEndNextEventName FString
---@field BattleEndDefeatNextEventName FString
---@field CameraTarget AEventTargetBase
---@field ActiveCamera UCameraComponent
---@field CameraTrackStartPos FVector
---@field CameraTrackEndPos FVector
---@field CameraTrackPos FVector
---@field CameraTrackEndTime float
---@field CameraTrackTime float
---@field m_bCameraDecelerate boolean
---@field ObjectArray TArray<AKSObjectBase>
---@field PlayEventData FEventListData
---@field TempPlayEventSkip int32
---@field EventBalloon UBalloonBase
---@field EventFlashback UUIFlashbackBase
---@field PostProcessMaterial TArray<UMaterial>
---@field PostProcessMaterialDynamic TArray<UMaterialInstanceDynamic>
---@field EventEffectList TMap<int32, FEventEffect>
---@field EventEmotionList TMap<int32, FEventEmotion>
---@field EventBattle boolean
---@field BeforEventBattle boolean
---@field IgnoreFootStepSound boolean
---@field PartyChatWidget UPartyChatBase
---@field IsRichEventLoadResourceData boolean
---@field RandomNumber int32
---@field IsCreateRandomNumber boolean
---@field ExecFinishPre boolean
---@field RefreshEventFlag boolean
---@field RefreshEventObject boolean
---@field EditPlayerPosition boolean
---@field EditCameraLock boolean
---@field EditPlayerCharacterEnable boolean
---@field FirstCharacterSpawn int32
---@field LastFlagChangeIndex int32
---@field LastFadeOutIndex int32
---@field RefreshPlayerFlag boolean
---@field ContinueEvent boolean
---@field TempTime float
---@field TempVector FVector
---@field EventMoveTarget AKSCharacterBase
---@field FlashBackTexture TArray<TSoftObjectPtr<UTexture2D>>
---@field CameraLockPos FVector
---@field CameraLockFlag boolean
---@field TempEndrollManager AEndRollFlowManager
---@field EndrollFlow int32
---@field TheaterStatus EEventTheater
---@field EventStartLevelID int32
---@field PlayerLocation FVector
---@field PlayerDir EKSCharacterDir
---@field RestoreHouseName FName
---@field RestoreBGMLabel FName
---@field IsPlayEventForce boolean
---@field IsSequencerSkip boolean
---@field IsTempChangeTimeZone boolean
---@field SepiaLUT UTexture
---@field GRAY_SCALE FVector
---@field GRAY_ALPHA FVector
---@field SEPIA FVector
---@field m_pcMainSeqActor ALevelSequenceActor
---@field m_apcSubSeqActor TArray<ALevelSequenceActor>
---@field m_apSeqList TArray<ALevelSequenceActor>
---@field m_pcEventCommandData URichEventCommandBase
---@field m_pcSubEventCommandData URichEventCommandBase
---@field m_acResList TArray<TSoftObjectPtr<ULevelSequence>>
---@field m_pcCacheTimeSequencer ULevelSequence
---@field m_ReplaceTimeSequencer ULevelSequence
---@field EventFinish FEventManagerEventFinish
---@field m_EventCharacter TMap<int32, AKSCharacterBase>
---@field m_EventObject TMap<int32, AKSObjectBase>
---@field m_MoveList TMap<int32, AKSCharacterBase>
---@field m_DeepThinkParams TArray<FSubSeqData>
local AEventManager = {}

---@param DeltaTime float
---@return boolean
function AEventManager:UpdateWPMEventReflection(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateWPMEventEnd(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateWPMEventCheck(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateWPMEvent(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateUIStorySelect(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateTalk(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateSubStoryLabelJump(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateSubDelivMessageDialog(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateSubDeliveryDialog(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateSpawnCharacterThief(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateSpawnCharacterPlacement(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateSpawnCharacterPartyPosition(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateSpawnCharacterNPC(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateSpawnCharacter(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateSelectMemberDialog(DeltaTime) end
---@param bWipe boolean
function AEventManager:UpdateResetBattleWipeMPC_PlayingEvent(bWipe) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateReminiscenceDialog(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdatePChatMode(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdatePartnerSelectDialog(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateOpenPartySquadWidget(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateOpenPartySplitWidget(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateMove(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateInventorLearnAbility(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateInventorEventDialog(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateGetJobDialog(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateGetItemDialog(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateFinishTheater(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateFieldCommandDialog(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateExPartyChange(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateEventFadeOut(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateEventFadeIn(DeltaTime) end
---@param DeltaTime float
function AEventManager:UpdateEventEmotion(DeltaTime) end
---@param DeltaTime float
function AEventManager:UpdateEventEffect(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateEndrollInit(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateEndroll(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateDialogJumpEpilogue(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateDialogJump(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateCharaMoveStart(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateCharaFadeOut(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateCharaFadeIn(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateCharacterForce(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateCharacterAction(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateChallengeDialog(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateChallengeBattleUI(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateChallengeBattleTutorialSave(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateChallengeBattleSave(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateChallengeBattlePreProcess(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateChallengeBattlePostProcess(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateCameraDecelerate(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateBattleStart(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateAddMemberEnd(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateAddMemberDialog(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:UpdateAddMember(DeltaTime) end
---@param DetalTime float
function AEventManager:Update_StartFadeOut(DetalTime) end
---@param DeltaTime float
function AEventManager:Update_EventSkipFadeOut(DeltaTime) end
---@param DeltaTime float
function AEventManager:Update_EventSkipFadeIn(DeltaTime) end
---@param DeltaTime float
function AEventManager:Update_CameraMove(DeltaTime) end
---@param NewEventSkip boolean
---@return boolean
function AEventManager:TempEventSkip(NewEventSkip) end
---@param nIndex int32
---@return boolean
function AEventManager:StopSubSequencer(nIndex) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartWPMEventReflection(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartWPMEventEnd(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartWPMEventCheck(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartWPMEvent(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartWeaponMasterFrow(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartUnlockFasttravel(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartUIStorySelect(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartUIShop(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartUIPartyEdit(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartUINote(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartUIBar(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartTopCharaTypeLabelJump(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartTempPartySetting(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartTalkPos(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartTalkPChat(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartTalkParty(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartTalkPartner(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartTalkGeneral(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartTalk(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSuccsessFCTypeLabelJump(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSubTitleNextBlock(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSubTitle(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSubStoryLabelJump(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSubDelivMessageDialog(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSubDeliveryDialog(refEventData) end
---@return boolean
function AEventManager:StartStopEmotionIconAll() end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSpawnEffect(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartShipPutUpSail(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSetSwoonEventObject(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSetSwoon(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSetNextLevelTriggerID(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSetFastTravel(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSequencerStart(refEventData) end
---@return boolean
function AEventManager:StartSequencerSkip() end
---@return boolean
function AEventManager:StartSequencerPause() end
---@param strLabel FString
---@return boolean
function AEventManager:StartSequencerLabelJump(strLabel) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSelectMemberJump(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartSelectMemberDialog(refEventData) end
---@param nIndex int32
---@return boolean
function AEventManager:StartResidentSubSequencerStopIndex(nIndex) end
---@return boolean
function AEventManager:StartResidentSubSequencerStop() end
---@param inEventData FEventData
---@return boolean
function AEventManager:StartResidentSubSequencerStart(inEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartReminisceneDialog(refEventData) end
---@return boolean
function AEventManager:StartRefreshEventObject() end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartRecoverSwoonEventChara(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartRecoverSwoon(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartRadarMap(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartPreparationBattleStart(refEventData) end
---@param TargetCamera UCameraComponent
---@param refEventData FEventData
---@return boolean
function AEventManager:StartPostEffectSetting(TargetCamera, refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartPlaySE(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartPlayerCharacterEnable(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartPlayEmotionIcon(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartPChatMode(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartPartnerSelectDialog(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartOpenPartySquadWidget(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartOpenPartySplitWidget(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartOpenEndCardUI(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartOpenEndCardEpilogueUI(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartOpenDoor(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartOKDialog(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartObjectSpawn(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartNotificationMessage(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartNotificationCountShow(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartNarration(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartMovePos(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartMove(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartModifyMP(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartModifyHP(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartLeaveMember(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartJudgeMoney(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartInventorLearnAbility(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartInventorEventDialog(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartHouseInSettingPlaySeq(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartHouseInSetting(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartGetTameMonster(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartGetJobDialog(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartGetItemDialog(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartFullRecoveryAndPotentiality(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartFullRecovery(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartFlashbackStart(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartFlashbackEnd(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartFinishTheater(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartFinishTempPartySetting(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartFinalBattleStart(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartFieldCommandDialog(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartEventFadeOut(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartEventFadeIn(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartEndrollInit(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartEndroll(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartEndReminiscene(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartEndPlayReminiscene(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartEnableFieldObject(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartEnableEventObject(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartEmotionEnable(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartDelFollow(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCommand(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCharaMoveStart(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCharaFadeOut(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCharaFadeIn(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCharacterPhysics(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChangeTitle(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChangePlayerResource(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChangePartySet(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChangeMoeny(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChangeMap(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChangeItem(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChangeArea(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChallengeDialog(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChallengeBattleUI(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChallengeBattleTutorialSave(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChallengeBattleSave(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChallengeBattlePreProcess(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartChallengeBattlePostProcess(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCancelSwoon(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCameraTargetEvent(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCameraTarget(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCameraSpawn(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCameraRotation(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCameraPos(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCameraLock(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartCameraDecelerate(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartBeginReminiscene(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartBeginPlayReminiscene(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartBattleStart(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartAutoSave(refEventData) end
---@param refEventData FEventData
---@param AddMember boolean
---@return boolean
function AEventManager:StartAddMemberEnd(refEventData, AddMember) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartAddMemberDialog(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:StartAddMember(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:SpawnPlayerCharacter(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:SpawnPChatCharacter(refEventData) end
---@param ID int32
---@param Label FName
---@param LifeTime float
---@param Pos FVector
---@param TargetCharacter int32
---@return boolean
function AEventManager:SpawnEventEffect(ID, Label, LifeTime, Pos, TargetCharacter) end
---@return boolean
function AEventManager:SpawnEventCharacterList() end
---@param refEventData FEventData
---@return boolean
function AEventManager:SpawnCharacterThief(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:SpawnCharacterPlacement(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:SpawnCharacterPartyPosition(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:SpawnCharacterNPC(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:SpawnCharacter(refEventData) end
---@param Time FFrameTime
function AEventManager:SkipPositionSequencer(Time) end
---@param bSeamless boolean
function AEventManager:SetUpSeamlessMode(bSeamless) end
---@param Type EEventUpdateType
function AEventManager:SetUpdateType(Type) end
---@param EventName FName
---@param OverrideTimeZone int32
function AEventManager:SetTimeZoneTheater(EventName, OverrideTimeZone) end
---@param pEvent URichEventCommandBase
function AEventManager:SetSubSequenceDirector(pEvent) end
---@param TargetName FName
---@param bOpen boolean
function AEventManager:SetSkipOpenDoorLabel(TargetName, bOpen) end
---@param IsLoad boolean
function AEventManager:SetRichEventLoadData(IsLoad) end
function AEventManager:SetResumeGamePlaySystem() end
---@param Enable boolean
---@param refTarget AKSCharacterBase
---@param Time float
---@return boolean
function AEventManager:SetPostProcessDeepThink(Enable, refTarget, Time) end
---@param refEventData FEventData
---@return boolean
function AEventManager:SetPChatCharacterDir(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:SetPartnerNumber(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:SetOpenCloseDoorFunction(refEventData) end
---@param MaxTime float
function AEventManager:SetMaxSkipInputTime(MaxTime) end
function AEventManager:SetMaterialEnvParams() end
---@param eAwake EAWAKENING_MONSTER_PARAM
---@return boolean
function AEventManager:SetLegendMonsterAwakening(eAwake) end
---@param bLock int32
function AEventManager:SetLastSoundBlock(bLock) end
---@param Enable boolean
function AEventManager:SetFinishBattleWipe(Enable) end
---@param Finish boolean
function AEventManager:SetFinish(Finish) end
---@param isSkipInput boolean
function AEventManager:SetEventSkipInput(isSkipInput) end
---@param Mode EKSEVENT_PLAY
function AEventManager:SetEventPlayMode(Mode) end
---@param EventName FName
function AEventManager:SetEventObjectEnableTheater(EventName) end
---@param EventLabel FName
---@param TargetChara AKSCharacterBase
---@param MapLabel FName
---@param TheaterMode boolean
function AEventManager:SetEventDataWithLevelIDForPartyChat(EventLabel, TargetChara, MapLabel, TheaterMode) end
---@param EventLabel FName
---@param TargetChara AKSCharacterBase
---@param MapLabel FName
---@param TheaterMode boolean
function AEventManager:SetEventDataWithLevelID(EventLabel, TargetChara, MapLabel, TheaterMode) end
---@param Name FName
---@param TargetChara AKSCharacterBase
---@param TheaterMode boolean
function AEventManager:SetEventDataForce(Name, TargetChara, TheaterMode) end
---@param Name FName
---@param TargetChara AKSCharacterBase
---@param TheaterMode boolean
function AEventManager:SetEventData(Name, TargetChara, TheaterMode) end
---@param refEventData FEventData
---@return boolean
function AEventManager:SetEventCheckFlag(refEventData) end
---@param bPlayingEvent boolean
function AEventManager:SetEnvTimeZoneMPC_PlayingEvent(bPlayingEvent) end
---@return boolean
function AEventManager:SetEndrollManager() end
---@param TagName FName
---@param Offset FVector
---@param nIndex int32
function AEventManager:SetDeepThinkParameter(TagName, Offset, nIndex) end
---@param inEnable boolean
---@return boolean
function AEventManager:SetDeepThinkMaterialEnable(inEnable) end
---@param refEventData FEventData
---@return boolean
function AEventManager:SetCharacterPosition(refEventData) end
---@param TimeSequencer ULevelSequence
function AEventManager:SetCacheMapData(TimeSequencer) end
---@param bBan boolean
function AEventManager:SetBanEventSkip(bBan) end
---@param Enable boolean
function AEventManager:SetAllCharacterEnable(Enable) end
function AEventManager:RevertTimeZoneSequencer() end
function AEventManager:RevertPlayerCollision() end
---@return boolean
function AEventManager:RestoreTheater() end
---@return boolean
function AEventManager:RestoreEventSkip() end
---@return boolean
function AEventManager:ResetPostProcess() end
function AEventManager:ResetEventSkip() end
function AEventManager:RequestRefreshSpawnOnEndEvent() end
function AEventManager:RequestPlayEvent() end
---@param Index int32
function AEventManager:RemoveObject(Index) end
---@param ID int32
---@return boolean
function AEventManager:RemoveEventEffectList(ID) end
function AEventManager:RemoveEventEffectAll() end
---@param ID int32
---@return boolean
function AEventManager:RemoveEventEffect(ID) end
---@param Index int32
function AEventManager:RemoveEmotionIcon(Index) end
---@return boolean
function AEventManager:RemoveCharacterAll() end
---@param Index int32
function AEventManager:RemoveCharacter(Index) end
function AEventManager:ReferenceSequencerStartDeepDirecting() end
function AEventManager:ReferenceSequencerEndDeepDirecting() end
function AEventManager:ReferenceSequencerDeepDirectingAttachPlayer() end
---@param DeltaTime float
---@return boolean
function AEventManager:RandomNumberJump(DeltaTime) end
---@param EventName FName
---@return boolean
function AEventManager:PlayEventTheater(EventName) end
---@param EventName FString
---@param TargetCharacter AKSCharacterBase
---@return boolean
function AEventManager:PlayEventForce(EventName, TargetCharacter) end
---@param EventName FString
---@param TargetCharacter AKSCharacterBase
---@return boolean
function AEventManager:PlayEvent(EventName, TargetCharacter) end
---@param eNoticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function AEventManager:PlayDeepDirection(eNoticeType, Args) end
---@param DeltaTime float
---@return boolean
function AEventManager:PartnerCharacterJump(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:MemberCountJump(DeltaTime) end
---@param EventName FName
---@return FString
function AEventManager:MakeJsonDataPath(EventName) end
---@param outEventData TArray<FEventData>
---@param eventJsonName FString
---@return boolean
function AEventManager:MakeEventData(outEventData, eventJsonName) end
---@param inEventData FEventData
---@return boolean
function AEventManager:LoadSubSequencer(inEventData) end
---@return boolean
function AEventManager:IsTheaterMode() end
---@return boolean
function AEventManager:IsSeqDebugPlay() end
---@return boolean
function AEventManager:IsPlayReferenceSequencerDeepDirecting() end
---@return boolean
function AEventManager:IsPlaying() end
---@return boolean
function AEventManager:IsFinish() end
---@return boolean
function AEventManager:IsExecutingFinishPre() end
---@return boolean
function AEventManager:IsEventBattleDefeatNextEvent() end
---@return boolean
function AEventManager:IsCheckEventPlayMode() end
---@return boolean
function AEventManager:IsBanEventSkip() end
---@param DeltaTime float
---@return boolean
function AEventManager:HaveMeatItemJump(DeltaTime) end
---@param DeltaTime float
---@return boolean
function AEventManager:HaveItemJump(DeltaTime) end
---@return EEventUpdateType
function AEventManager:GetUpdateType() end
---@return EEventTheater
function AEventManager:GetTheaterStatus() end
---@return FName
function AEventManager:GetTalkGeneralText() end
---@param TriggerName FString
---@return int32
function AEventManager:GetSwitchIndoorTriggerIndex(TriggerName) end
---@return TArray<ALevelSequenceActor>
function AEventManager:GetSubSequenceActor() end
---@param nIndex int32
---@return ALevelSequenceActor
function AEventManager:GetSubSequeceActor(nIndex) end
---@return FString
function AEventManager:GetSubSeqFileName() end
---@param nIndex int32
---@return FName
function AEventManager:GetSubOptionValue(nIndex) end
---@param MainSet EKSPartySet
---@param SubSet EKSPartySet
---@param MainParty TArray<EPlayableCharacterID>
---@param SubParty TArray<EPlayableCharacterID>
function AEventManager:GetSubEventBattleParty(MainSet, SubSet, MainParty, SubParty) end
---@return float
function AEventManager:GetSkipInputTime() end
---@return boolean
function AEventManager:GetSequencerSkip() end
---@return FString
function AEventManager:GetSeqFileName() end
---@return boolean
function AEventManager:GetRichEventLoadData() end
---@param SequencePlayer ULevelSequencePlayer
---@return FName
function AEventManager:GetResidentTagData(SequencePlayer) end
---@param nIndex int32
---@return ALevelSequenceActor
function AEventManager:GetResidentSequenceActor(nIndex) end
---@return boolean
function AEventManager:GetPlaySequencer() end
---@return FString
function AEventManager:GetPlayingEventName() end
---@return FEventListData
function AEventManager:GetPlayEventData() end
---@param Index int32
---@return AKSObjectBase
function AEventManager:GetObject(Index) end
---@return FEventData
function AEventManager:GetNowEventData() end
---@return float
function AEventManager:GetMaxSkipInputTime() end
function AEventManager:GetMaterialEnvParams() end
---@return ALevelSequenceActor
function AEventManager:GetMainSequeceActor() end
---@param strPass FString
---@return AWeaponMasterEventFlow
function AEventManager:GetLoadWeaponMasterAssetClass(strPass) end
---@return boolean
function AEventManager:GetFinishEncountWipe() end
---@return boolean
function AEventManager:GetFinishBattleWipe() end
---@param MainParty TArray<EPlayableCharacterID>
---@param SubParty TArray<EPlayableCharacterID>
function AEventManager:GetFinalBattleParty(MainParty, SubParty) end
---@return boolean
function AEventManager:GetEventSkip() end
---@return EKSEVENT_PLAY
function AEventManager:GetEventPlayMode() end
---@return FEventPlayData
function AEventManager:GetEventPlayData() end
---@return UUIFlashbackBase
function AEventManager:GetEventFlashbackData() end
---@return TMap<int32, FEventEffect>
function AEventManager:GetEventEffectList() end
---@param Index int32
---@return AKSCharacterBase
function AEventManager:GetEventCharacter(Index) end
---@return boolean
function AEventManager:GetEventBattleFlag() end
---@param SequencePlayer ULevelSequencePlayer
---@return FName
function AEventManager:GetDeepThinkTagName(SequencePlayer) end
---@param SequencePlayer ULevelSequencePlayer
---@return FVector
function AEventManager:GetDeepThinkOffset(SequencePlayer) end
---@param nIndex int32
---@param ArrayNum int32
---@return ALevelSequenceActor
function AEventManager:GetDeepThinkActor(nIndex, ArrayNum) end
---@return boolean
function AEventManager:GetDebugPlay() end
---@return ULevelSequence
function AEventManager:GetCacheTimeSequencer() end
---@return int32
function AEventManager:GetCacheMapID() end
---@param DeltaTime float
---@return boolean
function AEventManager:FollowCharacterJump(DeltaTime) end
---@return boolean
function AEventManager:FinishTheater() end
---@return boolean
function AEventManager:FinishPre() end
---@return boolean
function AEventManager:FinishEventSkip() end
---@return boolean
function AEventManager:FinishEvent() end
---@return boolean
function AEventManager:FinishDialog() end
function AEventManager:ExecCameraMoving() end
function AEventManager:EventSkipUIReset() end
---@return boolean
function AEventManager:EventRemoveCharacterAll() end
---@param Index int32
function AEventManager:EventRemoveCharacter(Index) end
---@param inLevelID FName
---@param EventSoundLabel FName
---@param inEventPlayBGM EEventPlayBGM
---@param PlayBGMLabel FString
---@return boolean
function AEventManager:EventLoadLevel(inLevelID, EventSoundLabel, inEventPlayBGM, PlayBGMLabel) end
---@param DeltaTime float
---@return boolean
function AEventManager:End(DeltaTime) end
---@param outNextEventName FString
---@return boolean
function AEventManager:DialogFinish(outNextEventName) end
---@param eNoticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function AEventManager:DeletePlaySequencer(eNoticeType, Args) end
---@param eNoticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function AEventManager:DeleteDeepDirection(eNoticeType, Args) end
---@param Type int32
---@param Index int32
function AEventManager:DebugAwakeningPartner(Type, Index) end
function AEventManager:Debug_DumpEventFlagToFile() end
---@param refEventData FEventData
---@return boolean
function AEventManager:CreateRandomNumber(refEventData) end
---@param eType ESPAWN_CHARA_TYPE
---@param inEventData FEventData
---@return boolean
function AEventManager:CreateEventCharacter(eType, inEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:CreateDialogEpilogue(refEventData) end
---@param refEventData FEventData
---@return boolean
function AEventManager:CreateDialog(refEventData) end
---@param Index int32
---@param inEventData FEventData
---@return boolean
function AEventManager:CommandInit(Index, inEventData) end
function AEventManager:ClearReplaceTimeSequencer() end
function AEventManager:ClearCacheTimeSequencer() end
function AEventManager:CheckOutputAtomSound() end
---@param replaceSequencer ULevelSequence
function AEventManager:ChangeTimeZoneSequencer(replaceSequencer) end
---@param DeltaTime float
---@return boolean
function AEventManager:BitFlagJump(DeltaTime) end
---@param SubSeq ULevelSequence
---@return boolean
function AEventManager:AttachSequencerSub(SubSeq) end
---@param SubSeq ULevelSequence
---@return boolean
function AEventManager:AttachSequencerResidentSub(SubSeq) end
---@param MainSeq ULevelSequence
---@return boolean
function AEventManager:AttachSequencerMain(MainSeq) end
---@param SubSeq ULevelSequence
---@param NumLoop int32
---@param TagName FName
---@return boolean
function AEventManager:AttachPlaySequenceSub(SubSeq, NumLoop, TagName) end
---@param SubSeq ULevelSequence
---@param nIndex int32
---@param TagName FName
---@param vOffset FVector
---@return boolean
function AEventManager:AttachPlaySequencerResidentSub(SubSeq, nIndex, TagName, vOffset) end
---@param Index int32
---@param Object AKSObjectBase
function AEventManager:AddObject(Index, Object) end
---@param ID int32
---@param EffectData FEventEffect
---@return boolean
function AEventManager:AddEventEffectList(ID, EffectData) end
---@param Index int32
---@param Character AKSCharacterBase
function AEventManager:AddEventCharacter(Index, Character) end


---@class AEventTargetBase : APawn
---@field EventCameraLocation FVector
---@field EventCameraLocationInHouse FVector
---@field EventCameraRotation FRotator
---@field PlayerCameraLocation FVector
---@field PlayerCameraRotation FRotator
---@field PlayerManualFocusDistance float
local AEventTargetBase = {}

---@param refEventData FEventData
---@param inHouse boolean
function AEventTargetBase:SwitchCamera(refEventData, inHouse) end
---@param ManualDistance float
function AEventTargetBase:SetPlayerManualFocusDistance(ManualDistance) end
---@param refEventData FEventData
function AEventTargetBase:FollowingCamera(refEventData) end


---@class AEventTriggerBox : AMJBoxTrigger
---@field EventName FString
---@field RequiredNPCIndex int32
---@field RequiredItemLabel FString
---@field m_PlacementLabel FName
---@field m_PlacementData FPlacementData
---@field m_IsSubStory boolean
---@field m_RadarMapIconType ERADARMAP_ICON_TYPE
local AEventTriggerBox = {}

---@param PlacementLabel FName
function AEventTriggerBox:SetupTriggerAfterSpawn(PlacementLabel) end
---@param TalkEventName FString
---@return boolean
function AEventTriggerBox:PlayEvent(TalkEventName) end
---@param TalkEventName FString
---@return boolean
function AEventTriggerBox:IsTalkEventCheck(TalkEventName) end
---@return boolean
function AEventTriggerBox:IsSubStoryTrigger() end
---@return boolean
function AEventTriggerBox:GetTriggerEnable() end
---@return ERADARMAP_ICON_TYPE
function AEventTriggerBox:GetRadarMapIconType() end
---@return FName
function AEventTriggerBox:GetPlacementLabel() end


---@class AFadeManager : AAcqManagerBase
---@field m_FadeWidget UKSFade
---@field m_BattleWipeWidget UBattleWipeBase
---@field m_FadeUser int32
local AFadeManager = {}

---@param WipeKind EWIPE_KIND
function AFadeManager:WipeOut(WipeKind) end
function AFadeManager:WipeInAtBattleEndFromEvent() end
---@param WipeKind EWIPE_KIND
function AFadeManager:WipeIn(WipeKind) end
---@param Val boolean
function AFadeManager:SetIsCancelWipeOutAtBattleEnd(Val) end
---@param User EFADE_USER
---@return boolean
function AFadeManager:IsFadeUser(User) end
---@return boolean
function AFadeManager:IsFadeEnd() end
---@return boolean
function AFadeManager:IsBattleWipeActive() end
---@return boolean
function AFadeManager:IsBattleEndWipeOut() end
function AFadeManager:HideBattleEndWipe_Immediately() end
---@return boolean
function AFadeManager:GetIsCancelWipeOutAtBattleEnd() end
---@param FadeKind EFADE_KIND
---@return UKSFade
function AFadeManager:GetFadeWidget(FadeKind) end
---@return int32
function AFadeManager:GetFadeUser() end
---@param FadeKind EFADE_KIND
---@return EFADE_TYPE
function AFadeManager:GetFadeType(FadeKind) end
---@return UBattleWipeBase
function AFadeManager:GetBattleWipeWidget() end
---@param FadeKind EFADE_KIND
---@param EndTime float
---@param Color FLinearColor
---@param FadeUser EFADE_USER
---@return UKSFade
function AFadeManager:FadeOut(FadeKind, EndTime, Color, FadeUser) end
---@param FadeKind EFADE_KIND
---@param FadeUser EFADE_USER
---@return UKSFade
function AFadeManager:FadeInImmediately(FadeKind, FadeUser) end
---@param FadeKind EFADE_KIND
---@param EndTime float
---@param Color FLinearColor
---@param FadeUser EFADE_USER
---@return UKSFade
function AFadeManager:FadeIn(FadeKind, EndTime, Color, FadeUser) end
---@param FadeKind EFADE_KIND
---@return UKSFade
function AFadeManager:ClearFadeForcibly(FadeKind) end


---@class AFadeNpcVolumeBase : AActor
---@field m_NpcFadeTime float
---@field m_AdditionalNpcFadeTime float
local AFadeNpcVolumeBase = {}

---@return float
function AFadeNpcVolumeBase:GetTotalFadeTime() end


---@class AFieldCommandFlowBase : AActor
---@field m_FieldCommandType MJFieldCommandType
local AFieldCommandFlowBase = {}

---@param str FString
function AFieldCommandFlowBase:PrintToVLog(str) end
---@param targetNpc AKSCharacterBase
---@return boolean
function AFieldCommandFlowBase:IsImpossibleSucceed(targetNpc) end
---@return TMap<FString, FString>
function AFieldCommandFlowBase:GrabStateSnapshot_Internal() end
---@return FString
function AFieldCommandFlowBase:GetRunningStatus() end
---@return boolean
function AFieldCommandFlowBase:GetIsGameOverWhenLoose() end
---@return MJFieldCommandType
function AFieldCommandFlowBase:GetFieldCommandType() end
---@return AKSCharacterBase
function AFieldCommandFlowBase:GetFieldCommandTargetNpc() end
---@return AKSCharacterBase
function AFieldCommandFlowBase:GetFieldCommandOwner() end
---@return boolean
function AFieldCommandFlowBase:Debug_ExecAutoPlayProcess() end


---@class AFieldCommandManager : AAcqManagerBase
---@field LastFieldCommandResults TMap<MJFieldCommandType, FFieldCommandResult>
---@field IsFieldCommandEvent boolean
---@field RequestBadConnectionInfo boolean
---@field InterruptPlay boolean
---@field bInFcOpeningPeriod boolean
---@field Debug_WaitReason FText
local AFieldCommandManager = {}

---@param targetNpc AKSCharacterBase
---@return boolean
function AFieldCommandManager:StartSwoonTalk(targetNpc) end
---@return boolean
function AFieldCommandManager:StartFieldCommand() end
---@return boolean
function AFieldCommandManager:StartBadConnectionTalk() end
---@param TargetChara AKSCharacterBase
---@param FCType MJFieldCommandType
function AFieldCommandManager:SetupFlowBase(TargetChara, FCType) end
---@param FieldCommand TArray<MJFieldCommandType>
---@return boolean
function AFieldCommandManager:SetupCommand(FieldCommand) end
---@param TargetChara AKSCharacterBase
---@param Type MJFieldCommandType
---@return boolean
function AFieldCommandManager:SetStartParam(TargetChara, Type) end
---@param FCType MJFieldCommandType
---@param FcStatus FieldCommandStatus
function AFieldCommandManager:SetLastFieldCommandResults(FCType, FcStatus) end
---@param Val boolean
function AFieldCommandManager:SetIsInterruptPlay(Val) end
---@param Val boolean
function AFieldCommandManager:SetIsIgnoreSwoonProcessFromEventCommand(Val) end
---@param Val boolean
function AFieldCommandManager:SetIsIgnoreFollowProcessFromEventCommand(Val) end
---@param TownID int32
---@return boolean
function AFieldCommandManager:RecoveryConnectionValue(TownID) end
---@param str FString
function AFieldCommandManager:PrintToVLog(str) end
---@return boolean
function AFieldCommandManager:IsPlayingBadConnectionFlow() end
---@return boolean
function AFieldCommandManager:IsPlaying() end
---@param FCType MJFieldCommandType
---@param targetNpc AKSCharacterBase
---@return boolean
function AFieldCommandManager:IsImpossibleSucceed(FCType, targetNpc) end
---@param FCType MJFieldCommandType
---@param targetNpc AKSCharacterBase
---@return boolean
function AFieldCommandManager:IsCompleteFieldCommand(FCType, targetNpc) end
---@return boolean
function AFieldCommandManager:IsBattleType() end
---@param FCType MJFieldCommandType
---@param targetNpc AKSCharacterBase
---@return boolean
function AFieldCommandManager:IsAvailableFieldCommand(FCType, targetNpc) end
---@return TMap<FString, FString>
function AFieldCommandManager:GrabStateSnapshot_Internal() end
---@return AKSCharacterBase
function AFieldCommandManager:GetTargetNpc() end
---@return FString
function AFieldCommandManager:GetState() end
---@param NPCLabel FName
---@return TArray<FPurchaseItemInfoData>
function AFieldCommandManager:GetPurchaseItemList(NPCLabel) end
---@return AFieldCommandFlowBase
function AFieldCommandManager:GetPlayingCommand() end
---@return TMap<MJFieldCommandType, FFieldCommandResult>
function AFieldCommandManager:GetLastFieldCommandResults() end
---@return boolean
function AFieldCommandManager:GetIsInterruptPlay() end
---@return boolean
function AFieldCommandManager:GetIsGameOverWhenLoose() end
---@return boolean
function AFieldCommandManager:GetIsFieldCommandEvent() end
---@return AFieldCommandManager
function AFieldCommandManager:GetInstance() end
---@param FCType MJFieldCommandType
---@return AFieldCommandFlowBase
function AFieldCommandManager:GetFlowBase(FCType) end
---@return boolean
function AFieldCommandManager:FinishFieldCommand() end
---@param reason FText
function AFieldCommandManager:Debug_SetWaitReason(reason) end
---@return boolean
function AFieldCommandManager:ConnectionBadNotification() end
---@param NPCLabel FName
---@param FCType MJFieldCommandType
---@return boolean
function AFieldCommandManager:CanExecFieldCommand(NPCLabel, FCType) end
---@param RowName FName
---@param Target AActor
---@return boolean
function AFieldCommandManager:AddEventBalloon(RowName, Target) end


---@class AFlagRandomControlManager : AAcqManagerBase
local AFlagRandomControlManager = {}

---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AFlagRandomControlManager:OnStartTimeZoneChange(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AFlagRandomControlManager:OnStartLevelChange(eNoticeType, NoticeArgs) end


---@class AFrameGrabberManager : AAcqManagerBase
---@field MaterialInstanceDynamic UMaterialInstanceDynamic
---@field CaptureFrameData TArray<uint8>
---@field CaptureFrameTexture UTexture2D
---@field NoiseAnimation boolean
---@field m_bCaptureSuccess boolean
local AFrameGrabberManager = {}

function AFrameGrabberManager:StopFrameGrab() end
---@return boolean
function AFrameGrabberManager:StartFrameGrab() end
---@param MaterialInstance UMaterialInstanceDynamic
function AFrameGrabberManager:SetMaterialInstanceDynamic(MaterialInstance) end
---@param Enable boolean
function AFrameGrabberManager:SetCaptureEnable(Enable) end


---@class AGameDataClearnupWorker : AActor
---@field m_targetSystemData UKSSaveSystem
local AGameDataClearnupWorker = {}

---@param SystemData UKSSaveSystem
function AGameDataClearnupWorker:StartClearnup(SystemData) end
---@return boolean
function AGameDataClearnupWorker:GetIsDeleted() end
---@return boolean
function AGameDataClearnupWorker:GetIsComplete() end


---@class AGameMainSequenceManager : AAcqManagerBase
---@field m_SequenceList TArray<UStateDataBase>
---@field m_CurrentState EMAINSEQ_TYPE
---@field m_BeforeState EMAINSEQ_TYPE
---@field m_RequestFlowIndex int32
---@field m_RequestList TMap<EREQUEST_TYPE, FMainSequneceRequestParam>
---@field m_HoldingRequestList TArray<FMainSequneceRequestParam>
---@field m_TrandisitonSeqType TMap<EREQUEST_TYPE, FTransitionData>
---@field m_BackGroundData TArray<UStateDataBase>
local AGameMainSequenceManager = {}

---@param Type EMAINSEQ_TYPE
---@param PassingRequest EREQUEST_TYPE
---@return boolean
function AGameMainSequenceManager:RequestCheck(Type, PassingRequest) end
---@return boolean
function AGameMainSequenceManager:IsBattleMode() end
---@return TArray<FMainSequneceRequestParam>
function AGameMainSequenceManager:GetHoldingRequestList() end
---@param bEnable boolean
function AGameMainSequenceManager:Debug_ShowMainSequenceInfo(bEnable) end
---@param Type EMAINSEQ_TYPE
function AGameMainSequenceManager:Debug_ChangeState(Type) end
---@param Type EMAINSEQ_TYPE
---@return boolean
function AGameMainSequenceManager:CheckNextFlow(Type) end
function AGameMainSequenceManager:CheckHoldingRequest() end
---@param CheckType EMAINSEQ_TYPE
---@return boolean
function AGameMainSequenceManager:CheckCurrentState(CheckType) end
---@param Type EREQUEST_TYPE
---@param Param FMainSequneceRequestParam
function AGameMainSequenceManager:AddRequest(Type, Param) end


---@class AGameSpeedManager : AAcqManagerBase
---@field b_mBattleSpeedChange boolean
---@field b_mEventSpeedChange boolean
---@field m_eEventMode EEVENT_MODE
local AGameSpeedManager = {}

---@param WorldContextObject UObject
function AGameSpeedManager:ResetEventSpeedUp(WorldContextObject) end
---@return EEVENT_MODE
function AGameSpeedManager:GetEventMode() end
---@return ECHANGE_TIME_DILATION
function AGameSpeedManager:GetEventDilation() end
---@param WorldContextObject UObject
function AGameSpeedManager:EventSpeedUpInit(WorldContextObject) end
---@param WorldContextObject UObject
function AGameSpeedManager:EventSpeedUpFinish(WorldContextObject) end
---@param WorldContextObject UObject
---@param Enable boolean
function AGameSpeedManager:EventSpeedUp(WorldContextObject, Enable) end
---@param bIsUp boolean
function AGameSpeedManager:ChangeEventMode(bIsUp) end
---@param WorldContextObject UObject
function AGameSpeedManager:BattleSpeedUpInit(WorldContextObject) end
---@param WorldContextObject UObject
function AGameSpeedManager:BattleSpeedUpFinish(WorldContextObject) end
function AGameSpeedManager:BattleSpeedUp() end


---@class AHolyTorchItemTriggerBase : AMJBoxTrigger
---@field HolyTorchType EHOLY_TORCH_TYPE
---@field EventLabels TArray<FName>
---@field RequiredCharaId TArray<EPlayableCharacterID>
---@field TriggerStartFlag int32
---@field TriggerEndFlag int32
local AHolyTorchItemTriggerBase = {}

---@param bEnable boolean
function AHolyTorchItemTriggerBase:SwitchShiningMirror(bEnable) end
---@return boolean
function AHolyTorchItemTriggerBase:IsTriggerEnabled() end
---@return boolean
function AHolyTorchItemTriggerBase:GetShiningMirrorFlag() end
---@return FName
function AHolyTorchItemTriggerBase:GetPlayEvent() end
---@param nIndex int32
---@return boolean
function AHolyTorchItemTriggerBase:GetCharacterConditon(nIndex) end
---@return boolean
function AHolyTorchItemTriggerBase:CheckReburnCondition() end
function AHolyTorchItemTriggerBase:CheckLuminusStatue() end


---@class AHouseEnterTrigger : AKSTriggerBase
---@field m_nInFloor int32
---@field m_nOutFloor int32
---@field m_fManualFocusDistance_Room float
local AHouseEnterTrigger = {}

---@param bIsHouseIn boolean
function AHouseEnterTrigger:SetupFocalLength(bIsHouseIn) end
---@return int32
function AHouseEnterTrigger:GetOutFloor() end
---@return int32
function AHouseEnterTrigger:GetInFloor() end


---@class AKSAIControllerBase : AController
local AKSAIControllerBase = {}


---@class AKSBattleCharacterBase : AActor
local AKSBattleCharacterBase = {}

---@param cActorComponentClass UClass
---@return UActorComponent
function AKSBattleCharacterBase:AddActorComponent(cActorComponentClass) end


---@class AKSCameraManager : AAcqManagerBase
---@field EncountCapture boolean
---@field ActiveType EKSCameraType
---@field OldType EKSCameraType
---@field CameraTargets TArray<AActor>
---@field CameraComponents TArray<UCameraComponent>
---@field SpringArmComponents TArray<USpringArmComponent>
---@field RelativeCameraLocation TArray<FVector>
---@field m_fDefaultFieldFocusDistance float
local AKSCameraManager = {}

---@param fFoucusDistance float
function AKSCameraManager:SetFieldFoucusDistance(fFoucusDistance) end
---@param eType EKSCameraType
---@param Target AActor
---@param Camera UCameraComponent
---@param SpringArm USpringArmComponent
function AKSCameraManager:SetComponent(eType, Target, Camera, SpringArm) end
---@param eType EKSCameraType
---@param fBlend float
---@return boolean
function AKSCameraManager:SetCameraActive(eType, fBlend) end
function AKSCameraManager:ResetFieldFoucusDistance() end
---@param noticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function AKSCameraManager:OnLevelChangeCompleted(noticeType, Args) end
---@param eType EKSCameraType
---@return AActor
function AKSCameraManager:GetTarget(eType) end
---@param eType EKSCameraType
---@return USpringArmComponent
function AKSCameraManager:GetSpringArm(eType) end
---@param eType EKSCameraType
---@return FVector
function AKSCameraManager:GetRelativeCameraLocation(eType) end
---@return EKSCameraType
function AKSCameraManager:GetCurrentCameraType() end
---@param eType EKSCameraType
---@return UCameraComponent
function AKSCameraManager:GetCameraComponent(eType) end
---@return USpringArmComponent
function AKSCameraManager:GetActiveSpringArm() end
---@return AActor
function AKSCameraManager:GetActiveCameraTarget() end
---@return UCameraComponent
function AKSCameraManager:GetActiveCameraComponent() end
---@param InDeltaTime float
function AKSCameraManager:ForceUpdatePlayerCameraManager(InDeltaTime) end
function AKSCameraManager:BattleEndScreenShot() end


---@class AKSCharacterBase : APaperCharacter
---@field CharaState ECharacterState
---@field m_IsFadeInWait boolean
---@field ActionLabel FName
---@field CurrentFlipbookName FName
---@field Dir EKSCharacterDir
---@field HouseChangeVisibleFlag boolean
---@field IsAnimEndOnce boolean
---@field ManualLoop EKSCharacterAnimationLoop
---@field FixAnimation boolean
---@field m_bReverseSprite boolean
---@field NextActionData FPlayAction
---@field NowActionID EKSCharacterAction
---@field ActionResource FCharacterActionResource
---@field ActionFlipbook FKSCharaFlipbook
---@field TempLocation FVector
---@field m_CurrentWeaponTexture UTexture2D
---@field MoveSpeed TArray<float>
---@field InitMoveSpeed TArray<float>
---@field MoveSpeed_EventPlayer TArray<float>
---@field InitMoveSpeed_EventPlayer TArray<float>
---@field CharacterCategory EKSCharacterCategory
---@field CharacterEnable boolean
---@field LoadedCharacterEnableCancel boolean
---@field MoveMode EKSCharacterMoveMode
---@field MovePoint FVector
---@field IsMoveUpdate boolean
---@field Moving boolean
---@field CustomFlipbook UKSPaperFlipbook
---@field m_CustomFlipbookMaterialList TMap<FName, UMaterialInstanceDynamic>
---@field MoveDir FVector
---@field Loaded boolean
---@field m_bChangeDirLock boolean
---@field LanternRoot USceneComponent
---@field m_pcLanternLight ASpotLight
---@field m_bUsingLantern boolean
---@field EquipLanternData FEquipLanternData
---@field NpcFadeCollision UCapsuleComponent
---@field NpcFadeCollisionRadius float
---@field NpcFadeCollisionLengthRate float
---@field FormCollision UBoxComponent
---@field MoveStopLen float
---@field MoveLadderPosition FVector
---@field LoopEmotionParticle UParticleSystemComponent
---@field PlayEmotionType int32
---@field m_IsNpcTalking boolean
---@field FirstFootStep boolean
---@field FirstCanoeFootStep boolean
---@field FirstStepCanoeDeltaTime float
---@field m_FinishMoveEventDispather FKSCharacterBase_FinishMoveEventDispather
---@field m_IsOpeningGuildMenu boolean
---@field m_CanoeCurveData UCurveFloat
---@field IsCanoeIdle boolean
---@field DefaultCanoePosition FVector
---@field m_CanoeLocationOffset TArray<FVector>
---@field m_CanoeRotationOffset TArray<FRotator>
---@field m_CanoeScaleOffset TArray<FVector>
---@field CanoeComponent UStaticMeshComponent
---@field CanoeMeshA UStaticMesh
---@field CanoeMeshB UStaticMesh
---@field CanoeLanternComponent UStaticMeshComponent
---@field m_CanoeEffects TArray<UParticleSystemComponent>
---@field FootStepDeltaTime float
---@field OldMoveMode EKSCharacterMoveMode
---@field IsPlayFootStep boolean
---@field m_fFootStepCheckStartOffset float
---@field m_fFootStepCheckEndOffset float
---@field ForcedPlayFootStepTypeLabelName FName
---@field ActionFootStepLabelList TArray<FName>
---@field ActionFootStepLabelIntervalList TArray<float>
---@field CharacterFootstep FName
---@field IsBreakAnimation boolean
---@field loadedResource TArray<UObject>
---@field IsLadderIdle boolean
---@field SpritePlayRate float
---@field DefaultSpritePosition FVector
---@field SoundComponent UAtomComponent
---@field PCListenerPoint USceneComponent
---@field m_bShoudTickEnable boolean
---@field m_bCalcBillboard boolean
---@field m_RadarMapIconType ERADARMAP_ICON_TYPE
---@field HunterPartnerOffsetA TMap<EHUNTER_PARTNER_OFFSET_TYPE, FVector>
---@field HunterPartnerOffsetB TMap<EHUNTER_PARTNER_OFFSET_TYPE, FVector>
---@field HunterPartnerFieldOffsetA TMap<EKSCharacterDir, FVector>
---@field HunterPartnerFieldOffsetB TMap<EKSCharacterDir, FVector>
---@field DefaultFBRelativePos FVector
---@field m_PlayerTorchMaterial UMaterialInterface
---@field m_nChangeDirCntDef int32
---@field m_nChangeDirCnt int32
---@field m_nDebugType int32
---@field m_vDebugOffset FVector
---@field m_fDebugSize float
local AKSCharacterBase = {}

---@param IsVisible boolean
function AKSCharacterBase:VisibleEmotion(IsVisible) end
---@param cameraDist float
function AKSCharacterBase:UpdateNpcFadeCollisionSize(cameraDist) end
---@param DeltaTime float
function AKSCharacterBase:UpdateMove(DeltaTime) end
---@param DeltaTime float
function AKSCharacterBase:UpdateFootStep(DeltaTime) end
---@param DeltaTime float
function AKSCharacterBase:UpdateFirstStepDeltaTime(DeltaTime) end
---@param CurrentDir EKSCharacterDir
function AKSCharacterBase:UpdateCanoeDir(CurrentDir) end
function AKSCharacterBase:UpdateAction() end
function AKSCharacterBase:ToggleMoveMode() end
function AKSCharacterBase:StopTransportEffectOnStartBattle() end
function AKSCharacterBase:StopMusicRecorad() end
function AKSCharacterBase:StopCharacter() end
function AKSCharacterBase:StopCanoePitching() end
---@param ExclusionType ECANOE_MOVE_EFFECT
function AKSCharacterBase:StopAllCanoeEffect(ExclusionType) end
---@param EmotionType EEMOTION_TYPE
---@param SpawnOffset FVector
---@return boolean
function AKSCharacterBase:SpawnEmotionWithOffset(EmotionType, SpawnOffset) end
---@param EmotionType EEMOTION_TYPE
---@param SpawnOffset FVector
---@return boolean
function AKSCharacterBase:SpawnEmotion(EmotionType, SpawnOffset) end
---@param bEnable boolean
function AKSCharacterBase:SetVisibleHouseChange(bEnable) end
---@param bVisibility boolean
function AKSCharacterBase:SetVisibilityToPartnerFB(bVisibility) end
---@param targetMaterial UMaterialInstanceDynamic
function AKSCharacterBase:SetupWeaponTextureInMaterial(targetMaterial) end
---@param EMovementMode EMovementMode
---@param nMode int32
function AKSCharacterBase:SetUpMoveSpeedData(EMovementMode, nMode) end
function AKSCharacterBase:SetupFlipbookMaterialInstance() end
---@param pPaperFlip UPaperFlipbookComponent
---@param pPlecementComponent UPlacementFadeComponent
---@param Material UMaterialInstance
function AKSCharacterBase:SetUpFadeMaterialData(pPaperFlip, pPlecementComponent, Material) end
function AKSCharacterBase:SetupCanoeEffect() end
---@param CameraLockPos FVector
---@param charaCapsule UCapsuleComponent
---@return boolean
function AKSCharacterBase:SetupCameraLockPosDirectly(CameraLockPos, charaCapsule) end
---@param lockPos FVector
---@param bLock boolean
---@param bUnlock boolean
---@param bEnableX boolean
---@param bEnableY boolean
---@param bEnableZ boolean
---@param bAfterLevelChange boolean
---@return boolean
function AKSCharacterBase:SetupCameraLock(lockPos, bLock, bUnlock, bEnableX, bEnableY, bEnableZ, bAfterLevelChange) end
---@param BeforLocation FVector
function AKSCharacterBase:SetTempLocation(BeforLocation) end
---@param DirTarget AKSCharacterBase
function AKSCharacterBase:SetTargetDir(DirTarget) end
---@param Guard boolean
function AKSCharacterBase:SetStateGuard(Guard) end
---@param BoostLevel int32
function AKSCharacterBase:SetStateBoost(BoostLevel) end
---@param eSocket EDEBUFF_ATTACHSOCKET_TYPE
function AKSCharacterBase:SetSocketBit(eSocket) end
---@param bReverse boolean
function AKSCharacterBase:SetReverseSpriteFlag(bReverse) end
---@param LockFlag boolean
---@return boolean
function AKSCharacterBase:SetReturnCameraOffset(LockFlag) end
---@param ResetPos FVector
---@return boolean
function AKSCharacterBase:SetResetCameraPos(ResetPos) end
---@param bIsPlayFootStep boolean
function AKSCharacterBase:SetPlayFootStep(bIsPlayFootStep) end
---@param nFrame int32
function AKSCharacterBase:SetPlayAnimationFrame(nFrame) end
---@param NewDir EKSCharacterDir
function AKSCharacterBase:SetPartyLadderOffset(NewDir) end
---@param InLocation FVector
---@return boolean
function AKSCharacterBase:SetMovePoint(InLocation) end
---@param Mode int32
function AKSCharacterBase:SetMoveMode(Mode) end
---@param Location FVector
---@param charaDir EKSCharacterDir
---@return boolean
function AKSCharacterBase:SetMapinPlayerLocation(Location, charaDir) end
---@param Val boolean
function AKSCharacterBase:SetLoadedCharacterEnableCancel(Val) end
---@param Intencity float
---@param AttenuationRadius float
---@param LightColor FLinearColor
---@param SourceRadius float
---@return boolean
function AKSCharacterBase:SetLevelLightParam_InDebug(Intencity, AttenuationRadius, LightColor, SourceRadius) end
---@param bEnable boolean
---@param levelName FName
---@return boolean
function AKSCharacterBase:SetLevelLightParam(bEnable, levelName) end
---@param bEnable boolean
function AKSCharacterBase:SetLantern(bEnable) end
---@param upEndPos FVector
---@param downEndPos FVector
---@param moveLadderPos FVector
function AKSCharacterBase:SetLadderMoveParams(upEndPos, downEndPos, moveLadderPos) end
function AKSCharacterBase:SetLadderIdle() end
---@param Val boolean
function AKSCharacterBase:SetIsOpeningGuild(Val) end
---@param bMoveUpdate boolean
function AKSCharacterBase:SetIsMoveUpdate(bMoveUpdate) end
---@param Val boolean
function AKSCharacterBase:SetIsDisableCharacterMovementFlag(Val) end
---@param focusDistance float
function AKSCharacterBase:SetIndoorFocusDistance(focusDistance) end
---@param FloorNum int32
function AKSCharacterBase:SetIndoorFloor(FloorNum) end
---@param Indoor boolean
function AKSCharacterBase:SetIndoorFlag(Indoor) end
---@param isVisble boolean
function AKSCharacterBase:SetHouseChangeVisibleFlag(isVisble) end
function AKSCharacterBase:SetHideMode() end
---@param ForcedPlayFootStepType FName
function AKSCharacterBase:SetForcedPlayFootStep(ForcedPlayFootStepType) end
---@param Offset int32
function AKSCharacterBase:SetFollowOffset(Offset) end
---@param Eanble boolean
---@param eAction EKSCharacterAction
---@param eLoop EKSCharacterAnimationLoop
function AKSCharacterBase:SetFixAnimation(Eanble, eAction, eLoop) end
---@param Force boolean
function AKSCharacterBase:SetFinishMove(Force) end
---@param lanternData FEquipLanternData
function AKSCharacterBase:SetEquipmentLanternData(lanternData) end
---@param Enable boolean
function AKSCharacterBase:SetEnablePlayAction(Enable) end
---@param IsVisible boolean
function AKSCharacterBase:SetEmotionVisibility(IsVisible) end
---@param TargetCharacter AKSCharacterBase
function AKSCharacterBase:SetDirTargetActor(TargetCharacter) end
---@param eDir EKSCharacterDir
---@param SetIdle boolean
function AKSCharacterBase:SetDir(eDir, SetIdle) end
---@param TriggerName FString
function AKSCharacterBase:SetDebugTouchLockTrigger(TriggerName) end
---@param DamageType EBATTLE_DAMAGE_TYPE
function AKSCharacterBase:SetDamageAction(DamageType) end
---@param weaponTexture UTexture2D
function AKSCharacterBase:SetCurrentWeaponTexture(weaponTexture) end
---@param Rotator FRotator
---@return boolean
function AKSCharacterBase:SetCineCameraRelativeRotation(Rotator) end
---@param State ECharacterState
function AKSCharacterBase:SetCharacterState(State) end
---@param InLocation FVector
---@param InDir EKSCharacterDir
function AKSCharacterBase:SetCharacterLocation(InLocation, InDir) end
---@param Enable boolean
function AKSCharacterBase:SetCharacterEnable(Enable) end
---@param Enable boolean
function AKSCharacterBase:SetCharacterCollision(Enable) end
---@param bChangeDirLock boolean
function AKSCharacterBase:SetChangeDirLock(bChangeDirLock) end
---@param bVisible boolean
function AKSCharacterBase:SetCanoeVisibility(bVisible) end
---@param bEnable boolean
function AKSCharacterBase:SetCanoePitchingEnabled(bEnable) end
---@param canoeOffset FVector
function AKSCharacterBase:SetCanoeMeshOffset(canoeOffset) end
function AKSCharacterBase:SetCanoeIdle() end
---@param CameraLockPos FVector
---@return boolean
function AKSCharacterBase:SetCameraLockPos(CameraLockPos) end
---@param cameraDistanceRate float
---@return boolean
function AKSCharacterBase:SetCameraDistanceRateToOperationCameraComp(cameraDistanceRate) end
---@param Select boolean
---@param Boost boolean
function AKSCharacterBase:SetBattleSelectMaterial(Select, Boost) end
---@param Enable boolean
function AKSCharacterBase:SetBattleAlphaMode(Enable) end
---@param bNewHidden boolean
---@return boolean
function AKSCharacterBase:SetActorHiddenInGameBP(bNewHidden) end
function AKSCharacterBase:ResumeSpritePlayRateByLadder() end
---@return boolean
function AKSCharacterBase:RespawnEmotion() end
---@return boolean
function AKSCharacterBase:ResetSelf() end
function AKSCharacterBase:ResetOnLevelBeginPlay() end
function AKSCharacterBase:ResetForceLadder() end
function AKSCharacterBase:ResetFootStep() end
---@return boolean
function AKSCharacterBase:ResetCameraPosition() end
---@return boolean
function AKSCharacterBase:ResetCameraLock() end
function AKSCharacterBase:RequestRespawnEmotionAfterTalk() end
function AKSCharacterBase:RemoveEmotion() end
function AKSCharacterBase:RefreshLocationHistoryIndex() end
---@param bClearMaterialParam boolean
function AKSCharacterBase:RefreshFadeMaterial(bClearMaterialParam) end
function AKSCharacterBase:RefreshCurrentLocation() end
function AKSCharacterBase:RefreshCanoeObject() end
function AKSCharacterBase:PlayMusicRecorad() end
---@param SELabel FName
function AKSCharacterBase:PlayFootStep(SELabel) end
function AKSCharacterBase:PlayerReplace() end
function AKSCharacterBase:PlayEncountCamera() end
---@param Label EKSCharacterAction
---@param Direction EKSCharacterDir
---@param StackClear boolean
function AKSCharacterBase:PlayCharacterAction(Label, Direction, StackClear) end
function AKSCharacterBase:PlayCanoePitching() end
---@param Mode EKSCharacterMoveMode
---@return boolean
function AKSCharacterBase:PlayCanoeEffectByMoveMode(Mode) end
---@param effType ECANOE_MOVE_EFFECT
---@return boolean
function AKSCharacterBase:PlayCanoeEffect(effType) end
---@param Break boolean
function AKSCharacterBase:PlayBreakAnimation(Break) end
---@param BattleAction EBATTLE_ACTION_TYPE
---@param StackClear boolean
function AKSCharacterBase:PlayBattleAction(BattleAction, StackClear) end
---@param eAction EKSCharacterAction
---@param eDir EKSCharacterDir
---@param nFrame int32
function AKSCharacterBase:PlayAnimationDir(eAction, eDir, nFrame) end
---@param eAction EKSCharacterAction
---@param nFrame int32
function AKSCharacterBase:PlayAnimation(eAction, nFrame) end
---@param ActionID EKSCharacterAction
---@param Force boolean
---@param nFrame int32
---@param LoopSetting EKSCharacterAnimationLoop
---@return boolean
function AKSCharacterBase:PlayAction(ActionID, Force, nFrame, LoopSetting) end
---@param eAction EKSCharacterAction
---@param eDir EKSCharacterDir
function AKSCharacterBase:OverwriteTemplateSpriteSockets(eAction, eDir) end
---@param SocketData TMap<FName, FMJSpriteSocketData>
function AKSCharacterBase:OverwriteSpriteSockets(SocketData) end
---@param IgnoreEvent boolean
---@return boolean
function AKSCharacterBase:OpenFieldCommandPopupWidget(IgnoreEvent) end
---@return boolean
function AKSCharacterBase:OnFinishAutoBalloon() end
function AKSCharacterBase:OnEndOverlapFromPlayerChara() end
function AKSCharacterBase:OnBeginOverlapFromPlayerChara() end
function AKSCharacterBase:OnAnimationFinish() end
---@param Scale float
function AKSCharacterBase:MoveSpeedInHouse(Scale) end
---@param vMove FVector
function AKSCharacterBase:MoveBP(vMove) end
function AKSCharacterBase:LoadedCharacterEnableCancelRequest() end
---@param PartyIndex int32
---@param NewDir EKSCharacterDir
function AKSCharacterBase:LadderOffset(PartyIndex, NewDir) end
---@return boolean
function AKSCharacterBase:IsSpawnedEmotion() end
---@return boolean
function AKSCharacterBase:IsRunningFade() end
---@return boolean
function AKSCharacterBase:IsPlayingCanoePitching() end
---@param effType ECANOE_MOVE_EFFECT
---@return boolean
function AKSCharacterBase:IsPlayingCanoeEffect(effType) end
---@return boolean
function AKSCharacterBase:IsPlayerCharacter() end
---@return boolean
function AKSCharacterBase:IsPlayBattleAction() end
---@return boolean
function AKSCharacterBase:IsPartyCharacter() end
---@return boolean
function AKSCharacterBase:IsNpcTalking() end
---@return boolean
function AKSCharacterBase:IsMoving() end
---@return boolean
function AKSCharacterBase:IsMoveCanoeMode() end
---@return boolean
function AKSCharacterBase:IsMove() end
---@param Mode EKSCharacterMoveMode
---@return boolean
function AKSCharacterBase:IsLadderMoveMode(Mode) end
---@return boolean
function AKSCharacterBase:IsLadder() end
---@return boolean
function AKSCharacterBase:IsIdle() end
---@return boolean
function AKSCharacterBase:IsHunterPartner() end
---@return boolean
function AKSCharacterBase:IsFollowNpcCharacter() end
---@return boolean
function AKSCharacterBase:IsFieldNpcCharacter() end
---@return boolean
function AKSCharacterBase:IsFCAction() end
---@return boolean
function AKSCharacterBase:IsFadeInWait() end
---@param nowMode EKSCharacterMoveMode
---@param nextMode EKSCharacterMoveMode
---@return boolean
function AKSCharacterBase:IsChangeWalkLadderCanoe(nowMode, nextMode) end
---@param Mode EKSCharacterMoveMode
---@return boolean
function AKSCharacterBase:IsCanoeMoveMode(Mode) end
---@return boolean
function AKSCharacterBase:IsCanoe() end
---@return boolean
function AKSCharacterBase:IsAfterIdle() end
---@return boolean
function AKSCharacterBase:IsActionLooping() end
---@param ActionLabelName FName
---@param bBattle boolean
function AKSCharacterBase:InitAction(ActionLabelName, bBattle) end
---@param Force boolean
---@return boolean
function AKSCharacterBase:Idle(Force) end
---@return FName
function AKSCharacterBase:GetTextInfo() end
---@return USplineMoveComponent
function AKSCharacterBase:GetSplineObject() end
---@param eType EDEBUFF_ATTACHSOCKET_TYPE
---@param vOutPos FVector
---@return boolean
function AKSCharacterBase:GetSocketPos(eType, vOutPos) end
---@return boolean
function AKSCharacterBase:GetReverseSpriteFlag() end
---@return boolean
function AKSCharacterBase:GetReturnCameraOffset() end
---@return boolean
function AKSCharacterBase:GetRespawnEmotionAfterTalk() end
---@return ERADARMAP_ICON_TYPE
function AKSCharacterBase:GetRadarMapIconType() end
---@return EKSCharacterMoveMode
function AKSCharacterBase:GetPrevMoveMode() end
---@return UPlayerPropertyComponent
function AKSCharacterBase:GetPlayerPropertyComponent() end
---@return FVector
function AKSCharacterBase:GetPlayerCameraPosition() end
---@return int32
function AKSCharacterBase:GetPlayAnimationFrame() end
---@return EPlayableCharacterID
function AKSCharacterBase:GetPlayableCharacterID() end
---@return UPlacementFadeComponent
function AKSCharacterBase:GetPlacementFadeComponent() end
---@return USceneComponent
function AKSCharacterBase:GetPCListenerPoint() end
---@return UPartyCharaPropertyComponent
function AKSCharacterBase:GetPartyCharaPropertyComponent() end
---@return FVector
function AKSCharacterBase:GetPartnerOffset() end
---@return FVector
function AKSCharacterBase:GetPartnerFieldOffset() end
---@return UOperationPlayerCameraComponentBase
function AKSCharacterBase:GetOperationPlayerCameraComponent() end
---@return UNpcPropertyComponent
function AKSCharacterBase:GetNpcPropertyComponent() end
---@return EKSCharacterAction
function AKSCharacterBase:GetNowActionID() end
---@param MoveMode EKSCharacterMoveMode
---@return float
function AKSCharacterBase:GetMoveSpeed(MoveMode) end
---@return EKSCharacterMoveMode
function AKSCharacterBase:GetMoveMode() end
---@param inMoveDir FVector
---@param AdjustX float
---@param AdjustY float
---@return EKSCharacterDir
function AKSCharacterBase:GetMoveDir(inMoveDir, AdjustX, AdjustY) end
---@return EKSCharacterAction
function AKSCharacterBase:GetMoveAction() end
---@return ECHARACTER_MODE
function AKSCharacterBase:GetMode() end
---@param outUpEndPos FVector
---@param outDownEndPos FVector
---@param outMoveLadderPos FVector
function AKSCharacterBase:GetLadderMoveParams(outUpEndPos, outDownEndPos, outMoveLadderPos) end
---@return boolean
function AKSCharacterBase:GetIsUsingLantern() end
---@return boolean
function AKSCharacterBase:GetIsOpeningGuild() end
---@return boolean
function AKSCharacterBase:GetIsMoveUpdate() end
---@return boolean
function AKSCharacterBase:GetIsDisableCharacterMovementFlag() end
---@return float
function AKSCharacterBase:GetIndoorFocusDistance() end
---@return int32
function AKSCharacterBase:GetIndoorFloor() end
---@return boolean
function AKSCharacterBase:GetIndoorFlag() end
---@return EKSCharacterAction
function AKSCharacterBase:GetIdleAction() end
---@return UHunterPartnerFbComponent
function AKSCharacterBase:GetHunterPartnerFbComponent() end
---@return boolean
function AKSCharacterBase:GetHouseChangeVisibleFlag() end
---@return int32
function AKSCharacterBase:GetFollowOffset() end
---@return UMaterialInterface
function AKSCharacterBase:GetFlipbookOverrideMaterial() end
---@param customFlipbookName FName
---@param bClearParameter boolean
---@return UMaterialInstanceDynamic
function AKSCharacterBase:GetFlipbookMaterial(customFlipbookName, bClearParameter) end
---@return FEquipLanternData
function AKSCharacterBase:GetEquipmentLanternData() end
---@return boolean
function AKSCharacterBase:GetEmotionVisibility() end
---@param Offset FVector
---@return FVector
function AKSCharacterBase:GetEmotionLocation(Offset) end
---@param EmotionType EEMOTION_TYPE
---@return FString
function AKSCharacterBase:GetEmotionEffectLabel(EmotionType) end
---@return FVector
function AKSCharacterBase:GetDirVector() end
---@return EKSCharacterDir
function AKSCharacterBase:GetDir() end
---@return FVector
function AKSCharacterBase:GetDefaultFlipbookRelativePos() end
---@return UTexture2D
function AKSCharacterBase:GetCurrentWeaponTexture() end
---@return ETRANSPORTATION_TYPE
function AKSCharacterBase:GetCurrentTransportType() end
---@return float
function AKSCharacterBase:GetCurrentMoveSpeed() end
---@return FVector
function AKSCharacterBase:GetCineCameraWorldLocation() end
---@return FTransform
function AKSCharacterBase:GetCineCameraRelativeTransform() end
---@return ECharacterState
function AKSCharacterBase:GetCharacterState() end
---@return boolean
function AKSCharacterBase:GetCharacterEnable() end
---@return UCapsuleComponent
function AKSCharacterBase:GetCharacterCollision() end
---@return EKSCharacterCategory
function AKSCharacterBase:GetCharacterCategory() end
---@param ActionID EKSCharacterAction
---@param InDir EKSCharacterDir
---@return UPaperFlipbook
function AKSCharacterBase:GetCharacterAction(ActionID, InDir) end
---@return boolean
function AKSCharacterBase:GetChangeDirLock() end
---@return FVector
function AKSCharacterBase:GetCameraLockPos() end
---@return FVector
function AKSCharacterBase:GetCameraInitOffset() end
---@param eChkIdleAction EKSCharacterAction
---@param eDir EKSCharacterDir
---@return EKSCharacterAction
function AKSCharacterBase:GetBattleIdle(eChkIdleAction, eDir) end
---@param FrameIndex int32
---@param vUV FVector2D
---@return UTexture2D
function AKSCharacterBase:GetAnimationTexture(FrameIndex, vUV) end
---@return FName
function AKSCharacterBase:GetActionLabel() end
---@param eAction EKSCharacterAction
---@param eDir EKSCharacterDir
---@param outFlipbookName FName
---@param outIsReverse boolean
---@return boolean
function AKSCharacterBase:GetActionFlipbookName(eAction, eDir, outFlipbookName, outIsReverse) end
---@param InLocation FVector
function AKSCharacterBase:ForceMovePoint(InLocation) end
function AKSCharacterBase:FirstMoveStep() end
function AKSCharacterBase:FinishCallbackLoaded() end
---@param pTargetParticle UParticleSystemComponent
function AKSCharacterBase:DetachDebuffEffect(pTargetParticle) end
function AKSCharacterBase:DebugShowInfoUpdate() end
---@param bEnable boolean
function AKSCharacterBase:Debug_ShowSocketInfo(bEnable) end
---@param Enable boolean
function AKSCharacterBase:Debug_SetForceUpdateFootStep(Enable) end
---@param Rate int32
function AKSCharacterBase:Debug_SetBarItemHandRate(Rate) end
function AKSCharacterBase:Debug_MoveFallingReturnLocation() end
---@return boolean
function AKSCharacterBase:Debug_GetForceUpdateFootStep() end
---@param OutInfo FString
function AKSCharacterBase:Debug_GetEquipmentLanternData(OutInfo) end
---@return FString
function AKSCharacterBase:Debug_GetDebugInfo() end
---@return FString
function AKSCharacterBase:Debug_GetDebugFollowInfo() end
---@return int32
function AKSCharacterBase:Debug_GetBarItemHandRate() end
function AKSCharacterBase:CreateSoundComponent() end
---@param eSocket EDEBUFF_ATTACHSOCKET_TYPE
function AKSCharacterBase:ClearSocketBit(eSocket) end
function AKSCharacterBase:ClearRespawnEmotionAfterTalk() end
function AKSCharacterBase:ClearActionReferenceObject() end
---@param customFlipbookName FName
---@return boolean
function AKSCharacterBase:CheckFlipbookMaterialKey(customFlipbookName) end
---@param Type ETRANSPORTATION_TYPE
---@return boolean
function AKSCharacterBase:ChangeTransport(Type) end
---@param SwoonOffsetPos FVector
---@param SwoonAction EKSCharacterAction
---@param SwoonType ENpcSwoonType
---@return boolean
function AKSCharacterBase:ChangeSwoonState(SwoonOffsetPos, SwoonAction, SwoonType) end
---@param FlipbookName FName
---@param pMatInst UMaterialInstanceDynamic
function AKSCharacterBase:ChangeFlipbook(FlipbookName, pMatInst) end
---@param ResourceLabel FName
function AKSCharacterBase:ChangeCharacterModelOnly(ResourceLabel) end
function AKSCharacterBase:ChangeCanoeEffectOnStop() end
---@return boolean
function AKSCharacterBase:CanOpenAutoBalloon() end
---@param Offset float
function AKSCharacterBase:CanoeTimelineUpdate(Offset) end
function AKSCharacterBase:CanoeTimelineFinish() end
---@return boolean
function AKSCharacterBase:CallTalkEvent() end
---@param objList TArray<UObject>
function AKSCharacterBase:CallbackLoaded(objList) end
---@return FVector
function AKSCharacterBase:CalcLandLocation() end
---@return FVector
function AKSCharacterBase:CalcEmotionOffset() end
---@param pTargetParticle UParticleSystemComponent
---@param eType EDEBUFF_ATTACHSOCKET_TYPE
---@return boolean
function AKSCharacterBase:AttachDebuffEffect(pTargetParticle, eType) end
function AKSCharacterBase:AddRegistMusicRecordDeleagete() end
---@param inAddSpeed float
function AKSCharacterBase:AddMoveSpeed(inAddSpeed) end
---@param customFlipbookName FName
---@param pNewMaterial UMaterialInstanceDynamic
function AKSCharacterBase:AddFlipbookMaterial(customFlipbookName, pNewMaterial) end
---@return boolean
function AKSCharacterBase:ActionSearch() end


---@class AKSCharacterManager : AAcqManagerBase
---@field PlayerCharacter AKSCharacterBase
---@field PartyCharacterList TArray<AKSCharacterBase>
---@field UsePartyCharacterList TArray<AKSCharacterBase>
---@field PartyFollowOffsetBase TArray<int32>
---@field PartyFollowOffsetLadderUp TArray<int32>
---@field PartyFollowOffsetLadderDown TArray<int32>
---@field PartyFollowOffsetCanoe TArray<int32>
---@field PartyFollowOffset TArray<int32>
---@field BarCharacterList TArray<AKSCharacterBase>
---@field FollowCharacterList TArray<FFollowNpcObjectData>
---@field FollowNpcID TArray<int32>
---@field PartnerCharacterList TArray<AKSCharacterBase>
---@field PlayFCActionCharacter AKSCharacterBase
---@field PartyCharacterEnable boolean
---@field LastPartyMemberIndex int32
---@field LastPartyMember AKSCharacterBase
---@field FollowDistance float
---@field LocationTimeMax float
---@field LocationTimer float
---@field IsLeadCharacterEnable boolean
---@field IsLureCharacterEnable boolean
---@field IsHireCharacterEnable boolean
---@field IsPlacateCharacterEnable boolean
---@field BarCharacterEnable boolean
---@field OpenMyShipSail boolean
---@field m_CharacterList TMap<int32, AKSCharacterBase>
---@field m_PlayerLocationTrace UPlayerLocationTrace
---@field PartyFollowCharaList TArray<AKSCharacterBase>
---@field EpiloguePartyChara TArray<AKSCharacterBase>
---@field EpiloguePartyCharaId TArray<EPlayableCharacterID>
---@field LocationTimeMaxWork float
local AKSCharacterManager = {}

function AKSCharacterManager:UpdatePartyFollowOffset() end
---@param Character AKSCharacterBase
function AKSCharacterManager:UnregisterFromCharacterList(Character) end
function AKSCharacterManager:SetupPlayers() end
function AKSCharacterManager:SetupPartyCharacter() end
function AKSCharacterManager:SetupEpilogueParty() end
function AKSCharacterManager:SetSkipPartyCharacterEnableFromCallbackLoaded() end
---@param Enable boolean
function AKSCharacterManager:SetShowDebugInfo(Enable) end
---@param Scale float
---@param OffsetHeight float
---@param HouseOut boolean
---@param bNotPartyRefresh boolean
---@return boolean
function AKSCharacterManager:SetPartyHouseIn(Scale, OffsetHeight, HouseOut, bNotPartyRefresh) end
---@param Enable boolean
function AKSCharacterManager:SetPartyGravity(Enable) end
function AKSCharacterManager:SetPartyFollowOffset() end
---@param PartyIndex int32
---@param chara AKSCharacterBase
function AKSCharacterManager:SetPartyCharacterInstance(PartyIndex, chara) end
---@param inEnable boolean
function AKSCharacterManager:SetPartyCharacterEnable(inEnable) end
---@param partnerIndex int32
---@param chara AKSCharacterBase
function AKSCharacterManager:SetPartnerCharacterInstance(partnerIndex, chara) end
---@param bOpen boolean
function AKSCharacterManager:SetMyShipSail(bOpen) end
---@param followIndex int32
---@param chara AKSCharacterBase
---@param FCType MJFieldCommandType
function AKSCharacterManager:SetFollowCharacterInstance(followIndex, chara, FCType) end
---@param eMoveMode EKSCharacterMoveMode
---@param excludeDash boolean
function AKSCharacterManager:SetCharacterMoveMode_AlsoPlayer(eMoveMode, excludeDash) end
---@param eMoveMode EKSCharacterMoveMode
function AKSCharacterManager:SetCharacterMoveMode(eMoveMode) end
---@param Category int32
---@param Enable boolean
function AKSCharacterManager:SetCharacterEnable(Category, Enable) end
---@param inEnable boolean
function AKSCharacterManager:SetBarCharacterEnableAll(inEnable) end
---@param Index int32
---@param IsEnable boolean
---@return boolean
function AKSCharacterManager:SetBarCharacterEnable(Index, IsEnable) end
function AKSCharacterManager:SavePlayerPlacementFromTheater() end
function AKSCharacterManager:SavePlayerPlacementFromPChat() end
function AKSCharacterManager:RestorePlayerPlacement() end
---@param InLocation FVector
---@param InDir EKSCharacterDir
function AKSCharacterManager:ResetPlayerLocationHistory(InLocation, InDir) end
function AKSCharacterManager:ResetPartyCharacterForOutGame() end
function AKSCharacterManager:ResetPartyCharacter() end
function AKSCharacterManager:ResetNewFollowMove() end
function AKSCharacterManager:ResetFollowMasterCharacterID() end
function AKSCharacterManager:ResetFollowerLocation() end
function AKSCharacterManager:ResetCanoeEffect() end
---@param enemyResLabel FName
function AKSCharacterManager:RemoveTemporaryEnemyResourceLabel(enemyResLabel) end
function AKSCharacterManager:RemoveEpiloguePartyCharacter() end
---@param Character AKSCharacterBase
function AKSCharacterManager:RemoveCharacter(Character) end
---@return boolean
function AKSCharacterManager:RemoveBarCharacterAll() end
function AKSCharacterManager:RemoveAllTemporaryEnemyResourceLabel() end
---@param CharacterID EPlayableCharacterID
---@return boolean
function AKSCharacterManager:RemoveAllEquipment(CharacterID) end
---@param Character AKSCharacterBase
function AKSCharacterManager:RegisterToCharacterList(Character) end
---@param FCType MJFieldCommandType
---@return boolean
function AKSCharacterManager:RegisterNpcToFollowNPCList(FCType) end
function AKSCharacterManager:RefreshPartyLocation() end
function AKSCharacterManager:RefreshPartyFollowOffset() end
---@param bSkipLoadResource boolean
---@return boolean
function AKSCharacterManager:RefreshPartyCharacter(bSkipLoadResource) end
function AKSCharacterManager:RefreshPartyAfterChangeMember() end
---@return boolean
function AKSCharacterManager:RefreshPartnerCharacters() end
function AKSCharacterManager:RefreshHunterPartnerVisibility() end
function AKSCharacterManager:RefreshFollowFormation() end
---@return boolean
function AKSCharacterManager:RefreshFollowCharacters() end
---@param Target AKSCharacterBase
---@return boolean
function AKSCharacterManager:RefreshFollowCharacter(Target) end
---@param DeltaSeconds float
function AKSCharacterManager:PushPlayerLocationToHistory(DeltaSeconds) end
---@param CharaResourceLabels TArray<FName>
function AKSCharacterManager:LoadCharacterResource(CharaResourceLabels) end
---@return boolean
function AKSCharacterManager:IsEnabledCharacter_HunterPartner() end
---@return boolean
function AKSCharacterManager:InitPartyLocation() end
---@param MovePoint FVector
---@param Dir EKSCharacterDir
---@return boolean
function AKSCharacterManager:InitParams(MovePoint, Dir) end
---@param SaveData UMJSaveData
function AKSCharacterManager:InitAfterLoadSaveData(SaveData) end
---@return TArray<AKSCharacterBase>
function AKSCharacterManager:GetUsePartyCharacterList() end
---@return TArray<FName>
function AKSCharacterManager:GetTemporaryEnemyResourceLabelList() end
---@return int32
function AKSCharacterManager:GetRunMode() end
---@param LabelList TArray<FName>
---@param ContainNpcResource boolean
function AKSCharacterManager:GetResidentResourceLabelList(LabelList, ContainNpcResource) end
---@return AKSCharacterBase
function AKSCharacterManager:GetPlayerObject() end
---@param Index int32
---@param Location FVector
---@param Dir uint8
---@param Mode EKSCharacterMoveMode
---@param success boolean
function AKSCharacterManager:GetPlayerMoveHistoryParams(Index, Location, Dir, Mode, success) end
---@param Index int32
---@param out_Location FVector
---@param out_Dir EKSCharacterDir
---@param outMoveMode EKSCharacterMoveMode
function AKSCharacterManager:GetPlayerLocationHistory(Index, out_Location, out_Dir, outMoveMode) end
---@return LEVEL_AREA_TYPE
function AKSCharacterManager:GetPlayerCurrentArea() end
---@return AKSCharacterBase
function AKSCharacterManager:GetPlacateFollowNPC() end
---@return TArray<AKSCharacterBase>
function AKSCharacterManager:GetPartyCharacterList() end
---@param PartyIndex int32
---@return AKSCharacterBase
function AKSCharacterManager:GetPartyCharacterInstance(PartyIndex) end
---@param inIndex int32
---@return AKSCharacterBase
function AKSCharacterManager:GetPartyCharacterIndex(inIndex) end
---@return boolean
function AKSCharacterManager:GetPartyCharacterEnable() end
---@param CharacterID EPlayableCharacterID
---@return AKSCharacterBase
function AKSCharacterManager:GetPartyCharacter(CharacterID) end
---@param partnerIndex int32
---@return AKSCharacterBase
function AKSCharacterManager:GetPartnerCharacterInstance(partnerIndex) end
---@param Index int32
---@return AKSCharacterBase
function AKSCharacterManager:GetPartnerCharacter(Index) end
---@return boolean
function AKSCharacterManager:GetMyShipSail() end
---@return AKSCharacterBase
function AKSCharacterManager:GetLureFollowNPC() end
---@param inOffset int32
---@return int32
function AKSCharacterManager:GetLocationIndex(inOffset) end
---@return AKSCharacterBase
function AKSCharacterManager:GetLeadFollowNPC() end
---@return AKSCharacterBase
function AKSCharacterManager:GetLastPartyMember() end
---@return AKSCharacterBase
function AKSCharacterManager:GetHireFollowNPC() end
---@return int32
function AKSCharacterManager:GetFollowNpcNum() end
---@param outFollowIds TArray<int32>
---@param outSubIds TArray<int32>
function AKSCharacterManager:GetFollowNpcIdList(outFollowIds, outSubIds) end
---@param Type MJFieldCommandType
---@return AKSCharacterBase
function AKSCharacterManager:GetFollowMember(Type) end
---@return int32
function AKSCharacterManager:GetFollowMasterNum() end
---@param Index int32
---@return EPlayableCharacterID
function AKSCharacterManager:GetFollowMasterCharacterID(Index) end
---@param followIndex int32
---@return AKSCharacterBase
function AKSCharacterManager:GetFollowCharacterInstance(followIndex) end
---@return EKSCharacterMoveMode
function AKSCharacterManager:GetCharacterMoveMode() end
---@param inIndex int32
---@return AKSCharacterBase
function AKSCharacterManager:GetBarCharacterIndex(inIndex) end
---@param CharacterID int32
function AKSCharacterManager:FullRecoveryCharacter(CharacterID) end
function AKSCharacterManager:FullRecoveryAllPartyMember() end
---@param CharacterID EPlayableCharacterID
---@param ItemLabel FName
---@return boolean
function AKSCharacterManager:EquipItem(CharacterID, ItemLabel) end
---@param noticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function AKSCharacterManager:DelegateForShipMovingSE(noticeType, Args) end
---@param bShow boolean
function AKSCharacterManager:Debug_ShowFollowInfo(bShow) end
function AKSCharacterManager:Debug_SetTempDisableFallPrevention() end
---@param Count int32
function AKSCharacterManager:Debug_SetPushPlayerPosCountPerSec(Count) end
---@param Enable boolean
function AKSCharacterManager:Debug_SetPartyLoad(Enable) end
---@param fallLimit int32
function AKSCharacterManager:Debug_SetFallLimit(fallLimit) end
---@param bEnable boolean
function AKSCharacterManager:Debug_SetEnableNewFollow(bEnable) end
---@param bEnable boolean
function AKSCharacterManager:Debug_SetEnableFallPrevention(bEnable) end
function AKSCharacterManager:Debug_OutputPlayerLocationHistory() end
---@return boolean
function AKSCharacterManager:Debug_IsEnableFallPrevention() end
---@return int32
function AKSCharacterManager:Debug_GetPushPlayerPosCountPerSec() end
---@return boolean
function AKSCharacterManager:Debug_GetPartyLoad() end
---@return int32
function AKSCharacterManager:Debug_GetFallLimit() end
---@return boolean
function AKSCharacterManager:Debug_GetEnableNewFollow() end
function AKSCharacterManager:Debug_DrawFollowFormation() end
---@return boolean
function AKSCharacterManager:CheckPartyCharaLadderAnimation() end
---@return boolean
function AKSCharacterManager:BeginPlayers() end
---@param enemyResLabel FName
function AKSCharacterManager:AddTemporaryEnemyResourceLabel(enemyResLabel) end
---@param PlayerID EPlayableCharacterID
---@param Location FVector
---@param Dir EKSCharacterDir
---@return AKSCharacterBase
function AKSCharacterManager:AddPlayerCharacter(PlayerID, Location, Dir) end
---@param Follow AKSCharacterBase
---@param PartyIndex int32
---@return AKSCharacterBase
function AKSCharacterManager:AddPartyCharacter(Follow, PartyIndex) end
---@param Follow AKSCharacterBase
---@return AKSCharacterBase
function AKSCharacterManager:AddPartnerCharacter(Follow) end
---@param CharacterID EPlayableCharacterID
function AKSCharacterManager:AddFollowMasterCharacterID(CharacterID) end
---@param ActionLabel FName
---@param Location FVector
---@param Dir EKSCharacterDir
---@return AKSCharacterBase
function AKSCharacterManager:AddFieldCharacter(ActionLabel, Location, Dir) end
---@param ActionLabel FName
---@param Location FVector
---@param Dir EKSCharacterDir
---@return AKSCharacterBase
function AKSCharacterManager:AddEventCharacter(ActionLabel, Location, Dir) end
---@param PlayerCharaId EPlayableCharacterID
---@return AKSCharacterBase
function AKSCharacterManager:AddEpiloguePartyCharacter(PlayerCharaId) end
---@param ActionLabel FName
---@param Location FVector
---@param Dir EKSCharacterDir
---@param charIndex int32
---@return AKSCharacterBase
function AKSCharacterManager:AddBarCharacter(ActionLabel, Location, Dir, charIndex) end


---@class AKSDebugMenuManager : AActor
---@field DebugMenuState EDEBUGMENU_STATE
---@field CurrentWidget UUserWidget
local AKSDebugMenuManager = {}

---@return boolean
function AKSDebugMenuManager:ToggleFCViewer() end
---@param ResourceName FString
---@param targetLang int32
---@param targetPlatform int32
---@param fileName_TutorialType FString
---@param fileName_ImageNo FString
---@param fileName_Character FString
function AKSDebugMenuManager:StartTutorialAutoCapture(ResourceName, targetLang, targetPlatform, fileName_TutorialType, fileName_ImageNo, fileName_Character) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AKSDebugMenuManager:ReLocateNPC(eNoticeType, NoticeArgs) end
---@param IsOpen boolean
---@return boolean
function AKSDebugMenuManager:OpenFCViewer(IsOpen) end
---@return AKSDebugMenuManager
function AKSDebugMenuManager:GetInstance() end
function AKSDebugMenuManager:CloseMenu() end


---@class AKSEffectManager : AAcqManagerBase
---@field m_EffectComponentList TArray<FEffectComponentList>
---@field m_IsEffectManagerReady boolean
local AKSEffectManager = {}

---@param EFFECT UParticleSystemComponent
function AKSEffectManager:SuspendEffect(EFFECT) end
---@param EffectName FName
---@param TargetActor AActor
---@param Location FVector
---@param Rotate FRotator
---@param ForceSpawn boolean
---@param EFFECT UParticleSystemComponent
---@param success boolean
---@param LoopEffect boolean
---@param Scale FVector
function AKSEffectManager:SpawnEffect(EffectName, TargetActor, Location, Rotate, ForceSpawn, EFFECT, success, LoopEffect, Scale) end
---@param Flag boolean
function AKSEffectManager:SetEffectSetupFlag(Flag) end
---@param EffectList TArray<FName>
function AKSEffectManager:SetEffectList(EffectList) end
---@param isDebug boolean
function AKSEffectManager:SetDebugMode(isDebug) end
---@param EFFECT UParticleSystemComponent
function AKSEffectManager:ResumeEffect(EFFECT) end
---@return boolean
function AKSEffectManager:IsEffectManagerReady() end
---@return boolean
function AKSEffectManager:IsDebugMode() end
---@return uint8
function AKSEffectManager:GetDebugAddCnt() end
---@param EFFECT UParticleSystemComponent
function AKSEffectManager:DestroyEffect(EFFECT) end
---@param EffectLabel FName
---@param spawnCnt uint8
function AKSEffectManager:DebugSpawnEffect(EffectLabel, spawnCnt) end
---@param Component UParticleSystemComponent
function AKSEffectManager:CallbackSystemFinished(Component) end
---@param Name FName
---@param Float float
---@param VectorA FVector
---@param VectorB FVector
function AKSEffectManager:CallbackParticleSpawn(Name, Float, VectorA, VectorB) end


---@class AKSFlipbookManager : AAcqManagerBase
---@field DefaultMaterial UMaterialInterface
local AKSFlipbookManager = {}

---@param CharacterName FName
---@param ActionType EKSCharacterAction
---@param Dir EKSCharacterDir
---@param Data FKSSpriteData
---@return boolean
function AKSFlipbookManager:GetSpriteDataFromActionLabel(CharacterName, ActionType, Dir, Data) end
---@param SpriteName FName
---@param spriteData FKSSpriteData
---@return boolean
function AKSFlipbookManager:GetSpriteData(SpriteName, spriteData) end
---@param SpriteName FName
---@param spriteData FKSSpriteData
---@return boolean
function AKSFlipbookManager:GetMissionSpriteData(SpriteName, spriteData) end
---@param FlipbookName FName
---@param flipbookData FKSUIFlipbookData
---@return boolean
function AKSFlipbookManager:GetMissionFlipbookData(FlipbookName, flipbookData) end
---@param FlipbookName FName
---@param resetArray boolean
---@param outTexAssetPtrs TArray<TSoftObjectPtr<UTexture2D>>
function AKSFlipbookManager:GetFlipbookTexAssetPtrs(FlipbookName, resetArray, outTexAssetPtrs) end
---@param FlipbookName FName
---@param flipbookData FKSFlipbookData
---@return boolean
function AKSFlipbookManager:GetFlipbookData(FlipbookName, flipbookData) end
---@return UMaterialInterface
function AKSFlipbookManager:GetDefaultMaterial() end
---@param CharacterName FName
---@param ActionType EKSCharacterAction
---@param Dir EKSCharacterDir
---@param outArray TArray<TSoftObjectPtr<UTexture2D>>
---@return boolean
function AKSFlipbookManager:GetCharacterTextureAndAddtionalFirstFrame_SoftObjectPtr(CharacterName, ActionType, Dir, outArray) end
---@param CharacterName FName
---@param outTexAssetPtrs TArray<TSoftObjectPtr<UTexture2D>>
function AKSFlipbookManager:GetCharacterTexAssetPtrs(CharacterName, outTexAssetPtrs) end
---@param CharacterName FName
---@param outMatAssetPtrs TArray<TSoftObjectPtr<UMaterialInterface>>
function AKSFlipbookManager:GetCharacterMaterialAssetPtrs(CharacterName, outMatAssetPtrs) end
---@param CharacterName FName
---@param FlipbookNames TArray<FName>
---@return boolean
function AKSFlipbookManager:GetCharacterFlipbookNames(CharacterName, FlipbookNames) end
---@param CharacterName FName
---@param ActionType EKSCharacterAction
---@param Dir EKSCharacterDir
---@param FlipbookName FName
---@return boolean
function AKSFlipbookManager:GetCharacterFlipbookName(CharacterName, ActionType, Dir, FlipbookName) end
---@param CharacterName FName
---@param CharacterData FKSCharaFlipbook
---@return boolean
function AKSFlipbookManager:GetCharacterData(CharacterName, CharacterData) end
---@param CharacterName FName
---@param ActionType EKSCharacterAction
---@param Dir EKSCharacterDir
---@param DataList TMap<FName, FMJSpriteSocketData>
---@param bIsReverseSocket boolean
---@return boolean
function AKSFlipbookManager:GetAllSpriteDataFromActionLabel(CharacterName, ActionType, Dir, DataList, bIsReverseSocket) end
---@param Outer UObject
---@return UKSPaperFlipbook
function AKSFlipbookManager:CreateFlipbook(Outer) end
---@param FlipbookName FName
---@return boolean
function AKSFlipbookManager:ContainsFlipbookData(FlipbookName) end
---@param FlipbookName FName
---@param PaperFlipbook UKSPaperFlipbook
---@param SetMaterial UMaterialInstanceDynamic
---@return boolean
function AKSFlipbookManager:ChangeMissionFlipbook(FlipbookName, PaperFlipbook, SetMaterial) end
---@param FlipbookName FName
---@param PaperFlipbook UKSPaperFlipbook
---@param SetMaterial UMaterialInstanceDynamic
---@param bReverseSprite boolean
---@return boolean
function AKSFlipbookManager:ChangeFlipbook(FlipbookName, PaperFlipbook, SetMaterial, bReverseSprite) end


---@class AKSGCManager : AAcqManagerBase
local AKSGCManager = {}

---@param gcType EKSGC_TYPE
function AKSGCManager:SetKSGCTimer(gcType) end
function AKSGCManager:ResetKSGCTimer() end


---@class AKSGameMode : AGameMode
---@field LoadingWidget UKSLoadingWidget
---@field AutoSavingWidget UKSAutoSavingWidget
local AKSGameMode = {}

---@param IsEnable boolean
function AKSGameMode:SetTheaterEndMainMenu(IsEnable) end
---@param pauseType EPauseType
---@param IsPaused boolean
function AKSGameMode:SetPaused(pauseType, IsPaused) end
---@param HouseEnter AActor
function AKSGameMode:SetHouseEnterActor(HouseEnter) end
---@param inScale float
function AKSGameMode:SetHouseCharacterScale(inScale) end
---@param bDirectLoadGame boolean
function AKSGameMode:SetDirectLoadGame(bDirectLoadGame) end
---@param Message FString
function AKSGameMode:SetDebugMessage(Message) end
---@param bVisible boolean
---@param pageIndex int32
function AKSGameMode:SetDebugInfoVisibility(bVisible, pageIndex) end
---@param bVisible boolean
function AKSGameMode:SetDebugInfoStoryMemoryVisibility(bVisible) end
---@param bVisible boolean
function AKSGameMode:SetDebugInfoEventVisibility(bVisible) end
---@param Val float
function AKSGameMode:SetBrightnessOffset_ForSwitch(Val) end
---@param inEnable boolean
function AKSGameMode:SetAutoSaveEnable(inEnable) end
---@param EventData FEventListData
---@param memoryIndex int32
---@return FString
function AKSGameMode:ParseStoryMemoryData(EventData, memoryIndex) end
function AKSGameMode:KSToggleEncount() end
---@param Flag boolean
function AKSGameMode:KSShowMultilingualGuide(Flag) end
---@param Encount boolean
function AKSGameMode:KSSetEncount(Encount) end
---@param BitIndex int32
---@param Flag boolean
function AKSGameMode:KSSetBitFlag(BitIndex, Flag) end
---@param StartIndex int32
---@param Num int32
function AKSGameMode:KSDrawBitFlag(StartIndex, Num) end
---@return boolean
function AKSGameMode:IsPaused() end
---@return boolean
function AKSGameMode:GetTheaterEndMainMenu() end
---@return EPauseType
function AKSGameMode:GetPauseFlags() end
---@param pauseType EPauseType
---@return boolean
function AKSGameMode:GetPaused(pauseType) end
---@return AActor
function AKSGameMode:GetHouseEnterActor() end
---@return float
function AKSGameMode:GetHouseCharacterScale() end
---@return boolean
function AKSGameMode:GetDirectLoadGame() end
---@return float
function AKSGameMode:GetBrightnessOffset_ForSwitch() end
---@return boolean
function AKSGameMode:GetAutoSaveEnable() end
---@param page EGameModeDebugPage
---@param Text FString
function AKSGameMode:Debug_SetInfoText(page, Text) end
---@param fixMoveMode EDebugFixMoveMode
function AKSGameMode:Debug_SetFixMoveMode(fixMoveMode) end
---@param bCompleted boolean
function AKSGameMode:Debug_SetCompletedGamePreparation(bCompleted) end
---@param bAutoPlay boolean
function AKSGameMode:Debug_SetAutoPlaying(bAutoPlay) end
function AKSGameMode:Debug_ResetEncountWipeFlag() end
---@return boolean
function AKSGameMode:Debug_IsCompletedGamePreparation() end
---@return boolean
function AKSGameMode:Debug_IsAutoPlaying() end
---@param textList TArray<FString>
---@param memoryIndex int32
function AKSGameMode:Debug_GetStoryMemoryData(textList, memoryIndex) end
---@return EDebugFixMoveMode
function AKSGameMode:Debug_GetFixMoveMode() end
---@param Text FString
function AKSGameMode:Debug_GetEventText(Text) end
---@param outScenarioName FString
---@return boolean
function AKSGameMode:Debug_GetAutoPlayingArgument(outScenarioName) end
---@return boolean
function AKSGameMode:CanLoadDisabledSaveData() end


---@class AKSManagerDirector : AActor
---@field BalloonBundleWidget UBalloonBundleWidgetBase
local AKSManagerDirector = {}

---@return AKSManagerDirector
function AKSManagerDirector:GetInstance() end
---@return UBalloonBundleWidgetBase
function AKSManagerDirector:GetBalloonBundleWidget() end


---@class AKSObjectBase : AActor
---@field IsMoveEnd boolean
---@field Dir EKSCharacterDir
---@field LoadedMeshes TArray<UStaticMesh>
---@field HouseChangeVisibleFlag boolean
---@field m_ObjType EOBJ_TYPE
---@field m_PlacementLabel FName
---@field m_SpawnPos FVector
---@field m_ObjUniqueID int32
local AKSObjectBase = {}

---@param PlacementLabel FName
---@param ObjType EOBJ_TYPE
---@param spawnPos FVector
function AKSObjectBase:SetupObjectAfterSpawn(PlacementLabel, ObjType, spawnPos) end
function AKSObjectBase:SetupAfterLoad() end
---@param UniqueId int32
function AKSObjectBase:SetObjectUniqueID(UniqueId) end
---@param Enable boolean
function AKSObjectBase:SetObjectEnable(Enable) end
function AKSObjectBase:SetMoveEnd() end
---@param isVisble boolean
function AKSObjectBase:SetHouseChangeVisibleFlag(isVisble) end
---@param eDir EKSCharacterDir
function AKSObjectBase:SetDir(eDir) end
---@param Location FVector
---@param Sec float
---@return boolean
function AKSObjectBase:Move(Location, Sec) end
---@return boolean
function AKSObjectBase:IsOpenedTreasureBox() end
---@return FName
function AKSObjectBase:GetPlacementLabel() end
---@return FName
function AKSObjectBase:GetOpenText() end
---@return int32
function AKSObjectBase:GetObjectUniqueID() end
---@return EOBJ_TYPE
function AKSObjectBase:GetObjectType() end
---@return boolean
function AKSObjectBase:GetHouseChangeVisibleFlag() end
---@param objList TArray<UObject>
function AKSObjectBase:CbLoadedAssets(objList) end
function AKSObjectBase:ActionEnter_Implementation() end
function AKSObjectBase:ActionEnter() end


---@class AKSPlayerController : APlayerController
---@field InputMode EKSInputMode
---@field IsPlayerCharacterInput boolean
---@field InputAxisX float
---@field InputAxisY float
---@field AxisX float
---@field AxisY float
---@field RAxisX float
---@field RAxisY float
---@field RSholderHold boolean
---@field FrameInputFlag boolean
---@field SwitchMode FString
---@field m_IsGamePadAttached boolean
---@field UseInputType EKSUseInputType
---@field UseControllerInputType EControllerInputType
---@field bChangeUseInputType boolean
---@field InputNotificationList TArray<AActor>
---@field EnableMouseMove boolean
---@field m_IsSystemUiOverlaid boolean
local AKSPlayerController = {}

---@param Enable boolean
function AKSPlayerController:SetPlayerCharacterInput(Enable) end
---@param Mode EKSInputMode
function AKSPlayerController:SetKSInputMode(Mode) end
function AKSPlayerController:SetDefaultControllerKeyConfig() end
---@param Elem EKSKeyConfigElement
---@param Key FKey
---@return boolean
function AKSPlayerController:SetConfigKey(Elem, Key) end
---@param Type EKSKeyConfigType
function AKSPlayerController:ResetToDefaultKeyConfig(Type) end
function AKSPlayerController:ResetKeyRepeat() end
function AKSPlayerController:ResetConfigKeyList() end
function AKSPlayerController:ReflectSystemDataKeyConfig() end
function AKSPlayerController:ReflectKeyboardLayoutType() end
---@param MappingData FKSKeyConfigMappingDatum
function AKSPlayerController:RebuildKeyMappings(MappingData) end
---@param Elem EKSKeyConfigElement
function AKSPlayerController:RebuildInputKeyMappingsByKeyConfigElement(Elem) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AKSPlayerController:OnOptionApplyComplete(eNoticeType, NoticeArgs) end
---@param Axis float
---@return boolean
function AKSPlayerController:MouseEventY(Axis) end
---@param Axis float
---@return boolean
function AKSPlayerController:MouseEventX(Axis) end
---@param Elem EKSKeyConfigElement
---@param Key FKey
---@return boolean
function AKSPlayerController:IsSetConfigKey(Elem, Key) end
---@return boolean
function AKSPlayerController:IsPressedEventSkip() end
---@return boolean
function AKSPlayerController:IsPressedEventDoubleSpeed() end
---@param Elem EKSKeyConfigElement
---@param Key FKey
---@return boolean
function AKSPlayerController:IsKeyConfigCancelKey(Elem, Key) end
---@return boolean
function AKSPlayerController:IsChangeUseInputType() end
function AKSPlayerController:InitializeConfigKeyList() end
function AKSPlayerController:Initialize() end
---@return EKSUseInputType
function AKSPlayerController:GetUseInputType() end
---@param Elem EKSKeyConfigElement
---@return int32
function AKSPlayerController:GetTypeHashByKeyConfigElement(Elem) end
---@return boolean
function AKSPlayerController:GetRSholderHold() end
---@return FVector2D
function AKSPlayerController:GetRAxis() end
---@return boolean
function AKSPlayerController:GetPlayerCharacterInput() end
---@return FVector2D
function AKSPlayerController:GetLAxis() end
---@return EKSInputMode
function AKSPlayerController:GetKSInputMode() end
---@param Elem EKSKeyConfigElement
---@return FName
function AKSPlayerController:GetKeyNameByKeyConfigElement(Elem) end
---@param Elem EKSKeyConfigElement
---@return FKey
function AKSPlayerController:GetKeyByKeyConfigElement(Elem) end
---@return boolean
function AKSPlayerController:GetGamePadAttached() end
---@return boolean
function AKSPlayerController:GetFrameInputFlag() end
---@param XInputKey FKey
---@param DirectInputKey FKey
function AKSPlayerController:GetDirectInputKey(XInputKey, DirectInputKey) end
---@param Elem EKSKeyConfigElement
---@return FKey
function AKSPlayerController:GetDefaultKeyConfigElement(Elem) end
---@param inputType EKSUseInputType
---@param isFixed boolean
function AKSPlayerController:DebugSetFixedInputMode(inputType, isFixed) end
function AKSPlayerController:DebugRemoveOldKeyConfig() end
---@param Enable boolean
function AKSPlayerController:DebugEnableMouseInput(Enable) end
---@param ChangeOldSetting boolean
function AKSPlayerController:DebugChangeOldKeyConfigList(ChangeOldSetting) end
function AKSPlayerController:DebugAddOldKeyConfig() end
function AKSPlayerController:CleanMoveParam() end
---@return boolean
function AKSPlayerController:CheckInputType() end
function AKSPlayerController:ChangeDefaultKeyboardConfigKey() end
function AKSPlayerController:ApplyDefaultKeyConfigToSystemData() end
function AKSPlayerController:ApplyDefaultKeyConfig() end
---@param TargetActor AActor
function AKSPlayerController:AddInputNotificationActor(TargetActor) end


---@class AKSSaveDataManager : AAcqManagerBase
---@field SaveGame UMJSaveData
---@field saveSystem UKSSaveSystem
---@field m_TemporaryBackpackItemList TMap<int32, int32>
---@field m_IsCreatedsystemSaveData boolean
local AKSSaveDataManager = {}

---@return boolean
function AKSSaveDataManager:ValidateAtlantisPartySet() end
---@param slotIdx EKSSaveSlotName
function AKSSaveDataManager:UpdateSlotData(slotIdx) end
---@param ItemLabel FName
---@param Num int32
---@return boolean
function AKSSaveDataManager:SubItemFromBackpack(ItemLabel, Num) end
---@param AutoSavedDelegate FStartAutoSaveAutoSavedDelegate
---@return boolean
function AKSSaveDataManager:StartAutoSave(AutoSavedDelegate) end
---@param CharacterID EPlayableCharacterID
---@return boolean
function AKSSaveDataManager:SetupReminiscenceParty(CharacterID) end
---@param Party1 TArray<int32>
---@param Party2 TArray<int32>
---@return boolean
function AKSSaveDataManager:SetupLastDungeonParty(Party1, Party2) end
---@param Party1 TArray<int32>
---@param Party2 TArray<int32>
---@return boolean
function AKSSaveDataManager:SetupLastDungeonMode(Party1, Party2) end
---@param fixedCharaList TArray<EPlayableCharacterID>
---@return boolean
function AKSSaveDataManager:SetupFixedParty(fixedCharaList) end
---@param saveBackpackItemList TArray<FSaveBackPackItem>
function AKSSaveDataManager:SetupBackpackItemList(saveBackpackItemList) end
---@param PartySetID EKSPartySet
---@param mainMember TArray<int32>
---@param subMember TArray<int32>
function AKSSaveDataManager:SetupAtlantisPartySet(PartySetID, mainMember, subMember) end
---@param IsNewGame boolean
function AKSSaveDataManager:SetNewGame(IsNewGame) end
---@param slotIdx EKSSaveSlotName
function AKSSaveDataManager:SetLastAccessSlotIndex(slotIdx) end
---@param IsCreatedsystemSaveData boolean
function AKSSaveDataManager:SetIsCreatedsystemSaveData(IsCreatedsystemSaveData) end
---@param SaveData UMJSaveData
function AKSSaveDataManager:SetGameSaveData_Native(SaveData) end
---@param SaveData UMJSaveData
function AKSSaveDataManager:SetGameSaveData_BP(SaveData) end
---@param SaveData UMJSaveData
function AKSSaveDataManager:SetGameSaveData(SaveData) end
---@param Index int32
---@param Flag boolean
function AKSSaveDataManager:SetEventPlayedFlag(Index, Flag) end
---@param Index int32
---@param Flag boolean
function AKSSaveDataManager:SetEventFlag(Index, Flag) end
---@param Index int32
---@param Value int32
function AKSSaveDataManager:SetEventCounter(Index, Value) end
---@param SegmentID EEndRollSegmentSet
function AKSSaveDataManager:SetEndrollSegmentBattleReplay(SegmentID) end
function AKSSaveDataManager:SetBattleSpeed() end
---@param ItemId int32
---@param ItemNum int32
function AKSSaveDataManager:SetBackpackItem(ItemId, ItemNum) end
---@param PlayerLocation FVector
function AKSSaveDataManager:SetAutoSavePlayerLocation(PlayerLocation) end
---@param Enable boolean
function AKSSaveDataManager:SetAutoSaveEnable(Enable) end
---@param IsAutoSaved boolean
function AKSSaveDataManager:SetAutoSaved(IsAutoSaved) end
---@return boolean
function AKSSaveDataManager:ResumeNormalPartySet() end
---@return boolean
function AKSSaveDataManager:RestoreParty() end
---@return boolean
function AKSSaveDataManager:ResetPartySet() end
function AKSSaveDataManager:ResetBattleSpeed() end
function AKSSaveDataManager:RefreshBackpackSaveData() end
---@return boolean
function AKSSaveDataManager:PrepareAtlantisPartySet() end
---@param SlotName FString
---@param UserIndex int32
---@param IsSuccesss boolean
function AKSSaveDataManager:OnFinishAutoSaveSystemData(SlotName, UserIndex, IsSuccesss) end
---@param SlotName FString
---@param UserIndex int32
---@param IsSuccesss boolean
function AKSSaveDataManager:OnFinishAutoSaveGameData(SlotName, UserIndex, IsSuccesss) end
function AKSSaveDataManager:OnEndAutoSave() end
---@return boolean
function AKSSaveDataManager:MergePartyData() end
---@param returnCode EBPIsValidReturnCode::Type
---@param Index int32
---@return boolean
function AKSSaveDataManager:IsValidEventFlag(returnCode, Index) end
---@return boolean
function AKSSaveDataManager:IsNewGame() end
---@return boolean
function AKSSaveDataManager:IsAutoSaved() end
---@return boolean
function AKSSaveDataManager:InitSystemData() end
---@param CharacterID EPlayableCharacterID
---@return boolean
function AKSSaveDataManager:InitPartyData(CharacterID) end
---@return boolean
function AKSSaveDataManager:InitGameData() end
---@return UKSSaveSystem
function AKSSaveDataManager:GetSysSaveData() end
---@param BufferSize int32
---@param outBackPackitemsWithBuffer TArray<FSaveBackPackItem>
function AKSSaveDataManager:GetSaveBackpackDataWithBuffer(BufferSize, outBackPackitemsWithBuffer) end
---@param outBackPackItems TArray<FSaveBackPackItem>
function AKSSaveDataManager:GetSaveBackpackData(outBackPackItems) end
---@return EKSSaveSlotName
function AKSSaveDataManager:GetLastAccessSlotIndex() end
---@return AKSSaveDataManager
function AKSSaveDataManager:GetInstance() end
---@return UMJSaveData
function AKSSaveDataManager:GetGameSaveData() end
---@param Index int32
---@return boolean
function AKSSaveDataManager:GetEventPlayedFlag(Index) end
---@param FlagLabel FName
---@return boolean
function AKSSaveDataManager:GetEventFlagByName(FlagLabel) end
---@param Index int32
---@return boolean
function AKSSaveDataManager:GetEventFlag(Index) end
---@param Index int32
---@return int32
function AKSSaveDataManager:GetEventCounter(Index) end
---@return EKSPartySet
function AKSSaveDataManager:GetCurrentPartySet() end
---@return float
function AKSSaveDataManager:GetCalcBaseBattleSpeed() end
---@param ItemNum int32
---@param ItemId int32
---@return boolean
function AKSSaveDataManager:GetBackpackItem(ItemNum, ItemId) end
---@return FVector
function AKSSaveDataManager:GetAutoSavePlayerLocation() end
---@return boolean
function AKSSaveDataManager:FinishLastDungeonMode() end
---@return boolean
function AKSSaveDataManager:FinishFixedParty() end
---@param ItemLabel FName
---@param isFind boolean
---@param Num int32
function AKSSaveDataManager:FindItemFromBackpack(ItemLabel, isFind, Num) end
function AKSSaveDataManager:Debug_SetupAtlantisPartySetRandom() end
function AKSSaveDataManager:Debug_SetRandomParticipationOrder() end
function AKSSaveDataManager:Debug_ResumeNormalPartySet() end
function AKSSaveDataManager:Debug_PrintItemAcquisitionHistory() end
function AKSSaveDataManager:Debug_ClearParticipationOrder() end
---@param Index int32
---@return boolean
function AKSSaveDataManager:CheckEventFlag(Index) end
---@param PartySetID EKSPartySet
---@return boolean
function AKSSaveDataManager:ChangePartySet(PartySetID) end
function AKSSaveDataManager:ChangeBattleSpeed() end
---@param ItemLabel FName
---@param Num int32
---@return boolean
function AKSSaveDataManager:AddItemToBackpack(ItemLabel, Num) end
---@param itemAndNum TMap<FName, int32>
---@return boolean
function AKSSaveDataManager:AddItemsToBackpack(itemAndNum) end
---@param Index int32
---@param Value int32
function AKSSaveDataManager:AddEventCounter(Index, Value) end


---@class AKSSimpleLevelLoader : AActor
local AKSSimpleLevelLoader = {}

function AKSSimpleLevelLoader:StreamingLevelLoaded() end
---@param WorldContextObject UObject
---@param levelName FString
---@param Location FVector
---@param Rotation FRotator
---@param bOutSuccess boolean
---@return ULevelStreamingDynamic
function AKSSimpleLevelLoader:SimpleLoadKSLevel(WorldContextObject, levelName, Location, Rotation, bOutSuccess) end
---@param Stream ULevelStreamingDynamic
function AKSSimpleLevelLoader:SetStreaming(Stream) end
---@return boolean
function AKSSimpleLevelLoader:IsLoaded() end
---@return AKSSimpleLevelLoader
function AKSSimpleLevelLoader:GetInstance() end


---@class AKSTextManager : AAcqManagerBase
---@field IsLoaded boolean
---@field IsLoadedVoice boolean
---@field GameText TSoftObjectPtr<UDataTable>
---@field TalkText TSoftObjectPtr<UDataTable>
---@field TalkVoice TSoftObjectPtr<UDataTable>
---@field TextCharaInfo TSoftObjectPtr<UDataTable>
---@field TextItemInfo TSoftObjectPtr<UDataTable>
---@field TextOperationComponent UTextOperationComponent
local AKSTextManager = {}

---@param TargetLabel FName
function AKSTextManager:SetLanguageConditonParam_Talk(TargetLabel) end
---@param IsSolo boolean
function AKSTextManager:SetLanguageConditonParam_Solo(IsSolo) end
---@param ItemLabel FName
---@param Count int32
function AKSTextManager:SetConditonParam_Item(ItemLabel, Count) end
---@param eLang EKSLanguage
---@return boolean
function AKSTextManager:LoadTextVoice(eLang) end
---@param eLang EKSLanguage
---@return boolean
function AKSTextManager:LoadText(eLang) end
---@param InputStr FString
---@return FString
function AKSTextManager:ExecMacroOperation(InputStr) end


---@class AKSTriggerBase : ATriggerBase
---@field m_eTriggerType EKSTriggerType
---@field m_nProcessOrder int32
local AKSTriggerBase = {}

---@param DeltaSeconds float
function AKSTriggerBase:Update(DeltaSeconds) end
---@param Color FLinearColor
function AKSTriggerBase:SetDebugTextColor(Color) end
---@param debugStr FString
function AKSTriggerBase:SetDebugText(debugStr) end
function AKSTriggerBase:Reset() end
function AKSTriggerBase:Initialize() end
---@return EKSTriggerType
function AKSTriggerBase:GetTriggerType() end
---@return boolean
function AKSTriggerBase:CanActivateTrigger() end


---@class AKSUIManager : AAcqManagerBase
---@field m_WidgetTemporalyHiddenComponent UWidgetTemporaryHiddenComponent
---@field ActiveStackUI TArray<UUserWidget>
---@field ClosingStackUI TArray<UUserWidget>
---@field m_WidgetTable TMap<FName, UKSUserWidgetBase>
---@field m_TypeToName TMap<EKSUIKind, FName>
---@field m_LoadHandles TMap<EWIDGET_CREATE_PHASE, ULoadAssetHandle>
---@field m_LetterWidget ULetterBoxBase
local AKSUIManager = {}

function AKSUIManager:UnLockInputMode() end
---@param letterWidget ULetterBoxBase
function AKSUIManager:SetLetterWidget(letterWidget) end
---@param IsOpen boolean
function AKSUIManager:SetHelpOpen(IsOpen) end
function AKSUIManager:ResetHiddenFlag() end
function AKSUIManager:ResetFromTitle() end
---@param Kind EKSUIPartsKind
function AKSUIManager:RemoveUIPartsList(Kind) end
---@param Kind EKSUIKind
function AKSUIManager:RemoveList(Kind) end
function AKSUIManager:RefreshWidget() end
function AKSUIManager:RefreshTextLanguageAllWidget() end
function AKSUIManager:RefreshTextLanguage() end
---@param PushUI UUserWidget
---@return int32
function AKSUIManager:PushActive(PushUI) end
---@param UI UUserWidget
---@param IsPop boolean
---@param PopUI UUserWidget
function AKSUIManager:PopActiveUIWith(UI, IsPop, PopUI) end
---@param PopUI UUserWidget
function AKSUIManager:PopActive(PopUI) end
---@param PushUI UUserWidget
---@param UseStack boolean
---@return int32
function AKSUIManager:OpenRequest(PushUI, UseStack) end
---@param InParam FKSUICommonDialogParam
---@return UKSUserWidgetBase
function AKSUIManager:OpenDialog(InParam) end
---@param Kind EKSUIKind
---@return UKSUserWidgetBase
function AKSUIManager:Open(Kind) end
---@param CreatePhase EWIDGET_CREATE_PHASE
---@return boolean
function AKSUIManager:NoticeCreatedWidget(CreatePhase) end
function AKSUIManager:LockInputMode() end
---@param IsRunning boolean
---@param Kind EKSUIKind
function AKSUIManager:IsWidgetRunning(IsRunning, Kind) end
---@param CheckUI UUserWidget
---@return boolean
function AKSUIManager:IsStack(CheckUI) end
---@param UIType EKSUIKind
---@return boolean
function AKSUIManager:IsCreatedWidget(UIType) end
---@param CheckUI UUserWidget
---@return boolean
function AKSUIManager:IsClosingStackFromWidget(CheckUI) end
---@return boolean
function AKSUIManager:IsClosingStack() end
---@param CreatePhase EWIDGET_CREATE_PHASE
---@return boolean
function AKSUIManager:IsBulkLoadedWidgets(CreatePhase) end
---@return TMap<FName, UKSUserWidgetBase>
function AKSUIManager:GetWidgetTable() end
---@param UIType EKSUIKind
---@return UKSUserWidgetBase
function AKSUIManager:GetWidgetInstance(UIType) end
---@param WidgetName FName
---@return UKSUserWidgetBase
function AKSUIManager:GetWidget(WidgetName) end
---@param Kind EKSUIPartsKind
---@return UUserWidget
function AKSUIManager:GetUIPartsList(Kind) end
---@return UWidgetTemporaryHiddenComponent
function AKSUIManager:GetTemporayHiddenComponent() end
---@param Kind EKSUIPartsKind
---@return TSoftClassPtr<UUserWidget>
function AKSUIManager:GetPartsWidgetClass(Kind) end
---@param Kind EKSUIKind
---@return UKSUserWidgetBase
function AKSUIManager:GetList(Kind) end
---@return ULetterBoxBase
function AKSUIManager:GetLetterWidget() end
---@return boolean
function AKSUIManager:GetInputModeLock() end
---@return boolean
function AKSUIManager:GetHelpOpen() end
---@return int32
function AKSUIManager:GetActiveStackCount() end
---@return UUserWidget
function AKSUIManager:GetActiveStack() end
---@param Kind EKSUIKind
---@return boolean
function AKSUIManager:ForceCloseMenuCommon(Kind) end
---@param DeleteUI UUserWidget
function AKSUIManager:DeleteStack(DeleteUI) end
---@param bEnable boolean
function AKSUIManager:Debug_ShowDebugInfo(bEnable) end
function AKSUIManager:Debug_ShowActiveUI_Stack() end
function AKSUIManager:Debug_ForceClearActiveUI_Stack() end
---@param bEnable boolean
function AKSUIManager:Debug_EnableTextSizeInfo(bEnable) end
---@param WidgetName FName
function AKSUIManager:Debug_CreateWidget(WidgetName) end
---@param Kind EKSUIPartsKind
---@return UUserWidget
function AKSUIManager:CreateUIParts(Kind) end
---@param UIType EKSUIKind
---@return UKSUserWidgetBase
function AKSUIManager:CreateTemporaryWidgets(UIType) end
---@param Class TSoftClassPtr<UUserWidget>
---@param ZOrder int32
---@param InVisibility ESlateVisibility
---@return UUserWidget
function AKSUIManager:CreateNonManagedWidgetByClassPtr(Class, ZOrder, InVisibility) end
---@param Kind EKSUIKind
---@param ForceClose boolean
function AKSUIManager:CloseRequestFromKind(Kind, ForceClose) end
---@param PopUI UUserWidget
---@param ForceClose boolean
function AKSUIManager:CloseRequest(PopUI, ForceClose) end
---@param Kind EKSUIKind
---@return boolean
function AKSUIManager:CloseMenuCommon(Kind) end
---@param outIsSelected boolean
---@param outFocusIndex int32
---@return boolean
function AKSUIManager:CloseDialog(outIsSelected, outFocusIndex) end
---@param Kind EKSUIKind
---@return UKSUserWidgetBase
function AKSUIManager:Close(Kind) end
---@param CreatePhase EWIDGET_CREATE_PHASE
---@return boolean
function AKSUIManager:BulkLoadWidgets(CreatePhase) end
---@param CreatePhase EWIDGET_CREATE_PHASE
---@return boolean
function AKSUIManager:BulkCreateWidgets(CreatePhase) end
---@param Kind EKSUIPartsKind
---@param UIParts UUserWidget
---@return boolean
function AKSUIManager:AddUIPartsList(Kind, UIParts) end
---@param Target UUserWidget
---@param ZOrder int32
function AKSUIManager:AddToViewport(Target, ZOrder) end
---@param Target UUserWidget
---@param ZOrder int32
function AKSUIManager:AddToPlayerScreen(Target, ZOrder) end


---@class ALadderObjectBase : AActor
local ALadderObjectBase = {}


---@class ALevelAreaCollisionBase : AActor
---@field AreaType LEVEL_AREA_TYPE
---@field StartEventFlag int32
---@field EndEventFlag int32
local ALevelAreaCollisionBase = {}

---@return boolean
function ALevelAreaCollisionBase:IsCollisionEnable() end
---@return UBoxComponent
function ALevelAreaCollisionBase:GetCollision() end
---@return LEVEL_AREA_TYPE
function ALevelAreaCollisionBase:GetAreaType() end


---@class ALevelManagerBase : AAcqManagerBase
---@field m_LevelLoader TArray<ULevelLoader>
local ALevelManagerBase = {}

---@param subLevelSuffix FName
function ALevelManagerBase:RegisterSubLevelSuffix(subLevelSuffix) end
---@param levelName FName
---@return boolean
function ALevelManagerBase:IsLevelShown(levelName) end
---@param levelName FName
---@return boolean
function ALevelManagerBase:IsLevelLoaded(levelName) end


---@class ALevelManager_Others : AActor
---@field m_PostProcessData TMap<FName, FKSLevelPostProcessData>
---@field m_PostParam_VignetteWeakRate float
---@field m_PostParam_VignetteNormalRate float
---@field m_PostParam_FocalRegionWideAdd float
---@field m_PostParam_DofScaleWeakRate float
---@field m_PostParam_DofScaleNormalRate float
---@field m_PostParam_GainRateMin float
---@field m_PostParam_GainRateMax float
---@field m_Debug_BarNotPlaceCharaRate int32
---@field m_Debug_BarPlaceCharaRateOne int32
---@field m_Debug_BarCharaList TArray<int32>
---@field NPCList TMap<FName, TWeakObjectPtr<AKSCharacterBase>>
---@field NPCIDList TMap<int32, TWeakObjectPtr<AKSCharacterBase>>
---@field ReserveDestroyNpcList TArray<TWeakObjectPtr<AKSCharacterBase>>
---@field MapObjectList TMap<FName, AKSObjectBase>
---@field EventTriggerList TMap<FName, AEventTriggerBox>
---@field PlacedSequencerList TMap<FName, ALevelSequenceActor>
---@field m_apNPCPathList TArray<AMJPathSplineObject>
---@field ChangeBGM boolean
---@field m_nTreasureBoxCounter int32
---@field m_IsGameOverPlaying boolean
---@field m_bTransitionToGameOver boolean
---@field m_LevelChangeByLinerShip boolean
---@field m_bForceSpawn boolean
---@field m_MPC_PGControl UMaterialParameterCollection
local ALevelManager_Others = {}

---@param IsVisible boolean
function ALevelManager_Others:VisibleEmotionAllNPC(IsVisible) end
---@param eType EPLACEMENT_TYPE
---@param IsVisible boolean
function ALevelManager_Others:VisibleCategoryAll(eType, IsVisible) end
function ALevelManager_Others:VisibleBarCharacter() end
---@param IsVisible boolean
function ALevelManager_Others:VisibleAll(IsVisible) end
---@param eType EPLACEMENT_TYPE
---@param Label FName
---@param IsVisible boolean
function ALevelManager_Others:Visible(eType, Label, IsVisible) end
---@param ePlacementType EPLACEMENT_TYPE
---@param TempDataLabel FName
---@param vSpawnPos FVector
---@param bRefreshFollowNPC boolean
---@param pPlacementData FPlacementData
---@param bFadeChara boolean
---@param bForceSpawn boolean
function ALevelManager_Others:SpawnPlacementObject(ePlacementType, TempDataLabel, vSpawnPos, bRefreshFollowNPC, pPlacementData, bFadeChara, bForceSpawn) end
---@param eType EPLACEMENT_TYPE
---@param Label FName
---@return boolean
function ALevelManager_Others:Spawn_TimeZoneChange(eType, Label) end
function ALevelManager_Others:SetVisibleBarChangeCharacter() end
function ALevelManager_Others:SetupNPCPathList() end
---@param bLinerShip boolean
function ALevelManager_Others:SetLevelChangeByLinerShip(bLinerShip) end
---@param change boolean
function ALevelManager_Others:SetChangeBGM(change) end
---@param BGMID int32
function ALevelManager_Others:SetBgmIdFromOuter(BGMID) end
function ALevelManager_Others:ResetInHouseSettings() end
function ALevelManager_Others:ResetCameraLockParam() end
---@param restorePlacement FReminiscenceRestorePlacement
function ALevelManager_Others:RequestRestorePlayerPlacement(restorePlacement) end
---@param Location FPlayerLocation
function ALevelManager_Others:RequestMapInLocation(Location) end
---@param EquipLantern FEquipLanternData
function ALevelManager_Others:RequestMapInEquipLantern(EquipLantern) end
---@param CameraLockPos FVector
---@param LevelTriggerID ELevelTriggerID
function ALevelManager_Others:RequestMapInCameraLock(CameraLockPos, LevelTriggerID) end
---@param npdUniqID int32
function ALevelManager_Others:RemoveTargetNPC_ByID(npdUniqID) end
---@param eType EPLACEMENT_TYPE
---@param ObjLabel FName
---@return boolean
function ALevelManager_Others:RemoveObjectFromList(eType, ObjLabel) end
---@param eType EPLACEMENT_TYPE
---@param Label FName
---@return boolean
function ALevelManager_Others:RemoveList_TimeZoneChange(eType, Label) end
---@param pNPC AKSCharacterBase
---@return boolean
function ALevelManager_Others:RemoveList_TargetNPC(pNPC) end
---@param eType EPLACEMENT_TYPE
---@param ObjLabel FName
---@return boolean
function ALevelManager_Others:RemoveList(eType, ObjLabel) end
function ALevelManager_Others:RemoveAllType() end
---@param eType EPLACEMENT_TYPE
function ALevelManager_Others:RemoveAll(eType) end
---@param NPCUniqID int32
---@return boolean
function ALevelManager_Others:RefreshSwoon(NPCUniqID) end
---@param WorldContextObject UObject
---@param levelName FName
---@param FadeChara boolean
---@param ForceSpawn boolean
---@param NextTimeZone boolean
---@param bUpdateSwoon boolean
---@return boolean
function ALevelManager_Others:RefreshSpawn(WorldContextObject, levelName, FadeChara, ForceSpawn, NextTimeZone, bUpdateSwoon) end
---@param bCheckEventPlaying boolean
function ALevelManager_Others:RefreshPostProcess(bCheckEventPlaying) end
---@param ePlacementType EPLACEMENT_TYPE
---@param TempDataLabel FName
---@param bRefreshFollowNPC boolean
---@param bUpdateSwoon boolean
function ALevelManager_Others:RefreshPlacedObject(ePlacementType, TempDataLabel, bRefreshFollowNPC, bUpdateSwoon) end
---@param noticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function ALevelManager_Others:RefreshCurrentCameraLock_Delay(noticeType, Args) end
function ALevelManager_Others:RefreshCurrentCameraLock() end
---@param TriggerID ELevelTriggerID
function ALevelManager_Others:RefreshCameraLockByLevelTriggerId(TriggerID) end
function ALevelManager_Others:RefreshBarChangeCharacter() end
function ALevelManager_Others:RecalcCollectedPostProcessVolumes() end
function ALevelManager_Others:Proc_OnFinishLoadFieldLevel() end
function ALevelManager_Others:Proc_OnFinishFadeOut_Field_Last() end
function ALevelManager_Others:Proc_OnFinishFadeOut_Field_First() end
function ALevelManager_Others:Proc_OnFinishFadeIn() end
function ALevelManager_Others:Proc_OnFieldLevelShown_Last() end
function ALevelManager_Others:Proc_OnFieldLevelShown_First() end
function ALevelManager_Others:Proc_OnBeginLevelChangeFadeOut() end
function ALevelManager_Others:OnStartGameOver() end
function ALevelManager_Others:OnStartBattle() end
---@return boolean
function ALevelManager_Others:OnShownField_AfterBattle() end
function ALevelManager_Others:OnFinishFadeIn_AfterBattle() end
function ALevelManager_Others:OnFinishFadeIn() end
function ALevelManager_Others:OnFinishBattle() end
---@param dbName FName
---@param notice EDBNoticeType
function ALevelManager_Others:NotifyGameParamDB(dbName, notice) end
---@param cPlaceData FPlacementData
---@param NextTimeZone boolean
---@return boolean
function ALevelManager_Others:IsTimeZoneThatCanPlaced(cPlaceData, NextTimeZone) end
---@param cPlaceInfo FPlacementData
---@return boolean
function ALevelManager_Others:IsTimeZoneCheck(cPlaceInfo) end
---@return boolean
function ALevelManager_Others:IsRequestedMapInLocation() end
---@return boolean
function ALevelManager_Others:IsRequestedMapInEquipLantern() end
---@return boolean
function ALevelManager_Others:IsGameOverLevelLoad() end
---@param eType EPLACEMENT_TYPE
---@param Label FName
---@return boolean
function ALevelManager_Others:IsFindList(eType, Label) end
function ALevelManager_Others:InitOnBP() end
---@param inHouse boolean
---@param floor int32
function ALevelManager_Others:HouseChangeVisible(inHouse, floor) end
---@return FReminiscenceRestorePlacement
function ALevelManager_Others:GetRestorePlayerPlacement() end
---@param Label FName
---@return ALevelSequenceActor
function ALevelManager_Others:GetPlacedSequencer(Label) end
---@param UniqID int32
---@return AKSCharacterBase
function ALevelManager_Others:GetNPCUniqID(UniqID) end
---@return TArray<AMJPathSplineObject>
function ALevelManager_Others:GetNPCPathList() end
---@return TArray<FName>
function ALevelManager_Others:GetNpcLabels() end
---@param ObjLabel FName
---@return AKSCharacterBase
function ALevelManager_Others:GetNPC(ObjLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param outLevelManager AMJLevelManager
function ALevelManager_Others:GetMJLevelManager(returnCode, outLevelManager) end
---@return TArray<FName>
function ALevelManager_Others:GetMapObjectLabels() end
---@param Label FName
---@return AKSObjectBase
function ALevelManager_Others:GetMapObject(Label) end
---@return FPlayerLocation
function ALevelManager_Others:GetMapInLocation() end
---@return FEquipLanternData
function ALevelManager_Others:GetMapInEquipLantern() end
---@return FVector
function ALevelManager_Others:GetMapInCameraLockPos() end
---@return boolean
function ALevelManager_Others:GetLevelChangeByLinerShip() end
---@return TArray<FName>
function ALevelManager_Others:GetEventTriggerLabels() end
---@param Label FName
---@return AEventTriggerBox
function ALevelManager_Others:GetEventTrigger(Label) end
---@return TArray<FName>
function ALevelManager_Others:GetDelayedSpawnNpcLabelList() end
---@return int32
function ALevelManager_Others:GetBgmIdFromOuter() end
---@return FName
function ALevelManager_Others:GetBattleEnemyGroupID() end
---@return TArray<AKSCharacterBase>
function ALevelManager_Others:GetAllNPC() end
---@param PlacementLabel FName
---@param nCheckFloor int32
function ALevelManager_Others:FloorVisibleChangeCheck(PlacementLabel, nCheckFloor) end
---@param GameOverCursor int32
function ALevelManager_Others:EndBattleWipe(GameOverCursor) end
---@param ePlacementType EPLACEMENT_TYPE
---@param TempDataLabel FName
---@param bFadeChara boolean
---@param anFollowNPCID TArray<int32>
---@param nUniqUndex int32
function ALevelManager_Others:DestroyDontPlaceObject(ePlacementType, TempDataLabel, bFadeChara, anFollowNPCID, nUniqUndex) end
function ALevelManager_Others:Debug_ShowPostProcessVolumeInfo() end
function ALevelManager_Others:Debug_ChangeBarChara() end
function ALevelManager_Others:CollectPostProcessVolumes() end
function ALevelManager_Others:ClearRestorePlayerPlacement() end
function ALevelManager_Others:ClearPostProcessVolumes() end
function ALevelManager_Others:ClearMapInLocation() end
function ALevelManager_Others:ClearMapInEquipLantern() end
function ALevelManager_Others:ClearMapInCameraLock() end
function ALevelManager_Others:ClearForciblyPostProcessVolumes() end
function ALevelManager_Others:ClearCollisionDisabledNPC() end
function ALevelManager_Others:CheckLevelTriggerEnable() end
---@param PlacementData FPlacementData
---@param nUnqIndex int32
---@return boolean
function ALevelManager_Others:CheckExtendedSpawnByEndDelayCount(PlacementData, nUnqIndex) end
---@param eventParamSet FPlacementEventParamSet
---@return boolean
function ALevelManager_Others:CheckEventParamCondition(eventParamSet) end
---@param NextMapID int32
function ALevelManager_Others:ChangeMapPreProcess(NextMapID) end
---@param Level int32
---@return boolean
function ALevelManager_Others:ApplyScreenBrightness(Level) end
---@param bIsNormal boolean
---@param CheckEventPlaying boolean
---@return boolean
function ALevelManager_Others:ApplyCornerDarkness(bIsNormal, CheckEventPlaying) end
---@param ObjLabel FName
---@param pObj ALevelSequenceActor
---@return boolean
function ALevelManager_Others:AddPlacedSequencerList(ObjLabel, pObj) end
---@param ObjLabel FName
---@param pObj AKSCharacterBase
---@return boolean
function ALevelManager_Others:AddNPCList(ObjLabel, pObj) end
---@param ObjLabel FName
---@param pObj AKSObjectBase
---@return boolean
function ALevelManager_Others:AddMapObjectList(ObjLabel, pObj) end
---@param ObjLabel FName
---@param pObj AEventTriggerBox
---@return boolean
function ALevelManager_Others:AddEventTriggerList(ObjLabel, pObj) end
---@param NPCUniqID int32
function ALevelManager_Others:AddCollisionDisabledNPC(NPCUniqID) end


---@class ALevelTriggerActor : AActor
---@field m_SpawnPointObj USceneComponent
---@field TargetCameraLockTriggerX TSoftObjectPtr<ACameraLockTrigger>
---@field TargetCameraLockTriggerY TSoftObjectPtr<ACameraLockTrigger>
---@field TargetCameraLockTriggerZ TSoftObjectPtr<ACameraLockTrigger>
---@field CameraLockParams FCameraLockParams
---@field MyLevelTriggerID ELevelTriggerID
---@field CurrentTransitionDataFlagID int32
---@field NextMapName FName
---@field NextLevelTriggerID ELevelTriggerID
---@field MapInCharaDir EKSCharacterDir
---@field EquipLanternData FEquipLanternData
---@field strNextMapName FString
---@field EnableAutoSave boolean
---@field NeedButtonInput boolean
---@field ButtonInputCollisionMatchToTrigger boolean
---@field ConditionalTransitionData TArray<FLevelTransitionData>
---@field m_MapInSwitchIndoorTrigger TSoftObjectPtr<ASwitchIndoorTrigger>
---@field m_MapInUseLadder TSoftObjectPtr<AProceduralLinePlace>
---@field m_MapInMoveMode ECharacterMoveModeForDB
---@field m_IsTriggerActive boolean
local ALevelTriggerActor = {}

function ALevelTriggerActor:SetupDataOnLevelShown() end
function ALevelTriggerActor:SetupBGMControl() end
---@param pComp UShapeComponent
---@param vPos FVector
function ALevelTriggerActor:SetCollisionComponent(pComp, vPos) end
---@return boolean
function ALevelTriggerActor:SetAttachLadderPlayer() end
function ALevelTriggerActor:RefreshTransitionalData() end
---@return boolean
function ALevelTriggerActor:IsTriggerActive() end
---@return boolean
function ALevelTriggerActor:IsIgnoreShowOnRadarMap() end
---@return FVector
function ALevelTriggerActor:GetTriggerCollisionLocation() end
---@return FVector
function ALevelTriggerActor:GetSpawnLocation() end
---@return ECharacterMoveModeForDB
function ALevelTriggerActor:GetMapInMoveMode() end
---@return FEquipLanternData
function ALevelTriggerActor:GetEquipLanternData() end


---@class ALightStage : AActor
---@field m_pMPC UMaterialParameterCollection
---@field m_bUseFog boolean
---@field m_bUseSkyDome boolean
---@field m_pSkyMaterial UMaterialInterface
---@field m_bUseSkyLight boolean
---@field m_pLightFunctionMaterial UMaterialInterface
---@field m_fShadowDistance float
---@field m_fShadowBias float
---@field m_bUseSun boolean
---@field m_bUpdate boolean
---@field m_pcCubemap UTextureCube
---@field m_bIndoorPreview boolean
---@field m_fIndoorSunBrightness float
---@field m_fIndoorSkyLightIntensity float
---@field m_fIndoorFogDensity float
---@field m_pMainDirectionalLight UDirectionalLightComponent
---@field m_pFog UExponentialHeightFogComponent
---@field m_pSkyLight USkyLightComponent
---@field m_pSkyMesh UStaticMeshComponent
local ALightStage = {}



---@class AMJBoxTrigger : AKSTriggerBase
local AMJBoxTrigger = {}


---@class AMJLODActor : AActor
---@field m_fMaxDrawDistance float
local AMJLODActor = {}

---@param PrimComp UPrimitiveComponent
function AMJLODActor:SetLODSettings(PrimComp) end


---@class AMJLevelManager : ALevelManagerBase
---@field OnNotifyLevelTransition FMJLevelManagerOnNotifyLevelTransition
---@field OnNotifyLevelLoader FMJLevelManagerOnNotifyLevelLoader
---@field m_RequestLevelTrigger ELevelTriggerID
---@field m_ChangeBGM boolean
---@field m_UseFadeUI boolean
---@field m_FadeInTime float
---@field m_FadeOutTime float
---@field m_PrevLevelInGame boolean
---@field m_PrevLevelSea boolean
---@field m_IsGameOver boolean
---@field m_LvlMng_Others ALevelManager_Others
---@field m_NextMapInfo FNextMapInfo
---@field m_IsFirstVisitLevel boolean
---@field m_Debug_BattleLevelLoader ULevelLoader
local AMJLevelManager = {}

---@param levelType ELEVEL_TYPE
---@param MapIndex int32
---@param useFade boolean
---@return boolean
function AMJLevelManager:SwitchActiveLevel(levelType, MapIndex, useFade) end
---@return boolean
function AMJLevelManager:StartFadeOut() end
---@return boolean
function AMJLevelManager:StartFadeIn() end
---@param MapIndex int32
---@param NextLevelType ELEVEL_TYPE
function AMJLevelManager:SetSwitchActiveParam(MapIndex, NextLevelType) end
---@param TriggerID ELevelTriggerID
function AMJLevelManager:SetRequestedLevelTriggerID(TriggerID) end
---@param NextMapName FName
---@param ReqTrigger ELevelTriggerID
---@param UseFadeUI boolean
---@param ChangeBGM boolean
---@param NextLevelType ELEVEL_TYPE
function AMJLevelManager:SetNextMapInfoByName(NextMapName, ReqTrigger, UseFadeUI, ChangeBGM, NextLevelType) end
---@param NextMapID int32
---@param ReqTrigger ELevelTriggerID
---@param UseFadeUI boolean
---@param ChangeBGM boolean
---@param NextLevelType ELEVEL_TYPE
function AMJLevelManager:SetNextMapInfoByID(NextMapID, ReqTrigger, UseFadeUI, ChangeBGM, NextLevelType) end
---@param bFirstVisited boolean
function AMJLevelManager:SetFirstVisited(bFirstVisited) end
---@param SaveLevel FName
function AMJLevelManager:SaveVisitedMap(SaveLevel) end
---@param bReveal boolean
function AMJLevelManager:RequestRevealBattle(bReveal) end
---@param Map FName
---@param TriggerID ELevelTriggerID
---@param Fade boolean
---@param ChangeBGM boolean
---@return boolean
function AMJLevelManager:RequestLoadFieldLevel(Map, TriggerID, Fade, ChangeBGM) end
function AMJLevelManager:RequestLevelChange() end
function AMJLevelManager:Proc_AfterUnloadLevel() end
---@param loaderId int32
---@param request FLevelLoaderRequest
function AMJLevelManager:OnLevelLoaderCommandCompleted(loaderId, request) end
---@param levelId FName
---@param levelType ELEVEL_TYPE
---@param notice ELevelTransitionNotice
function AMJLevelManager:NotifyLevelTransition(levelId, levelType, notice) end
---@param levelName FName
---@param levelType ELEVEL_TYPE
---@param notice ELevelLoaderNotice
function AMJLevelManager:NotifyLevelLoader(levelName, levelType, notice) end
---@return boolean
function AMJLevelManager:IsSameLevelChanging() end
---@return boolean
function AMJLevelManager:IsRunningFadeOut() end
---@return boolean
function AMJLevelManager:IsRunningFadeIn() end
---@return boolean
function AMJLevelManager:IsPrevLevelSea() end
---@return boolean
function AMJLevelManager:IsPrevLevelInGame() end
---@return boolean
function AMJLevelManager:IsLevelChangeFinishFadeIn() end
---@return boolean
function AMJLevelManager:IsImmovableByFieldChanging() end
---@return boolean
function AMJLevelManager:IsFadeOutState() end
---@return boolean
function AMJLevelManager:IsFadeInAllowed() end
---@return boolean
function AMJLevelManager:IsChanging() end
---@return boolean
function AMJLevelManager:GetUseFadeUI() end
---@return ELevelTransitionType
function AMJLevelManager:GetTransitionType() end
---@return ELevelTriggerID
function AMJLevelManager:GetRequestedLevelTriggerID() end
---@return FName
function AMJLevelManager:GetNextLevelId() end
---@return ALevelManager_Others
function AMJLevelManager:GetLevelManagerOthers() end
---@return ULevelStreaming
function AMJLevelManager:GetFieldLevelStreaming() end
---@return boolean
function AMJLevelManager:GetChangeBGM() end
---@return ELEVEL_TYPE
function AMJLevelManager:GetActiveLevelType() end
---@return boolean
function AMJLevelManager:FinishBattleLevel() end
---@param bEnable boolean
function AMJLevelManager:Debug_ShowManagerInfo(bEnable) end
---@param bEnabled boolean
function AMJLevelManager:Debug_SetMemProf_OnUnloadLevel(bEnabled) end
---@param bEnabled boolean
function AMJLevelManager:Debug_SetMemProf_OnEndChangeLevel(bEnabled) end
---@param bEnabled boolean
function AMJLevelManager:Debug_SetMemProf_OnBattleEnd(bEnabled) end
---@param bForce boolean
function AMJLevelManager:Debug_SetForceRevealBattleMap(bForce) end
---@param bFlag boolean
function AMJLevelManager:Debug_SetForceLostWay(bFlag) end
function AMJLevelManager:Debug_RequestSimulatedChangLevel() end
---@param battleMapName FName
function AMJLevelManager:Debug_RequestOverrideBattleMap(battleMapName) end
---@param levelId FName
---@param levelType ELEVEL_TYPE
---@param notice ELevelTransitionNotice
function AMJLevelManager:Debug_OnTransitionEvent(levelId, levelType, notice) end
---@param menuItem FDebugListMenuItem
---@return boolean
function AMJLevelManager:Debug_ChangeLevelOnDecided(menuItem) end
function AMJLevelManager:Debug_ChangeLevelOnClosed() end
---@param levelId FName
---@param levelTrgId ELevelTriggerID
---@param useFade boolean
---@param ChangeBGM boolean
---@return boolean
function AMJLevelManager:ChangeFieldLevelWithParams(levelId, levelTrgId, useFade, ChangeBGM) end
---@param levelId FName
---@return boolean
function AMJLevelManager:ChangeFieldLevel(levelId) end
---@param levelType ELEVEL_TYPE
---@param notice ELevelTransitionNotice
function AMJLevelManager:CallLevelTransision(levelType, notice) end


---@class AMJPathSplineObject : AActor
local AMJPathSplineObject = {}

---@param uSpline USplineComponent
---@param cTextRender UTextRenderComponent
---@param nIndex int32
function AMJPathSplineObject:DebugShowSplineObject(uSpline, cTextRender, nIndex) end
---@param uSpline USplineComponent
---@param cTextRender UTextRenderComponent
---@param nIndex int32
function AMJPathSplineObject:DebugCreateSplineObject(uSpline, cTextRender, nIndex) end


---@class AMJPostProcessVolume : APostProcessVolume
---@field m_nIndex int32
---@field bBattleMap boolean
---@field m_pAddPostProcessMaterial UMaterial
local AMJPostProcessVolume = {}

---@param PPM UMaterial
function AMJPostProcessVolume:AddPostProcessMaterial(PPM) end


---@class AMJSphereTrigger : AKSTriggerBase
local AMJSphereTrigger = {}


---@class AMapDoorObjectBase : AActor
---@field m_TargetLevelTrigger TSoftObjectPtr<ALevelTriggerActor>
local AMapDoorObjectBase = {}

function AMapDoorObjectBase:RefreshDoor() end
function AMapDoorObjectBase:OpenDoor() end
---@param noticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function AMapDoorObjectBase:OnCloseMainMenu(noticeType, NoticeArgs) end
function AMapDoorObjectBase:CloseDoor() end


---@class AMapShipObject2Base : AActor
---@field m_MyShipMesh UStaticMeshComponent
---@field m_ColorMaterialTable TMap<EMYSHIP_CUSTOM_TYPE, UMaterialInterface>
local AMapShipObject2Base = {}

function AMapShipObject2Base:ApplyShipCustomize() end


---@class AMapShipObjectBase : AActor
---@field RelativeDir_Go float
---@field RelativeOffset_Go FVector
---@field RelativeDir_Return float
---@field RelativeOffset_Return FVector
---@field ShipMesh UStaticMeshComponent
---@field MyShipFlag boolean
---@field EventFlag_ForceDir_Go int32
---@field EventFlag_ForceDir_Return int32
local AMapShipObjectBase = {}

function AMapShipObjectBase:ResetRelativeTransform() end
---@param FirstChoice boolean
function AMapShipObjectBase:ApplySailTexture(FirstChoice) end
---@param bGo boolean
function AMapShipObjectBase:ApplyRelativeTransform(bGo) end
function AMapShipObjectBase:ApplyMyShipCustomizeFirstChoice() end
function AMapShipObjectBase:ApplyMyShipCustomize() end


---@class ANPCManager : AAcqManagerBase
local ANPCManager = {}

---@param NPCIndex int32
---@return boolean
function ANPCManager:RecoverSwoonNPC_TZChange(NPCIndex) end
---@param NPCLabel FName
---@return boolean
function ANPCManager:RecoverSwoonNPC(NPCLabel) end
---@return boolean
function ANPCManager:RecoverAllSwoonNPC() end
---@return boolean
function ANPCManager:CreateSwoonNPCList() end
---@param NPCLabel FName
---@param SwoonType ENpcSwoonType
---@return boolean
function ANPCManager:AddSwoonNPC(NPCLabel, SwoonType) end


---@class ANPCSpawnTarget : ATargetPoint
---@field NPCCharacter AKSCharacterBase
---@field SpawnObject AKSObjectBase
---@field NPCID int32
---@field ObjectId int32
---@field Dir EKSCharacterDir
---@field SpawnData TArray<FNPCSpawnData>
local ANPCSpawnTarget = {}

---@param EventFlag TArray<int32>
---@param CheckData FNPCSpawnData
---@return boolean
function ANPCSpawnTarget:IsSpawn(EventFlag, CheckData) end


---@class ANoticeDelegateManager : AAcqManagerBase
local ANoticeDelegateManager = {}

---@param noticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
---@return boolean
function ANoticeDelegateManager:Static_BroadcastNotice(noticeType, NoticeArgs) end
---@param noticeType ENOTICE_TYPE
---@param noticeDelegate FRemoveOneShotNoticeDelegateNoticeDelegate
function ANoticeDelegateManager:RemoveOneShotNoticeDelegate(noticeType, noticeDelegate) end
---@param noticeType ENOTICE_TYPE
---@param noticeDelegate FRegisterOneShotNoticeDelegateNoticeDelegate
function ANoticeDelegateManager:RegisterOneShotNoticeDelegate(noticeType, noticeDelegate) end
---@param noticeType ENOTICE_TYPE
---@param noticeDelegate FRegisterNoticeDelegateNoticeDelegate
function ANoticeDelegateManager:RegisterNoticeDelegate(noticeType, noticeDelegate) end
---@param noticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function ANoticeDelegateManager:BroadcastNotice(noticeType, NoticeArgs) end


---@class AObjectVisibilityManager : AAcqManagerBase
---@field m_ObjectVisibilityRequest TMap<FName, FObjectVisibilityData>
---@field m_ObjectVisibilityDataCashe TMap<FName, FObjectVisibilityData>
local AObjectVisibilityManager = {}

---@param noticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function AObjectVisibilityManager:OnLevelChangeStart(noticeType, Args) end


---@class APartyChatManager : AAcqManagerBase
---@field m_IsInBar boolean
local APartyChatManager = {}

---@param PartyChatLabel FName
---@return boolean
function APartyChatManager:Static_PlayPartyChatFromMissionRecord(PartyChatLabel) end
---@return boolean
function APartyChatManager:Static_PlayAvailablePartyChat() end
---@return boolean
function APartyChatManager:Static_IsAvailablePartyChat() end
---@param PartyChatLabel FName
---@return boolean
function APartyChatManager:PlayPartyChatFromMissionRecord(PartyChatLabel) end
---@return boolean
function APartyChatManager:PlayAvailablePartyChat() end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function APartyChatManager:OnUpdateMainStoryTask(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function APartyChatManager:OnUpdateMainStory(eNoticeType, NoticeArgs) end
---@param Result EREQUEST_RESULT
function APartyChatManager:OnStartEvent(Result) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function APartyChatManager:OnRefreshPartyCharacter(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function APartyChatManager:OnLevelChanged(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function APartyChatManager:OnJoinPlayerCharacter(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function APartyChatManager:OnFinishPartyChat(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function APartyChatManager:OnEnterOrExitBar(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function APartyChatManager:OnCompleteMainStory(eNoticeType, NoticeArgs) end
function APartyChatManager:OnChangeHolyTorchState() end
function APartyChatManager:OnCalledEventEndProcess() end
---@return boolean
function APartyChatManager:IsAvailablePartyChat() end
---@param OutData FPartyChat
---@return boolean
function APartyChatManager:GetPlayingPartyChatData(OutData) end
---@param PartyChatLabel FName
function APartyChatManager:Debug_ForcePlayPartyChat(PartyChatLabel) end


---@class APlacementRefreshTrigger : AMJBoxTrigger
---@field m_strStartEventLabel FName
---@field m_strEndEventLabel FName
---@field m_eTargetTimeZone ETIMEZONE_TRIGGER_TYPE
---@field m_acRefreshParam TArray<FRefereshFlagChangeParam>
---@field m_strSELabel FName
---@field m_bPlacementRefresh boolean
local APlacementRefreshTrigger = {}



---@class AProceduralBuilding : AActor
---@field m_acOptionalPartsList TArray<FOptionalParts>
---@field m_acStaticMeshComponentList TArray<UStaticMeshComponent>
local AProceduralBuilding = {}



---@class AProceduralLinePlace : AActor
---@field m_acStaticMeshComponentList TArray<UStaticMeshComponent>
---@field Mesh_Root_St UStaticMesh
---@field Mesh_Root_Lp UStaticMesh
---@field Mesh_Root_End UStaticMesh
---@field Mesh_YZ_Top_St UStaticMesh
---@field Mesh_YZ_Top_Lp UStaticMesh
---@field Mesh_YZ_Top_End UStaticMesh
---@field Mesh_YZ_Mdl_St UStaticMesh
---@field Mesh_YZ_Mdl_Lp UStaticMesh
---@field Mesh_YZ_Mdl_End UStaticMesh
---@field Mesh_XY_Top_St UStaticMesh
---@field Mesh_XY_Top_Lp UStaticMesh
---@field Mesh_XY_Top_End UStaticMesh
---@field Mesh_XY_Mdl_St UStaticMesh
---@field Mesh_XY_Mdl_Lp UStaticMesh
---@field Mesh_XY_Mdl_End UStaticMesh
---@field Mesh_XYZ2_Top_St UStaticMesh
---@field Mesh_XYZ2_Top_Lp UStaticMesh
---@field Mesh_XYZ2_Top_End UStaticMesh
---@field Mesh_XYZ2_Mdl_St UStaticMesh
---@field Mesh_XYZ2_Mdl_Lp UStaticMesh
---@field Mesh_XYZ2_Mdl_End UStaticMesh
---@field Mesh_XYZ3_Top_St UStaticMesh
---@field Mesh_XYZ3_Top_Lp UStaticMesh
---@field Mesh_XYZ3_Top_End UStaticMesh
---@field Mesh_XYZ3_Mdl_St UStaticMesh
---@field Mesh_XYZ3_Mdl_Lp UStaticMesh
---@field Mesh_XYZ3_Mdl_End UStaticMesh
local AProceduralLinePlace = {}

function AProceduralLinePlace:ReleaseBase() end


---@class AProceduralPlant : AActor
---@field m_acStaticMeshComponentList TArray<UStaticMeshComponent>
---@field m_ResourceData TArray<FPlantResourceData>
local AProceduralPlant = {}

function AProceduralPlant:ReleaseBase() end


---@class AProceduralRandomPlant : AActor
---@field m_acStaticMeshComponentList TArray<UStaticMeshComponent>
---@field m_bCanUpdate boolean
---@field m_bCanBackPlant boolean
---@field m_bCanResetRandomSeed boolean
---@field m_bCanIsNextPlant boolean
---@field m_nRandomSeedCount int32
---@field m_cRandomStream FRandomStream
---@field m_ResourceData TArray<FPlantResourceData>
local AProceduralRandomPlant = {}



---@class AProceduralStairs : AActor
---@field m_StaticMeshList TArray<UStaticMeshComponent>
local AProceduralStairs = {}

function AProceduralStairs:ReleaseBase() end


---@class AReferenceSequencer : AActor
---@field m_pDeepThinkActor ALevelSequenceActor
---@field m_pDeepDirectingActor ALevelSequenceActor
---@field m_pDeepDirecting ULevelSequence
local AReferenceSequencer = {}

---@param eNoticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function AReferenceSequencer:StopReferenceSequencer(eNoticeType, Args) end
---@param TagName FName
---@param AddOffset FVector
function AReferenceSequencer:StartDeepThink(TagName, AddOffset) end
function AReferenceSequencer:StartDeepDirecting() end
---@param eTime ETimeZoneType
function AReferenceSequencer:SetToolsTimeZone(eTime) end
---@param TagName FName
---@param Offset FVector
function AReferenceSequencer:SetDeepThinkParameter(TagName, Offset) end
---@param DeepDirectingActor AActor
---@param Enable boolean
function AReferenceSequencer:SetDeepDirectingAttachPlayer(DeepDirectingActor, Enable) end
---@param DeepDirectingActor AActor
---@param Enable boolean
function AReferenceSequencer:SetDeepDirectingAttachCamera(DeepDirectingActor, Enable) end
---@return ETimeZoneType
function AReferenceSequencer:GetToolsTimeZone() end
---@return FName
function AReferenceSequencer:GetDeepThinkTagName() end
---@return FVector
function AReferenceSequencer:GetDeepThinkOffset() end
---@return ULevelSequence
function AReferenceSequencer:GetDeepThink() end
---@return ULevelSequence
function AReferenceSequencer:GetDeepDirecting() end
function AReferenceSequencer:EndDeepThink() end
function AReferenceSequencer:EndDeepDirecting() end
function AReferenceSequencer:CreateSequenceActor() end
function AReferenceSequencer:AllStopSequencer() end


---@class AResidentGameBase : AActor
local AResidentGameBase = {}

---@param KSDebugPath FString
---@return AActor
function AResidentGameBase:SpawnDebugAcor(KSDebugPath) end


---@class ASaveDataTransfer_Ps4ToPs5 : AActor
local ASaveDataTransfer_Ps4ToPs5 = {}


---@class ASequencerCineCamera : ACineCameraActor
---@field m_ESeqMode ESEQ_CAMERA_MODE
---@field m_fLimitTime float
---@field m_fNowTime float
local ASequencerCineCamera = {}

---@param TargetCamera UCameraComponent
---@param DeltaTime float
function ASequencerCineCamera:UpdateSepiaStart(TargetCamera, DeltaTime) end
---@param TargetCamera UCameraComponent
---@param DeltaTime float
function ASequencerCineCamera:UpdateSepiaEnd(TargetCamera, DeltaTime) end
---@param TargetCamera UCameraComponent
---@param DeltaTime float
function ASequencerCineCamera:UpdateMonochromeStart(TargetCamera, DeltaTime) end
---@param TargetCamera UCameraComponent
---@param Scale float
function ASequencerCineCamera:UpdateMonochromeEnd(TargetCamera, Scale) end
---@param pTarget AActor
function ASequencerCineCamera:SetupCamera(pTarget) end
---@param ChangeTime float
---@param Enable boolean
function ASequencerCineCamera:ChangeSepiaMode(ChangeTime, Enable) end
---@param ChangeTime float
---@param Enable boolean
function ASequencerCineCamera:ChangeMonochromeMode(ChangeTime, Enable) end


---@class ASkillManager : AActor
local ASkillManager = {}


---@class ASoundManager : AAcqManagerBase
---@field m_bPauseBattleGaya boolean
---@field m_bPauseEventGaya boolean
---@field ShowMenuSeRequest boolean
---@field ShowSeRequest boolean
---@field ShowEnvSoundInfo boolean
---@field ShowBgmInfo boolean
---@field ShowCategoryVolume boolean
---@field ShowLoadedCueSheet boolean
---@field Show3DSeRequest boolean
---@field ShowListenerPoint boolean
---@field ShowListeningPoint boolean
---@field ShowAISACParam boolean
---@field m_AtomComponents TArray<UAtomComponent>
---@field m_3DSEComponents TArray<TWeakObjectPtr<UAtomComponent>>
---@field m_LoadedCueSheet TMap<FName, USoundAtomCueSheet>
---@field m_CueSheetsForEvent TArray<FName>
---@field m_LoadedCue TMap<FName, USoundAtomCue>
---@field m_pcListenerComp UMJSoundListenerComponent
---@field m_CommonSeAtom TArray<UAtomComponent>
---@field m_EventSeAtom TArray<UAtomComponent>
---@field m_UsedEventSeAtom TMap<FName, UAtomComponent>
---@field waitFadeIn boolean
---@field m_pEnvSoundTriggers TArray<AEnvSound>
---@field m_pEnvSoundInterfaceObjects TArray<AActor>
---@field m_bEndCollect boolean
---@field m_PlayVoiceCueName FName
---@field m_CurentBGM FSoundData
---@field m_NextChangeBGM FSoundData
---@field m_PauseBGM FSoundData
---@field CurrentPlayingMusicRecord FSoundData
---@field LastPlayedNormalBGM FSoundData
---@field OnPlayMusicRecorad FSoundManagerOnPlayMusicRecorad
---@field OnStopMusicRecorad FSoundManagerOnStopMusicRecorad
local ASoundManager = {}

---@param rLevelInfo FLevelInfoData
function ASoundManager:UpdateBgmChangeTimeZone(rLevelInfo) end
---@param cueLabel FName
function ASoundManager:UnregisterLoadedSoundCue(cueLabel) end
---@return boolean
function ASoundManager:UnloadEventCueSheet() end
---@param CueSheetName FName
---@return boolean
function ASoundManager:UnloadCueSheetByName(CueSheetName) end
---@param FadeOutTime float
---@return boolean
function ASoundManager:StopVoice(FadeOutTime) end
function ASoundManager:StopAllSe() end
---@param waitFadeIn boolean
function ASoundManager:SetWaitFadeIn(waitFadeIn) end
---@param volType EKSVolumeType
---@param Volume float
function ASoundManager:SetVolume(volType, Volume) end
function ASoundManager:SetupSelector() end
---@param eTimeZone ETimeZoneType
function ASoundManager:SetupEnvSoundOnCollect(eTimeZone) end
---@param bIsBattle boolean
---@return boolean
function ASoundManager:SetupBattleChangeEnvSound(bIsBattle) end
---@param bSkip boolean
function ASoundManager:SetSkipResumeEnvSoundByOnLevelShown(bSkip) end
---@param Category EACF_CATEGORY
---@param Volume float
---@param Time float
---@return boolean
function ASoundManager:SetFadeCategoryVolumeForEvent(Category, Volume, Time) end
---@param Category EACF_CATEGORY
---@param Volume float
---@param Time float
---@return boolean
function ASoundManager:SetFadeCategoryVolume(Category, Volume, Time) end
---@param dspBusType EKSDspBusType
function ASoundManager:SetDspBusToSeAndVoice(dspBusType) end
---@param dspBusType EKSDspBusType
---@param Component UAtomComponent
function ASoundManager:SetDspBusToComponent(dspBusType, Component) end
---@param devVolType EKSDeviceVolumeType
---@param deviceVolume float
function ASoundManager:SetDeviceVolume(devVolType, deviceVolume) end
---@param bIsDayTime boolean
function ASoundManager:SetCurrentBGMSelector(bIsDayTime) end
---@param CategoryName FString
---@param Volume float
---@return boolean
function ASoundManager:SetCategoryVolumeByName(CategoryName, Volume) end
---@param Category EACF_CATEGORY
---@param Volume float
---@return boolean
function ASoundManager:SetCategoryVolume(Category, Volume) end
---@param SelectorName FName
---@param SelectorLabel FName
---@return boolean
function ASoundManager:SetBgmSelector(SelectorName, SelectorLabel) end
---@param BlockIndex int32
---@return boolean
function ASoundManager:SetBgmNextBlockIndex(BlockIndex) end
---@param strAisacName FString
---@param fValue float
function ASoundManager:SetAISACVolume(strAisacName, fValue) end
---@param bBattle boolean
---@param bEvent boolean
function ASoundManager:ResumeEnvGaya(bBattle, bEvent) end
---@param FadeOutTime float
---@param FadeInTime float
---@param Priority int32
---@param bIsDebugPlay boolean
---@return boolean
function ASoundManager:RestoreBgmBeforePlayMusicRecord(FadeOutTime, FadeInTime, Priority, bIsDebugPlay) end
---@param noticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function ASoundManager:ResetEnvCollect(noticeType, Args) end
---@param FadeOutTime float
---@return boolean
function ASoundManager:RequestStopMusicRecord(FadeOutTime) end
---@param handleId int32
---@return boolean
function ASoundManager:RequestStopLoopSe(handleId) end
---@param FadeOutTime float
---@param stopBoth boolean
---@return boolean
function ASoundManager:RequestStopFadeBgm(FadeOutTime, stopBoth) end
---@return boolean
function ASoundManager:RequestStopBGM() end
function ASoundManager:RequestStopAllEventSe() end
---@param VoiceLabel FName
---@return boolean
function ASoundManager:RequestPlayVoiceByLabel(VoiceLabel) end
---@param BgmLabel FName
---@param FadeOutTime float
---@param FadeInTime float
---@param Priority int32
---@param IsDayTime boolean
---@param bIsDebugPlay boolean
---@return boolean
function ASoundManager:RequestPlayTitleBgmByLabel(BgmLabel, FadeOutTime, FadeInTime, Priority, IsDayTime, bIsDebugPlay) end
---@param SELabel FName
---@return boolean
function ASoundManager:RequestPlaySeByLabel(SELabel) end
---@param BgmLabel FName
---@param FadeOutTime float
---@param FadeInTime float
---@param Priority int32
---@param bIsDebugPlay boolean
---@return boolean
function ASoundManager:RequestPlayMusicRecord(BgmLabel, FadeOutTime, FadeInTime, Priority, bIsDebugPlay) end
---@param handleId int32
---@param SELabel FName
---@return boolean
function ASoundManager:RequestPlayLoopSe(handleId, SELabel) end
---@param BgmLabel FName
---@param FadeOutTime float
---@param FadeInTime float
---@param Priority int32
---@return boolean
function ASoundManager:RequestPlayInterruptBgmByLabel(BgmLabel, FadeOutTime, FadeInTime, Priority) end
---@param BgmLabel FName
---@param FadeOutTime float
---@param FadeInTime float
---@param Priority int32
---@param bIsDebugPlay boolean
---@return boolean
function ASoundManager:RequestPlayFadeMapChangeBgmByLabel(BgmLabel, FadeOutTime, FadeInTime, Priority, bIsDebugPlay) end
---@param BgmLabel FName
---@param FadeOutTime float
---@param FadeInTime float
---@param Priority int32
---@param bIsDebugPlay boolean
---@return boolean
function ASoundManager:RequestPlayFadeBgmByLabel(BgmLabel, FadeOutTime, FadeInTime, Priority, bIsDebugPlay) end
---@param SeName FString
function ASoundManager:RequestPlayEventSeByRowName(SeName) end
---@param SELabel FName
---@param success boolean
function ASoundManager:RequestPlayEventSeByLabel(SELabel, success) end
---@param BgmLabel FName
---@param Priority int32
---@param success boolean
---@param BeforSoundData FSoundData
function ASoundManager:RequestPlayBgmByLabel(BgmLabel, Priority, success, BeforSoundData) end
---@param BGMID int32
---@param Priority int32
---@param success boolean
---@param BeforSoundData FSoundData
function ASoundManager:RequestPlayBgmById(BGMID, Priority, success, BeforSoundData) end
---@param VoiceLabel FName
---@param success boolean
---@param CueName FString
---@param Duration float
function ASoundManager:RequestPlayBattleVoiceByLabel(VoiceLabel, success, CueName, Duration) end
---@param SELabel FName
---@param success boolean
function ASoundManager:RequestPlayBattleSeByLabel(SELabel, success) end
---@param Component UAtomComponent
---@param BgmLabel FName
---@return boolean
function ASoundManager:RequestPlay3DSeWithComponent(Component, BgmLabel) end
---@param FadeOutTime float
function ASoundManager:RequestFadeOutAllEventSe(FadeOutTime) end
---@param eTimeZone ETimeZoneType
function ASoundManager:RequestChangeEnvSound(eTimeZone) end
---@param CueSheetName FName
---@param cueLabel FName
---@param SoundCue USoundAtomCue
function ASoundManager:RegisterLoadedSoundCue(CueSheetName, cueLabel, SoundCue) end
---@param TempCharaVoices TArray<FName>
---@return boolean
function ASoundManager:RefreshCharacterVoiceResource(TempCharaVoices) end
---@param bBattle boolean
---@param bEvent boolean
function ASoundManager:PauseEnvGaya(bBattle, bEvent) end
---@return boolean
function ASoundManager:OnLevelShown() end
function ASoundManager:OnLevelHidden() end
---@param CueSheetName FString
---@return boolean
function ASoundManager:LoadEventCueSheetByEventName(CueSheetName) end
---@param CueSheetName FName
---@return boolean
function ASoundManager:LoadCueSheetByName(CueSheetName) end
---@return boolean
function ASoundManager:IsSkipResumeEnvSoundByOnLevelShown() end
---@return boolean
function ASoundManager:IsRequestChangeEnvSound() end
---@return boolean
function ASoundManager:IsEventSeFadeOut() end
---@return boolean
function ASoundManager:IsEndCollect() end
---@param CompType EKSAudioComponentType
---@return boolean
function ASoundManager:IsAtomPlaying(CompType) end
---@param CompType EKSAudioComponentType
---@return boolean
function ASoundManager:IsAtomPaused(CompType) end
---@param volType EKSVolumeType
---@return float
function ASoundManager:GetVolume(volType) end
---@return FName
function ASoundManager:GetPlayingBgmLabelOnMusicPlayer() end
---@param handleId int32
---@param success boolean
function ASoundManager:GetLoopSeHandle(handleId, success) end
---@param CueName FName
---@return USoundAtomCue
function ASoundManager:GetLoadedCue(CueName) end
---@return FName
function ASoundManager:GetLastPlayedNormalBGMLabel() end
---@param CueSheetName FName
---@return UAtomComponent
function ASoundManager:GetEventAtomComponent(CueSheetName) end
---@param devVolType EKSDeviceVolumeType
---@return float
function ASoundManager:GetDeviceVolume(devVolType) end
---@return FName
function ASoundManager:GetCurrentBgmLabel() end
---@param PlayingBgmData FSoundData
function ASoundManager:GetCurrentBgmData(PlayingBgmData) end
---@param CueSheetName FName
---@param outAssetPath FName
---@return boolean
function ASoundManager:GetCueSheetAssetPath(CueSheetName, outAssetPath) end
---@param Category EACF_CATEGORY
---@return float
function ASoundManager:GetCategoryVolumeForEvent(Category) end
---@param Category EACF_CATEGORY
---@return float
function ASoundManager:GetCategoryVolume(Category) end
function ASoundManager:GetBgmSelectorInfo() end
---@param eType EKSAudioComponentType
---@return FString
function ASoundManager:GetAtomCueName(eType) end
---@param CompType EKSAudioComponentType
---@return UAtomComponent
function ASoundManager:GetAtomComponent(CompType) end
function ASoundManager:FinishChangeEnvSound() end
function ASoundManager:Debug_UnregisterAllSoundCue() end
---@param Show boolean
function ASoundManager:Debug_ShowEnvSoundInfo(Show) end
---@param Show boolean
function ASoundManager:Debug_SetShowDeviceVolume(Show) end
---@param outCueSheetNames FString
function ASoundManager:Debug_GetLoadedCueSheetNames(outCueSheetNames) end
---@param outDebugInfo FString
function ASoundManager:Debug_GetCategoryInfo(outDebugInfo) end
---@param outDebugInfo FString
function ASoundManager:Debug_GetAtomInfo(outDebugInfo) end
---@param out3DSoundInfo FString
function ASoundManager:Debug_Get3DSoundInfo(out3DSoundInfo) end
---@param menuItem FDebugListMenuItem
---@return boolean
function ASoundManager:Debug_ChangeSEOnDecided(menuItem) end
function ASoundManager:Debug_ChangeSEListClose() end
---@param TargetActor AActor
---@return UAtomComponent
function ASoundManager:CreateAndAttach3DSEComponent(TargetActor) end
---@param FadeIn float
---@return boolean
function ASoundManager:ChangeNextBgmFadeInTime(FadeIn) end
---@param eType ELISTENER_TYPE
---@param pParentComponent USceneComponent
function ASoundManager:ChangeListenerPoint(eType, pParentComponent) end
---@param fDistanceLevel float
function ASoundManager:ChangeFocusPointDistanceLevel(fDistanceLevel) end
---@param FadeOut float
---@return boolean
function ASoundManager:ChangeCurrentBgmFadeOutTime(FadeOut) end
---@return float
function ASoundManager:CalcSeEnvVolume() end
---@param noticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function ASoundManager:BattleChange_SetupEnvSE(noticeType, Args) end
---@return boolean
function ASoundManager:ApplyEnvVolume() end


---@class AStoryManager : AAcqManagerBase
---@field m_StartSubStoryLabel FName
local AStoryManager = {}

---@param MainStoryLabel FName
---@return boolean
function AStoryManager:StartMainStory(MainStoryLabel) end
function AStoryManager:ShowSubStoryStartUI() end
function AStoryManager:ShowSubStoryResult() end
function AStoryManager:OnFinishSubStoryStartEvent() end
function AStoryManager:OnFinishSubStoryCompleteEvent() end
---@param noticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function AStoryManager:OnFinishMainStoryEvent(noticeType, Args) end
---@param scenarioFileName FString
function AStoryManager:Debug_StartAutoPlay(scenarioFileName) end
---@param bEnable boolean
function AStoryManager:Debug_ShowDebugInfo(bEnable) end
---@param mainStoryTaskId int32
---@param bFromStartingTask boolean
function AStoryManager:Debug_PlayMainStoryTaskEvent(mainStoryTaskId, bFromStartingTask) end
---@param subStoryLabel FName
---@return boolean
function AStoryManager:CompleteFakeSubStory(subStoryLabel) end
---@param SelectIndex int32
function AStoryManager:CallbackOnDialogCloseFinish(SelectIndex) end
---@param noticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function AStoryManager:CallbackEventEnd(noticeType, Args) end


---@class ASwitchIndoorTrigger : AMJBoxTrigger
---@field m_bEnableGateKeeper boolean
---@field SwitchVisibilityOnPostTick boolean
---@field Fix_Redmine9113 boolean
---@field Fix_Redmine13664 boolean
---@field m_apcActorIndoor TArray<TSoftObjectPtr<AActor>>
---@field m_apcTranslucentActorListOnEnter TArray<TSoftObjectPtr<AActor>>
---@field m_apcActorOutdoor TArray<TSoftObjectPtr<AActor>>
---@field m_apcTranslucentActorListOnExit TArray<TSoftObjectPtr<AActor>>
---@field m_HouseInLink TArray<TSoftObjectPtr<ASwitchIndoorTrigger>>
---@field m_HouseOutCancel TArray<TSoftObjectPtr<ASwitchIndoorTrigger>>
---@field m_fAnimTime float
---@field m_nIndoorFloor int32
---@field m_nOutdoorFloor int32
---@field m_bNotChangeVisible boolean
---@field m_bForceOutdoor boolean
---@field m_bNotChangeRenderSetting boolean
---@field m_bForceIndoorAtStart boolean
---@field m_bSkipInitializeProcess boolean
---@field m_bIsBar boolean
---@field m_nID int32
---@field m_bUseDoor boolean
---@field m_fDoorAnimTime float
---@field m_apcLightActorIndoor TArray<TSoftObjectPtr<AActor>>
---@field m_apcLightActorOutdoor TArray<TSoftObjectPtr<AActor>>
---@field m_fCharacterScaleIndoor float
---@field m_fCharacterScaleOutdoor float
---@field m_fCharacterHeightIndoor float
---@field m_fCharacterHeightOutdoor float
---@field m_CameraLockParams FCameraLockParams
---@field m_fCameraDistanceRateIndoor float
---@field m_fManualFocusDistanceIndoor float
---@field m_nStartEventFlag int32
---@field m_nEndEventFlag int32
---@field m_cEquipLanternDataIndoor FEquipLanternData
---@field m_cEquipLanternDataOutdoor FEquipLanternData
---@field m_cEncounTriggerDataIndoor FEncountFlagStartEndData
---@field m_cEncounTriggerDataOutdoor FEncountFlagStartEndData
---@field m_apcDebugActorIndoor TArray<AActor>
---@field m_apcDebugActorOutdoor TArray<AActor>
---@field m_apcDebugChangeLightChannnel TArray<AActor>
---@field m_bIsOnlyHouseOutSetting boolean
---@field m_astrHiddenObjLabelOnEnter TArray<FString>
---@field m_astrHiddenObjLabelOnExit TArray<FString>
---@field m_pMPC UMaterialParameterCollection
---@field m_apcActorIndoorWork TArray<AActor>
---@field m_apcTranslucentActorListOnEnterWork TArray<AActor>
---@field m_apcActorOutdoorWork TArray<AActor>
---@field m_apcTranslucentActorListOnExitWork TArray<AActor>
---@field m_apcMaterialIndoor TArray<UMaterialInstanceDynamic>
---@field m_apcMaterialOutdoor TArray<UMaterialInstanceDynamic>
---@field m_bIsIndoor boolean
---@field m_bIsIndoorPrev boolean
---@field m_eMaterialAnimState ESWITCH_INDOOR_ANIM_STATE
---@field m_fMaterialAnimElapsedTime float
---@field m_bInitialized boolean
---@field m_pcBorderBox UBoxComponent
---@field m_bOverlapBegin boolean
---@field m_bOverlapEnd boolean
---@field m_bCheckPartyChatFlag boolean
---@field m_pcDoorMeshComponent UStaticMeshComponent
---@field m_pcDoorMaterial UMaterialInstanceDynamic
---@field m_apcLightIndoorWork TArray<ULightComponent>
---@field m_apcLightOutdoorWork TArray<ULightComponent>
---@field m_afLightOriginIntensityIndoor TArray<float>
---@field m_afLightOriginIntensityOutdoor TArray<float>
---@field m_apcLightMaterialIndoor TArray<UMaterialInstanceDynamic>
---@field m_apcLightMaterialOutdoor TArray<UMaterialInstanceDynamic>
---@field m_eLightAnimState ESWITCH_INDOOR_ANIM_STATE
---@field m_fLightAnimElapsedTime float
---@field m_pcSoundAisacIndoor UAISACControlComponent
---@field m_pcSoundAisacOutdoor UAISACControlComponent
local ASwitchIndoorTrigger = {}

---@param pcActor AActor
---@param bVisible boolean
function ASwitchIndoorTrigger:SetVisibleLightPreview(pcActor, bVisible) end
---@param pcActor AActor
---@param bVisible boolean
function ASwitchIndoorTrigger:SetVisibleChild(pcActor, bVisible) end
---@param bIsIndoor boolean
function ASwitchIndoorTrigger:SetupFocusLength(bIsIndoor) end
---@param pcPlayer AKSCharacterBase
---@param fAnimTime float
---@param bModifyParty boolean
---@param bIsForceOutdoor boolean
---@return boolean
function ASwitchIndoorTrigger:SetupExit(pcPlayer, fAnimTime, bModifyParty, bIsForceOutdoor) end
---@param fAnimTime float
---@param pcPlayer AKSCharacterBase
---@param bModifyParty boolean
---@param bIsLevelChange boolean
function ASwitchIndoorTrigger:SetupEnter(fAnimTime, pcPlayer, bModifyParty, bIsLevelChange) end
function ASwitchIndoorTrigger:Setup() end
---@param pcRootActor AActor
---@param bIndoor boolean
function ASwitchIndoorTrigger:SetLightChannnelAllHierarchy(pcRootActor, bIndoor) end
---@param NPC AKSCharacterBase
function ASwitchIndoorTrigger:SetGateKeeperNpc(NPC) end
---@param PlaySE boolean
---@return boolean
function ASwitchIndoorTrigger:OpenDoor(PlaySE) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ASwitchIndoorTrigger:OnOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ASwitchIndoorTrigger:OnOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@return boolean
function ASwitchIndoorTrigger:IsVisibleChangeEnable() end
---@param pcPlayer AKSCharacterBase
---@return boolean
function ASwitchIndoorTrigger:IsIndoor(pcPlayer) end
---@param placeLabel FString
---@return boolean
function ASwitchIndoorTrigger:IsHiddenObjLabelCheck(placeLabel) end
function ASwitchIndoorTrigger:InitializeLight() end
---@return int32
function ASwitchIndoorTrigger:GetOutdoorFloor() end
---@return ASwitchIndoorTrigger
function ASwitchIndoorTrigger:GetLinkHouseTrigger() end
---@return int32
function ASwitchIndoorTrigger:GetIndoorFloor() end
---@return AKSCharacterBase
function ASwitchIndoorTrigger:GetGateKeeperNpc() end
function ASwitchIndoorTrigger:ForceOpenDoor() end
function ASwitchIndoorTrigger:CloseDoor() end
function ASwitchIndoorTrigger:CheckCollision() end
---@return boolean
function ASwitchIndoorTrigger:CanOpenDoor() end
---@param bIndoor boolean
function ASwitchIndoorTrigger:ApplyIndoorToMpcAndPostProcess(bIndoor) end


---@class ASystemDataCleanupWorker : AActor
---@field m_targetSystemData UKSSaveSystem
local ASystemDataCleanupWorker = {}

---@param SystemData UKSSaveSystem
function ASystemDataCleanupWorker:StartClearnup(SystemData) end
---@return boolean
function ASystemDataCleanupWorker:GetIsComplete() end


---@class ATimeManager : AAcqManagerBase
---@field m_nGamePlayTime int32
---@field m_bGamePlayCountPause boolean
---@field m_fMillisecond float
local ATimeManager = {}

---@param fStartTime float
function ATimeManager:StartGamePlayTime(fStartTime) end
---@param bPause boolean
function ATimeManager:PauseGamePlayTime(bPause) end
---@return float
function ATimeManager:GetGamePlayTime() end


---@class ATimeZoneDirector : AActor
---@field m_pcTimeZoneComponentList TArray<UTimeZoneComponentBase>
---@field m_pcLightList TArray<UTimeZoneLightComponent>
---@field m_pcLightParamList TArray<ATimeZoneLightParam>
---@field m_pcEmitterList TArray<UTimeZoneEmitterComponent>
---@field m_pcEmitterParamList TArray<ATimeZoneEmitterParam>
---@field m_pcSoundList TArray<UTimeZoneSoundComponent>
---@field m_pcSoundParamList TArray<ATimeZoneSoundParam>
local ATimeZoneDirector = {}



---@class ATimeZoneEmitterParam : ATimeZoneParamBase
---@field m_bActive boolean
local ATimeZoneEmitterParam = {}



---@class ATimeZoneLightParam : ATimeZoneParamBase
---@field m_fIntensity float
---@field m_cColor FLinearColor
local ATimeZoneLightParam = {}



---@class ATimeZoneManager : AAcqManagerBase
---@field m_pTimeOperator UTimeOperator
---@field m_pSequencer ALevelSequenceActor
---@field m_pcOriginalSequence ULevelSequence
---@field m_pcReplaceSequence ULevelSequence
---@field m_pcPrevSequence ULevelSequence
---@field m_TheaterCache_CurrentSequence ULevelSequence
---@field m_TheaterCache_PrevSequence ULevelSequence
---@field m_bEnable boolean
local ATimeZoneManager = {}

---@param eNewType ETimeZoneType
function ATimeZoneManager:SetTimeZoneType(eNewType) end
---@param WorldContextObject UObject
function ATimeZoneManager:SetTimeZoneDarkAreaForEditor(WorldContextObject) end
---@param bEnable boolean
function ATimeZoneManager:SetTempDarkSurfaceEnable(bEnable) end
---@param WorldContextObject UObject
---@param bIndoor boolean
function ATimeZoneManager:SetIndoorPostProcessEnableForEditor(WorldContextObject, bIndoor) end
---@param bIndoor boolean
function ATimeZoneManager:SetIndoorPostProcessEnable(bIndoor) end
---@param nFrame int32
function ATimeZoneManager:SetFrameTimeZoneSequencer(nFrame) end
---@param bDisable boolean
function ATimeZoneManager:SetForcedChangeTimeDisable(bDisable) end
---@param bEnable boolean
function ATimeZoneManager:SetEnable(bEnable) end
---@param bEnable boolean
function ATimeZoneManager:SetChangeTimeEnable(bEnable) end
---@param fNewValue float
function ATimeZoneManager:SetAddChangeValueTime(fNewValue) end
function ATimeZoneManager:RevertTimezoneSequencerAfterTheater() end
function ATimeZoneManager:RevertTimeZoneSequencer() end
---@param WorldContextObject UObject
function ATimeZoneManager:ResetTimeZoneSequencerForEditor(WorldContextObject) end
function ATimeZoneManager:Reset() end
---@param sequencerLabel FName
function ATimeZoneManager:RequestChangeTimezoneSequencer(sequencerLabel) end
---@param bNextTimeZone boolean
function ATimeZoneManager:Refresh(bNextTimeZone) end
---@param eNoticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function ATimeZoneManager:OnStartChangeLevel(eNoticeType, Args) end
---@param levelId FName
---@param levelType ELEVEL_TYPE
---@param notice ELevelTransitionNotice
function ATimeZoneManager:OnStartChangeFieldLevel(levelId, levelType, notice) end
---@param eNoticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function ATimeZoneManager:OnPreFinishChangeLevel(eNoticeType, Args) end
---@param eNoticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function ATimeZoneManager:OnFinishChangeLevel(eNoticeType, Args) end
---@param eNoticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function ATimeZoneManager:OnChangeDarkState(eNoticeType, Args) end
---@return ETimeZoneType
function ATimeZoneManager:IsNextTimeZoneCheck() end
---@return boolean
function ATimeZoneManager:IsDayTime() end
---@return ETimeZoneType
function ATimeZoneManager:GetTimeZoneType() end
---@return int32
function ATimeZoneManager:GetSequencerCurrentFrame() end
---@return ALevelSequenceActor
function ATimeZoneManager:GetSequencer() end
---@return ETimeZoneType
function ATimeZoneManager:GetNextTimeZoneType() end
---@return boolean
function ATimeZoneManager:GetChangeTimeEnable() end
---@param pSequencer ULevelSequence
function ATimeZoneManager:ChangeTimeZoneSequencer(pSequencer) end
---@param WorldContextObject UObject
---@param ETimeZoneType ETimeZoneType
function ATimeZoneManager:ChangeTimeZoneForEditor(WorldContextObject, ETimeZoneType) end
function ATimeZoneManager:ChangeNextTimeZone() end
function ATimeZoneManager:CacheTimezoneSequencerBeforeTheater() end
function ATimeZoneManager:ApplyReplaceTimezoneSequencer() end


---@class ATimeZoneParamBase : AActor
---@field m_nIndex int32
---@field m_eType ETimeZoneObjectType
local ATimeZoneParamBase = {}



---@class ATimeZoneSoundParam : ATimeZoneParamBase
---@field m_bEnable boolean
local ATimeZoneSoundParam = {}



---@class ATitleBackgroundMoviePlayerBase : AActor
---@field m_ManaComponent UManaComponent
local ATitleBackgroundMoviePlayerBase = {}



---@class ATriggerManager : AAcqManagerBase
---@field m_apTriggerList TArray<AKSTriggerBase>
---@field m_bReserveUpdateEnableSwitchIndoorTrigger boolean
local ATriggerManager = {}

---@param TriggerList TArray<AKSTriggerBase>
function ATriggerManager:SortTriggerList(TriggerList) end
---@param TriggerName FName
---@return boolean
function ATriggerManager:SetUpEncountTriggerByName(TriggerName) end
---@param TriggerName FName
---@return boolean
function ATriggerManager:SetUpCameraLockTriggerByName(TriggerName) end
---@param Val boolean
function ATriggerManager:SetReserveUpdateEnableSwitchIndoorTrigger(Val) end
---@param holyTorchItemTrigger AHolyTorchItemTriggerBase
function ATriggerManager:SetHolyTorchItemTrigger(holyTorchItemTrigger) end
---@param NewList TArray<int32>
function ATriggerManager:SetEnableSwitchIndoorTriggerList(NewList) end
---@param bEnable boolean
function ATriggerManager:SetEnableSwitchIndoorTrigger(bEnable) end
---@param nID int32
function ATriggerManager:RemoveEnableSwitchIndoorTriggerList(nID) end
---@param eNoticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function ATriggerManager:OnFinishChangeLevel(eNoticeType, Args) end
---@return AHolyTorchItemTriggerBase
function ATriggerManager:GetHolyTorchItemTrigger() end
---@param bShow boolean
function ATriggerManager:Debug_SetShowLadderTrigger(bShow) end
---@param bShow boolean
function ATriggerManager:Debug_SetShowCanoeDockTrigger(bShow) end
function ATriggerManager:Debug_OutputTriggerInfo() end
---@return boolean
function ATriggerManager:Debug_GetShowLadderTrigger() end
---@return boolean
function ATriggerManager:Debug_GetShowCanoeDockTrigger() end
function ATriggerManager:ClearHolyTorchItemTrigger() end
function ATriggerManager:ClearEnableSwitchIndoorTriggerList() end
---@param Trigger ACameraLockTrigger
---@return boolean
function ATriggerManager:ApplyCameraLockTrigger(Trigger) end
---@param nID int32
function ATriggerManager:AddEnableSwitchIndoorTriggerList(nID) end


---@class ATutorialAutoCaptureActor : AActor
---@field m_State ETutorialAutoCaptureActorState
local ATutorialAutoCaptureActor = {}

---@param State ETutorialAutoCaptureActorState
function ATutorialAutoCaptureActor:SetState(State) end
---@return ETutorialAutoCaptureActorState
function ATutorialAutoCaptureActor:GetState() end


---@class ATutorialManager : AAcqManagerBase
---@field TutorialFinishEvent FTutorialManagerTutorialFinishEvent
---@field TutorialType ETUTORIAL_TYPE
---@field RequestCharaID TArray<int32>
---@field RequestTutorialType TArray<ETUTORIAL_TYPE>
---@field TutorialListData FDataTableTutorialList
---@field TutorialFlagPartData FTutorialFlagPart
---@field UITutorial UUITutorialBase
---@field IsEndCard boolean
---@field IsEpilouge boolean
local ATutorialManager = {}

function ATutorialManager:UpdateMain() end
function ATutorialManager:UpdateFinish() end
---@param Type ETUTORIAL_TYPE
---@param FindData boolean
function ATutorialManager:SetTutorialData(Type, FindData) end
---@param ListData FDataTableTutorialList
---@param AutoPushPop boolean
---@param ForcedDisplay boolean
---@param IsOpen boolean
---@param Tutorial UUITutorialBase
function ATutorialManager:OpenTutorialListData(ListData, AutoPushPop, ForcedDisplay, IsOpen, Tutorial) end
---@param Label FName
---@param ForcedDisplay boolean
---@param IsOpen boolean
---@param CharaID int32
function ATutorialManager:OpenTutorialFromLabel(Label, ForcedDisplay, IsOpen, CharaID) end
---@param Type ETUTORIAL_TYPE
---@param ForcedDisplay boolean
---@param IsOpen boolean
---@param CharaID int32
function ATutorialManager:OpenTutorial(Type, ForcedDisplay, IsOpen, CharaID) end
---@param Type ETUTORIAL_TYPE
---@param ForcedDisplay boolean
---@param IsOpen boolean
function ATutorialManager:OpenEndCardEpilogue(Type, ForcedDisplay, IsOpen) end
---@param Type ETUTORIAL_TYPE
---@param ForcedDisplay boolean
---@param IsOpen boolean
---@param CharaID int32
function ATutorialManager:OpenEndCard(Type, ForcedDisplay, IsOpen, CharaID) end
function ATutorialManager:OnTutorialFinish() end
---@return boolean
function ATutorialManager:OnStateFinish() end
---@return boolean
function ATutorialManager:IsRunningTutorial() end
---@return boolean
function ATutorialManager:IsExsistRequest() end
---@param FlagPartLabels TArray<FName>
---@param PageData TArray<FDataTableTutorialPageData>
function ATutorialManager:GetTutorialPageDataFromFlagPartLabels(FlagPartLabels, PageData) end
---@param PageData TArray<FDataTableTutorialPageData>
---@param CheckNextPage boolean
function ATutorialManager:GetTutorialPageData(PageData, CheckNextPage) end
---@return int32
function ATutorialManager:GetRequestCharaID() end
---@param CharacterID int32
---@param PageLabelIndex int32
function ATutorialManager:GetPageLabelIndex(CharacterID, PageLabelIndex) end
---@param RequestClear boolean
function ATutorialManager:ForceTutorialClose(RequestClear) end
function ATutorialManager:ExecuteTutorialFinishEvent() end
---@param OpenedFlagPartLabels TArray<FName>
---@return boolean
function ATutorialManager:CheckOpendTutorialList(OpenedFlagPartLabels) end
function ATutorialManager:ChangeStateMain() end


---@class AUIResourceManager : AAcqManagerBase
---@field LoadedAssets TMap<FName, UObject>
---@field LoadHandles TArray<ULoadAssetHandle>
local AUIResourceManager = {}

---@param Category EUIResCategory
function AUIResourceManager:UnloadAssetsByCategory(Category) end
---@param LabelList TArray<FName>
function AUIResourceManager:UnloadAssetList(LabelList) end
---@param resLabel FName
function AUIResourceManager:UnloadAsset(resLabel) end
---@param DataTable UDataTable
function AUIResourceManager:SetDataTable(DataTable) end
function AUIResourceManager:ReloadResources() end
function AUIResourceManager:OnCompletedLoadFirst() end
function AUIResourceManager:OnCompletedLoadCommon() end
---@param dbName FName
---@param notice EDBNoticeType
function AUIResourceManager:NotifyUIResourceDB(dbName, notice) end
function AUIResourceManager:LoadFirstAssetsAsync() end
function AUIResourceManager:LoadCommonAssetsAsync() end
---@param assetLabels TArray<FName>
---@param cb FLoadAssetSyncByLabelCb
function AUIResourceManager:LoadAssetSyncByLabel(assetLabels, cb) end
---@param assetLabels TArray<FName>
---@param cb FLoadAssetsAsyncByLabelCb
function AUIResourceManager:LoadAssetsAsyncByLabel(assetLabels, cb) end
---@param Category EUIResCategory
---@param cb FLoadAssetsAsyncByCategoryCb
function AUIResourceManager:LoadAssetsAsyncByCategory(Category, cb) end
---@return boolean
function AUIResourceManager:IsLoading() end
---@return boolean
function AUIResourceManager:IsLoadedFirst() end
---@return boolean
function AUIResourceManager:IsLoadedCommon() end
---@param resLabel FName
---@return UTexture2D
function AUIResourceManager:GetTexture2D(resLabel) end
---@param resLabel FName
---@return UStaticMesh
function AUIResourceManager:GetStaticMesh(resLabel) end
---@return int32
function AUIResourceManager:GetResourceCount() end
---@return int32
function AUIResourceManager:GetLoadHandleCount() end


---@class AVibrationManager : AAcqManagerBase
---@field LastPlayRequest FPlayRequest
---@field m_Ps5VibratonComp UAudioComponent
---@field m_SoundSubmixForPS5Vibration USoundSubmixBase
local AVibrationManager = {}

---@param vibLabel FName
---@param Power float
---@param Loop boolean
---@param LoopInterval int32
---@return boolean
function AVibrationManager:PlayVibrationByLabel(vibLabel, Power, Loop, LoopInterval) end
---@param vibLabel FName
---@param Power EVibrationPower
---@param Loop boolean
---@param LoopInterval int32
---@return boolean
function AVibrationManager:PlayVibration2ByLabel(vibLabel, Power, Loop, LoopInterval) end
---@param VibrationLabel FName
---@param PlayIndex int32
---@param Power float
---@param Loop boolean
---@param LoopInterval int32
---@return boolean
function AVibrationManager:PlayVibration(VibrationLabel, PlayIndex, Power, Loop, LoopInterval) end
---@param vibLabel FName
---@param Power float
---@param Loop boolean
---@param LoopInterval int32
---@return boolean
function AVibrationManager:ForcePlayVibrationByLabel(vibLabel, Power, Loop, LoopInterval) end


---@class AWeaponMasterEventFlow : AActor
local AWeaponMasterEventFlow = {}

function AWeaponMasterEventFlow:Start() end
---@return boolean
function AWeaponMasterEventFlow:IsRunning() end
function AWeaponMasterEventFlow:ExecFlow() end


---@class AWorldMapActorBase : AActor
---@field OnFinishedSetup FWorldMapActorBaseOnFinishedSetup
---@field m_PivotComponents TArray<UWorldMapPivotComponentBase>
---@field m_WorldMapLabelToPivotComponents TMap<FName, UWorldMapPivotComponentBase>
---@field m_GlobeRotationLimit_Current FVector2D
---@field m_GlobeRotationLimit_Define TMap<EWorldMapZoomType, FVector2D>
---@field m_CurrentNormalizedTime float
---@field m_SelectingPivotLabel FName
---@field m_WorldMapGlobeState EWorldMapGlobeState
---@field m_BlurStrength float
---@field m_WidgetOpacity float
---@field m_WidgetScale float
---@field m_FrameWidgetScale float
---@field m_DarkEffectParticleTemplate UParticleSystem
---@field m_SacredFireParticleTemplate UParticleSystem
---@field m_SacredFireLineParticleTemplate UParticleSystem
---@field m_DarkAreaPartcleComponents TMap<FName, UDarkAreaParticleComponent>
---@field m_AutoRotateCurrentTime float
---@field m_AutoRotateDurationTime float
---@field m_AutoRotateAnimCurve UCurveFloat
---@field m_AutoRotateTarget FVector
local AWorldMapActorBase = {}

function AWorldMapActorBase:WorldMapActorNotice__DelegateSignature() end
---@param DeltaTime float
---@param IsMovedCursor boolean
---@param rotationDelta FVector2D
---@return boolean
function AWorldMapActorBase:UpdateZoom(DeltaTime, IsMovedCursor, rotationDelta) end
---@param NewZoomType EWorldMapZoomType
---@param GazePoint FVector2D
---@return boolean
function AWorldMapActorBase:StartCameraZoomIfPossible(NewZoomType, GazePoint) end
---@param NewState EWorldMapGlobeState
function AWorldMapActorBase:SetWorldMapGlobeState(NewState) end
function AWorldMapActorBase:SetupDarkAreaEffect() end
---@param WorldMapLabel FName
function AWorldMapActorBase:SetSelectingPivotLable(WorldMapLabel) end
---@param NewRotation FRotator
---@param outClanpedNewRotation FRotator
function AWorldMapActorBase:SetGlobeRotation(NewRotation, outClanpedNewRotation) end
---@param NewLocation FVector
---@param outClanpedNewLocation FVector
function AWorldMapActorBase:SetGlobeLocation(NewLocation, outClanpedNewLocation) end
---@param NewCurrentNormalizedTime float
function AWorldMapActorBase:SetCurrentNormalizedTime(NewCurrentNormalizedTime) end
---@param WorldMapLabel FName
---@param AnimCurve UCurveFloat
---@param Speed float
function AWorldMapActorBase:RotateToCenterByLebelWithAnim(WorldMapLabel, AnimCurve, Speed) end
---@param WorldMapLabel FName
function AWorldMapActorBase:RotateToCenterByLebel(WorldMapLabel) end
---@param RotateDelta FVector2D
---@param outClampedRotateDelta FVector2D
function AWorldMapActorBase:RotateGlobe(RotateDelta, outClampedRotateDelta) end
---@param NewZoomType EWorldMapZoomType
---@param GazePoint FVector2D
function AWorldMapActorBase:RequestStartCameraZoom(NewZoomType, GazePoint) end
function AWorldMapActorBase:RefreshWorldMapMaskInPlayerSelect() end
function AWorldMapActorBase:RefreshWorldMapMask() end
function AWorldMapActorBase:PlayOpenSequencer() end
function AWorldMapActorBase:PlayOpenPlayerSelectSequencer() end
function AWorldMapActorBase:PlayCloseSequencer() end
function AWorldMapActorBase:PlayClosePlayerSelectSequencer() end
---@param GazePoint FVector2D
function AWorldMapActorBase:OverrideGazePoint(GazePoint) end
---@param initZoomType EWorldMapZoomType
function AWorldMapActorBase:OpenWorldMapActor(initZoomType) end
---@param isReachedX boolean
---@param isReachedY boolean
function AWorldMapActorBase:IsReachedGlobeInRotationLimit(isReachedX, isReachedY) end
---@return boolean
function AWorldMapActorBase:IsPlayingZoomSequencer() end
---@return boolean
function AWorldMapActorBase:IsPlayingTimeZoneSequencer() end
---@return boolean
function AWorldMapActorBase:IsPlayingOpenSequencer() end
---@return boolean
function AWorldMapActorBase:IsPlayingOpenPlayerSelectSequencer() end
---@return boolean
function AWorldMapActorBase:IsPlayingCloseSequencer() end
---@return boolean
function AWorldMapActorBase:IsPlayingClosePlayerSelectSequencer() end
---@return boolean
function AWorldMapActorBase:IsPlayingAnySequencer() end
function AWorldMapActorBase:HideAllDarkAreaEffect() end
---@return float
function AWorldMapActorBase:GetZoomAlpha() end
---@return EWorldMapGlobeState
function AWorldMapActorBase:GetWorldMapGlobeState() end
---@return float
function AWorldMapActorBase:GetWidgetScale() end
---@return float
function AWorldMapActorBase:GetWidgetOpacity() end
---@return TArray<UWorldMapPivotComponentBase>
function AWorldMapActorBase:GetSortedPivotComponentsByYaw() end
---@return EWorldMapZoomType
function AWorldMapActorBase:GetPrevZoomState() end
---@return TArray<UWorldMapPivotComponentBase>
function AWorldMapActorBase:GetPivotComponents() end
---@param RowName FName
---@param EffectParam FWorldMapDarkAreaEffectParam
---@return UDarkAreaParticleComponent
function AWorldMapActorBase:GetOrCreateDarkAreaEffectComponent(RowName, EffectParam) end
---@return EWorldMapZoomType
function AWorldMapActorBase:GetNextZoomState() end
---@return boolean
function AWorldMapActorBase:GetIsZooming() end
---@return FVector
function AWorldMapActorBase:GetGlobeWorldPosition() end
---@return FRotator
function AWorldMapActorBase:GetGlobeRotation() end
---@return FVector
function AWorldMapActorBase:GetGlobeLocation() end
---@return USceneComponent
function AWorldMapActorBase:GetGlobeComponent() end
---@return AWorldMapGlobeActorBase
function AWorldMapActorBase:GetGlobeActor() end
---@return float
function AWorldMapActorBase:GetFrameWidgetScale() end
---@return EWorldMapZoomType
function AWorldMapActorBase:GetCurrentZoomState() end
---@return float
function AWorldMapActorBase:GetClosePlayerSelectSequencerDuration() end
---@return float
function AWorldMapActorBase:GetBlurStrength() end
---@param WorldMapLabel FName
---@return UWorldMapPivotComponentBase
function AWorldMapActorBase:FindPivotComponent(WorldMapLabel) end
function AWorldMapActorBase:CloseWorldMapActor() end


---@class AWorldMapFastTraveler : AActor
---@field m_TargetWorldMapData FWorldMapTable
---@field m_OnCloseConfirmDialog FWorldMapFastTraveler_OnCloseConfirmDialog
---@field m_OnCloseFailedDialog FWorldMapFastTraveler_OnCloseFailedDialog
local AWorldMapFastTraveler = {}

---@param WorldMapData FWorldMapTable
---@return boolean
function AWorldMapFastTraveler:IsPossibleFastTravel(WorldMapData) end
---@param ButtonIndex int32
function AWorldMapFastTraveler:ExecOnCloseFailedDialogCallback(ButtonIndex) end
---@param ButtonIndex int32
function AWorldMapFastTraveler:ExecOnCloseConfirmDialogCallback(ButtonIndex) end
---@param DestinationData FWorldMapTable
---@param OnCloseConfirmDialog FExecFastTravelIfPossibleOnCloseConfirmDialog
---@param OnCloseFailedDialog FExecFastTravelIfPossibleOnCloseFailedDialog
---@return EJudgeFastTravelAvailableResponse
function AWorldMapFastTraveler:ExecFastTravelIfPossible(DestinationData, OnCloseConfirmDialog, OnCloseFailedDialog) end
---@return boolean
function AWorldMapFastTraveler:DEBUG_GetIsForceFastTravel() end
---@param Icons TMap<FName, UWorldMapIconBase>
---@return boolean
function AWorldMapFastTraveler:CanFastTravelSomeWhere(Icons) end


---@class AWorldMapGlobeActorBase : AActor
---@field m_WorldMapDynamicMaterial UMaterialInstanceDynamic
---@field m_MaterialResourceLabel TMap<FName, FName>
---@field m_MaskAreaParamName TMap<EWorldMapMaskArea, FName>
---@field m_PrologueMaskAreaParamName TMap<EWorldMapPrologueMaskArea, FName>
---@field m_IslandLayerAreaParamName TMap<EWorldMapIslandLayerArea, FName>
---@field m_DisableMaskInPlayerSelect TArray<EWorldMapMaskArea>
---@field m_DisablePrologueMaskInPlayerSelect TArray<EWorldMapPrologueMaskArea>
local AWorldMapGlobeActorBase = {}

---@param MaskArea EWorldMapPrologueMaskArea
---@param isMasked boolean
function AWorldMapGlobeActorBase:SetIsMaskedPrologueArea(MaskArea, isMasked) end
---@param MaskArea EWorldMapMaskArea
---@param isMasked boolean
function AWorldMapGlobeActorBase:SetIsMaskedArea(MaskArea, isMasked) end
---@param IsEnable boolean
function AWorldMapGlobeActorBase:SetIsEnableMasksForPlayerSelect(IsEnable) end
---@param IsEnable boolean
function AWorldMapGlobeActorBase:SetIsEnableMask(IsEnable) end
---@param MaskArea EWorldMapIslandLayerArea
---@param isDisplayed boolean
function AWorldMapGlobeActorBase:SetIsDisplayedIslandLayer(MaskArea, isDisplayed) end
---@return UMaterialInstanceDynamic
function AWorldMapGlobeActorBase:GetWorldMapDynamicMaterial() end


---@class FAISACCtrlParam
---@field AISACName FString
---@field fVolume float
local FAISACCtrlParam = {}



---@class FAbilityDataBase : FTableRowBase
---@field ID int32
---@field AbilityID int32
---@field DisplayName FName
---@field Detail FName
---@field CommandActor TSoftClassPtr<AActionCommandBase>
---@field AbilityType EABILITY_TYPE
---@field AbilityUseType EABILITY_USE_TYPE
---@field AlwaysDisable boolean
---@field Attribute EATTRIBUTE_TYPE
---@field DependWeapon boolean
---@field RestrictWeapon EWEAPON_CATEGORY
---@field TargetType EBATTLE_TARGET_TYPE
---@field ExceptEnforcer boolean
---@field CostType EABILITY_COST_TYPE
---@field CostValue int32
---@field HitRatio int32
---@field CriticalRatio int32
---@field CriticalPower int32
---@field AbilityRatio int32
---@field BaseCount int32
---@field MinimumCount int32
---@field RandomCountMin int32
---@field RandomCountMax int32
---@field EstimateOrderType EBATTLE_ACTION_ORDER_ESTIMATE_TYPE
---@field EstimateOrderCount int32
---@field Ailment TArray<FAilmentHandler>
---@field KeepBoostEffect boolean
---@field EnableItemAll boolean
---@field EnableSkillAll boolean
---@field EnableConvergence boolean
---@field EnableDiffusion boolean
---@field EnableReflection boolean
---@field EnableCounter boolean
---@field EnableHideOut boolean
---@field EnableRepeat boolean
---@field EnableCover boolean
---@field EnableProvoke boolean
---@field EnableDisableMagic boolean
---@field EnableEnchant boolean
---@field EnableChaseAttack boolean
---@field EnableWeakCheckAll boolean
---@field EnableNormalAttackAll boolean
---@field EnableSession boolean
---@field EnableBusinessSupport boolean
---@field EnableForceWeakness boolean
---@field EnableNoUseMaterial boolean
---@field EnableSwitchWeapon boolean
---@field EnableCompensationMagic boolean
---@field EnableExcitement boolean
---@field SongAbilityFlag boolean
---@field DanceAbilityFlag boolean
---@field EnableAutoTameMonster boolean
---@field UseAbilityCamera boolean
---@field ActionCommandSequencer TSoftObjectPtr<ULevelSequence>
---@field AbilitySE TArray<FName>
---@field SlideFrame int32
local FAbilityDataBase = {}



---@class FAbilitySetDataBase : FTableRowBase
---@field ID int32
---@field AbilitySetID int32
---@field NoBoost FName
---@field BoostLv1 FName
---@field BoostLv2 FName
---@field BoostLv3 FName
---@field MenuType ECOMMAND_MENU_TYPE
---@field SubMenuType ECOMMAND_SUB_MENU_TYPE
---@field MenuIconType EABILITY_ICON_TYPE
---@field MenuInfoLv int32
---@field SuperMagicLabel FName
---@field HyperMagicLabel FName
---@field RestrictWeaponLabel FName
---@field IsDivineAbility boolean
---@field InventorTurn int32
---@field CommandSealingSwitch TArray<boolean>
local FAbilitySetDataBase = {}



---@class FAchievementData : FTableRowBase
---@field ID int32
---@field AchievementType EAchievementType
---@field IntParam int32
---@field NameParam FName
---@field IntParams TArray<int32>
---@field NameParams TArray<FName>
---@field IsPlatinumAchievement boolean
---@field Key_PS4 FName
---@field Key_PS5 FName
---@field Key_Steam FName
local FAchievementData = {}



---@class FAchievementSaveData
---@field FieldCommandSuccessCount TMap<MJFieldCommandType, int32>
---@field SwoonNpcUniqueIds TArray<int32>
---@field LinerShipCount int32
---@field BosstAttackCount TMap<EBOOST_LEVEL, int32>
---@field BreakCount int32
---@field MaxDamageValue int32
---@field AcquisitionAbilityCount int32
---@field AcquisitionAdvancedAbilityCount int32
---@field AcquisitionDevineAbilityCount int32
local FAchievementSaveData = {}



---@class FAchievementTypeData : FTableRowBase
---@field ID int32
---@field ExcludeEnemyGroups TArray<FName>
local FAchievementTypeData = {}



---@class FAcqListViewWidgetEventPayload
---@field SelectedIndex int32
---@field SelectedEntryItem UAcqListViewEntryItemBase
local FAcqListViewWidgetEventPayload = {}



---@class FAcqManagerData : FTableRowBase
---@field ID int32
---@field BaseClassPath FString
---@field InstancePath TSoftObjectPtr<UObject>
---@field CreatePhase EMANAGER_CREATE_PHASE
local FAcqManagerData = {}



---@class FAcquisitionAbilityData
---@field AcquisitionFlag TArray<boolean>
local FAcquisitionAbilityData = {}



---@class FActionDelaySEData
---@field DelayFrame int32
---@field PlaySEID FName
local FActionDelaySEData = {}



---@class FActionOrderData
---@field m_eOrderType EACTION_ORDER_TYPE
---@field m_fDelayRatio float
---@field m_cCurrentOrderIcon UActionOrderIcon
---@field m_cNextOrderIcon_DEPLICATED UActionOrderIcon
---@field m_cOrderCharacter ABattleCharacterBase
---@field m_cSubOrderCharacter ABattleCharacterBase
---@field m_bUseIcon boolean
---@field m_nCurrentIndex int32
---@field m_nNextIndex int32
---@field m_nOrderCount int32
---@field m_bIsOrderChange boolean
---@field m_bIsOrderBuff boolean
---@field m_bSaved_IsOrderChange boolean
local FActionOrderData = {}



---@class FActivityData : FTableRowBase
---@field ID int32
---@field TitleText FName
local FActivityData = {}



---@class FActivitySubTaskData
---@field SubTaskLabel FName
---@field MainStoryLabel FName
local FActivitySubTaskData = {}



---@class FActivityTaskData : FTableRowBase
---@field ID int32
---@field ActivityLabelId int32
---@field SubTaskData TArray<FActivitySubTaskData>
local FActivityTaskData = {}



---@class FAddBalloonParam
---@field Text FTalkText
---@field VoiceLabel TArray<FName>
---@field TargetActor AActor
---@field Offset FVector2D
---@field EnableTail boolean
---@field UnderOffset FVector2D
---@field BalloonDir EEventBalloonDir
---@field BalloonOffsetScale float
---@field TextPosition EBALLOON_TEXT_POS
---@field EnableCustomFadeTime boolean
---@field FadeOutTime float
local FAddBalloonParam = {}



---@class FAdvancedAbility
---@field AbilityID FName
---@field HiddenText FName
local FAdvancedAbility = {}



---@class FAilmentDataBase : FTableRowBase
---@field ID int32
---@field AilmentType FString
---@field Target FString
---@field CalcType FString
---@field Attribute FString
---@field DiseaseRatio int32
---@field TargetDiseaseType FString
---@field TargetDiseaseName FString
---@field FieldDiseaseType FString
---@field OrderChangeType FString
---@field AdvValue1 int32
---@field AdvValue2 int32
---@field AdvValue3 int32
---@field AdvValue4 int32
local FAilmentDataBase = {}



---@class FAilmentHandler
---@field AilmentName FName
---@field InvocationValue int32
---@field InvocationTurn int32
---@field DiseaseRate int32
local FAilmentHandler = {}



---@class FAreaInfoData : FTableRowBase
---@field ID int32
---@field MiddleTownIconID FName
---@field AreaNameID FName
---@field AreaNameID_ForMissionRecord FName
---@field AreaEmblemID FName
local FAreaInfoData = {}



---@class FAsyncLoad
local FAsyncLoad = {}


---@class FBackPackItemData
---@field ItemLabel FName
---@field Num int32
local FBackPackItemData = {}



---@class FBarMenuStoryItem
---@field CharacterID int32
---@field RelationCharaId TArray<EPlayableCharacterID>
---@field Chapter int32
---@field ChapterText FText
---@field SubTitleText FText
---@field DetailLabel FName
---@field IsEnable boolean
---@field ProgressType EBARMENU_STORY_PROGRESSTYPE
---@field ItemType EBARMENU_STORY_SELECT_ITEM_TYPE
---@field StartEvent FName
---@field RecommandationLV int32
---@field NewFlag boolean
---@field MainStoryId int32
local FBarMenuStoryItem = {}



---@class FBarTalkDefine : FTableRowBase
---@field ID int32
---@field ItemEventList TArray<FName>
---@field NormalEventList TArray<FName>
local FBarTalkDefine = {}



---@class FBattleAICommandData : FTableRowBase
---@field m_strCommandname FName
---@field m_nRate int32
local FBattleAICommandData = {}



---@class FBattleAdditiveOrderData
---@field m_eOrderType EADDITIVE_ORDER_TYPE
---@field m_cOrderEnforcer ABattleCharacterBase
---@field m_acTarget TArray<ABattleCharacterBase>
---@field m_strExecAbilityName FName
---@field m_strExecAilmentName FName
---@field m_eAttributeType EATTRIBUTE_TYPE
---@field m_nAddValue01 int32
local FBattleAdditiveOrderData = {}



---@class FBattleCameraInitData : FTableRowBase
---@field DefaultPosition FVector
---@field DafaultRotate FRotator
---@field StartPosition FVector
---@field StartRotate FRotator
---@field FieldOfView float
---@field ManualFocusDistance float
---@field CurrentFocalLength float
---@field CurrentAperture float
local FBattleCameraInitData = {}



---@class FBattleEncountData : FTableRowBase
---@field GroupID FName
---@field Appearance int32
local FBattleEncountData = {}



---@class FBattleEncounterBase : FTableRowBase
---@field ID int32
---@field FirstEncount int32
---@field group TArray<FBattleEncountData>
local FBattleEncounterBase = {}



---@class FBattlePlacementListBase : FTableRowBase
---@field ID int32
---@field Placement FVector
---@field Priority int32
local FBattlePlacementListBase = {}



---@class FBattlePlacementTypeBase : FTableRowBase
---@field ID int32
---@field CameraType EBATTLE_CAMERA_TYPE
---@field Placement TArray<FName>
local FBattlePlacementTypeBase = {}



---@class FBattleReplayData : FTableRowBase
---@field Enable boolean
---@field PlayerID TArray<int32>
---@field PlayerJob TArray<int32>
---@field PlayerPos TArray<FVector>
---@field PlayerDisease TArray<int32>
---@field PlayerStatus TArray<int32>
---@field PlayerWeapon TArray<int32>
---@field MasqueradeTargetID int32
---@field MasqueradeJobID int32
---@field EnemyID TArray<int32>
---@field EnemyPos TArray<FVector>
---@field EnemyDisease TArray<int32>
---@field EnemyDiseaseParam TArray<int32>
---@field EnemyStatus TArray<int32>
---@field EnemyActionMode TArray<int32>
---@field SupportID TArray<int32>
---@field SupportStatus TArray<int32>
---@field ActionID int32
---@field ActionEnforcer int32
---@field PotentialityActionStatus int32
---@field ActionTarget int32
---@field ActionParam TArray<int32>
---@field FieldStatus int32
---@field FinishType int32
---@field CameraType int32
local FBattleReplayData = {}



---@class FBattleResultItemDropData : FTableRowBase
---@field ItemId FName
---@field Num int32
local FBattleResultItemDropData = {}



---@class FBattleSupportCharaInfoData : FTableRowBase
---@field ID int32
---@field HP int32
---@field PhysicalAttack int32
---@field MagicalPower int32
---@field PhysicalDefense int32
---@field MagicDefense int32
---@field HitRate int32
---@field EvasionRate int32
---@field ActionSpeed int32
---@field AttackActionRate int32
---@field ProtectActionRate int32
---@field SuccessRate int32
---@field RelationDecrease int32
local FBattleSupportCharaInfoData = {}



---@class FBattleVoiceDataList : FTableRowBase
---@field m_eBattleVoiceType EBATTLE_VOICE_TYPE
---@field m_acBattleVoiceData TArray<FBattleVoiceSetData>
local FBattleVoiceDataList = {}



---@class FBattleVoiceSetData : FTableRowBase
---@field ID int32
---@field BattleVoiceType EBATTLE_VOICE_TYPE
---@field TargetSelf boolean
---@field TargetID FName
---@field InvadeID FName
---@field SupporterID FName
---@field EnemyID FName
---@field EnemyGroupID FName
---@field DiseaseCategory EDISEASE_CATEGORY
---@field AbilityID FName
---@field EventFlag FName
---@field BossFlag boolean
---@field FieldCommandFlag boolean
---@field PinchFlag boolean
---@field JustBreakFlag boolean
---@field CounterFlag boolean
---@field SongFlag boolean
---@field DanceFlag boolean
---@field MeatFlag boolean
---@field Border int32
---@field PlayOnce boolean
---@field VoiceRate int32
---@field Priority int32
---@field VoiceLabel FName
local FBattleVoiceSetData = {}



---@class FBattleVoiceSetList : FTableRowBase
---@field m_strCharacterID FName
---@field m_astrBattleVoiceLabel TArray<FName>
local FBattleVoiceSetList = {}



---@class FBgmInfoData : FTableRowBase
---@field ID int32
---@field Label FString
---@field CueSheetName FName
---@field Asset TSoftObjectPtr<USoundAtomCue>
local FBgmInfoData = {}



---@class FBitFlagDefine : FTableRowBase
---@field ID int32
local FBitFlagDefine = {}



---@class FButtonTextData : FTableRowBase
---@field ID int32
---@field BaseText FString
---@field ItalianText FString
---@field FrenchText FString
---@field SpanishText FString
---@field GermanText FString
---@field UKText FString
---@field USText FString
---@field DvorokText FString
local FButtonTextData = {}



---@class FCameraLockParams
---@field bLock boolean
---@field bLockEnableX boolean
---@field bLockEnableY boolean
---@field bLockEnableZ boolean
---@field LockOffset FVector
local FCameraLockParams = {}



---@class FChallengeBattleStatus
---@field IsClear_ShinVide boolean
---@field IsClear_ShinVide_2nd boolean
---@field IsClear_KsNoble boolean
---@field IsClear_KsRogue boolean
local FChallengeBattleStatus = {}



---@class FCharResource_BattleReductionTable : FTableRowBase
---@field m_strBattleTextureNameList TArray<FString>
---@field m_strBattleMaterialNameList TArray<FString>
local FCharResource_BattleReductionTable = {}



---@class FCharacterActionResource : FTableRowBase
---@field FrActionList TArray<TSoftObjectPtr<UPaperFlipbook>>
---@field ReActionList TArray<TSoftObjectPtr<UPaperFlipbook>>
---@field LeActionList TArray<TSoftObjectPtr<UPaperFlipbook>>
---@field RiActionList TArray<TSoftObjectPtr<UPaperFlipbook>>
---@field Loop TArray<boolean>
---@field Height float
---@field TemplateSocket boolean
---@field WalkFootstep FName
---@field SpeedWalk float
---@field SpeedRun float
---@field ActionFootStep TArray<FName>
---@field ActionFootStepInterval TArray<float>
---@field LargeIconOffsetX float
---@field LargeIconOffsetY float
---@field LargeIconInvertOffsetX float
---@field SmallIconOffsetX float
---@field SmallIconOffsetY float
---@field SmallIconInvertOffsetX float
---@field TabIconOffsetX float
---@field TabIconOffsetY float
---@field InvadeListOffsetX float
---@field InvadeListOffsetY float
---@field InvadeListScale float
local FCharacterActionResource = {}



---@class FCharacterCostumeInfo
---@field EventFlag int32
---@field ResourceLabel FName
local FCharacterCostumeInfo = {}



---@class FCharacterFormData
---@field BalloonOffsetX float
---@field BalloonOffsetY float
---@field CollisionOffsetX float
---@field CollisionOffsetY float
---@field CollisionOffsetZ float
---@field CollisionExtentX float
---@field CollisionExtentY float
---@field CollisionExtentZ float
local FCharacterFormData = {}



---@class FCharacterFormDataSet : FTableRowBase
---@field ID int32
---@field CharaResourceLabel FName
---@field CharaActionLabel EKSCharacterAction
---@field FormData TArray<FCharacterFormData>
local FCharacterFormDataSet = {}



---@class FCharacterGridPanelParam
---@field PlayerID EPlayableCharacterID
---@field IsGrayOut boolean
local FCharacterGridPanelParam = {}



---@class FCharacterGrowData : FTableRowBase
---@field ID int32
---@field NextExp int32
---@field TotalExp int32
---@field Parameter FCharacterParam
---@field FCParameter FFieldCommandParam
local FCharacterGrowData = {}



---@class FCharacterParam
---@field HP int32
---@field MP int32
---@field BP int32
---@field SP int32
---@field POT int32
---@field ATK int32
---@field DEF int32
---@field MATK int32
---@field MDEF int32
---@field ACC int32
---@field EVA int32
---@field CON int32
---@field AGI int32
local FCharacterParam = {}



---@class FCharacterParamBeforeAfterData
---@field ParamText FText
---@field BeforeParam int32
---@field AfterParam int32
local FCharacterParamBeforeAfterData = {}



---@class FCharacterResourceData : FTableRowBase
---@field ID int32
---@field ActionLabel FName
---@field ActionOrderIconL TSoftObjectPtr<UTexture2D>
---@field ActionOrderIconS TSoftObjectPtr<UTexture2D>
---@field FieldCommandIcon TSoftObjectPtr<UTexture2D>
---@field BattleStartVoiceID FName
---@field BattleVoiceCharacterID FName
---@field WaitEnemyActionFrame int32
---@field ActionDelaySEData TArray<FActionDelaySEData>
---@field BattleSessionSEID ESESSION_SE_TYPE
---@field BattleCursorOffset FVector
local FCharacterResourceData = {}



---@class FCommonControllerConfigData : FTableRowBase
---@field KeyList TArray<FName>
local FCommonControllerConfigData = {}



---@class FCommonNotificationParam
---@field MessageText FText
---@field MessageTextLabel FName
---@field MessageTextLabel_Param0 FString
---@field CommonNotificationType ECommonNotificationType
local FCommonNotificationParam = {}



---@class FCustomMissionFlipbookJobData
---@field LabelList TArray<FName>
local FCustomMissionFlipbookJobData = {}



---@class FCustomMissionFlipbookList : FTableRowBase
---@field ID int32
---@field PlayerSelectList TMap<int32, FName>
---@field PlayerJobList TMap<int32, FCustomMissionFlipbookJobData>
---@field PlayerJobList_01 TMap<int32, FCustomMissionFlipbookJobData>
---@field PlayerCostumeList TMap<int32, FName>
local FCustomMissionFlipbookList = {}



---@class FDarkAreaData : FTableRowBase
---@field ID int32
---@field ActiveFlag int32
---@field HolyTorchType EHOLY_TORCH_TYPE
---@field TorchLevel FName
local FDarkAreaData = {}



---@class FDataTableTutorialList : FTableRowBase
---@field ID int32
---@field ListName FName
---@field FlagPartLabel TArray<FName>
local FDataTableTutorialList = {}



---@class FDataTableTutorialPageData : FTableRowBase
---@field ID int32
---@field TemplateType int32
---@field PageImage TArray<FName>
---@field TitleText FName
---@field PageText TArray<FName>
local FDataTableTutorialPageData = {}



---@class FDatabaseInfo : FTableRowBase
---@field ID int32
---@field LoadTiming EDB_LOAD_TIMING
---@field DataTable FSoftObjectPath
---@field DBClassPath FString
local FDatabaseInfo = {}



---@class FDebugBattleLog : FTableRowBase
---@field m_nIndex int32
---@field m_eCategory EDEBUG_BATTLE_LOG_CATEGORY
---@field m_strTitle FText
---@field m_strIssuer FText
---@field m_strComment FText
---@field m_strDetail FText
---@field m_astrTagList FText
local FDebugBattleLog = {}



---@class FDebugListMenuFilter
local FDebugListMenuFilter = {}


---@class FDebugListMenuItem
local FDebugListMenuItem = {}


---@class FDebugParam
---@field DebugName FString
---@field EditType EDEBUG_EDIT_TYPE
---@field ListLabel TArray<FText>
---@field DebugInformation FString
---@field InformationColorType EDEBUG_INFORMATION_COLOR_TYPE
---@field DefaultToggle boolean
---@field DefaultIndex int32
---@field nDefaultValue int32
---@field nDefaultMin int32
---@field nDefaultMax int32
---@field nDigit int32
---@field fDefaultValue float
---@field fDefaultMin float
---@field fDefaultMax float
---@field fDigit float
---@field nItemCounter int32
---@field nHierarchy int32
---@field nParentHierarchy int32
---@field nChildHierarchy int32
local FDebugParam = {}



---@class FDebugPrimitiveData
---@field PrimitiveType EDebugCanvasPrimType
---@field Position TArray<FVector2D>
---@field Color FLinearColor
---@field LineThickness float
local FDebugPrimitiveData = {}



---@class FDebugTextData
---@field Text FText
---@field Position FVector2D
---@field Color FLinearColor
---@field FontSize int32
local FDebugTextData = {}



---@class FDestinationData
---@field TriggerID ELevelTriggerID
---@field HideIconFlag TArray<int32>
local FDestinationData = {}



---@class FDiseaseDataBase : FTableRowBase
---@field ID int32
---@field DisplayName FName
---@field Detail FName
---@field DisplayOrder int32
---@field DiseaseType FString
---@field EnableResist boolean
---@field ResistType FString
---@field EnableTurnCount boolean
---@field DiseaseCategory FString
---@field StealthType FString
---@field BattleEndContinue boolean
---@field EnableBuffExtension boolean
---@field EnableDebuffExtension boolean
---@field EnableDeconditionExtension boolean
---@field EnableChangePermanent boolean
---@field EnableDiseaseCopy boolean
---@field EnableStealDisease boolean
---@field AdvValue1 int32
---@field AdvValue2 int32
---@field AdvValue3 int32
---@field AdvValue4 int32
---@field AdvLabel1 FString
---@field ResorceLabel FString
---@field EffectLabel FString
---@field AttachEffect boolean
---@field GroundEffect boolean
---@field AttachSocketName FString
local FDiseaseDataBase = {}



---@class FDiseaseListItemData
---@field IconLabel FName
---@field DetailTextLabel FName
---@field DiseaseCategory EDISEASE_CATEGORY
---@field DisplayOrder int32
local FDiseaseListItemData = {}



---@class FDismantlingDataBase : FTableRowBase
---@field ID int32
---@field Ailment TArray<FAilmentHandler>
---@field EFFECT EDISMANTLING_EFFECT_TYPE
local FDismantlingDataBase = {}



---@class FEffectComponentList
---@field EffectList TArray<UParticleSystemComponent>
---@field MaxNum int32
---@field LoopEffect boolean
---@field EffectOffset FVector
local FEffectComponentList = {}



---@class FEffectData : FTableRowBase
---@field ID int32
---@field EffectAsset TSoftObjectPtr<UParticleSystem>
---@field SpawnMax int32
---@field LoopEffect boolean
---@field Stationary boolean
---@field EffectOffset FVector
local FEffectData = {}



---@class FEncountData : FTableRowBase
---@field ProgressBorder int32
---@field DisplayLevel int32
---@field DangerLevel int32
---@field EncounterName FName
local FEncountData = {}



---@class FEncountFlagData
---@field EncountTriggerLabel FName
---@field EventFlag int32
local FEncountFlagData = {}



---@class FEncountFlagStartEndData
---@field EncountTriggerLabel FName
---@field StartFlag TArray<int32>
---@field EndFlag TArray<int32>
local FEncountFlagStartEndData = {}



---@class FEncountTriggerData : FTableRowBase
---@field ID int32
---@field StartFlag int32
---@field StartFlag_2 int32
---@field StartFlag_3 int32
---@field EndFlag int32
---@field EndFlag_2 int32
---@field EndFlag_3 int32
---@field DayTimeDecreaseValue float
---@field DayTimeEncountVolumeName FName
---@field NightDecreaseValue float
---@field NightEncountVolumeName FName
---@field LostWayDecreaseValue float
---@field LostWayEncountVolumeName FName
---@field DarkAreaDecreaseValue float
---@field DarkAreaEncountVolumeName FName
local FEncountTriggerData = {}



---@class FEncountVolume : FTableRowBase
---@field ID int32
---@field StartFlag int32
---@field EndFlag int32
---@field UseMapIndex int32
---@field EncountStepMin int32
---@field RandomStepA int32
---@field RandomStepB int32
---@field WaterSide boolean
---@field Area EAreaID
---@field RareCatlinParam FRareEnemyParam
---@field RareOctlinParam FRareEnemyParam
---@field EncounterList TArray<FEncountData>
local FEncountVolume = {}



---@class FEndRollSegmentData : FTableRowBase
---@field ID int32
---@field EventImageLabelPartnerA FName
---@field EventImageLabelPartnerB FName
---@field BattleRevivalFlag boolean
---@field BattleEnemyGroupA FName
---@field BattleEnemyGroupB FName
local FEndRollSegmentData = {}



---@class FEnemyDataBase : FTableRowBase
---@field ID int32
---@field EnemyID FString
---@field DisplayNameID FString
---@field ResourceLabel FString
---@field DisplayRank int32
---@field EnemyLevel int32
---@field DamageRatio float
---@field Size FString
---@field NPCFlag boolean
---@field WeaponStance FString
---@field WeaponItemLabel FString
---@field DeadEffectSlow boolean
---@field MainEnemy boolean
---@field NonPartBattle boolean
---@field UseCatDamageType boolean
---@field DisableDeadKnockBack boolean
---@field DisableBreakSlow boolean
---@field LegendTameMonster boolean
---@field Exp int32
---@field JobPoint int32
---@field Money int32
---@field StealMoneyGuard boolean
---@field StealMoney int32
---@field HaveItemID FString
---@field DropProbability int32
---@field StealGuard boolean
---@field StealItemID FString
---@field TameEnable boolean
---@field DefaultTameRate float
---@field InvadeMonsterID FString
---@field FirstBP int32
---@field DeadType FString
---@field BribeGuard boolean
---@field BribeMoney int32
---@field AbilitySEDelay float
---@field RevealShieldPoint int32
---@field TextInfoLabel FString
---@field DismantlingLabel FString
---@field WaitEnemyActionFrame int32
local FEnemyDataBase = {}



---@class FEnemyGroupBase : FTableRowBase
---@field ID int32
---@field BattleStartEnemyVoiceEnable boolean
---@field VoiceID FName
---@field TalkPlayerID FName
---@field PlayerVoiceID FName
---@field BattleStartEvent FName
---@field BattleStartDashEnable boolean
---@field BGMID FName
---@field UseBattleBGM boolean
---@field UseVictoryBGM boolean
---@field ResumeBGM boolean
---@field ViewResult boolean
---@field UseVictoryAction boolean
---@field ResultDashEnable boolean
---@field BoostFinishResultEnable boolean
---@field BossBattle boolean
---@field EscapeEnable boolean
---@field ItemEnable boolean
---@field GuardEnable boolean
---@field BoostEnable boolean
---@field PlacementType FName
---@field EnemyID TArray<FName>
---@field SaveEndrollSegment FString
local FEnemyGroupBase = {}



---@class FEnvSoundFadeData
---@field FadeOutStartVolume float
---@field FadeOutTime float
---@field FadeInTime float
---@field FadeInVolume float
local FEnvSoundFadeData = {}



---@class FEquipLanternData
---@field EquipLanternDayTime TArray<FLanternCheckData>
---@field EquipLanternNight TArray<FLanternCheckData>
local FEquipLanternData = {}



---@class FEquipParamBeforeAfter : FTableRowBase
---@field CharacterParam TArray<int32>
---@field EquipAllBefore TArray<int32>
---@field EquipTargetBefore TArray<int32>
---@field EquipTargetAfter TArray<int32>
---@field ParamAllBefore TArray<int32>
---@field ParamAllAfter TArray<int32>
---@field IsEffective TArray<boolean>
local FEquipParamBeforeAfter = {}



---@class FEquipmentCategoryBase : FTableRowBase
---@field ID int32
---@field DisplayNameID FName
---@field IconTexture UTexture2D
---@field IconLabel FName
---@field TwoHanded boolean
---@field CounterEnable boolean
---@field EffectiveRace TArray<FName>
local FEquipmentCategoryBase = {}



---@class FEquipmentRecommendedCalcData
---@field CharaID int32
---@field ItemLabel FName
---@field EvalautionValue float
---@field SkipFlag boolean
local FEquipmentRecommendedCalcData = {}



---@class FEquipmentRecommendedData
---@field ItemLabel FName
---@field HP int32
---@field MP int32
---@field PAtk int32
---@field PDef int32
---@field MATK int32
---@field MDEF int32
---@field ACC int32
---@field EVA int32
---@field CON int32
---@field AGI int32
---@field Count int32
local FEquipmentRecommendedData = {}



---@class FEquipmentTextureData : FTableRowBase
---@field ID int32
---@field WeaponStanceTextures TArray<FEquipmentTextureInfo>
local FEquipmentTextureData = {}



---@class FEquipmentTextureInfo
---@field PCResourceLabel FName
---@field NPCResourceLabel FName
local FEquipmentTextureInfo = {}



---@class FEquippedItemData : FTableRowBase
---@field EquippedCount int32
---@field EquipCHaracterIdMask int32
local FEquippedItemData = {}



---@class FEventAtomSoundData
---@field uAtomCue USoundAtomCue
local FEventAtomSoundData = {}



---@class FEventCheckData : FTableRowBase
---@field Index int32
---@field CheckCount int32
---@field LogicalType int32
---@field FlagList TArray<int32>
---@field FlagEnableList TArray<boolean>
local FEventCheckData = {}



---@class FEventCommandData
local FEventCommandData = {}


---@class FEventData : FTableRowBase
---@field Command int32
---@field Target int32
---@field Pos FVector
---@field Dir int32
---@field Text FString
---@field Async boolean
---@field OptAry TArray<FString>
local FEventData = {}



---@class FEventEffect
---@field Loop boolean
---@field EffectData TWeakObjectPtr<UParticleSystemComponent>
---@field LifeTime float
---@field Position FVector
---@field Target TWeakObjectPtr<AActor>
local FEventEffect = {}



---@class FEventEmotion
---@field Loop boolean
---@field LifeTime float
---@field Target TWeakObjectPtr<AKSCharacterBase>
---@field TargetTag FName
local FEventEmotion = {}



---@class FEventFlagData
---@field EventFlag int32
---@field FlagStatus boolean
local FEventFlagData = {}



---@class FEventListData : FTableRowBase
---@field EventIndex int32
---@field ExecCode FName
---@field CueSheetName FName
---@field RadarMapExitCode FName
---@field MapID FName
---@field Kind EEventKind
---@field EventSoundLabel FName
---@field MissionLabel FName
---@field EventSkip int32
---@field LevelTriggerID ELevelTriggerID
---@field LanthanumFlag int32
---@field EncountTrigger FName
---@field CameraLockTrigger1 FName
---@field CameraLockTrigger2 FName
---@field CameraLockTrigger3 FName
---@field StartFadeOutFlag int32
---@field ChengeTimeSequencer FName
---@field ChengeFinishTimeSequencer FName
---@field TargetChara int32
---@field EncountReset boolean
---@field Args TArray<FString>
local FEventListData = {}



---@class FEventPlayData
---@field TargetCharacter AKSCharacterBase
---@field TheaterMode boolean
---@field OverrideMapID FName
---@field ForcePlayEvent boolean
---@field PartyChat boolean
local FEventPlayData = {}



---@class FEventSaveData
---@field EventCheckCount TArray<int32>
---@field EventFlag TArray<boolean>
local FEventSaveData = {}



---@class FEventSoundData : FTableRowBase
---@field ID int32
---@field BgmPlayTypeOnStart int32
---@field BgmLabelOnStart FName
---@field BgmPlayTypeOnEnd int32
---@field BgmLabelOnEnd FName
---@field FixedFieldBgmLabel FName
---@field FixedFieldBgmLevels TArray<FName>
local FEventSoundData = {}



---@class FFShopInfoDataBase : FTableRowBase
---@field ID int32
---@field ShopName FName
---@field ShopType FString
---@field ShopBGM FName
---@field InnBasePrice int32
---@field InnDiscountItem FName
---@field InnDiscountBasePrice int32
local FFShopInfoDataBase = {}



---@class FFadeDataBase : FTableRowBase
---@field EventFadeType EEVENT_FADE_TYPE
---@field FadeTime float
local FFadeDataBase = {}



---@class FFastTravelChangeDestination : FTableRowBase
---@field From FName
---@field To FName
---@field BeginEventFlag int32
---@field EndEventFlag int32
local FFastTravelChangeDestination = {}



---@class FFieldCommandAssistItem
---@field ItemLabel FName
---@field BenefitValue float
local FFieldCommandAssistItem = {}



---@class FFieldCommandData : FTableRowBase
---@field ID int32
---@field FieldCommandType MJFieldCommandType
---@field FieldCommandCategory EFieldCommandCategory
---@field NameTextLabel FName
---@field DetailTextLabel FName
---@field DetailTextLabel_PlayerSelect FName
---@field HelpTextLabel FName
---@field HelpTextLabel_NoNpc FName
---@field HelpTextLabel_Special FName
---@field HeaderTextLabel FName
---@field HeaderTextLabel_Special FName
---@field FooterTextLabel FName
---@field UnavailableTextLabel FName
---@field SELabel FName
---@field IconLabel FName
---@field IconLabel_Large FName
---@field StatusMenuIconLabel FName
---@field ActionWaitTime float
---@field BranchEventWeight TArray<float>
---@field BeforeEventLabel TArray<FName>
---@field SuccessEventLabel TArray<FName>
---@field FailedEventLabel TArray<FName>
---@field BadConnectionEventLabel TArray<FName>
---@field FlowClass TSoftClassPtr<AFieldCommandFlowBase>
---@field FlowClassV2 TSoftClassPtr<AFieldCommandFlowBase>
---@field SubFlowClassV2 TSoftClassPtr<AFieldCommandFlowBase>
local FFieldCommandData = {}



---@class FFieldCommandInfo : FTableRowBase
---@field DayTimeFC MJFieldCommandType
---@field DayTimeFCImpossibleFlag int32
---@field NightFC MJFieldCommandType
---@field NightFCImpossibleFlag int32
local FFieldCommandInfo = {}



---@class FFieldCommandParam : FTableRowBase
---@field RefundSuccess float
---@field RefundRate float
---@field TameRate float
---@field TameCount int32
---@field TameMonsterRank int32
---@field TameMonsterParamRatio float
---@field LureRate float
---@field SearchRate float
local FFieldCommandParam = {}



---@class FFieldCommandResult
---@field Type MJFieldCommandType
---@field Status FieldCommandStatus
local FFieldCommandResult = {}



---@class FFieldPathInfoData : FTableRowBase
---@field nID int32
---@field Name FString
---@field UniqueId EPATH_TYPE
---@field StartIndex int32
---@field FinishIndex int32
---@field LoopFlg boolean
---@field TurnFlg boolean
---@field MoveStartFlg boolean
---@field StartLoopIndex int32
---@field StartWaitTime float
---@field StartTimeZoneType ETIMEZONE_TRIGGER_TYPE
---@field WaitTime1 float
---@field WaitDir1 EKSCharacterDir
---@field WaitMotion1 EKSCharacterAction
---@field WaitTime2 float
---@field WaitDir2 EKSCharacterDir
---@field WaitMotion2 EKSCharacterAction
---@field WaitTime3 float
---@field WaitDir3 EKSCharacterDir
---@field WaitMotion3 EKSCharacterAction
---@field WaitTime4 float
---@field WaitDir4 EKSCharacterDir
---@field WaitMotion4 EKSCharacterAction
---@field WaitTime5 float
---@field WaitDir5 EKSCharacterDir
---@field WaitMotion5 EKSCharacterAction
---@field WaitTime6 float
---@field WaitDir6 EKSCharacterDir
---@field WaitMotion6 EKSCharacterAction
---@field WaitTime7 float
---@field WaitDir7 EKSCharacterDir
---@field WaitMotion7 EKSCharacterAction
---@field MoveMotion1 EKSCharacterMoveMode
---@field MoveSpeed1 float
---@field MoveMotion2 EKSCharacterMoveMode
---@field MoveSpeed2 float
---@field MoveMotion3 EKSCharacterMoveMode
---@field MoveSpeed3 float
---@field MoveMotion4 EKSCharacterMoveMode
---@field MoveSpeed4 float
---@field MoveMotion5 EKSCharacterMoveMode
---@field MoveSpeed5 float
---@field MoveMotion6 EKSCharacterMoveMode
---@field MoveSpeed6 float
local FFieldPathInfoData = {}



---@class FFlagOverrideData : FTableRowBase
---@field ID int32
---@field TargetEventFlags TArray<int32>
---@field PeriodPlayingEvent boolean
---@field PeriodPlayingTheater boolean
---@field PeriodReminiPrologue boolean
---@field PeriodReminiPast boolean
---@field OverrideValue boolean
local FFlagOverrideData = {}



---@class FFlagRandomControlCandidate
---@field Flag int32
---@field Rate int32
local FFlagRandomControlCandidate = {}



---@class FFlagRandomControlGroup : FTableRowBase
---@field ID int32
---@field ControlBeginFlag int32
---@field ControlEndFlag int32
---@field ControlTrigger EFlagRandomControlTrigger
---@field ApplyValue boolean
---@field ControlCandidate TArray<FFlagRandomControlCandidate>
local FFlagRandomControlGroup = {}



---@class FFlipbookCalcData
---@field MaxSpriteSize FVector2D
---@field RightMaxOffset float
---@field LeftMaxOffset float
---@field TopMaxOffset float
---@field BottomMaxOffset float
---@field CustomPivot FVector2D
local FFlipbookCalcData = {}



---@class FFlipbookPlayParam : FTableRowBase
---@field CharacterName FName
---@field ActionType EKSCharacterAction
---@field Dir EKSCharacterDir
---@field IsLoop boolean
local FFlipbookPlayParam = {}



---@class FFollowNpcObjectData
---@field FieldCommandType MJFieldCommandType
---@field FollowCharacter AKSCharacterBase
local FFollowNpcObjectData = {}



---@class FFontItemData
---@field FontObjList TArray<UObject>
---@field Loaded boolean
local FFontItemData = {}



---@class FFootStepData : FTableRowBase
---@field ID int32
---@field WalkSELabel FName
---@field DashSELabel FName
local FFootStepData = {}



---@class FForceFeedbackEffectVibrationData : FTableRowBase
---@field ID int32
---@field VibrationAsset UForceFeedbackEffect
local FForceFeedbackEffectVibrationData = {}



---@class FGameColorData : FTableRowBase
---@field ColorValue FLinearColor
local FGameColorData = {}



---@class FGameConditionInfo
---@field PlayerLabel FName
---@field TargetLabel FName
---@field ItemLabel FName
---@field ItemCount int32
---@field IsSolo boolean
local FGameConditionInfo = {}



---@class FGameParamInfo : FTableRowBase
---@field ID int32
---@field VarType FString
---@field Min FString
---@field Max FString
---@field Init FString
---@field Param FString
local FGameParamInfo = {}



---@class FGameTextCharaInfo : FTableRowBase
---@field ID int32
---@field Name FName
---@field Type EGENDER_TYPE
---@field Singular FName
---@field SingularIndefinite FName
---@field SingularName FName
---@field Plural FName
---@field PluralIndefinite FName
---@field PluralName FName
local FGameTextCharaInfo = {}



---@class FGameTextInfoData : FTableRowBase
---@field ID int32
---@field Text FText
local FGameTextInfoData = {}



---@class FGameTextItemInfo : FTableRowBase
---@field ID int32
---@field Name FName
---@field Singular FName
---@field SingularIndefinite FName
---@field SingularName FName
---@field Plural FName
---@field PluralIndefinite FName
---@field PluralName FName
local FGameTextItemInfo = {}



---@class FGiftData : FTableRowBase
---@field ID int32
---@field GiftTitle FName
---@field GiftType EGiftType
---@field ReceivedFlag int32
---@field ItemDataSets TArray<FGiftItemDataSet>
local FGiftData = {}



---@class FGiftItemDataSet
---@field ItemLabel FName
---@field ItemNum int32
local FGiftItemDataSet = {}



---@class FGuideData
---@field m_eButtonType ECONTROL_GUIDE_BUTTON_TYPE
---@field m_Name FName
---@field m_IsForceDisplay boolean
local FGuideData = {}



---@class FGuildData : FTableRowBase
---@field ID int32
---@field GuildName FName
---@field GuildNpcLabel FName
---@field WorldMapLocation FName
---@field LicenseItem FName
---@field GuildStampLabel FName
---@field JobIconLabel FName
---@field FistTaskEvent FName
---@field FirstReconfirm FName
---@field JobLicenseData TArray<FJobLicenseData>
---@field GuildTalkData TArray<FGuildTalkData>
---@field CompleteEvent TArray<FName>
---@field OpenGuildMenu boolean
---@field UnVisitedShowRadarIcon boolean
---@field OverrideEmotion int32
local FGuildData = {}



---@class FGuildTalkData
---@field Title FName
---@field TalkEvent FName
local FGuildTalkData = {}



---@class FInvadeData : FTableRowBase
---@field ID int32
---@field InvadeID int32
---@field DisplayName FName
---@field DetailText FName
---@field ResourceLabel FName
---@field InverseFlipBook boolean
---@field Voice FName
---@field DisplayLevel int32
---@field CountMin int32
---@field CountMax int32
---@field UnlimitedFlag boolean
---@field Size ECHARACTER_SIZE
---@field PartnerFlag boolean
---@field NPCFlag boolean
---@field LegendFlag boolean
---@field JuvenileFlg boolean
---@field LSizeFlag boolean
---@field InventorItemFlag boolean
---@field WeaponStance EWEAPON_STANCE
---@field WeaponLabel FName
---@field Parameter FCharacterParam
---@field EffectOffset FVector
---@field AbilityList TArray<FName>
---@field WeaponType EWEAPON_CATEGORY
---@field BattleAIPartner TSoftClassPtr<UBattleAIBase>
---@field MonsterUIOffset FVector2D
---@field MonsterUISize FVector2D
---@field EnableProcess boolean
---@field ProcessedItem FName
---@field ProcessNumID int32
---@field WaitEnemyActionFrame int32
---@field InvadeAwakingLabel FName
---@field AwakingBoost0 boolean
---@field AwakingBoost1 boolean
---@field AwakingBoost2 boolean
---@field AwakingBoost3 boolean
---@field DisableAttackCommand boolean
---@field DisableRecoveryCommand boolean
---@field DisableReviveCommand boolean
---@field ProcessEnemyEventData FProcessEnemyEventData
local FInvadeData = {}



---@class FInventionData : FTableRowBase
---@field ID int32
---@field InventionItemlabel FName
---@field LearnAbilitylabel FName
---@field Materials TArray<FInventionMaterial>
local FInventionData = {}



---@class FInventionMaterial
---@field ItemLabel FName
---@field RequiredCount int32
local FInventionMaterial = {}



---@class FInventorItemData : FTableRowBase
---@field m_bInventorItemReady boolean
---@field m_bExecCreate boolean
---@field m_nInventorTurn int32
---@field m_nInventorTurnMax int32
local FInventorItemData = {}



---@class FItemAcquisitionHistory
---@field History TArray<int32>
local FItemAcquisitionHistory = {}



---@class FItemCategory : FTableRowBase
---@field ID int32
---@field DisplayNameID FString
---@field IconTexture UTexture2D
local FItemCategory = {}



---@class FItemData : FTableRowBase
---@field ID int32
---@field ItemNameID FName
---@field DetailTextID FName
---@field IconLabel FName
---@field ItemCategory EItemCategoryData
---@field SortCategory int32
---@field BackpackPriority int32
---@field DisplayType EITEM_DISPLAY_TYPE
---@field UseType EITEM_USE_TYPE
---@field MaxNum int32
---@field SpecialItemLabel FName
---@field TargetType EBATTLE_TARGET_TYPE
---@field Attribute EATTRIBUTE_TYPE
---@field Ailment TArray<FAilmentHandler>
---@field ValuableFlag boolean
---@field BuyPrice int32
---@field SellPrice int32
---@field BuyMeetCount int32
---@field SellMeetCount int32
---@field EquipmentCategory EEquipmentCategory
---@field EquipmentTextureLabel FName
---@field EquipmentRevision FCharacterParam
---@field AttributeResist TArray<EATTRIBUTE_RESIST>
---@field DiseaseResist TArray<boolean>
---@field CommandEffecter UDataTable
---@field ActionCommandSequencer TSoftObjectPtr<ULevelSequence>
---@field TextInfoLabel FString
---@field DisableAttackCommand boolean
---@field DisableRecoveryCommand boolean
---@field DisableReviveCommand boolean
---@field AbilityLabel FName
---@field DebugRecommendLv int32
local FItemData = {}



---@class FItemDataForMenu : FTableRowBase
---@field IconTexture UTexture2D
---@field IconLabel FName
local FItemDataForMenu = {}



---@class FItemIconText : FTableRowBase
---@field ID int32
---@field IconText FText
local FItemIconText = {}



---@class FItemInfoData : FTableRowBase
---@field ID int32
---@field Label FString
---@field DisplayName int32
---@field IconTexture UTexture2D
---@field Detail int32
---@field Category int32
---@field UsePoint int32
---@field EffectRange int32
---@field Attribute int32
---@field EffectValue TArray<int32>
---@field SpecialEffect int32
---@field SaleMoney int32
---@field SellHitDetail int32
---@field CalcSellHitValue TArray<int32>
local FItemInfoData = {}



---@class FJobCalcData
---@field ItemLabel FName
---@field ReleaseFlag boolean
---@field EquipCharaIDs TArray<int32>
---@field Num int32
---@field MaxNum int32
local FJobCalcData = {}



---@class FJobData : FTableRowBase
---@field ID int32
---@field JobID int32
---@field DisplayName FName
---@field Detail FName
---@field DisplayOrder int32
---@field MenuJobIcon FName
---@field AbilityJobIcon FName
---@field PermissionFlag int32
---@field EquipJobItem FName
---@field ProperEquipment TArray<boolean>
---@field ParameterRevision FCharacterParam
---@field JobCommandName FName
---@field JobCommandDetail FName
---@field JobCommandAbility TArray<FJobLearnAbility>
---@field JobSupportAbility TArray<FJobLearnAbility>
---@field JPCost TArray<int32>
local FJobData = {}



---@class FJobEvalautionValueData : FTableRowBase
---@field ID int32
---@field HP float
---@field MP float
---@field ATK float
---@field DEF float
---@field MATK float
---@field MDEF float
---@field ACC float
---@field EVA float
---@field CON float
---@field AGI float
local FJobEvalautionValueData = {}



---@class FJobLearnAbility : FTableRowBase
---@field AbilityName FName
---@field GetParam int32
local FJobLearnAbility = {}



---@class FJobLicenseData
---@field TaskTitle FName
---@field NeedItemLabel FName
---@field NeedItemNum int32
---@field NeedMoney int32
---@field NeedAbility FName
---@field LearnedCount int32
---@field TaskDescription FName
local FJobLicenseData = {}



---@class FJumpFrameSet
---@field KEN int32
---@field KAR int32
---@field KUS int32
---@field Sin int32
---@field SHO int32
---@field GAK int32
---@field TOU int32
---@field ODO int32
local FJumpFrameSet = {}



---@class FKSCategoryVolumeData
local FKSCategoryVolumeData = {}


---@class FKSCharaFlipbook : FTableRowBase
---@field FlipbookNames TArray<FName>
---@field Loop TArray<boolean>
---@field Height float
---@field WalkFootstep FName
---@field Textures TArray<TSoftObjectPtr<UTexture2D>>
---@field Materials TArray<TSoftObjectPtr<UMaterialInterface>>
local FKSCharaFlipbook = {}



---@class FKSCueSheetData : FTableRowBase
---@field AssetPath FName
local FKSCueSheetData = {}



---@class FKSFlipbookData : FTableRowBase
---@field Fps float
---@field KeyFrames TArray<FKSFlipbookKeyFrame>
---@field Material TSoftObjectPtr<UMaterialInterface>
local FKSFlipbookData = {}



---@class FKSFlipbookKeyFrame
---@field SpriteName FName
---@field FrameRun int32
local FKSFlipbookKeyFrame = {}



---@class FKSKeyConfigMappingDatum
---@field Name FName
---@field Scale float
---@field Axis boolean
---@field Category FName
local FKSKeyConfigMappingDatum = {}



---@class FKSLevelPostProcessData
---@field Volume TWeakObjectPtr<APostProcessVolume>
---@field VignetteWeak float
---@field VignetteNormal float
---@field FocalRegionWide float
---@field FocalRegionNormal float
---@field DofScaleWeak float
---@field DofScaleNormal float
---@field ColorGradingGainNormal float
---@field ColorGradingGainMin float
---@field ColorGradingGainMax float
local FKSLevelPostProcessData = {}



---@class FKSObjectData : FTableRowBase
---@field ID int32
---@field ObjectType uint8
---@field ObjResLabel FName
---@field IsCollision boolean
---@field IsPutOnGround boolean
---@field IsMoney boolean
---@field HaveItemLabel FName
---@field HaveItemCnt int32
---@field HideDialog boolean
---@field IsRevivalByLevelChange boolean
---@field RandomItemCandidates TArray<FRandomItemData>
local FKSObjectData = {}



---@class FKSSaveSlotData
---@field PlayTime int32
---@field SaveDate_Year int32
---@field SaveDate_Month int32
---@field SaveDate_Day int32
---@field SaveDate_Hour int32
---@field SaveDate_Minute int32
---@field SaveDate_Second int32
---@field levelId int32
---@field LevelAreaID int32
---@field ClearFlag int32
---@field LeaderCharaLevel int32
---@field MainMemberCharacterID TArray<int32>
---@field MainMemberJobID TArray<int32>
---@field CharaForm TArray<uint8>
---@field IsEnabled boolean
---@field IsAutoSaveLine boolean
---@field IsForcusAnimImmideate boolean
---@field IsInReminiscence boolean
---@field ReminiscenceStoryIndex int32
local FKSSaveSlotData = {}



---@class FKSSpriteData : FTableRowBase
---@field SrcTexture TSoftObjectPtr<UTexture2D>
---@field SrcUV FVector2D
---@field SrcSize FVector2D
---@field AddTexArray TArray<TSoftObjectPtr<UTexture2D>>
---@field VertArray TArray<FVector4>
---@field SocketNameArray TArray<FName>
---@field SocketPosArray TArray<FVector>
---@field CharaFootPivot FVector2D
---@field HasAdditionalTexture boolean
---@field CustomPixelsPerUnrealUnit float
local FKSSpriteData = {}



---@class FKSSysSaveData
---@field BitFlags TArray<int32>
---@field Params TArray<int32>
---@field KeyConfigParam TArray<int32>
---@field KeyConfigKeyboardLayoutType int32
local FKSSysSaveData = {}



---@class FKSUICommonDialogParam
---@field CaptionText FText
---@field UseCaption boolean
---@field DetailText FText
---@field UseDetail boolean
---@field ButtonText TArray<FText>
---@field DefaultButton int32
---@field EnableCancelKey boolean
---@field CancelKeyValue int32
---@field AutoSelectClose boolean
---@field AutoClosePop boolean
local FKSUICommonDialogParam = {}



---@class FKSUIFlipbookData : FTableRowBase
---@field Fps float
---@field KeyFrames TArray<FKSFlipbookKeyFrame>
---@field Material TSoftObjectPtr<UMaterialInterface>
---@field flipbook UPaperFlipbook
local FKSUIFlipbookData = {}



---@class FLabelListData : FTableRowBase
---@field LabelList TArray<FName>
local FLabelListData = {}



---@class FLanternCheckData
---@field EventFlag int32
---@field Equip boolean
local FLanternCheckData = {}



---@class FLevelInfoData : FTableRowBase
---@field ID int32
---@field LevelKind uint8
---@field AreaID uint8
---@field TownLabel int32
---@field SubTownLabel int32
---@field MapChangeType int32
---@field TransportationType uint8
---@field EncountStepMin int32
---@field RandomStepA int32
---@field RandomStepB int32
---@field FirstEncountStepRatio float
---@field BgmLabelDayTime FName
---@field BgmLabelNight FName
---@field BgmLabelDarkness FName
---@field Bgm2Label FName
---@field Bgm2EnableFlag int32
---@field Bgm3Label FName
---@field Bgm3EnableFlag int32
---@field Bgm4Label FName
---@field Bgm4EnableFlag int32
---@field Bgm5Label FName
---@field Bgm5EnableFlag int32
---@field TimeZoneChangeSeLabel FName
---@field TimeZoneChangeSe2Label FName
---@field TimeZoneChangeSe2EnableFlag int32
---@field ScreenFadeInTime int32
---@field ScreenFadeOutTime int32
---@field EncountOffset int32
---@field BattleMapNameList TArray<FName>
---@field EncountVolumeNameList TArray<FName>
---@field DarkAreaEncountVolumeName FName
---@field Intencity float
---@field AttenuationRadius float
---@field LightColor FLinearColor
---@field SourceRadius float
---@field TorchFlag boolean
---@field ImpossibleTimeZoneChangeFlag boolean
---@field TimeZoneSeqChangeFlag int32
---@field ReplaceTimeZoneSeqLabel FName
---@field ReverbFlag boolean
---@field ImpossibleFCFlag boolean
---@field BarPlacementChara TArray<boolean>
---@field BarPCPos1 TArray<float>
---@field BarPCDir1 uint8
---@field BarPCPos2 TArray<float>
---@field BarPCDir2 uint8
---@field BarItemLabel1 FName
---@field BarItemCnt1 int32
---@field BarItemLabel2 FName
---@field BarItemCnt2 int32
---@field BarItemLabel3 FName
---@field BarItemCnt3 int32
---@field BarEventLabel FName
---@field BanLostWay boolean
---@field BanMainMenuPartyMemberChange boolean
local FLevelInfoData = {}



---@class FLevelLoaderRequest
local FLevelLoaderRequest = {}


---@class FLevelResolutioData : FTableRowBase
---@field SwitchHandheldScreenPercentage float
---@field SwitchHandheldSeparateTranslucencyScreenPercentage float
---@field SwitchTVScreenPercentage float
---@field SwitchTVSeparateTranslucencyScreenPercentage float
---@field PS4ScreenPercentage float
---@field PS4SeparateTranslucencyScreenPercentage float
local FLevelResolutioData = {}



---@class FLevelTransitionData
---@field EnableFlag int32
---@field NextMapName FName
---@field NextLevelTriggerID ELevelTriggerID
---@field MapInCharaDir EKSCharacterDir
---@field MapInCharaMoveMode ECharacterMoveModeForDB
---@field NextMapNoticeText FName
---@field EnableAutoSave boolean
local FLevelTransitionData = {}



---@class FLevelTriggerParams : FTableRowBase
---@field ID int32
---@field NextMapName FName
---@field NextLevelTriggerID ELevelTriggerID
---@field MapInCharaDir EKSCharacterDir
---@field MapInCharaMoveMode ECharacterMoveModeForDB
---@field NextMapNoticeText FName
---@field EnableAutoSave boolean
---@field ConditionalTransitionData TArray<FLevelTransitionData>
---@field FlagList TArray<int32>
local FLevelTriggerParams = {}



---@class FLinerShipRouteData : FTableRowBase
---@field ID int32
---@field ContinentA FName
---@field ContinentB FName
---@field LevelA FName
---@field LevelB FName
---@field LevelTriggerA FName
---@field LevelTriggerB FName
---@field Price int32
---@field EventRouteAtoB FName
---@field EventRouteBtoA FName
local FLinerShipRouteData = {}



---@class FListWidgetCategory : FTableRowBase
---@field TabIcon UTexture2D
---@field TitleIcon UTexture2D
---@field UseCaptionFormat boolean
---@field ListCaptionFormat FName
---@field ListCaption FName
---@field Column1_Title FName
---@field Column2_Title FName
---@field Column2_Visible boolean
---@field Column3_Title FName
---@field Column3_Visible boolean
---@field CategoryId int32
---@field ShowAllItem boolean
---@field ShowAlways boolean
---@field ShowNewItems boolean
---@field HolyTorchFlag boolean
---@field EnableCategoryUpdate boolean
local FListWidgetCategory = {}



---@class FLoadedObject
---@field LoadedObject TArray<UObject>
local FLoadedObject = {}



---@class FLoopSeData : FTableRowBase
---@field Component UAtomComponent
---@field IsUsed boolean
local FLoopSeData = {}



---@class FMAINMENU_MISSION_RECORD_DATA
---@field MissionLabel FName
---@field State int32
---@field ClearIdx int32
---@field SaveDataIndex int32
---@field bNewFlag boolean
---@field bIsReminiscence boolean
---@field DetailTextLabel FName
---@field WorldMapIconLabel FName
local FMAINMENU_MISSION_RECORD_DATA = {}



---@class FMJActivitySaveData
---@field SubTaskStatus TMap<int32, int32>
local FMJActivitySaveData = {}



---@class FMJGameTextMap
---@field TextMap TMap<FString, FName>
---@field IsReady boolean
local FMJGameTextMap = {}



---@class FMJListWidgetItemData : FTableRowBase
---@field ItemName FText
---@field ItemNameLabel FName
---@field ItemData_0 FText
---@field ItemData_1 FText
---@field ItemIcon UTexture2D
---@field ItemIcon_0 UTexture2D
---@field DetailText FText
---@field DetailTextLabel FName
---@field Status ELIST_ITEM_STATUS
---@field CategoryId int32
---@field StrikeThrough boolean
---@field ItemNum_0 int32
---@field ItemNum_1 int32
---@field NextSpace ELIST_ITEM_NEXT_SPACE
---@field Option_0 int32
---@field NotShowAllCategory boolean
---@field DontSelectable boolean
---@field NoHelp boolean
---@field ItemData_1_Dark boolean
---@field FixedEquipIcon UTexture2D
---@field HolyTorchFlag boolean
---@field IsItemDetailText boolean
---@field IsUseSubItem boolean
---@field IsSoldOutItem boolean
local FMJListWidgetItemData = {}



---@class FMJSpriteSocketData
---@field SocketList TArray<FPaperSpriteSocket>
local FMJSpriteSocketData = {}



---@class FMJUICommonDialogParam
---@field CaptionText FText
---@field DetailText FText
---@field ButtonText TArray<FText>
---@field DefaultButton int32
---@field EnableCancelKey boolean
---@field CancelKeyValue int32
---@field AutoSelectClose boolean
---@field OnSelectCallback FMJUICommonDialogParamOnSelectCallback
---@field OnCloseFinishCallback FMJUICommonDialogParamOnCloseFinishCallback
---@field AttachDetailWidget UUserWidget
---@field DetailOnTop boolean
---@field AttachCaptionWidget UUserWidget
---@field CaptionOnTop boolean
---@field UseCaptionSeparation boolean
---@field RequestFlag boolean
---@field DuplicationFlag boolean
---@field InputReceptionFlag boolean
---@field UseSelectWidget boolean
---@field SelectWidgetOnTop boolean
---@field SelectWidgetList TArray<UUserWidget>
---@field BloodFlag boolean
---@field BloodList TArray<boolean>
---@field EnableOpenSe boolean
---@field OpenSeLabel FName
local FMJUICommonDialogParam = {}



---@class FMainMissionData : FTableRowBase
---@field ID int32
---@field MainStoryLabel FName
---@field TaskType ESTORY_TASK_TYPE
---@field TargetPCIndex EPlayableCharacterID
---@field IsMissionList boolean
---@field ViewEventFlag int32
---@field AddAchive float
---@field MemoryEventLabel FName
---@field TitleTextLabel FName
---@field DetailTextLabel FName
---@field WorldMapIcon FName
---@field ProgressValue int32
---@field UnavailableFastTravel boolean
---@field AuthorizationFastTravel FName
---@field EventSoundLabel FName
---@field EndRollSegment EEndRollSegmentSet
---@field EventObjectFlag1 int32
---@field EventObjectFlag2 int32
---@field EventObjectFlag3 int32
---@field EventObjectFlag4 int32
---@field EventObjectFlag5 int32
---@field EventObjectFlag6 int32
---@field EventObjectFlag7 int32
---@field EventObjectFlag8 int32
local FMainMissionData = {}



---@class FMainSequenceStateParam
---@field Object UObject
---@field Param0 int32
local FMainSequenceStateParam = {}



---@class FMainSequneceRequestParam
---@field Delegate FMainSequneceRequestParamDelegate
---@field StateParam FMainSequenceStateParam
---@field IsHold boolean
---@field Type EREQUEST_TYPE
local FMainSequneceRequestParam = {}



---@class FMainStoryData : FTableRowBase
---@field ID int32
---@field PlayerCharaId EPlayableCharacterID
---@field StartWMapLocation FName
---@field SwitchWMapLocation TArray<FStartWorldMapData>
---@field RelationCharaId TArray<EPlayableCharacterID>
---@field ReleaseFlag TArray<int32>
---@field ReleaseNoticeFlag boolean
---@field SealFlag int32
---@field StoryCategory EMAIN_STORY_CATEGORY
---@field ExStoryCategory EEXTRA_STORY_CATEGORY
---@field ChapterIndex int32
---@field ChapterText FName
---@field SubTitleText FName
---@field StoryDetailText FName
---@field OpeningEvent FName
---@field RecommendationPoint TArray<int32>
---@field ClearDifficultyPoint int32
---@field RecoverSwoonOnClear boolean
---@field RelationLevel TArray<FName>
---@field EventFlagRange TArray<int32>
---@field OffEventFlagRange TArray<int32>
---@field NotVisitedOnClear TArray<FName>
---@field VisitedOnClear TArray<FName>
local FMainStoryData = {}



---@class FMainStoryEventObjectData
local FMainStoryEventObjectData = {}


---@class FMainStorySaveData
---@field StoryID int32
---@field CurrentTaskID int32
---@field State int32
---@field ConfirmedFlag boolean
local FMainStorySaveData = {}



---@class FMainStoryTaskSaveData
---@field PlayedTimeZone int32
---@field State int32
---@field Flag int32
---@field EventFlagList TArray<int32>
local FMainStoryTaskSaveData = {}



---@class FMapChipBlockPosition
---@field m_nPosX int32
---@field m_nPosY int32
---@field m_nPosZ int32
local FMapChipBlockPosition = {}



---@class FMapData
---@field TreasureStateArray TArray<uint8>
local FMapData = {}



---@class FMapInfoData : FTableRowBase
---@field ID int32
---@field Label FString
---@field MapNameID int32
---@field levelName FString
---@field MiniMapAsset UTexture2D
---@field RecommendMinLevel int32
---@field RecommendMaxLevel int32
---@field BGMID int32
---@field ScreenFadeInTime int32
---@field ScreenFadeOutTime int32
---@field EncountOffset int32
---@field BattleMapNameList TArray<FString>
local FMapInfoData = {}



---@class FMateriaTextureLabel
---@field Acq_LabelForRuntime_AutoFill FName
---@field Acq_LabelForRuntime FName
local FMateriaTextureLabel = {}



---@class FMenuData
---@field MissionRecord_MainStartSelect int32
---@field MissionRecord_ExtraStartSelect int32
---@field MissionRecord_SubStartSelect int32
local FMenuData = {}



---@class FMillionaireModeData : FTableRowBase
---@field ActiveEventFlag FName
---@field Price int64
local FMillionaireModeData = {}



---@class FMissionLabelList : FTableRowBase
---@field LabelArray TArray<FName>
local FMissionLabelList = {}



---@class FMonsterListData : FTableRowBase
---@field MonsterLabel FName
---@field MonsterCount int32
---@field IsUnlimited boolean
---@field IsPartner boolean
local FMonsterListData = {}



---@class FMyShipFlipbookData : FTableRowBase
---@field ID int32
---@field ColorType EMYSHIP_CUSTOM_TYPE
---@field SailType EMYSHIP_CUSTOM_TYPE
---@field FlipbookName FName
---@field MeshResourceLabel FName
---@field OpenSailMeshResourceLabel FName
local FMyShipFlipbookData = {}



---@class FNPCBattleData : FTableRowBase
---@field ID int32
---@field CommandEnable int32
---@field EnemyGroupID FName
---@field WinEventFlag TArray<int32>
---@field LoseEventFlag TArray<int32>
---@field CanSwoon boolean
---@field SwoonTalkID FName
---@field SleepTalkID FName
---@field SwoonRecLevel TArray<FName>
---@field SwoonRecTimeZoneChange boolean
---@field SwooningFlags TArray<int32>
---@field BattleNeedLevel int32
---@field BattlePCTalk int32
---@field PreBattleTalkID FName
---@field PreBattleEventID FName
---@field LoseBattleTalkID FName
---@field LearnAbility FName
---@field IsDeathMatch boolean
---@field IsGameOverWhenLoose boolean
---@field AdditionalTargetNpc TArray<FName>
---@field IsIgnoreLeanAbility boolean
---@field BeforeMonsterEventID FName
---@field PreMonsterTalkID FName
---@field LooseMonsterTalkID FName
---@field AssassinateNeedLevel int32
---@field DoseItemID FName
---@field DoseItemNum int32
local FNPCBattleData = {}



---@class FNPCBattleInfoData : FTableRowBase
---@field ID int32
---@field BattleFlag int32
---@field SubRelation int32
---@field EnemyID TArray<FName>
---@field PositionID TArray<int32>
---@field NeedLevel int32
---@field CanSwoon boolean
---@field SwoonOffsetPosX float
---@field SwoonOffsetPosY float
---@field SwoonOffsetPosZ float
---@field FlagList TArray<boolean>
---@field NotBattleTalkList TArray<FString>
---@field NotBattleBalloonType int32
---@field ShortageLevelTalkList TArray<FString>
---@field ShortageLevelBalloonType int32
---@field PreBattleTalkList TArray<FString>
---@field PreBattleBalloonType int32
---@field LoseTalkList TArray<FString>
---@field LoseBalloonType int32
---@field WinTalkList TArray<FString>
---@field WinBalloonType int32
---@field PreMonsterTalkList TArray<FString>
---@field PreMonsterBalloonType int32
---@field WinAMonsterTalkList TArray<FString>
---@field WinAMonsterBalloonType int32
---@field SwoontTalkList TArray<FString>
---@field SwoontBalloonType int32
---@field IsSwoonPlayerTalk boolean
---@field EventFlagIndex int32
---@field EventFlagSwitch boolean
local FNPCBattleInfoData = {}



---@class FNPCCheckData : FTableRowBase
---@field LogicalType int32
---@field FlagList TArray<int32>
---@field FlagEnableList TArray<boolean>
local FNPCCheckData = {}



---@class FNPCData : FTableRowBase
---@field ID int32
---@field TextLabel FName
---@field NPC_UnqIndex int32
---@field ActionID FName
---@field FaintAction int32
---@field UsePathLabel FString
---@field IgnoreRelation boolean
---@field WorseRelationTextLabel FName
---@field FCmd_Purchase_ID FName
---@field FCmd_Lure_ID FName
---@field FCmd_Battle_ID FName
---@field FCmd_Search_ID FName
---@field FCmd_RecoverArea int32
---@field FCmd_EnemyGroup FName
---@field FCmd_UseBattleMapIndex int32
---@field TextInfoLabel FName
---@field IsNotWorsenRelation boolean
---@field FcSpecialPopupType EFieldCommandSpecialPopupType
local FNPCData = {}



---@class FNPCDiagramData : FTableRowBase
---@field ID int32
---@field VisibleLevel int32
---@field PlaceID int32
---@field NPCID int32
---@field TargetNPCID TArray<int32>
---@field RelationType TArray<int32>
---@field Detail TArray<int32>
local FNPCDiagramData = {}



---@class FNPCHearDataBase : FTableRowBase
---@field ID int32
---@field CommandEnable int32
---@field HearInfoIDs TArray<FName>
---@field Age int32
---@field HistoryTextID FName
---@field HearNeedLevel int32
---@field SpecialFlag boolean
---@field SearchBaseProbability float
---@field SearchLockLevel int32
---@field SearchFailedTalkID FName
---@field BriberyBuyPrice int32
---@field RevealBeforeEventID FName
---@field RevealEnemyGroupID FName
---@field RevealWinEventFlag TArray<int32>
---@field RevealLoseEventFlag TArray<int32>
---@field RevealSwapTargetPlacementLabel FName
---@field SetHiddenAfterReveal boolean
---@field SpecialHearDay_01 FName
---@field SpecialHearDay_02 FName
---@field SpecialHearEvening_01 FName
---@field SpecialHearEvening_02 FName
local FNPCHearDataBase = {}



---@class FNPCHearInfoDataBase : FTableRowBase
---@field ID int32
---@field ItemId FName
---@field EventFlag int32
---@field NotificationID FName
local FNPCHearInfoDataBase = {}



---@class FNPCInfoData : FTableRowBase
---@field ID int32
---@field CharacterID int32
---@field Name FString
---@field FaceIconTexture UTexture2D
---@field ActionID int32
---@field TownID int32
---@field IgnoreConnection boolean
---@field ConnectionTalkList TArray<FString>
---@field ConnectionBalloonType int32
---@field PurchaseID int32
---@field BattleID int32
---@field SearchID int32
---@field LureID int32
local FNPCInfoData = {}



---@class FNPCLeadDataBase : FTableRowBase
---@field ID int32
---@field CommandEnable int32
---@field SupporterID FName
---@field BanFastTravelInFollowing boolean
---@field UnFollowingFlags TArray<int32>
---@field FollowingFlags TArray<int32>
---@field IgnoreFollowProcess boolean
---@field StoryNpc boolean
---@field LeadNeedLevel int32
---@field LeadSuccessTalkID FName
---@field LeadReleaseTalkID FName
---@field LureBaseProbability float
---@field LureSuccesTalkID FName
---@field LureFailedTalkID FName
---@field LureReleaseTalkID FName
---@field HirePrice int32
---@field HireSuccesTalkID FName
---@field HireReleaseTalkID FName
---@field PlacateNeedItems TArray<FPlacateNeedItem>
---@field PlacateSuccesTalkID FName
---@field PlacateReleaseTalkID FName
---@field SpActionMerchant FName
local FNPCLeadDataBase = {}



---@class FNPCLureInfoData : FTableRowBase
---@field ID int32
---@field FollowFlag int32
---@field LeadNeedLevel int32
---@field LureBaseProbability float
---@field SubRelation int32
---@field LeadSuccessTalkList TArray<FString>
---@field LeadSuccessBalloonType int32
---@field LeadReleaseTalkList TArray<FString>
---@field LeadReleaseTalkBalloonType int32
---@field SuccessTalkList TArray<FString>
---@field SuccessBalloonType int32
---@field FailedTalkList TArray<FString>
---@field FailedTalkBalloonType int32
---@field ReleaseTalkList TArray<FString>
---@field ReleaseTalkBalloonType int32
---@field BattleDataID FString
local FNPCLureInfoData = {}



---@class FNPCPersonalData : FTableRowBase
---@field ID int32
---@field VisibleLevel int32
---@field Sex int32
---@field Age int32
---@field CategoryTopName int32
---@field CategoryTopDetailList TArray<int32>
---@field CategoryBottomName int32
---@field CategoryBottomDetailList TArray<int32>
local FNPCPersonalData = {}



---@class FNPCPurchaseDataBase : FTableRowBase
---@field ID int32
---@field CommandEnable int32
---@field ShopID FName
---@field PurchaseBuyTalkID FName
---@field StealSuccessTalkID FName
---@field StealFailedTalkID FName
---@field BegSuccessTalkID FName
---@field RobEnemyGroupID FName
---@field RobBeforeTalkID FName
---@field RobBeforeEventID FName
local FNPCPurchaseDataBase = {}



---@class FNPCPurchaseInfoData : FTableRowBase
---@field ID int32
---@field PurchaseItemList TArray<int32>
---@field SubRelation int32
---@field BuyTalkList TArray<FString>
---@field BuyBalloonType int32
---@field StealSuccessTalkList TArray<FString>
---@field StealSuccessBalloonType int32
---@field StealFailedTalkList TArray<FString>
---@field StealFailedBalloonType int32
local FNPCPurchaseInfoData = {}



---@class FNPCSearchInfoData : FTableRowBase
---@field ID int32
---@field InfoFlag int32
---@field HearNeedLevel int32
---@field SearchBase float
---@field SubRelation int32
---@field SearchLock int32
---@field InfoDataList TArray<int32>
---@field SearchFailedTalkList TArray<FString>
---@field SearchFailedBalloonType int32
local FNPCSearchInfoData = {}



---@class FNPCSpawnData : FTableRowBase
---@field EventFlag TArray<FNPCSpawnEventFlag>
---@field CheckOR boolean
---@field IsDelete boolean
---@field Offset FVector
---@field EventID int32
---@field EventName FName
local FNPCSpawnData = {}



---@class FNPCSpawnEventFlag
---@field Index int32
---@field Flag boolean
local FNPCSpawnEventFlag = {}



---@class FNarrationDataBase : FTableRowBase
---@field ID int32
---@field NarrationSet FName
---@field HeightCentering boolean
---@field ShowFrame boolean
---@field ShowBackground boolean
---@field FlashbackLabel FName
---@field FlashbackColor int32
---@field TextGroup TArray<FNarrationTextGroup>
---@field AutoNextTime float
local FNarrationDataBase = {}



---@class FNarrationTextGroup
---@field GroupID int32
---@field Text FName
---@field Justification int32
---@field DisableFadeAnimation boolean
local FNarrationTextGroup = {}



---@class FNextMapInfo
---@field MapName FName
---@field ReqTrigger ELevelTriggerID
---@field MapIndex int32
---@field UseFadeUI boolean
---@field levelType ELEVEL_TYPE
---@field ChangeBGM boolean
---@field IsSwichActive boolean
local FNextMapInfo = {}



---@class FNextPurposeData : FTableRowBase
---@field ID int32
---@field BelongMainStory FName
---@field ShowStartFlag int32
---@field ShowEndFlag int32
---@field TextLabel FName
---@field ShowMessage boolean
---@field ShowFlag int32
local FNextPurposeData = {}



---@class FNoticeArgs
---@field IntParam0 int32
---@field NameParam0 FName
---@field IntParams TArray<int32>
local FNoticeArgs = {}



---@class FNoticeDelegateBP_Data
local FNoticeDelegateBP_Data = {}


---@class FNpcEventData
---@field IsSwoon boolean
---@field SwoonType ENpcSwoonType
---@field IsPurchasedItem TArray<boolean>
---@field PurchaseRestock int32
---@field HearFlag boolean
---@field SwoonTimeZone ETimeZoneType
local FNpcEventData = {}



---@class FObjectVisibilityData
local FObjectVisibilityData = {}


---@class FOnClosedPartySplitParam
---@field PlacementResult TMap<EPlayableCharacterID, EPARTY_SPLIT_PLACEMENT_POSITION>
---@field CloseReason EPARTY_SPLIT_CLOSE_REASON
local FOnClosedPartySplitParam = {}



---@class FOnErrorCloudLoadPayload
---@field ErrorTitle FString
---@field ErrorDetail FString
---@field ResponseCode int32
local FOnErrorCloudLoadPayload = {}



---@class FOnErrorCloudSavePayload
---@field ErrorTitle FString
---@field ErrorDetail FString
---@field ResponseCode int32
local FOnErrorCloudSavePayload = {}



---@class FOnSuccessCloudLoadPayload
---@field SaveData UMJSaveData
local FOnSuccessCloudLoadPayload = {}



---@class FOnSuccessCloudSavePayload
---@field SnapshotId int32
---@field Title FString
local FOnSuccessCloudSavePayload = {}



---@class FOptionGroupData : FTableRowBase
---@field GroupTitle FName
---@field ItemData TArray<FOptionItemData>
local FOptionGroupData = {}



---@class FOptionItemData : FTableRowBase
---@field OptionKind EOPTION_ITEM_KIND
---@field OnlyPC boolean
---@field ItemText1 FName
---@field ItemText2 FName
---@field DescriptionText FName
---@field WidgetKind EOPTION_WIDGET_KIND
---@field DefaultValue int32
---@field Icon FName
---@field ItemTextList TArray<FName>
local FOptionItemData = {}



---@class FOptionItemLabelSet : FTableRowBase
---@field ItemText1 FName
---@field ItemText2 FName
local FOptionItemLabelSet = {}



---@class FOptionalParts
---@field m_cOptionalParts UStaticMesh
---@field m_cOptionalPartsLeft UStaticMesh
---@field m_cOptionalPartsRight UStaticMesh
---@field m_vPosition FVector
---@field m_bIsSnapGrid boolean
---@field m_vOffset FVector
---@field m_qRotate FRotator
---@field m_bIsPatternX boolean
---@field m_bIsPatternY boolean
---@field m_bIsPatternAround boolean
---@field m_bIsPatternBack boolean
---@field m_vInterval FVector
---@field m_bIsOverlapPost boolean
local FOptionalParts = {}



---@class FPS5VibrationData : FTableRowBase
---@field ID int32
---@field VibrationAsset USoundWave
local FPS5VibrationData = {}



---@class FPartyChat : FTableRowBase
---@field ID int32
---@field EventLabel FName
---@field PartyChatType EPARTY_CHAT_TYPE
---@field MainStoryTaskBegin FName
---@field MainStoryTaskEnd FName
---@field OccurLevelLabels TArray<FName>
---@field TitleTextLabel FName
---@field RelatedMainStory FName
---@field RequiredCharacter TArray<EPlayableCharacterID>
---@field IgnoreRequiredCharacter boolean
---@field NeedLevelChangeCount int32
---@field BurnTorchCountLimit int32
---@field IsIgnoreFixedPartyMode boolean
local FPartyChat = {}



---@class FPartyChatSaveData
---@field PartyChatFlg int32
---@field State int32
---@field Flag boolean
---@field PlayedTimeZone int32
---@field PlayedLevelId int32
local FPartyChatSaveData = {}



---@class FPartyFollowData
local FPartyFollowData = {}


---@class FPlacateNeedItem
---@field ItemLabel FName
---@field ItemNum int32
local FPlacateNeedItem = {}



---@class FPlacementData : FTableRowBase
---@field ID int32
---@field PlacementType uint8
---@field MainScenarioType int32
---@field MainScenarioID int32
---@field ResourceLabel FName
---@field InvalidRadarIcon boolean
---@field IgnoreGravity boolean
---@field IndoorFlag boolean
---@field HouseInFloor int32
---@field TriggerScaleX float
---@field TriggerScaleY float
---@field TriggerScaleZ float
---@field SpawnStartFlag int32
---@field SpawnEndFlag int32
---@field TimeZoneSpawnType ETIMEZONE_TRIGGER_TYPE
---@field SpawnStartDelayCount int32
---@field SpawnEndDelayCount int32
---@field CompProloguePlayerID EPlayableCharacterID
---@field NorSpawnPrologue boolean
---@field NotSpawnFinal boolean
---@field NotCoexistencePlacementLabel TArray<FName>
---@field SpawnDir FString
---@field SpawnPosX float
---@field SpawnPosY float
---@field SpawnPosZ float
---@field FaintSpawnPosX float
---@field FaintSpawnPosY float
---@field FaintSpawnPosZ float
---@field EmotionOffsetX float
---@field EmotionOffsetY float
---@field EmotionOffsetZ float
---@field CaptionTextLabel FName
---@field SinglePlayMotion uint8
---@field Emotion FString
---@field Permission_FCmd uint8
---@field AllowBanFlag_FCmd int32
---@field FixDirInFieldCommand boolean
---@field EventType_A FString
---@field EventStartFlag_A int32
---@field EventEndFlag_A int32
---@field TimeZoneTriggerType_A ETIMEZONE_TRIGGER_TYPE
---@field EventParam_A_1_ID FName
---@field EventParam_A_1 FName
---@field EventParam_A_2_ID FName
---@field EventParam_A_2 FName
---@field EventParam_A_3_ID FName
---@field EventParam_A_3 FName
---@field EventParam_A_4_ID FName
---@field EventParam_A_4 FName
---@field EventParam_A_5_ID FName
---@field EventParam_A_5 FName
---@field EventParam_A_6_ID FName
---@field EventParam_A_6 FName
---@field EventParam_A_7_ID FName
---@field EventParam_A_7 FName
---@field EventParam_A_8_ID FName
---@field EventParam_A_8 FName
---@field EventParam_A_9_ID FName
---@field EventParam_A_9 FName
---@field EventParam_A_10_ID FName
---@field EventParam_A_10 FName
---@field EventLabel_A FName
---@field EventType_B FString
---@field EventStartFlag_B int32
---@field EventEndFlag_B int32
---@field TimeZoneTriggerType_B ETIMEZONE_TRIGGER_TYPE
---@field EventParam_B_1_ID FName
---@field EventParam_B_1 FName
---@field EventParam_B_2_ID FName
---@field EventParam_B_2 FName
---@field EventParam_B_3_ID FName
---@field EventParam_B_3 FName
---@field EventParam_B_4_ID FName
---@field EventParam_B_4 FName
---@field EventParam_B_5_ID FName
---@field EventParam_B_5 FName
---@field EventParam_B_6_ID FName
---@field EventParam_B_6 FName
---@field EventParam_B_7_ID FName
---@field EventParam_B_7 FName
---@field EventParam_B_8_ID FName
---@field EventParam_B_8 FName
---@field EventParam_B_9_ID FName
---@field EventParam_B_9 FName
---@field EventParam_B_10_ID FName
---@field EventParam_B_10 FName
---@field EventLabel_B FName
---@field EventType_C FString
---@field EventStartFlag_C int32
---@field EventEndFlag_C int32
---@field TimeZoneTriggerType_C ETIMEZONE_TRIGGER_TYPE
---@field EventParam_C_1_ID FName
---@field EventParam_C_1 FName
---@field EventParam_C_2_ID FName
---@field EventParam_C_2 FName
---@field EventParam_C_3_ID FName
---@field EventParam_C_3 FName
---@field EventParam_C_4_ID FName
---@field EventParam_C_4 FName
---@field EventParam_C_5_ID FName
---@field EventParam_C_5 FName
---@field EventParam_C_6_ID FName
---@field EventParam_C_6 FName
---@field EventParam_C_7_ID FName
---@field EventParam_C_7 FName
---@field EventParam_C_8_ID FName
---@field EventParam_C_8 FName
---@field EventParam_C_9_ID FName
---@field EventParam_C_9 FName
---@field EventParam_C_10_ID FName
---@field EventParam_C_10 FName
---@field EventLabel_C FName
---@field EventType_D FString
---@field EventStartFlag_D int32
---@field EventEndFlag_D int32
---@field TimeZoneTriggerType_D ETIMEZONE_TRIGGER_TYPE
---@field EventParam_D_1_ID FName
---@field EventParam_D_1 FName
---@field EventParam_D_2_ID FName
---@field EventParam_D_2 FName
---@field EventParam_D_3_ID FName
---@field EventParam_D_3 FName
---@field EventParam_D_4_ID FName
---@field EventParam_D_4 FName
---@field EventParam_D_5_ID FName
---@field EventParam_D_5 FName
---@field EventParam_D_6_ID FName
---@field EventParam_D_6 FName
---@field EventParam_D_7_ID FName
---@field EventParam_D_7 FName
---@field EventParam_D_8_ID FName
---@field EventParam_D_8 FName
---@field EventParam_D_9_ID FName
---@field EventParam_D_9 FName
---@field EventParam_D_10_ID FName
---@field EventParam_D_10 FName
---@field EventLabel_D FName
---@field EventType_E FString
---@field EventStartFlag_E int32
---@field EventEndFlag_E int32
---@field TimeZoneTriggerType_E ETIMEZONE_TRIGGER_TYPE
---@field EventParam_E_1_ID FName
---@field EventParam_E_1 FName
---@field EventParam_E_2_ID FName
---@field EventParam_E_2 FName
---@field EventParam_E_3_ID FName
---@field EventParam_E_3 FName
---@field EventParam_E_4_ID FName
---@field EventParam_E_4 FName
---@field EventParam_E_5_ID FName
---@field EventParam_E_5 FName
---@field EventParam_E_6_ID FName
---@field EventParam_E_6 FName
---@field EventParam_E_7_ID FName
---@field EventParam_E_7 FName
---@field EventParam_E_8_ID FName
---@field EventParam_E_8 FName
---@field EventParam_E_9_ID FName
---@field EventParam_E_9 FName
---@field EventParam_E_10_ID FName
---@field EventParam_E_10 FName
---@field EventLabel_E FName
---@field EventType_F FString
---@field EventStartFlag_F int32
---@field EventEndFlag_F int32
---@field TimeZoneTriggerType_F ETIMEZONE_TRIGGER_TYPE
---@field EventParam_F_1 FName
---@field EventParam_F_2 FName
---@field EventParam_F_3 FName
---@field EventParam_F_4 FName
---@field EventParam_F_5 FName
---@field EventParam_F_6 FName
---@field EventParam_F_7 FName
---@field EventParam_F_8 FName
---@field EventParam_F_9 FName
---@field EventParam_F_10 FName
---@field EventLabel_F FName
---@field EventType_G FString
---@field EventStartFlag_G int32
---@field EventEndFlag_G int32
---@field TimeZoneTriggerType_G ETIMEZONE_TRIGGER_TYPE
---@field EventParam_G_1 FName
---@field EventParam_G_2 FName
---@field EventParam_G_3 FName
---@field EventParam_G_4 FName
---@field EventParam_G_5 FName
---@field EventParam_G_6 FName
---@field EventParam_G_7 FName
---@field EventParam_G_8 FName
---@field EventParam_G_9 FName
---@field EventParam_G_10 FName
---@field EventLabel_G FName
---@field EventType_H FString
---@field EventStartFlag_H int32
---@field EventEndFlag_H int32
---@field TimeZoneTriggerType_H ETIMEZONE_TRIGGER_TYPE
---@field EventParam_H_1 FName
---@field EventParam_H_2 FName
---@field EventParam_H_3 FName
---@field EventParam_H_4 FName
---@field EventParam_H_5 FName
---@field EventParam_H_6 FName
---@field EventParam_H_7 FName
---@field EventParam_H_8 FName
---@field EventParam_H_9 FName
---@field EventParam_H_10 FName
---@field EventLabel_H FName
---@field EventType_I FString
---@field EventStartFlag_I int32
---@field EventEndFlag_I int32
---@field TimeZoneTriggerType_I ETIMEZONE_TRIGGER_TYPE
---@field EventParam_I_1 FName
---@field EventParam_I_2 FName
---@field EventParam_I_3 FName
---@field EventParam_I_4 FName
---@field EventParam_I_5 FName
---@field EventParam_I_6 FName
---@field EventParam_I_7 FName
---@field EventParam_I_8 FName
---@field EventParam_I_9 FName
---@field EventParam_I_10 FName
---@field EventLabel_I FName
---@field EventType_J FString
---@field EventStartFlag_J int32
---@field EventEndFlag_J int32
---@field TimeZoneTriggerType_J ETIMEZONE_TRIGGER_TYPE
---@field EventParam_J_1 FName
---@field EventParam_J_2 FName
---@field EventParam_J_3 FName
---@field EventParam_J_4 FName
---@field EventParam_J_5 FName
---@field EventParam_J_6 FName
---@field EventParam_J_7 FName
---@field EventParam_J_8 FName
---@field EventParam_J_9 FName
---@field EventParam_J_10 FName
---@field EventLabel_J FName
local FPlacementData = {}



---@class FPlacementEventParamSet
---@field ParamSetIndex int32
---@field EventType FString
---@field EventStartFlag int32
---@field EventEndFlag int32
---@field TimeZoneTriggerType ETIMEZONE_TRIGGER_TYPE
---@field EventParam_1 FName
---@field EventParam_2 FName
---@field EventParam_3 FName
---@field EventParam_4 FName
---@field EventParam_5 FName
---@field EventParam_6 FName
---@field EventParam_7 FName
---@field EventParam_8 FName
---@field EventParam_9 FName
---@field EventParam_10 FName
---@field EventLabel FName
local FPlacementEventParamSet = {}



---@class FPlacementLabelInfo : FTableRowBase
---@field PlaceLabelArray TArray<FName>
local FPlacementLabelInfo = {}



---@class FPlantResourceData
---@field m_Mesh UStaticMesh
---@field m_Ratio int32
---@field m_GenerateNum int32
local FPlantResourceData = {}



---@class FPlayAction
---@field ActionID EKSCharacterAction
---@field StartFrame int32
---@field Force boolean
---@field ManualLoop EKSCharacterAnimationLoop
local FPlayAction = {}



---@class FPlayRequest
---@field PlayIndex int32
---@field Label FName
---@field Loop boolean
---@field LoopInterval int32
---@field Power float
local FPlayRequest = {}



---@class FPlayableCharacterData : FTableRowBase
---@field ID int32
---@field DisplayName FName
---@field CharacterRole ECharacterRole
---@field ResourceLabel TArray<FName>
---@field GuestResourceLabel FName
---@field VoiceCueSheet_ja TArray<FName>
---@field VoiceCueSheet_en TArray<FName>
---@field VoiceSet FName
---@field SpecialActionList TArray<ESpecialActionType>
---@field PotentialityActionLabel FName
---@field SecondPotentialityActionLabel FName
---@field SecondPotentialityActionFlag int32
---@field UniqueStyle EBATTLE_STYLE_TYPE
---@field ReleaseStyleFlag int32
---@field StyleAvailableCount int32
---@field InitLevel int32
---@field ParameterRevision FCharacterParam
---@field WeaponStance EWEAPON_STANCE
---@field MainWeapon EWEAPON_CATEGORY
---@field FirstEquipment FSaveEquipmentData
---@field FirstJob EJOB_TYPE
---@field FieldCommandInfo FFieldCommandInfo
---@field MainMissionPlayingFlag int32
---@field SymbolLabel FName
---@field SymbolWhLabel FName
---@field DayPortraitLabel FName
---@field DayPortraitBgLabel FName
---@field NightPortraitLabel FName
---@field NightPortraitBgLabel FName
---@field PortraitNameLabel FName
---@field AdvancedAbility TArray<FAdvancedAbility>
---@field TextInfoLabel FName
---@field CostumeList TArray<FCharacterCostumeInfo>
---@field CharmEnemyLabel FName
---@field CharmEnemyLabelForKSBattle FName
local FPlayableCharacterData = {}



---@class FPlayerBackpack
---@field Money int32
---@field ItemList TArray<FSaveBackPackItem>
local FPlayerBackpack = {}



---@class FPlayerLocation
---@field levelName FName
---@field Position FVector
---@field levelId int32
---@field RecentLevelTriggerId uint8
---@field Dir EKSCharacterDir
local FPlayerLocation = {}



---@class FPlayerMoveHistory
---@field vLocation FVector
---@field nDir uint8
---@field eMoveMode EKSCharacterMoveMode
local FPlayerMoveHistory = {}



---@class FPlayerParty
---@field MainMemberID TArray<int32>
---@field SubMemberID TArray<int32>
---@field CameraLockPos FVector
---@field LastBgmID int32
---@field levelId int32
---@field Position FVector
---@field Dir uint8
local FPlayerParty = {}



---@class FPlayerVoiceList : FTableRowBase
---@field VoiceLabel TArray<FName>
local FPlayerVoiceList = {}



---@class FPlayerVoiceSet : FTableRowBase
---@field VoiceList TArray<FPlayerVoiceList>
local FPlayerVoiceSet = {}



---@class FPotentialityActionData : FTableRowBase
---@field ID int32
---@field ReleaseFlag int32
---@field NameTextInMenu FName
---@field DetailTextInMenu FName
---@field NameTextinBattle FName
---@field DetailTextInBattle FName
---@field DetailTextInPlayerSelect FName
---@field ActionType EPOTENTIALITY_ACTION_TYPE
---@field ActionPointInit int32
---@field ActionPointMax int32
---@field AddAbilityList TArray<FName>
---@field EffectColor FLinearColor
---@field GageIconLabel FName
---@field GageEffectTexLabel FName
---@field AuraEffectLabel FName
local FPotentialityActionData = {}



---@class FPreparationData : FTableRowBase
---@field ID int32
---@field PreparationID int32
---@field DisplayName FName
---@field BuildUpDisplayName FName
---@field Detail FName
---@field Material FName
---@field Attribute EATTRIBUTE_TYPE
---@field BaseCount int32
---@field EstimateOrderType EBATTLE_ACTION_ORDER_ESTIMATE_TYPE
---@field BuildUpEstimateOrderType EBATTLE_ACTION_ORDER_ESTIMATE_TYPE
---@field EstimateOrderCount int32
---@field Ailment TArray<FAilmentHandler>
---@field BuildUpAilment TArray<FAilmentHandler>
---@field ActionCommandSequencer TSoftObjectPtr<ULevelSequence>
---@field BuildUpSequencer TSoftObjectPtr<ULevelSequence>
---@field IsBuildUp boolean
---@field IsSpread boolean
---@field IsRandom boolean
---@field AbilitySE TArray<FName>
---@field TimeZoneTrigger ETIMEZONE_TRIGGER_TYPE
local FPreparationData = {}



---@class FProceduralBuildingMeshDataSet
---@field m_cGroundPost UStaticMesh
---@field m_cGroundLoopX UStaticMesh
---@field m_cGroundLoopY UStaticMesh
---@field m_cWallPost UStaticMesh
---@field m_cWallLoopX UStaticMesh
---@field m_cWallLoopY UStaticMesh
---@field m_cRoofEdgeStart UStaticMesh
---@field m_cRoofEdgeLoop UStaticMesh
---@field m_cRoofEdgeLoop2 UStaticMesh
---@field m_cRoofEdgeEnd UStaticMesh
---@field m_cRoofCenterStart UStaticMesh
---@field m_cRoofCenterLoop UStaticMesh
---@field m_cRoofCenterLoop2 UStaticMesh
---@field m_cRoofCenterEnd UStaticMesh
---@field m_cRoofTopEventStart UStaticMesh
---@field m_cRoofTopEventLoop UStaticMesh
---@field m_cRoofTopEventLoop2 UStaticMesh
---@field m_cRoofTopEventEnd UStaticMesh
---@field m_cRoofTopOddStart UStaticMesh
---@field m_cRoofTopOddLoop UStaticMesh
---@field m_cRoofTopOddLoop2 UStaticMesh
---@field m_cRoofTopOddEnd UStaticMesh
---@field m_cRoofSideLeft UStaticMesh
---@field m_cRoofSideLoop UStaticMesh
---@field m_cRoofSideRight UStaticMesh
---@field m_cRoofSidePost UStaticMesh
---@field m_cRoofSideTop UStaticMesh
---@field m_cRoofSideLoopRight UStaticMesh
---@field m_cRoofSideLoopLeft UStaticMesh
local FProceduralBuildingMeshDataSet = {}



---@class FProcessEnemyEventData
---@field EventLabel FName
---@field EventFlagBegin int32
---@field EventFlagEnd int32
---@field PlayingMainStoryLabel FName
local FProcessEnemyEventData = {}



---@class FProcessItemNum : FTableRowBase
---@field ID int32
---@field NumTable TArray<int32>
local FProcessItemNum = {}



---@class FPurchaseItemInfoData : FTableRowBase
---@field ID int32
---@field ItemLabel FName
---@field FCPrice int32
---@field PossibleItemLabel FName
---@field ObtainFlag int32
---@field ProperSteal int32
---@field ProperBeg int32
---@field LineupTime ELineupTime
---@field VisibleFlags TArray<int32>
---@field HiddenFlags TArray<int32>
---@field MillionaireModeLavel FName
---@field IsUnlimited boolean
---@field BeSoldOut boolean
local FPurchaseItemInfoData = {}



---@class FPurchaseListItem : FTableRowBase
---@field PurchaseIndex int32
---@field ItemIcon UTexture2D
---@field ItemListNameText FText
---@field ItemDialogNameText FText
---@field PriceText FText
---@field InHandText FText
---@field PriceTextColor FLinearColor
---@field ShowPriceUnit boolean
---@field Price int32
---@field IsSelect boolean
---@field StealProbability int32
---@field IsBonusLottery boolean
---@field ItemLabel FName
local FPurchaseListItem = {}



---@class FRadarMapDestinationData : FTableRowBase
---@field ID int32
---@field MainStoryTask FName
---@field levelName FName
---@field LevelAreaType LEVEL_AREA_TYPE
---@field DestinationList TArray<FDestinationData>
local FRadarMapDestinationData = {}



---@class FRadarMapDisplayData
---@field PlacementLabel FName
---@field ObjectType EOBJ_TYPE
---@field Location FVector
---@field TimezoneType ETIMEZONE_TRIGGER_TYPE
---@field IconIndex int32
---@field EventLabel FName
---@field EventKind EEventKind
local FRadarMapDisplayData = {}



---@class FRadarMapIconParam
---@field IconType uint8
---@field ObjType ERADARMAP_ICON_OBJ_TYPE
---@field IconName FName
---@field NextFieldName FName
---@field RegistObjectName FName
---@field LevelTriggerID uint8
---@field Position FVector
---@field GameColorType EGameColor
---@field RippleColorType EGameColor
---@field TargetFrameIndex int32
---@field TreasureBoxIndex int32
---@field IsVisibility boolean
---@field TargetCharaID int32
---@field DestinationLabel FName
local FRadarMapIconParam = {}



---@class FRadarMapNextTargetData
---@field IsFirstTrigger boolean
---@field NextTriggerID uint8
---@field ProgressLabel FName
local FRadarMapNextTargetData = {}



---@class FRadarMapSubStoryData : FTableRowBase
---@field ID int32
---@field StartEventFlag int32
---@field EndEventFlag int32
---@field TargetLevelLabel FName
---@field RadarMapIconType ESUB_STORY_RADAR_ICON_TYPE
---@field TriggerID TArray<ELevelTriggerID>
local FRadarMapSubStoryData = {}



---@class FRandomItemData
---@field ItemLabel FName
---@field ItemNum int32
---@field Rate int32
local FRandomItemData = {}



---@class FRareEnemyParam
---@field RareEnemyFlag boolean
---@field RareEnemyRate int32
---@field RareEnemyCnt_Low int32
---@field RareEnemyCnt_Middle int32
---@field RareEnemyCnt_High int32
local FRareEnemyParam = {}



---@class FRefereshFlagChangeParam
---@field FlagLabel FName
---@field FlagStaus boolean
local FRefereshFlagChangeParam = {}



---@class FRelatedFlagSection
---@field Begin int32
---@field End int32
local FRelatedFlagSection = {}



---@class FReminiscenceBuf_EquipAbility
---@field Support TArray<int32>
---@field AbilityList TArray<FAcquisitionAbilityData>
---@field AdvancedAbility FAcquisitionAbilityData
local FReminiscenceBuf_EquipAbility = {}



---@class FReminiscenceBufferAbility : FReminiscenceBufferBase
---@field Org_EquipAbility TArray<FReminiscenceBuf_EquipAbility>
local FReminiscenceBufferAbility = {}



---@class FReminiscenceBufferBase
local FReminiscenceBufferBase = {}


---@class FReminiscenceBufferDopingParam : FReminiscenceBufferBase
---@field Org_DopingParam TArray<FCharacterParam>
local FReminiscenceBufferDopingParam = {}



---@class FReminiscenceBufferEquipment : FReminiscenceBufferBase
---@field Org_Equipment TArray<FSaveEquipmentDataID>
local FReminiscenceBufferEquipment = {}



---@class FReminiscenceBufferExp : FReminiscenceBufferBase
---@field Org_Exp TArray<int32>
local FReminiscenceBufferExp = {}



---@class FReminiscenceBufferFollowNpc : FReminiscenceBufferBase
---@field Org_FollowNpc TArray<FSaveFollowNpcData>
---@field Org_FollowWaitingNpc TArray<FSaveFollowNpcData>
local FReminiscenceBufferFollowNpc = {}



---@class FReminiscenceBufferHpForChallengeBattle : FReminiscenceBufferBase
---@field Org_HP TArray<int32>
local FReminiscenceBufferHpForChallengeBattle = {}



---@class FReminiscenceBufferItem : FReminiscenceBufferBase
---@field Org_ItemID TArray<int32>
---@field Org_ItemNum TArray<int32>
local FReminiscenceBufferItem = {}



---@class FReminiscenceBufferItemForChallengeBattle : FReminiscenceBufferItem
local FReminiscenceBufferItemForChallengeBattle = {}


---@class FReminiscenceBufferJP : FReminiscenceBufferBase
---@field Org_JP TArray<int32>
---@field Start_JP TArray<int32>
local FReminiscenceBufferJP = {}



---@class FReminiscenceBufferJob : FReminiscenceBufferBase
---@field Org_SecondJobId TArray<int32>
local FReminiscenceBufferJob = {}



---@class FReminiscenceBufferLearnAbility : FReminiscenceBufferBase
---@field Org_LearnAbility TArray<int32>
local FReminiscenceBufferLearnAbility = {}



---@class FReminiscenceBufferMoney : FReminiscenceBufferBase
---@field Org_Money int32
local FReminiscenceBufferMoney = {}



---@class FReminiscenceBufferPOT : FReminiscenceBufferBase
---@field Org_POT TArray<int32>
local FReminiscenceBufferPOT = {}



---@class FReminiscenceBufferSpForChallengeBattle : FReminiscenceBufferBase
---@field Org_SP TArray<int32>
local FReminiscenceBufferSpForChallengeBattle = {}



---@class FReminiscenceBufferTameMonster : FReminiscenceBufferBase
---@field Org_TameMonster TArray<FTameMonsterData>
---@field Org_LegendTameMonster TArray<FTameMonsterData>
local FReminiscenceBufferTameMonster = {}



---@class FReminiscenceBufferTameMonsterForChallengeBattle : FReminiscenceBufferTameMonster
local FReminiscenceBufferTameMonsterForChallengeBattle = {}


---@class FReminiscenceBufferTimeZone : FReminiscenceBufferBase
---@field Org_TimeZoneType ETimeZoneType
---@field Org_TimeZonePos int32
---@field Org_LevelDarkState ELEVEL_DARK_STATE
local FReminiscenceBufferTimeZone = {}



---@class FReminiscenceCharaData
---@field StartCharaID EPlayableCharacterID
---@field MergeCharaID EPlayableCharacterID
---@field Level int32
local FReminiscenceCharaData = {}



---@class FReminiscenceMergeSetting : FTableRowBase
---@field ID int32
---@field MergeType TArray<EREMINISCENCE_MERGE_TYPE>
local FReminiscenceMergeSetting = {}



---@class FReminiscenceRestorePlacement
---@field MoveMode EKSCharacterMoveMode
---@field LadderUpEndPos FVector
---@field LadderDownEndPos FVector
---@field MoveLadderPosition FVector
---@field PlayerLocation FVector
---@field EncountTriggerId int32
---@field EquipLantern FEquipLanternData
---@field EnableSwitchIndoorTrigger TArray<int32>
local FReminiscenceRestorePlacement = {}



---@class FReminiscenceSetting : FTableRowBase
---@field ID int32
---@field IsPrologue boolean
---@field CharacterData TArray<FReminiscenceCharaData>
---@field FirstMoney int32
---@field FirstBackpackItemLabel TArray<FName>
---@field FirstBackpackItemNum TArray<int32>
---@field ItemOnSkipReminiscence TArray<FName>
---@field MergeSettingLabel FName
local FReminiscenceSetting = {}



---@class FRequestActionOrderData
---@field m_eOrderType EACTION_ORDER_TYPE
---@field m_fDelayRatio float
---@field m_bUseIcon boolean
local FRequestActionOrderData = {}



---@class FRevivalObjectSaveData
---@field ObjectId int32
---@field CurrentLevelChangeCount int32
local FRevivalObjectSaveData = {}



---@class FRowNameIdSet
---@field IdToRowName TMap<int32, FName>
---@field RowNameToId TMap<FName, int32>
local FRowNameIdSet = {}



---@class FSaveBackPackItem
---@field ItemId int32
---@field Num int32
local FSaveBackPackItem = {}



---@class FSaveDataGuild
---@field GuildId int32
---@field AcquiredLicense int32
---@field Visited boolean
local FSaveDataGuild = {}



---@class FSaveDataSubTitle
---@field SubTitleId int32
---@field StartIndex int32
---@field ViewFlag boolean
local FSaveDataSubTitle = {}



---@class FSaveEnemyData
---@field IsAnalyse boolean
---@field WeaknessOpen int32
---@field IsPreparation boolean
local FSaveEnemyData = {}



---@class FSaveEquipmentData : FTableRowBase
---@field Sword FName
---@field Lance FName
---@field Dagger FName
---@field Axe FName
---@field Bow FName
---@field Rod FName
---@field Shield FName
---@field Head FName
---@field Body FName
---@field Accessory_00 FName
---@field Accessory_01 FName
local FSaveEquipmentData = {}



---@class FSaveEquipmentDataID
---@field Sword int32
---@field SwordFixed boolean
---@field Lance int32
---@field LanceFixed boolean
---@field Dagger int32
---@field DaggerFixed boolean
---@field Axe int32
---@field AxeFixed boolean
---@field Bow int32
---@field BowFixed boolean
---@field Rod int32
---@field RodFixed boolean
---@field Shield int32
---@field ShieldFixed boolean
---@field Head int32
---@field HeadFixed boolean
---@field Body int32
---@field BodyFixed boolean
---@field Accessory_00 int32
---@field Accessory_00_Fixed boolean
---@field Accessory_01 int32
---@field Accessory_01_Fixed boolean
local FSaveEquipmentDataID = {}



---@class FSaveFollowNpcData
---@field NpcUniqueID int32
---@field SupportLimit int32
---@field FieldCommandType int32
---@field MasterCharacterID int32
local FSaveFollowNpcData = {}



---@class FSaveMissionData
---@field MissionState TArray<int32>
---@field ClearIndex TArray<int32>
---@field SubMissionNewFlag TArray<boolean>
---@field SubMissionMaker TArray<FSubMissionMarkerData>
local FSaveMissionData = {}



---@class FSavePlayerCharacterData
---@field CharacterID int32
---@field Level int32
---@field Exp int32
---@field RawHP int32
---@field RawMP int32
---@field RawPOT int32
---@field FirstJobID int32
---@field SecondJobID int32
---@field JobPoint int32
---@field Equipment FSaveEquipmentDataID
---@field EquipSupportSkill TArray<int32>
---@field AcquisitionAbilityList TArray<FAcquisitionAbilityData>
---@field AcquisitionAdvancedAbility FAcquisitionAbilityData
---@field DopingParam FCharacterParam
---@field PlayingMainStoryID int32
---@field InterruptedMainStoryID int32
---@field MainMissionProgressCnt int32
local FSavePlayerCharacterData = {}



---@class FSeVibrationData : FTableRowBase
---@field ID int32
local FSeVibrationData = {}



---@class FSearchInfomationData : FTableRowBase
---@field ID int32
---@field InfoText FString
---@field AccessPoint int32
---@field IsEffective boolean
---@field NotificationText FString
local FSearchInfomationData = {}



---@class FSearchRelationInfoData : FTableRowBase
---@field ID int32
---@field PersonalInfoList TArray<int32>
---@field DiagramList TArray<int32>
local FSearchRelationInfoData = {}



---@class FSequencerResourceData : FTableRowBase
---@field ID int32
---@field ResourcePath TSoftObjectPtr<UObject>
local FSequencerResourceData = {}



---@class FShieldChangeData : FTableRowBase
---@field m_nShieldPointMax int32
---@field m_strInfomationText FName
local FShieldChangeData = {}



---@class FShopInfoData : FTableRowBase
---@field ShopName FName
---@field ShopType ESHOP_TYPE
---@field ShopBGM FName
---@field InnBasePrice int32
---@field InnDiscountItem FName
---@field InnDiscountBasePrice int32
---@field ID int32
local FShopInfoData = {}



---@class FSimpleActionLoad
---@field CharaResLabel FName
---@field ActionLabels TArray<EKSCharacterAction>
local FSimpleActionLoad = {}



---@class FSkillInfoData : FTableRowBase
---@field ID int32
---@field Name int32
---@field Detail int32
---@field InvokeType int32
---@field Values TArray<float>
local FSkillInfoData = {}



---@class FSoldOutShopItemData
---@field IsSoldOut boolean
local FSoldOutShopItemData = {}



---@class FSoundData : FTableRowBase
---@field SoundCri USoundAtomCue
---@field BgmLabel FName
---@field BGMID int32
---@field Priority int32
---@field FadeIn float
---@field FadeOut float
---@field Volume float
---@field Time float
---@field StateChangeBgm int32
---@field TargetSoundComponent UAtomComponent
---@field IsInterupt boolean
---@field IsPlayedMusicRecord boolean
local FSoundData = {}



---@class FSoundSEData : FTableRowBase
---@field ID int32
---@field Label FString
---@field CueSheetName FName
---@field Resource TSoftObjectPtr<USoundAtomCue>
local FSoundSEData = {}



---@class FSoundVoiceData : FTableRowBase
---@field ID int32
---@field Label FString
---@field CueSheetName FName
---@field Resource TSoftObjectPtr<USoundAtomCue>
local FSoundVoiceData = {}



---@class FSpActMerchantResult
---@field Result ESPACT_MER_RESULT_TYPE
---@field ResultTextLabel FName
---@field ResultTextLabel_Param0 FString
---@field PriceBefore int32
---@field PriceAfter int32
---@field AcquiredItemLabel TArray<FName>
---@field AcquiredItemNum TArray<int32>
---@field NPCID int32
local FSpActMerchantResult = {}



---@class FSpActionMerchant_Data : FTableRowBase
---@field ID int32
---@field SPEffectType ESPACT_MERCHANT_TYPE
---@field SPEffectName FName
---@field SPEffectOverView FName
---@field ResultTextSuccess FName
---@field ResultTextFailure FName
---@field EffectIntParam TArray<int32>
---@field EffectItemLabel TArray<FName>
local FSpActionMerchant_Data = {}



---@class FSpActionMerchant_MenuData
---@field SPActionID int32
---@field SPActionName FText
---@field EffectType ESPACT_MERCHANT_TYPE
---@field EffectOverview FText
local FSpActionMerchant_MenuData = {}



---@class FSpActionMerchant_Type : FTableRowBase
---@field ID int32
---@field ResultParamType int32
---@field ExecTrigger TArray<boolean>
---@field EffectDescription FName
---@field DescTextParam TArray<ESPACT_MER_DESC_PARAM_TYPE>
local FSpActionMerchant_Type = {}



---@class FSpecialAbilityInfoData : FTableRowBase
---@field ID int32
---@field DesplayName int32
---@field Detail int32
local FSpecialAbilityInfoData = {}



---@class FSpecialActionData : FTableRowBase
---@field ID int32
---@field MenuName FName
---@field MenuDetail FName
---@field BattleCommandName FName
---@field BattleCommandDetail FName
---@field PlayerSelectDetail FName
---@field SpecialActionType FString
---@field AbilityID TArray<FName>
---@field UniqueCommandFlag boolean
---@field BanFlag int32
local FSpecialActionData = {}



---@class FSpecialItemData : FTableRowBase
---@field ID int32
---@field SpecialType ESPECIAL_ITEM_TYPE
---@field UsableSpItem boolean
---@field ShowInItemListFlag int32
---@field HideInItemListFlag int32
---@field RelativeCharacterId EPlayableCharacterID
---@field RelativeItemLabel FName
---@field BgmLabel FName
---@field CommonText TArray<FName>
local FSpecialItemData = {}



---@class FStaffCreditPartsTable : FTableRowBase
---@field Alignment ECreditAlignment
---@field FontColor ECreditFontColor
---@field FontType ECreditFontType
---@field FontSize ECreditFontSize
local FStaffCreditPartsTable = {}



---@class FStaffCreditStyleTable : FTableRowBase
---@field ID int32
---@field Alignment ECreditAlignment
---@field FontColor ECreditFontColor
---@field FontType ECreditFontType
---@field FontSize ECreditFontSize
local FStaffCreditStyleTable = {}



---@class FStaffCreditTable : FTableRowBase
---@field ID int32
---@field PartsType ECreditWidgetType
---@field Style FName
---@field Resource TArray<FString>
local FStaffCreditTable = {}



---@class FStartWorldMapData
---@field WMapLocation FName
---@field RelationLevel TArray<FName>
---@field StartFlag int32
---@field EndFlag int32
local FStartWorldMapData = {}



---@class FStoryRecordTaskInfo
---@field StoryRecordList TArray<FMAINMENU_MISSION_RECORD_DATA>
local FStoryRecordTaskInfo = {}



---@class FSubMissionData : FTableRowBase
---@field ID int32
---@field AreaIndex int32
---@field StoryCategory ESUB_STORY_CATEGORY
---@field MissionIndex int32
---@field WorldMapIcon FName
---@field StartConditionParty TArray<EPlayableCharacterID>
---@field TitleTextLabel FName
---@field DetailTextLabel FName
---@field ClearTextLabel TArray<FName>
---@field NPCName FName
---@field NPCLabel FName
---@field RewardMoney int32
---@field RewardParam TArray<FName>
---@field RelatedMainStoryTask FName
---@field RelatedFlagSections TArray<FRelatedFlagSection>
local FSubMissionData = {}



---@class FSubMissionMarkerData
---@field MapID int32
---@field MarkerPos FVector
local FSubMissionMarkerData = {}



---@class FSubSeqData
---@field Sequence ALevelSequenceActor
local FSubSeqData = {}



---@class FSubTitleBlockData
---@field TalkLabel FName
---@field ViewTime float
---@field WaitTime float
---@field BlockIndex int32
local FSubTitleBlockData = {}



---@class FSubTitleDataBase : FTableRowBase
---@field ID int32
---@field MapInWaitTime float
---@field FadeInTime float
---@field FadeOutTime float
---@field BeginMainStoryTaskLabel FName
---@field EndMainStoryTaskLabel FName
---@field UseBackground boolean
---@field BlockData TArray<FSubTitleBlockData>
local FSubTitleDataBase = {}



---@class FSupportAbilityDataBase : FTableRowBase
---@field ID int32
---@field SupportAbilityID int32
---@field DisplayName FName
---@field Detail FName
---@field SupportAilmentType ESUPPORT_AILMENT_TYPE
---@field InvocationValue int32
---@field AddtionalInVocationValue00 int32
---@field AddtionalInVocationValue01 int32
---@field AddtionalInVocationValue02 int32
---@field ExecAbilityLabel FName
local FSupportAbilityDataBase = {}



---@class FSupportCharacterData : FTableRowBase
---@field ID int32
---@field SupporterID int32
---@field DisplayNameID FName
---@field DisplayRank int32
---@field ActionLabel FName
---@field SupportPoint int32
---@field IsUnlimitedSupporter boolean
---@field SupportLimit int32
---@field Parameter FCharacterParam
---@field WeaponType EWEAPON_CATEGORY
---@field WeaponStance EWEAPON_STANCE
---@field WeaponItemLabel FName
---@field CoverRate int32
---@field SupporterAI TSoftClassPtr<UBattleAIBase>
---@field CommandTable TArray<FSupporterCommandData>
---@field SessionAbility FName
local FSupportCharacterData = {}



---@class FSupporterCommandData
---@field CommandName FName
---@field Rate int32
---@field Cost int32
local FSupporterCommandData = {}



---@class FSwitchIndoorTriggerParam : FTableRowBase
---@field fCameraDistanceIndoor float
---@field fManualFocusDistanceIndoor float
---@field fManualFocusDistanceOutdoor float
---@field fCharacterScaleIndoor float
---@field fCharacterScaleOutdoor float
---@field fCharacterHeightIndoor float
---@field fCharacterHeightOutdoor float
---@field nIndoorFloorNum int32
---@field nOutdoorFloorNum int32
---@field bForceOutdoor boolean
---@field nProcessOrder int32
local FSwitchIndoorTriggerParam = {}



---@class FTalkText : FTableRowBase
---@field Type EBalloonType
---@field Reset TArray<boolean>
---@field Height TArray<int32>
---@field Width TArray<int32>
---@field Names TArray<FName>
---@field Text TArray<FString>
local FTalkText = {}



---@class FTalkVoice : FTableRowBase
---@field Voice TArray<FName>
local FTalkVoice = {}



---@class FTameMonsterData
---@field EnemyID int32
---@field Count int32
---@field Used boolean
local FTameMonsterData = {}



---@class FTimeZoneSaveData
---@field m_eTimeZoneType ETimeZoneType
---@field m_nTimeZoneChangeValue int32
local FTimeZoneSaveData = {}



---@class FTownData
---@field ConnectionValue int32
local FTownData = {}



---@class FTownInfoData : FTableRowBase
---@field ID int32
---@field TownLabel FName
---@field TownName FName
---@field ConnectionInit int32
---@field ConnectionMax int32
---@field ConnectionPrice int32
---@field ConnectionRate TArray<float>
---@field StealFcAssistItem FFieldCommandAssistItem
---@field BattleFcAssistItem FFieldCommandAssistItem
---@field MonsterFcAssistItem FFieldCommandAssistItem
---@field LeadFcAssistItem FFieldCommandAssistItem
---@field LureFcAssistItem FFieldCommandAssistItem
---@field HearFcAssistItem FFieldCommandAssistItem
---@field HireFcAssistItem FFieldCommandAssistItem
---@field RobFcAssistItem FFieldCommandAssistItem
local FTownInfoData = {}



---@class FTransitionData
---@field NextFlowData TArray<EMAINSEQ_TYPE>
local FTransitionData = {}



---@class FTransportCameraParam
---@field CameraLocationOffset FVector
---@field CameraRotation FRotator
---@field CharacterScale FVector
---@field Filmback FCameraFilmbackSettings
---@field LensSettings FCameraLensSettings
---@field FocusSettings FCameraFocusSettings
---@field CurrentFocalLength float
---@field CurrentAperture float
local FTransportCameraParam = {}



---@class FTutorialFlagPart : FTableRowBase
---@field ID int32
---@field TutorialType ETUTORIAL_TYPE
---@field TutorialListFlag int32
---@field TutorialOpenedFlag int32
---@field PageDataLabel TArray<FName>
local FTutorialFlagPart = {}



---@class FUIButtonData : FTableRowBase
---@field Image_Active UImage
---@field Image_DeActive UImage
---@field Button UButton
local FUIButtonData = {}



---@class FUIResourceData : FTableRowBase
---@field ID int32
---@field ResType EUIResType
---@field Category EUIResCategory
---@field ResList TArray<TSoftObjectPtr<UObject>>
local FUIResourceData = {}



---@class FUIResourceReferenceData : FTableRowBase
---@field ID int32
---@field ResType EUIResType
---@field Category EUIResCategory
---@field ResMap TArray<int32>
---@field LangMap TArray<int32>
---@field AssetMap TMap<int32, TSoftObjectPtr<UObject>>
local FUIResourceReferenceData = {}



---@class FUIWidgetReferenceData : FTableRowBase
---@field ID int32
---@field BaseClassPath FString
---@field InstancePath TSoftObjectPtr<UObject>
---@field ZOrder int32
---@field CreatePhase EWIDGET_CREATE_PHASE
---@field IsAddViewport boolean
local FUIWidgetReferenceData = {}



---@class FVectorsToIcon
---@field BetweenIconAndCursor FVector2D
---@field BetweenIconAndAreaLabel FVector2D
local FVectorsToIcon = {}



---@class FWeakChangeData : FTableRowBase
---@field m_eWeakAttributeType int32
---@field m_strInfomationText FName
local FWeakChangeData = {}



---@class FWeakLockData : FTableRowBase
---@field m_eWeakLockType int32
---@field m_strInfomationText FName
local FWeakLockData = {}



---@class FWeaponMasterEventDataBase : FTableRowBase
---@field ID int32
---@field EventLabel FName
---@field DialogText FName
local FWeaponMasterEventDataBase = {}



---@class FWeaponTexutreUnloadManage
---@field m_strLoadWeaponLabel TArray<FName>
---@field m_strUnLoadWaitWeaponLabel TArray<FName>
---@field m_eUnlaodGCType EWEAPON_UNLOAD_GC_TYPE
---@field m_uUnloadWeaponCnt uint8
---@field m_uUnloadWeaponCntMax uint8
local FWeaponTexutreUnloadManage = {}



---@class FWidgetAnimationGroupData
---@field Animations TArray<UWidgetAnimation>
local FWidgetAnimationGroupData = {}



---@class FWidgetFlipbookAnimeInfo : FTableRowBase
---@field Action EKSCharacterAction
---@field Dir EKSCharacterDir
---@field DrawSize FVector2D
local FWidgetFlipbookAnimeInfo = {}



---@class FWidgetTemporaryHiddenData : FTableRowBase
---@field ID int32
---@field HiddenUser EWIDGET_TEMPORARY_HIDE_USER
---@field UiList TArray<EKSUIKind>
local FWidgetTemporaryHiddenData = {}



---@class FWorldMapDarkAreaEffectParam : FTableRowBase
---@field WorldMapLabel FName
---@field DarkAreaLabel FName
---@field EffectType EWorldMapEffectType
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field ScaleOffset FVector
local FWorldMapDarkAreaEffectParam = {}



---@class FWorldMapDestinationData
---@field WorldMapLocation FName
---@field WorldMapDestination FName
---@field StoryCategory EMAIN_STORY_CATEGORY
---@field ChapterNumber int32
---@field ChapterText FName
---@field PlayerCharaId EPlayableCharacterID
---@field RelationCharaId TArray<EPlayableCharacterID>
---@field RecommendationLevel int32
local FWorldMapDestinationData = {}



---@class FWorldMapIconData : FTableRowBase
---@field ID int32
---@field NearVisibility boolean
---@field MiddleVisibility boolean
---@field FarVisibility boolean
---@field IsDisplayOnlyCurrentLocation boolean
---@field IconTexLabel FName
---@field IsGuildIcon boolean
---@field IsShipIcon boolean
local FWorldMapIconData = {}



---@class FWorldMapNameOverride
---@field NameLabel FName
---@field ActiveFlag int32
---@field EncounterLevelLabel FName
local FWorldMapNameOverride = {}



---@class FWorldMapTable : FTableRowBase
---@field ID int32
---@field MapIconType EWorldMapIconType
---@field RefLevelName TArray<FName>
---@field RegionName FName
---@field MapName FName
---@field MapNameOverrides TArray<FWorldMapNameOverride>
---@field EmblemLabel FName
---@field WorldMapMaskArea EWorldMapMaskArea
---@field WorldMapIslandLayerArea EWorldMapIslandLayerArea
---@field WorldMapPrologueMaskArea EWorldMapPrologueMaskArea
---@field DarkAreaLabel FName
---@field IsAllowLostWay boolean
---@field VisibleFlag int32
---@field CanFastTravel boolean
---@field TemporaryBanFastTravelFlag int32
---@field BanFastTravelInterruptMainStory FName
---@field MoveLevelName FName
---@field TriggerID int32
---@field PlayerDir int32
---@field PlayerCharaId EPlayableCharacterID
---@field PlayerSwitchOrder int32
---@field PlayerChraraPosOffset FVector2D
local FWorldMapTable = {}



---@class IAcqUserObjectListEntry : IUserObjectListEntry
local IAcqUserObjectListEntry = {}

function IAcqUserObjectListEntry:OnScrolled() end


---@class IListItemExWidgetInterface : IInterface
local IListItemExWidgetInterface = {}

function IListItemExWidgetInterface:OnInputRight() end
function IListItemExWidgetInterface:OnInputLeft() end
function IListItemExWidgetInterface:InitExWidget() end


---@class IObjectControlInterface : IInterface
local IObjectControlInterface = {}

function IObjectControlInterface:OnShown() end
function IObjectControlInterface:OnHidden() end


---@class UAISACControlComponent : UActorComponent
---@field m_acAISACData TArray<FAISACCtrlParam>
local UAISACControlComponent = {}

function UAISACControlComponent:SetupAISAC() end


---@class UAbilityDataTableUtility : UDataTableUtilityBase
local UAbilityDataTableUtility = {}

---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UAbilityDataTableUtility:IsDivineAbilitySet(TargetLabel, LogEnable) end
---@param OutData FAbilitySetDataBase
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UAbilityDataTableUtility:GetAbilitySetRowData(OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UAbilityDataTableUtility:GetAbilityRowNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FAbilityDataBase
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UAbilityDataTableUtility:GetAbilityRowData(returnCode, OutData, TargetLabel, LogEnable) end


---@class UAbilityForgetWidgetBase : UKSUserWidgetBase
---@field onSelectForgetAbility FAbilityForgetWidgetBaseOnSelectForgetAbility
local UAbilityForgetWidgetBase = {}

---@param AbilityList TArray<int32>
---@return boolean
function UAbilityForgetWidgetBase:SetAbilityList(AbilityList) end
---@return boolean
function UAbilityForgetWidgetBase:OpenList() end
---@return boolean
function UAbilityForgetWidgetBase:OpenConfirmList() end
---@return boolean
function UAbilityForgetWidgetBase:CloseList() end
---@param SelectCursorPosition int32
---@param IsDecide boolean
function UAbilityForgetWidgetBase:CallOnSelectForgetAbility(SelectCursorPosition, IsDecide) end


---@class UAchievementDataTableUtility : UDataTableUtilityBase
local UAchievementDataTableUtility = {}

---@param dbName FName
---@param notice EDBNoticeType
function UAchievementDataTableUtility:NotifyAchievementDb(dbName, notice) end
---@return TArray<FName>
function UAchievementDataTableUtility:GetAchievementAllLabels() end


---@class UAchievementDebugUtility : UBlueprintFunctionLibrary
local UAchievementDebugUtility = {}


---@class UAchievementSaveDataUtil : USaveDataUtilBase
local UAchievementSaveDataUtil = {}

---@return int32
function UAchievementSaveDataUtil:GetSwoonNpcUniqueCount() end
---@return int32
function UAchievementSaveDataUtil:GetMaxAttackDamage() end
---@return int32
function UAchievementSaveDataUtil:GetLinerShipCount() end
---@param FCType MJFieldCommandType
---@return int32
function UAchievementSaveDataUtil:GetFieldCommandSuccessCount(FCType) end
---@return int32
function UAchievementSaveDataUtil:GetDivineAbilityCount() end
---@return int32
function UAchievementSaveDataUtil:GetBreakAttackCount() end
---@param BoostLevel EBOOST_LEVEL
---@return int32
function UAchievementSaveDataUtil:GetBoostAttackCount(BoostLevel) end
---@return int32
function UAchievementSaveDataUtil:GetAdvancedAbilityCount() end
---@return int32
function UAchievementSaveDataUtil:GetAbilityCount() end
---@param newCount int32
function UAchievementSaveDataUtil:Debug_SetSwoonNpcUniqueCount(newCount) end
---@param newCount int32
function UAchievementSaveDataUtil:Debug_SetMaxAttackDamage(newCount) end
---@param newCount int32
function UAchievementSaveDataUtil:Debug_SetLinerShipCount(newCount) end
---@param FCType MJFieldCommandType
---@param Count int32
function UAchievementSaveDataUtil:Debug_SetFieldCommandSuccessCount(FCType, Count) end
---@param newCount int32
function UAchievementSaveDataUtil:Debug_SetDivineAbilityCount(newCount) end
---@param newCount int32
function UAchievementSaveDataUtil:Debug_SetBreakAttackCount(newCount) end
---@param BoostLevel EBOOST_LEVEL
---@param newCount int32
function UAchievementSaveDataUtil:Debug_SetBoostAttackCount(BoostLevel, newCount) end
---@param newCount int32
function UAchievementSaveDataUtil:Debug_SetAdvancedAbilityCount(newCount) end
---@param newCount int32
function UAchievementSaveDataUtil:Debug_SetAbilityCount(newCount) end


---@class UAchievementTypeDataTableUtility : UDataTableUtilityBase
local UAchievementTypeDataTableUtility = {}

---@param dbName FName
---@param notice EDBNoticeType
function UAchievementTypeDataTableUtility:NotifyAchievementTypeDb(dbName, notice) end


---@class UAchievementUtility : UBlueprintFunctionLibrary
local UAchievementUtility = {}


---@class UAcqGameplayStatics : UBlueprintFunctionLibrary
local UAcqGameplayStatics = {}


---@class UAcqImage : UImage
---@field ResourceType EAcqImageResourceType
---@field SetResourceFromOnRebuilt boolean
---@field Acq_TextureForPreview TSoftObjectPtr<UTexture2D>
---@field Acq_TextureLabelForRuntime_AutoFill FName
---@field Acq_TextureLabelForRuntime FName
---@field Acq_MaterialTextureParams TMap<FName, FMateriaTextureLabel>
local UAcqImage = {}

function UAcqImage:ResetBrushResource() end


---@class UAcqListView : UListView
local UAcqListView = {}

---@param Num int32
function UAcqListView:SetNumDesignerPreviewEntries(Num) end
---@param newEntryWidgetClass TSubclassOf<UAcqUserWidget>
function UAcqListView:SetEntryWidgetClass(newEntryWidgetClass) end
---@param Item UObject
---@return UUserWidget
function UAcqListView:GetSelectItemWidget(Item) end


---@class UAcqListViewEntryItemBase : UObject
---@field OnChangedEntryItem FAcqListViewEntryItemBaseOnChangedEntryItem
local UAcqListViewEntryItemBase = {}



---@class UAcqListViewWidget : UAcqUserWidget
---@field DecideEventDelegate FAcqListViewWidgetDecideEventDelegate
---@field CancelEventDelegate FAcqListViewWidgetCancelEventDelegate
---@field m_ListView UAcqListView
---@field m_CurrentCursorIndex int32
---@field m_CurrentDisplayItemRange FIntPoint
---@field m_EntryWidgetClass TSubclassOf<UAcqUserWidget>
---@field m_ItemDisplayNum int32
local UAcqListViewWidget = {}

---@param entryItems TArray<UAcqListViewEntryItemBase>
function UAcqListViewWidget:Setup(entryItems) end
---@param Index int32
function UAcqListViewWidget:SetSelectedIndex(Index) end
---@param scrollOffset float
function UAcqListViewWidget:SetScrollOffset(scrollOffset) end
---@param entryItems TArray<UAcqListViewEntryItemBase>
function UAcqListViewWidget:SetEntryItems(entryItems) end
---@return int32
function UAcqListViewWidget:GetSelectedIndex() end
---@return float
function UAcqListViewWidget:GetScrollOffset() end
---@return UAcqListView
function UAcqListViewWidget:GetListView() end
---@return TArray<UAcqListViewEntryItemBase>
function UAcqListViewWidget:GetEntryItems() end
---@return int32
function UAcqListViewWidget:GetEntryItemNum() end
---@param payload FAcqListViewWidgetEventPayload
function UAcqListViewWidget:DecideEvent__DelegateSignature(payload) end
function UAcqListViewWidget:ClearEntryItems() end
function UAcqListViewWidget:CancelEvent__DelegateSignature() end
---@param Delta float
---@return float
function UAcqListViewWidget:AddScrollOffset(Delta) end


---@class UAcqUserWidget : UUserWidget
---@field ResetToDefaultAnim UWidgetAnimation
---@field WidgetAnimationGroup TMap<EWidgetAnimationGroup, FWidgetAnimationGroupData>
---@field StopTickWhenWidgetPaused boolean
local UAcqUserWidget = {}

---@param anims TArray<UWidgetAnimation>
function UAcqUserWidget:StopAnimsImmediately(anims) end
---@param anim UWidgetAnimation
function UAcqUserWidget:StopAnimImmediately(anim) end
---@param group EWidgetAnimationGroup
function UAcqUserWidget:StopAllAnimImmediatelyByGroup(group) end
function UAcqUserWidget:StopAllAnimImmediately() end
function UAcqUserWidget:ResetAppearance() end
function UAcqUserWidget:GroupingAnimations() end
---@param anim UWidgetAnimation
---@return float
function UAcqUserWidget:GetNormalizedElapsedTime(anim) end
---@param outAllAnims TArray<UWidgetAnimation>
---@return boolean
function UAcqUserWidget:GetAllAnimations(outAllAnims) end
---@param anim UWidgetAnimation
---@param frame int32
---@param isStopAllAnimBeforeEval boolean
function UAcqUserWidget:EvaluateAnimationSpecificFrame(anim, frame, isStopAllAnimBeforeEval) end
---@param anim UWidgetAnimation
---@param isStopAllAnimBeforeEval boolean
function UAcqUserWidget:EvaluateAnimationLastFrame(anim, isStopAllAnimBeforeEval) end
function UAcqUserWidget:AddNonGroupingAnimationsToDefaultGroup() end
---@param group EWidgetAnimationGroup
---@param anims TArray<UWidgetAnimation>
function UAcqUserWidget:AddAnimationsToGroup(group, anims) end
---@param anim UWidgetAnimation
---@param StartAtTime float
---@param isStopAllAnimBeforePlay boolean
---@param NumLoopsToPlay int32
---@param PlayMode EUMGSequencePlayMode::Type
---@param PlaybackSpeed float
---@return UUMGSequencePlayer
function UAcqUserWidget:AcqPlayAnimationDefault(anim, StartAtTime, isStopAllAnimBeforePlay, NumLoopsToPlay, PlayMode, PlaybackSpeed) end
---@param anim UWidgetAnimation
---@param StartAtTime float
---@param isStopAllAnimBeforePlay boolean
---@return UUMGSequencePlayer
function UAcqUserWidget:AcqPlayAnimationAtTime(anim, StartAtTime, isStopAllAnimBeforePlay) end
---@param anim UWidgetAnimation
---@param isStopAllAnimBeforePlay boolean
---@param isFast boolean
---@return UUMGSequencePlayer
function UAcqUserWidget:AcqPlayAnimation(anim, isStopAllAnimBeforePlay, isFast) end


---@class UActionCommandDirector : ULevelSequenceDirector
local UActionCommandDirector = {}

---@param WeaponType EWEAPON_CATEGORY
function UActionCommandDirector:WeaponChange_Implementation(WeaponType) end
function UActionCommandDirector:WaitSummonAbility_Implementation() end
function UActionCommandDirector:WaitSessionSupporter_Implementation() end
function UActionCommandDirector:WaitSessionAbility_Implementation() end
function UActionCommandDirector:WaitEnemyAction_Implementation() end
function UActionCommandDirector:WaitCaptureMainParty_Implementation() end
function UActionCommandDirector:WaitCallSubParty_Implementation() end
function UActionCommandDirector:WaitBusinessSupporter_Implementation() end
---@param TextID FName
function UActionCommandDirector:ShowInfomation_Implementation(TextID) end
function UActionCommandDirector:ShowBusinessSupportInfomation_Implementation() end
---@param Emitter AEmitter
---@param ParameterName FName
---@param Value FVector
function UActionCommandDirector:SetMaterialParameter_Vector_Implementation(Emitter, ParameterName, Value) end
---@param Emitter AEmitter
---@param ParameterName FName
---@param Value float
function UActionCommandDirector:SetMaterialParameter_Float_Implementation(Emitter, ParameterName, Value) end
---@param cActionCommand AActionCommandBase
function UActionCommandDirector:SetActionCommand(cActionCommand) end
function UActionCommandDirector:ReturnSummonCharacter_Implementation() end
function UActionCommandDirector:ReturnSessionSupporter_Implementation() end
function UActionCommandDirector:ReturnBusinessSupporter_Implementation() end
---@param ActionCharacter ABattleCharacterBase
function UActionCommandDirector:ResumeActionModeForKSParty_Implementation(ActionCharacter) end
---@param SEID FName
function UActionCommandDirector:RegisterOnHitSE_Implementation(SEID) end
---@param Rate float
---@param Marker FString
function UActionCommandDirector:RandomJumpToMarker_Implementation(Rate, Marker) end
---@param Rate float
---@param frame int32
function UActionCommandDirector:RandomJumpToFrame_Implementation(Rate, frame) end
---@param ActionCharacter ABattleCharacterBase
function UActionCommandDirector:PlayWeaponAttack_Implementation(ActionCharacter) end
---@param VoiceType EBATTLE_VOICE_TYPE
---@param UniqueCharaID EPlayableCharacterID
---@param UniqueVoiceType EBATTLE_VOICE_TYPE
---@param nBorder int32
function UActionCommandDirector:PlayVoiceWithBorder_Implementation(VoiceType, UniqueCharaID, UniqueVoiceType, nBorder) end
---@param VoiceType EBATTLE_VOICE_TYPE
---@param UniqueCharaID EPlayableCharacterID
---@param UniqueVoiceType EBATTLE_VOICE_TYPE
---@param OnHit boolean
function UActionCommandDirector:PlayVoiceWithAbilityHit_Implementation(VoiceType, UniqueCharaID, UniqueVoiceType, OnHit) end
---@param VoiceType EBATTLE_VOICE_TYPE
---@param UniqueCharaID EPlayableCharacterID
---@param UniqueVoiceType EBATTLE_VOICE_TYPE
function UActionCommandDirector:PlayVoice_Implementation(VoiceType, UniqueCharaID, UniqueVoiceType) end
---@param VibrationID FName
---@param Power EVibrationPower
function UActionCommandDirector:PlayVibration_Implementation(VibrationID, Power) end
---@param SEID FName
---@param OnHit boolean
function UActionCommandDirector:PlaySEWithAbilityHit_Implementation(SEID, OnHit) end
---@param BattleActionID EKSCharacterAction
function UActionCommandDirector:PlaySessionAction_Implementation(BattleActionID) end
---@param SEID FName
function UActionCommandDirector:PlaySE_Implementation(SEID) end
---@param BattleActionID EKSCharacterAction
function UActionCommandDirector:PlayBusinessSupportAction_Implementation(BattleActionID) end
---@param ActionCharacter ABattleCharacterBase
---@param BattleActionID EKSCharacterAction
---@param UniqueCharaID EPlayableCharacterID
---@param UniqueActionID EKSCharacterAction
---@param OnHit boolean
function UActionCommandDirector:PlayActionWithAbilityHit_Implementation(ActionCharacter, BattleActionID, UniqueCharaID, UniqueActionID, OnHit) end
---@param ActionCharacter ABattleCharacterBase
---@param BattleSelfActionID EKSCharacterAction
---@param BattleOtherActionID EKSCharacterAction
---@param bExceptEnforcer boolean
function UActionCommandDirector:PlayActionForSelfOnly_Implementation(ActionCharacter, BattleSelfActionID, BattleOtherActionID, bExceptEnforcer) end
---@param ActionCharacter ABattleCharacterBase
---@param BattleActionID EKSCharacterAction
---@param UniqueCharaID EPlayableCharacterID
---@param UniqueActionID EKSCharacterAction
---@param bExceptEnforcer boolean
function UActionCommandDirector:PlayAction_Implementation(ActionCharacter, BattleActionID, UniqueCharaID, UniqueActionID, bExceptEnforcer) end
---@param Index int32
---@param OnHit boolean
function UActionCommandDirector:PlayAbilitySEWithAbilityHit_Implementation(Index, OnHit) end
---@param Index int32
function UActionCommandDirector:PlayAbilitySE_Implementation(Index) end
---@param strMarker FString
function UActionCommandDirector:JumpToMarker_Implementation(strMarker) end
---@param frame int32
function UActionCommandDirector:JumpToFrame_Implementation(frame) end
function UActionCommandDirector:HideInfomation_Implementation() end
---@param SummonIndex int32
---@param Random boolean
function UActionCommandDirector:ExecSummonCharacter_Implementation(SummonIndex, Random) end
---@param SummonIndex int32
function UActionCommandDirector:ExecSummonAbility_Implementation(SummonIndex) end
function UActionCommandDirector:ExecStepCounter_Implementation() end
---@param cCommandOffset FVector
function UActionCommandDirector:ExecStartCharacterWarp_Implementation(cCommandOffset) end
function UActionCommandDirector:ExecSpecialAilment_Implementation() end
function UActionCommandDirector:ExecSessionAbility_Implementation() end
function UActionCommandDirector:ExecPlayDiseaseMissUI_Implementation() end
function UActionCommandDirector:ExecEndCharacterWarp_Implementation() end
---@param ActionCharacter ABattleCharacterBase
function UActionCommandDirector:ExecChangeActionModeForKSParty_Implementation(ActionCharacter) end
function UActionCommandDirector:ExecCaptureMainParty_Implementation() end
function UActionCommandDirector:ExecCallSubParty_Implementation() end
---@param Index int32
---@param AllAilment boolean
---@param LastHit boolean
---@param OnHit boolean
function UActionCommandDirector:ExecAilmentWithAbilityHit_Implementation(Index, AllAilment, LastHit, OnHit) end
---@param Index int32
---@param AllAilment boolean
---@param LastHit boolean
function UActionCommandDirector:ExecAilment_Implementation(Index, AllAilment, LastHit) end
---@param PatternB FString
---@param PatternC FString
function UActionCommandDirector:CheckPattern3JumpToMarker_Implementation(PatternB, PatternC) end
---@param PatternB int32
---@param PatternC int32
function UActionCommandDirector:CheckPattern3JumpToFrame_Implementation(PatternB, PatternC) end
---@param PatternB FString
function UActionCommandDirector:CheckPattern2JumpToMarker_Implementation(PatternB) end
---@param PatternB int32
function UActionCommandDirector:CheckPattern2JumpToFrame_Implementation(PatternB) end
---@param MarkerList TArray<FString>
function UActionCommandDirector:CheckMultiPatternJumpToMarker_Implementation(MarkerList) end
---@param FrameList TArray<int32>
function UActionCommandDirector:CheckMultiPatternJumpToFrame_Implementation(FrameList) end
---@param cTarget UParticleSystem
---@param nIndex int32
---@return boolean
function UActionCommandDirector:CheckGPUEmitter(cTarget, nIndex) end
---@param Marker FString
function UActionCommandDirector:CheckCounterJumpToMarker_Implementation(Marker) end
---@param frame int32
function UActionCommandDirector:CheckCounterJumpToFrame_Implementation(frame) end
---@param BorderLevel int32
---@param ContainEqual boolean
---@param Marker FString
function UActionCommandDirector:CheckBoostLevelLessJumpToMarker_Implementation(BorderLevel, ContainEqual, Marker) end
---@param BorderLevel int32
---@param ContainEqual boolean
---@param frame int32
function UActionCommandDirector:CheckBoostLevelLessJumpToFrame_Implementation(BorderLevel, ContainEqual, frame) end
---@param BoostLevel int32
---@param ContainEqual boolean
---@param Marker FString
function UActionCommandDirector:CheckBoostLevelGreaterJumpToMarker_Implementation(BoostLevel, ContainEqual, Marker) end
---@param BoostLevel int32
---@param ContainEqual boolean
---@param frame int32
function UActionCommandDirector:CheckBoostLevelGreaterJumpToFrame_Implementation(BoostLevel, ContainEqual, frame) end
---@param OnHit boolean
---@param Marker FString
function UActionCommandDirector:CheckAbilityHitJumpToMarker_Implementation(OnHit, Marker) end
---@param OnHit boolean
---@param frame int32
function UActionCommandDirector:CheckAbilityHitJumpToFrame_Implementation(OnHit, frame) end
function UActionCommandDirector:CallSessionSupporter_Implementation() end
function UActionCommandDirector:CallBusinessSupporter_Implementation() end


---@class UActionOrderComponent : UActorComponent
---@field m_cOwnerPlayer ABattleCharacterBase
local UActionOrderComponent = {}



---@class UActionOrderIcon : UAcqUserWidget
local UActionOrderIcon = {}

---@return boolean
function UActionOrderIcon:ResetParam() end
---@return boolean
function UActionOrderIcon:ImmediateHidden() end
---@return boolean
function UActionOrderIcon:ImmediateDettach() end
---@return boolean
function UActionOrderIcon:End() end
---@return boolean
function UActionOrderIcon:DettachSubIcon() end
---@return boolean
function UActionOrderIcon:AttachSubIcon() end


---@class UActionOrderTimeLineBase : UAcqUserWidget
local UActionOrderTimeLineBase = {}


---@class UActionPopupWidgetBase : UKSUserWidgetBase
local UActionPopupWidgetBase = {}

---@return boolean
function UActionPopupWidgetBase:TemporaryClose() end
---@return boolean
function UActionPopupWidgetBase:ReOpen() end
---@param TargetActor AActor
---@param ActionTextLabel FName
---@return boolean
function UActionPopupWidgetBase:Open(TargetActor, ActionTextLabel) end
---@return boolean
function UActionPopupWidgetBase:Close() end


---@class UActivityDataUtility : UDataTableUtilityBase
local UActivityDataUtility = {}

function UActivityDataUtility:RequestResetAllActiveActivities() end
function UActivityDataUtility:RequestRefreshActivity() end
function UActivityDataUtility:RequestNewGame() end
---@param dbName FName
---@param notice EDBNoticeType
function UActivityDataUtility:NotifyActivityDB(dbName, notice) end
---@return boolean
function UActivityDataUtility:IsNotClearedAnyActivityTask() end
---@return boolean
function UActivityDataUtility:IsAllActivityTaskCleared() end
---@return TArray<FName>
function UActivityDataUtility:GetAllMainStoryLabelRelatedActivity() end
---@param activityId FString
---@param bEnabled boolean
function UActivityDataUtility:Debug_SetActivityAvailability(activityId, bEnabled) end
---@param activityId FString
function UActivityDataUtility:Debug_ResumeActivity(activityId) end
function UActivityDataUtility:Debug_ResetAllMainStory() end
function UActivityDataUtility:Debug_OutputAllMainStory() end
function UActivityDataUtility:Debug_ClearAllMainStory() end


---@class UActorUtil : UBlueprintFunctionLibrary
local UActorUtil = {}

---@param Actor AActor
---@param NewName FString
function UActorUtil:ChangeOutLinerName(Actor, NewName) end


---@class UAreaInfoTableUtility : UBlueprintFunctionLibrary
local UAreaInfoTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
function UAreaInfoTableUtility:GetAreaInfoTableRowNames(returnCode, OutRowNames) end
---@param OutData FAreaInfoData
---@param TargetLabel FName
---@return boolean
function UAreaInfoTableUtility:GetAreaInfoData(OutData, TargetLabel) end


---@class UArrowButtonBase : UUserWidget
---@field m_bUseGameText boolean
local UArrowButtonBase = {}

---@param UseGameText boolean
function UArrowButtonBase:SetUseGameText(UseGameText) end
---@param textList TArray<FName>
function UArrowButtonBase:SetTextList(textList) end


---@class UBalloonBase : UAcqUserWidget
---@field BalloonType EBalloonType
---@field EndFlag boolean
---@field DrawTextEnd boolean
---@field m_bIsReady boolean
---@field m_bPause boolean
---@field BalloonParam FAddBalloonParam
---@field BalloonIndex int32
---@field FontSize FVector2D
---@field MinWH FVector2D
---@field TextBoxSize FVector2D
---@field FinishBalloonEvent FBalloonBaseFinishBalloonEvent
local UBalloonBase = {}

---@return boolean
function UBalloonBase:UnPausedBalloon() end
---@param NewLanguage EKSLanguage
function UBalloonBase:SetTextAnimationWait(NewLanguage) end
---@return boolean
function UBalloonBase:PauseBalloon() end
---@return boolean
function UBalloonBase:IsReady() end
---@return boolean
function UBalloonBase:IsPauseBalloon() end
---@return boolean
function UBalloonBase:IsEnd() end
---@return boolean
function UBalloonBase:IsDrawTextEnd() end
---@param InParam FAddBalloonParam
---@param bAutoTalk boolean
---@return boolean
function UBalloonBase:Init(InParam, bAutoTalk) end
---@return EBalloonType
function UBalloonBase:GetType() end
---@return boolean
function UBalloonBase:GetPlayedVoice() end
---@return FAddBalloonParam
function UBalloonBase:GetBalloonParam() end
---@return boolean
function UBalloonBase:GetAutoBalloon() end
---@return boolean
function UBalloonBase:CloseBalloon() end
---@param AutoNext boolean
---@return boolean
function UBalloonBase:CallNext(AutoNext) end
---@param EventType EBalloonEventType
---@return boolean
function UBalloonBase:CallBalloonEvent(EventType) end


---@class UBalloonBundleWidgetBase : UKSUserWidgetBase
---@field RefBalloons TArray<UBalloonBase>
---@field RefAutoBalloons TArray<UBalloonBase>
---@field UnUseBalloons TArray<UBalloonBase>
---@field UnUseAutoBalloons TArray<UBalloonBase>
---@field UseBalloons TArray<UBalloonBase>
---@field UseAutoTalkBalloons TArray<UBalloonBase>
---@field RefDeepThink UBalloonBase
---@field RefDeepThinkFixedText UBalloonBase
---@field m_cBalloonActive UBalloonBase
local UBalloonBundleWidgetBase = {}

---@return boolean
function UBalloonBundleWidgetBase:UnPausedAutoTalkBalloonAll() end
---@param fTimer float
function UBalloonBundleWidgetBase:SetAutoTimer(fTimer) end
---@param Skip boolean
function UBalloonBundleWidgetBase:RestoreEventSkip(Skip) end
---@return boolean
function UBalloonBundleWidgetBase:PauseAutoTalkBalloonAll() end
---@param noticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function UBalloonBundleWidgetBase:OnEventSpeedChange(noticeType, NoticeArgs) end
---@param noticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function UBalloonBundleWidgetBase:OnBattleSpeedChange(noticeType, NoticeArgs) end
---@param AutoNext boolean
function UBalloonBundleWidgetBase:Next(AutoNext) end
---@return boolean
function UBalloonBundleWidgetBase:IsReady() end
---@return boolean
function UBalloonBundleWidgetBase:IsEnd() end
---@return boolean
function UBalloonBundleWidgetBase:IsAllEnd() end
---@return float
function UBalloonBundleWidgetBase:GetTextWaitTime() end
---@return float
function UBalloonBundleWidgetBase:GetAutoTimer() end
---@return float
function UBalloonBundleWidgetBase:GetAutoTime() end
---@return boolean
function UBalloonBundleWidgetBase:GetAutoEventMessage() end
---@return UBalloonBase
function UBalloonBundleWidgetBase:GetActive() end
---@return boolean
function UBalloonBundleWidgetBase:DeleteBalloonAll() end
---@param pcDelete UBalloonBase
---@return boolean
function UBalloonBundleWidgetBase:DeleteBalloon(pcDelete) end
---@return boolean
function UBalloonBundleWidgetBase:DeleteAutoBalloonAll() end
---@param pcDelete UBalloonBase
---@return boolean
function UBalloonBundleWidgetBase:DeleteAutoBalloon(pcDelete) end
---@param bSkip boolean
function UBalloonBundleWidgetBase:Debug_SetMessageFullSkip(bSkip) end
---@return boolean
function UBalloonBundleWidgetBase:CloseAll() end
---@param Language EKSLanguage
function UBalloonBundleWidgetBase:ChangeTextSpeed(Language) end
---@param EventType EBalloonEventType
---@return boolean
function UBalloonBundleWidgetBase:CallBalloonEvent(EventType) end
---@param InAddParam FAddBalloonParam
---@return UBalloonBase
function UBalloonBundleWidgetBase:AddBalloon(InAddParam) end
---@param InAddParam FAddBalloonParam
---@param fDispTime float
---@return UBalloonBase
function UBalloonBundleWidgetBase:AddAutoTalkBalloon(InAddParam, fDispTime) end


---@class UBarMenuStorySelectBase : UKSUserWidgetBase
---@field BarMenuMode boolean
local UBarMenuStorySelectBase = {}

---@param Val ESTORY_SELECT_STATE
function UBarMenuStorySelectBase:SetWidgetState(Val) end
---@param WorldMapLabel FName
---@return boolean
function UBarMenuStorySelectBase:SetupStoryData(WorldMapLabel) end
---@param WorldMapLabel FName
---@param bIsBarMode boolean
---@return boolean
function UBarMenuStorySelectBase:Setup(WorldMapLabel, bIsBarMode) end
---@return boolean
function UBarMenuStorySelectBase:SetUIParts() end
---@param TownNameLabel FName
---@return boolean
function UBarMenuStorySelectBase:SetBarUIParts(TownNameLabel) end
---@param WorldMapLabel FName
---@param IsBarMenu boolean
---@return boolean
function UBarMenuStorySelectBase:OpenEvent(WorldMapLabel, IsBarMenu) end
---@return ESTORY_SELECT_STATE
function UBarMenuStorySelectBase:GetWidgetState() end


---@class UBarTalkUtility : UBlueprintFunctionLibrary
local UBarTalkUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param outBarTalkData FBarTalkDefine
---@param LevelInfoData FLevelInfoData
function UBarTalkUtility:GetBarTalkDataByLevelInfo(returnCode, outBarTalkData, LevelInfoData) end


---@class UBattleAIBase : UActorComponent
---@field m_cOwnerCharacter ABattleCharacterBase
---@field m_ePreState EBATTLE_AI_STATE
---@field m_eCurrentState EBATTLE_AI_STATE
---@field m_astrStateNameList TArray<FString>
---@field m_anAISubState TMap<EBATTLE_AI_STATE, EBATTLE_AI_SUB_STATE>
local UBattleAIBase = {}

---@param CommandName FName
function UBattleAIBase:UpdateThinkForConfusion(CommandName) end
---@param CommandName FName
function UBattleAIBase:UpdateThink(CommandName) end
---@param cOwner ABattleCharacterBase
function UBattleAIBase:SetOwnerCharacter(cOwner) end
---@param acCommandTable TArray<FBattleAICommandData>
function UBattleAIBase:SetBattleCommandTable(acCommandTable) end
---@param PlayerList TArray<ABattleCharacterBase>
---@param EnemyList TArray<ABattleCharacterBase>
---@param TargetType EBATTLE_TARGET_TYPE
---@param TargetList TArray<ABattleCharacterBase>
function UBattleAIBase:SelectBattleTarget(PlayerList, EnemyList, TargetType, TargetList) end
---@return boolean
function UBattleAIBase:PreUpdateThink() end
---@return boolean
function UBattleAIBase:PreTurnStart() end
---@param ActionCharacter ABattleCharacterBase
---@return boolean
function UBattleAIBase:PreOrderStart(ActionCharacter) end
---@return boolean
function UBattleAIBase:PostUpdateThink() end
---@return boolean
function UBattleAIBase:PostSignOfBoost() end
---@param ActionCharacter ABattleCharacterBase
---@return boolean
function UBattleAIBase:PostOrderEnd(ActionCharacter) end
---@return boolean
function UBattleAIBase:PostBattleEvent() end
---@return boolean
function UBattleAIBase:OnRevive() end
---@return boolean
function UBattleAIBase:OnDead() end
---@return boolean
function UBattleAIBase:OnDamage() end
---@return boolean
function UBattleAIBase:OnBreak() end
---@param CommandName FName
function UBattleAIBase:GetCounterAbility(CommandName) end
---@param CurrentSubState EBATTLE_AI_SUB_STATE
function UBattleAIBase:GetBattleAISubState(CurrentSubState) end
---@return FString
function UBattleAIBase:GetBattleAIStateName() end
---@param CurrentState EBATTLE_AI_STATE
---@param PrevState EBATTLE_AI_STATE
function UBattleAIBase:GetBattleAIState(CurrentState, PrevState) end
---@param NewSubState EBATTLE_AI_SUB_STATE
function UBattleAIBase:ChangeBattleAISubState(NewSubState) end
---@param NewState EBATTLE_AI_STATE
---@param ResetSubState boolean
function UBattleAIBase:ChangeBattleAIState(NewState, ResetSubState) end
---@return boolean
function UBattleAIBase:AIInitialize() end


---@class UBattleAIUtility : UBlueprintFunctionLibrary
local UBattleAIUtility = {}


---@class UBattleDamageNumberBase : UKSUserWidgetBase
local UBattleDamageNumberBase = {}

function UBattleDamageNumberBase:UpdatePosition() end
---@param noticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function UBattleDamageNumberBase:OnBattleSpeedChange(noticeType, NoticeArgs) end


---@class UBattleEventDirector : ULevelSequenceDirector
local UBattleEventDirector = {}

function UBattleEventDirector:WaitReturnCapture_Implementation() end
---@param FadeOutTime float
function UBattleEventDirector:StopBGM_Implementation(FadeOutTime) end
---@param bEnable boolean
function UBattleEventDirector:SetWhiteOutFlag_Implementation(bEnable) end
---@param FlagName FName
---@param Value boolean
function UBattleEventDirector:SetEventFlag_Implementation(FlagName, Value) end
---@param cSequenceDirector ABattleSequenceDirector
function UBattleEventDirector:SetBattleSequenceDirector(cSequenceDirector) end
---@param bVisible boolean
function UBattleEventDirector:SetBattleEnemyVisibility_Implementation(bVisible) end
---@param CharacterID EPlayableCharacterID
---@param nIndex int32
---@param bEnable boolean
function UBattleEventDirector:SetAdvancedAbility_Implementation(CharacterID, nIndex, bEnable) end
function UBattleEventDirector:ReturnCapture_Implementation() end
function UBattleEventDirector:RemoveBoostEffect_Implementation() end
---@param CharacterID EPlayableCharacterID
function UBattleEventDirector:ReleasePotentialityAction_Implementation(CharacterID) end
---@param Rate float
---@param frame int32
function UBattleEventDirector:RandomJumpToFrame_Implementation(Rate, frame) end
---@param VibrationID FName
---@param Power EVibrationPower
function UBattleEventDirector:PlayVibration_Implementation(VibrationID, Power) end
---@param SEID FName
function UBattleEventDirector:PlaySE_Implementation(SEID) end
---@param BgmLabel FName
---@param FadeOutTime float
---@param FadeInTime float
function UBattleEventDirector:PlayBGM_Implementation(BgmLabel, FadeOutTime, FadeInTime) end
---@param ActionCharacter ABattleCharacterBase
---@param BattleActionID EKSCharacterAction
function UBattleEventDirector:PlayAction_Implementation(ActionCharacter, BattleActionID) end
---@param TutorialType ETUTORIAL_TYPE
---@param bForcedDisplay boolean
function UBattleEventDirector:OpenTutorial_Implementation(TutorialType, bForcedDisplay) end
---@param TalkTextID FName
---@param Offset FVector2D
---@param WaitFinish boolean
function UBattleEventDirector:OpenTalk_Implementation(TalkTextID, Offset, WaitFinish) end
---@param TextID FName
---@param CharaID EPlayableCharacterID
---@param nAbilityIndex int32
function UBattleEventDirector:OpenActionInfoFromAdvancedAbility_Implementation(TextID, CharaID, nAbilityIndex) end
---@param TextID FName
function UBattleEventDirector:OpenActionInfoForEightBattle_Implementation(TextID) end
---@param TextID FName
function UBattleEventDirector:OpenActionInfo_Implementation(TextID) end
---@param frame int32
function UBattleEventDirector:JumpToFrame_Implementation(frame) end
function UBattleEventDirector:InstantDeath_EnemyAll_Implementation() end
function UBattleEventDirector:FixBattleCamera_Implementation() end
---@param ActionCharacter ABattleCharacterBase
function UBattleEventDirector:ExecPotentialityAction_Implementation(ActionCharacter) end
---@param nIndex int32
function UBattleEventDirector:ExecExtendBGM_Implementation(nIndex) end
function UBattleEventDirector:ExecBattleSuspend_Implementation() end
---@param TargetCharacter ABattleCharacterBase
---@param Remove boolean
---@param DiseaseName FName
---@param InvocationValue int32
---@param InvocationTurn int32
function UBattleEventDirector:ControlDisease_Implementation(TargetCharacter, Remove, DiseaseName, InvocationValue, InvocationTurn) end
function UBattleEventDirector:CloseTalk_Implementation() end
function UBattleEventDirector:CloseActionInfo_Implementation() end
---@param TargetCharacter ABattleCharacterBase
---@param CharacterNameID FName
function UBattleEventDirector:ChangeCharacterName_Implementation(TargetCharacter, CharacterNameID) end
---@param ActionCharacter ABattleCharacterBase
---@param BoostLevel int32
function UBattleEventDirector:ChangeBoostLevel_Implementation(ActionCharacter, BoostLevel) end
---@param ActionCharacter ABattleCharacterBase
---@param bIsEnable boolean
---@param nModeIndex int32
---@param bUseTransition boolean
function UBattleEventDirector:ChangeActionMode_Implementation(ActionCharacter, bIsEnable, nModeIndex, bUseTransition) end


---@class UBattleReadyStateData : UStateDataBase
local UBattleReadyStateData = {}


---@class UBattleStateData : UStateDataBase
local UBattleStateData = {}


---@class UBattleVoiceComponent : UActorComponent
---@field m_cOwnerPlayer ABattleCharacterBase
---@field m_bReadyBattleVoice boolean
---@field m_acBattleVoiceDataList TMap<EBATTLE_VOICE_TYPE, FBattleVoiceDataList>
---@field m_acAbilityVoiceDataList TMap<FName, FBattleVoiceDataList>
---@field m_bSettledPlayOnce_OnTakeDamage boolean
---@field m_bEnableDetailLog boolean
local UBattleVoiceComponent = {}

---@param bEnable boolean
function UBattleVoiceComponent:SetSettledPlayOnce_OnTakeDamage(bEnable) end
function UBattleVoiceComponent:ResetVoiceFlagForPreAction() end
---@param eBattleVoiceType EBATTLE_VOICE_TYPE
---@param cPlayCondition FBattleVoiceSetData
---@return boolean
function UBattleVoiceComponent:PlayBattleVoice(eBattleVoiceType, cPlayCondition) end
---@return boolean
function UBattleVoiceComponent:IsReadyBattleVoice() end
---@param eBattleVoiceType EBATTLE_VOICE_TYPE
---@return boolean
function UBattleVoiceComponent:IsBattleVoice(eBattleVoiceType) end
---@param strBattleVoiceID FName
---@return boolean
function UBattleVoiceComponent:InitBattleVoice(strBattleVoiceID) end
---@return boolean
function UBattleVoiceComponent:GetSettledPlayOnce_OnTakeDamage() end
---@param FlagName FName
---@param Value boolean
function UBattleVoiceComponent:GetEventFlag(FlagName, Value) end


---@class UBattleWipeBase : UAcqUserWidget
---@field m_bBattleEndWipeOut boolean
---@field m_bEnableWhiteOut boolean
---@field m_bExecWipe boolean
---@field m_eState EBATTLE_WIPE_STATE
---@field m_bDebugWipeColorEnable boolean
---@field m_DebugWipeColor FColor
local UBattleWipeBase = {}

function UBattleWipeBase:WipeOutAtBattleStart() end
function UBattleWipeBase:WipeOutAtBattleEnd() end
function UBattleWipeBase:WipeInAtBattleStart() end
function UBattleWipeBase:WipeInAtBattleEnd() end
---@param Enable boolean
function UBattleWipeBase:SetWhiteOut(Enable) end
function UBattleWipeBase:SetupDebugWipeColor() end
---@return boolean
function UBattleWipeBase:IsReadyAnimation() end
---@return boolean
function UBattleWipeBase:IsExecWipe() end
---@return boolean
function UBattleWipeBase:IsEnableWhiteOut() end
---@return boolean
function UBattleWipeBase:IsBattleEndWipeOut() end
function UBattleWipeBase:HideWipeAtBattleEnd_Immediately() end


---@class UBitFlagSaveDataUtil : USaveDataUtilBase
local UBitFlagSaveDataUtil = {}

---@return boolean
function UBitFlagSaveDataUtil:IsFixedFollowNPC_Placate() end
---@return boolean
function UBitFlagSaveDataUtil:IsFixedFollowNPC_Lure() end
---@return boolean
function UBitFlagSaveDataUtil:IsFixedFollowNPC_Lead() end
---@return boolean
function UBitFlagSaveDataUtil:IsFixedFollowNPC_Hire() end


---@class UBusinessWithNpcNotificationBase : UKSUserWidgetBase
---@field m_bIsOpening boolean
---@field m_SpActMerchantResult FSpActMerchantResult
local UBusinessWithNpcNotificationBase = {}

---@param SpActMerchantResult FSpActMerchantResult
---@param bIsFast boolean
function UBusinessWithNpcNotificationBase:OpenNotificationAnimal(SpActMerchantResult, bIsFast) end
---@param SpActMerchantResult FSpActMerchantResult
---@param bIsFast boolean
function UBusinessWithNpcNotificationBase:OpenNotification(SpActMerchantResult, bIsFast) end
---@param bIsFast boolean
function UBusinessWithNpcNotificationBase:CloseNotification(bIsFast) end


---@class UButtonTextDataTable : UDataTableUtilityBase
local UButtonTextDataTable = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutData FButtonTextData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UButtonTextDataTable:GetButtonTextTableRowData(returnCode, OutData, TargetLabel, LogEnable) end


---@class UChallengeBattleBackupData : UObject
---@field Money FReminiscenceBufferMoney
---@field Item FReminiscenceBufferItemForChallengeBattle
---@field Exp FReminiscenceBufferExp
---@field Jp FReminiscenceBufferJP
---@field FollowNpc FReminiscenceBufferFollowNpc
---@field POT FReminiscenceBufferPOT
---@field HP FReminiscenceBufferHpForChallengeBattle
---@field SP FReminiscenceBufferSpForChallengeBattle
local UChallengeBattleBackupData = {}



---@class UChallengeBattleMenu : UKSUserWidgetBase
---@field WidgetState EChallengeBattleMenuState
---@field CursorIndex UCursorIndex
local UChallengeBattleMenu = {}

---@param NextState EChallengeBattleMenuState
function UChallengeBattleMenu:SetState(NextState) end
---@param CurrentState EChallengeBattleMenuState
function UChallengeBattleMenu:OnUpdateState(CurrentState) end
---@param CurrentState EChallengeBattleMenuState
function UChallengeBattleMenu:OnEndState(CurrentState) end
function UChallengeBattleMenu:OnDecide_Internal() end
function UChallengeBattleMenu:OnCursorUp_Internal() end
function UChallengeBattleMenu:OnCursorDown_Internal() end
function UChallengeBattleMenu:OnCancel_Internal() end
---@param CurrentState EChallengeBattleMenuState
function UChallengeBattleMenu:OnBeginState(CurrentState) end
---@return EChallengeBattleMenuState
function UChallengeBattleMenu:GetState() end


---@class UChallengeBattleModeStatics : UBlueprintFunctionLibrary
local UChallengeBattleModeStatics = {}

---@return boolean
function UChallengeBattleModeStatics:IsPlayingChallengeBattleMode() end
---@param Val boolean
function UChallengeBattleModeStatics:Debug_SetForceAllowShinVide2ndBattle(Val) end
---@param Val boolean
function UChallengeBattleModeStatics:Debug_SetForceAllowChallengeBattleMode(Val) end
---@return boolean
function UChallengeBattleModeStatics:Debug_GetForceAllowShinVide2ndBattle() end
---@return boolean
function UChallengeBattleModeStatics:Debug_GetForceAllowChallengeBattleMode() end


---@class UCharacterFlipbookComponent : UPaperFlipbookComponent
---@field m_FlipbookMaterialList TMap<FName, UMaterialInstanceDynamic>
local UCharacterFlipbookComponent = {}

---@param bVisibility boolean
function UCharacterFlipbookComponent:SetFlipbookVisibility(bVisibility) end
---@param Offset FVector
function UCharacterFlipbookComponent:SetFlipbookOffset(Offset) end
---@param Dir EKSCharacterDir
function UCharacterFlipbookComponent:SetCharacterDir(Dir) end
---@param CharaActionLabel FName
function UCharacterFlipbookComponent:SetCharacterActionLabel(CharaActionLabel) end
function UCharacterFlipbookComponent:PlayCurrentAnimation() end
---@param eAction EKSCharacterAction
function UCharacterFlipbookComponent:PlayAnimation(eAction) end
---@return boolean
function UCharacterFlipbookComponent:IsFlipbookVisibile() end
---@return UMaterialInstanceDynamic
function UCharacterFlipbookComponent:GetCurrentFlipbookMaterial() end
---@param FlipbookName FName
---@return UMaterialInstanceDynamic
function UCharacterFlipbookComponent:GetCachedFlipbookMaterial(FlipbookName) end


---@class UCharacterGrowTableUtility : UDataTableUtilityBase
local UCharacterGrowTableUtility = {}

---@param Level int32
---@return int32
function UCharacterGrowTableUtility:GetTotalExpFromLevel(Level) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FCharacterGrowData
---@param Level int32
---@param LogEnable boolean
---@return boolean
function UCharacterGrowTableUtility:GetCharacterGrowTableRowDataByLevel(returnCode, OutData, Level, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FCharacterGrowData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UCharacterGrowTableUtility:GetCharacterGrowTableRowData(returnCode, OutData, TargetLabel, LogEnable) end
---@param Exp int32
---@return int32
function UCharacterGrowTableUtility:CalcLevelFromTotalExp(Exp) end


---@class UCharacterParamUtility : UBlueprintFunctionLibrary
local UCharacterParamUtility = {}

---@param A FCharacterParam
---@param B FCharacterParam
---@return FCharacterParam
function UCharacterParamUtility:Sub_CharacterParam_CharacterParam(A, B) end
---@param CharaParam FCharacterParam
---@param ParamType ECHARACTER_PARAM_TYPE
---@param Value int32
function UCharacterParamUtility:SetCharacterParamProperty(CharaParam, ParamType, Value) end
---@param Base FCharacterParam
---@param Revision FCharacterParam
---@return FCharacterParam
function UCharacterParamUtility:Multiply_CharacterParam_RevisionParam(Base, Revision) end
---@param Base FCharacterParam
---@param Revision float
---@return FCharacterParam
function UCharacterParamUtility:Multiply_CharacterParam_Float_ExceptMinus(Base, Revision) end
---@param Base FCharacterParam
---@param Revision float
---@return FCharacterParam
function UCharacterParamUtility:Multiply_CharacterParam_Float(Base, Revision) end
---@param Base FCharacterParam
---@param retList TArray<boolean>
function UCharacterParamUtility:MinusParamFromBool(Base, retList) end
---@param Base FCharacterParam
---@return FCharacterParam
function UCharacterParamUtility:InversionMinusParameter(Base) end
---@param CharaParam FCharacterParam
---@param ParamType ECHARACTER_PARAM_TYPE
---@return int32
function UCharacterParamUtility:GetCharacterParamProperty(CharaParam, ParamType) end
---@param Val FCharacterParam
function UCharacterParamUtility:Debug_OutputCharacterParam(Val) end
---@param Val FCharacterParam
---@return FString
function UCharacterParamUtility:Debug_MakeCharacterParamString(Val) end
---@param A FCharacterParam
---@param B FCharacterParam
---@return FCharacterParam
function UCharacterParamUtility:Add_CharacterParam_CharacterParam(A, B) end


---@class UCharacterResourceDataUtility : UDataTableUtilityBase
local UCharacterResourceDataUtility = {}

---@param OutData FCharacterResourceData
---@param TargetLabel FName
---@param EnableLog boolean
---@return boolean
function UCharacterResourceDataUtility:GetCharacterResourceRowData(OutData, TargetLabel, EnableLog) end
---@param OutData TArray<FName>
---@return boolean
function UCharacterResourceDataUtility:GetCharacterResourceLabelNames(OutData) end


---@class UCharacterResourceUtility : UBlueprintFunctionLibrary
local UCharacterResourceUtility = {}

---@param OutData TArray<FName>
---@param levelName FName
function UCharacterResourceUtility:GetNPCResourceLabelFromLevelName(OutData, levelName) end
---@param OutData TArray<FName>
---@param WorldContextObject UObject
function UCharacterResourceUtility:GetCurrentSubPartyResourceLabel(OutData, WorldContextObject) end
---@param OutData TArray<FName>
---@param WorldContextObject UObject
function UCharacterResourceUtility:GetCurrentPartyResourceLabel(OutData, WorldContextObject) end


---@class UCharacterResource_BattleReductionDataUtility : UDataTableUtilityBase
local UCharacterResource_BattleReductionDataUtility = {}

---@param OutData FCharResource_BattleReductionTable
---@param TargetLabel FName
---@param EnableLog boolean
---@return boolean
function UCharacterResource_BattleReductionDataUtility:GetCharRes_BattleReductionRowData(OutData, TargetLabel, EnableLog) end
---@param OutData TArray<FName>
---@return boolean
function UCharacterResource_BattleReductionDataUtility:GetCharRes_BattleReductionLabelNames(OutData) end


---@class UCharacterSaveDataUtil : USaveDataUtilBase
local UCharacterSaveDataUtil = {}

---@param FieldCommandType MJFieldCommandType
---@param SupportLimit int32
---@return boolean
function UCharacterSaveDataUtil:UpdateFollowNpcSupportLimit(FieldCommandType, SupportLimit) end
---@param SubMoney int32
function UCharacterSaveDataUtil:SubPlayerMoney(SubMoney) end
---@param Mode ETameMonsterMode
function UCharacterSaveDataUtil:SetTameMonsterMode(Mode) end
---@param Index int32
---@param NewTameMonster FTameMonsterData
function UCharacterSaveDataUtil:SetTameMonsterData(Index, NewTameMonster) end
---@param Money int32
function UCharacterSaveDataUtil:SetPlayerMoney(Money) end
---@param Part EMYSHIP_CUSTOM_PART
---@param Type EMYSHIP_CUSTOM_TYPE
function UCharacterSaveDataUtil:SetMyShipCustomFirstChoice(Part, Type) end
---@param Part EMYSHIP_CUSTOM_PART
---@param Type EMYSHIP_CUSTOM_TYPE
function UCharacterSaveDataUtil:SetMyShipCustom(Part, Type) end
---@param Index int32
---@param NewLegendMonster FTameMonsterData
function UCharacterSaveDataUtil:SetLegendMonsterData(Index, NewLegendMonster) end
---@param partnerID EHUNTER_PARTNER_ID
function UCharacterSaveDataUtil:SetHunterPartner(partnerID) end
---@param NPCID int32
---@param SupportLimitCount int32
---@param FieldCommandType MJFieldCommandType
---@param CharaID EPlayableCharacterID
---@return boolean
function UCharacterSaveDataUtil:SetFollowWaitingNpc(NPCID, SupportLimitCount, FieldCommandType, CharaID) end
---@param NPCID int32
---@param SupportLimitCount int32
---@param FieldCommandType MJFieldCommandType
---@param CharaID EPlayableCharacterID
---@return boolean
function UCharacterSaveDataUtil:SetFollowNpc(NPCID, SupportLimitCount, FieldCommandType, CharaID) end
---@param PlayerCharaId EPlayableCharacterID
function UCharacterSaveDataUtil:SetFirstEquipment(PlayerCharaId) end
---@param PlayerCharaId int32
---@param MP int32
function UCharacterSaveDataUtil:SetCharacterRawMP(PlayerCharaId, MP) end
---@param PlayerCharaId int32
---@param HP int32
function UCharacterSaveDataUtil:SetCharacterRawHP(PlayerCharaId, HP) end
---@param PlayerCharaId int32
---@param Level int32
---@param Exp int32
function UCharacterSaveDataUtil:SetCharacterLevelAndExp(PlayerCharaId, Level, Exp) end
---@param PlayerCharaId int32
---@param Jp int32
function UCharacterSaveDataUtil:SetCharacterJobPoint(PlayerCharaId, Jp) end
---@param CharacterIndex int32
---@param CharacterData FSavePlayerCharacterData
function UCharacterSaveDataUtil:SetCharacterData(CharacterIndex, CharacterData) end
---@param ItemList TArray<FSaveBackPackItem>
function UCharacterSaveDataUtil:SetBackpackItemList(ItemList) end
---@param CharacterID int32
---@param AbilityIndex int32
---@param IsLearn boolean
function UCharacterSaveDataUtil:SetAdvancedAbility(CharacterID, AbilityIndex, IsLearn) end
---@param CharacterID int32
---@param JobID int32
---@param AbilityIndex int32
---@param IsLearn boolean
function UCharacterSaveDataUtil:SetAbility(CharacterID, JobID, AbilityIndex, IsLearn) end
---@param ReminiMoney int32
function UCharacterSaveDataUtil:MergePlayerMoney(ReminiMoney) end
---@param CharacterID int32
---@param AbilityIndex int32
---@return boolean
function UCharacterSaveDataUtil:IsLearnAdvancedAbility(CharacterID, AbilityIndex) end
---@return int32
function UCharacterSaveDataUtil:GetTameMonsterNum() end
---@return ETameMonsterMode
function UCharacterSaveDataUtil:GetTameMonsterMode() end
---@param CharacterID int32
---@return int32
function UCharacterSaveDataUtil:GetSecondJobID_FromSaveCharacterData(CharacterID) end
---@param CharacterID int32
---@return int32
function UCharacterSaveDataUtil:GetRawPOT_FromSaveCharacterData(CharacterID) end
---@param CharacterID int32
---@return int32
function UCharacterSaveDataUtil:GetRawMP_FromSaveCharacterData(CharacterID) end
---@param CharacterID int32
---@return int32
function UCharacterSaveDataUtil:GetRawHP_FromSaveCharacterData(CharacterID) end
---@param CharacterID int32
---@return int32
function UCharacterSaveDataUtil:GetPriorityJobID_FromSaveCharacterData(CharacterID) end
---@return int32
function UCharacterSaveDataUtil:GetPlayerMoney() end
---@param Part EMYSHIP_CUSTOM_PART
---@return EMYSHIP_CUSTOM_TYPE
function UCharacterSaveDataUtil:GetMyShipCustomFirstChoice(Part) end
---@param Part EMYSHIP_CUSTOM_PART
---@return EMYSHIP_CUSTOM_TYPE
function UCharacterSaveDataUtil:GetMyShipCustom(Part) end
---@param CharacterID int32
---@return int32
function UCharacterSaveDataUtil:GetLevel_FromSaveCharacterData(CharacterID) end
---@return int32
function UCharacterSaveDataUtil:GetLegendMonsterNum() end
---@param CharacterID int32
---@return int32
function UCharacterSaveDataUtil:GetJobPoint_FromSaveCharacterData(CharacterID) end
---@return EHUNTER_PARTNER_ID
function UCharacterSaveDataUtil:GetHunterPartner() end
---@param outUniqId TArray<int32>
function UCharacterSaveDataUtil:GetFollowWaitingNpcUniqueId(outUniqId) end
---@param NPCID int32
---@param SupportLimit int32
---@param FieldCommandType MJFieldCommandType
---@return boolean
function UCharacterSaveDataUtil:GetFollowWaitingNPCDataByType(NPCID, SupportLimit, FieldCommandType) end
---@param FieldCommandType MJFieldCommandType
---@param Output FSaveFollowNpcData
---@return boolean
function UCharacterSaveDataUtil:GetFollowWaitingNpcByFieldCommandType(FieldCommandType, Output) end
---@param outUniqId TArray<int32>
function UCharacterSaveDataUtil:GetFollowNpcUniqueId(outUniqId) end
---@param NPCID int32
---@param SupportLimit int32
---@param FieldCommandType MJFieldCommandType
---@return boolean
function UCharacterSaveDataUtil:GetFollowNPCDataByType(NPCID, SupportLimit, FieldCommandType) end
---@param NPCID int32
---@param Output FSaveFollowNpcData
---@return boolean
function UCharacterSaveDataUtil:GetFollowNpcByNpcUniqueId(NPCID, Output) end
---@param FieldCommandType MJFieldCommandType
---@param Output FSaveFollowNpcData
---@return boolean
function UCharacterSaveDataUtil:GetFollowNpcByFieldCommandType(FieldCommandType, Output) end
---@param CharaID EPlayableCharacterID
---@param Type MJFieldCommandType
---@param Output FSaveFollowNpcData
---@return boolean
function UCharacterSaveDataUtil:GetFollowNpcByCharacterIdAndFieldCommandType(CharaID, Type, Output) end
---@param CharaID EPlayableCharacterID
---@param Output FSaveFollowNpcData
---@return boolean
function UCharacterSaveDataUtil:GetFollowNpcByCharacterID(CharaID, Output) end
---@param outUniqId TArray<int32>
function UCharacterSaveDataUtil:GetFollowNpcAndWaitingNpcUniqueId(outUniqId) end
---@return TArray<FSaveFollowNpcData>
function UCharacterSaveDataUtil:GetFollowNpc() end
---@param CharacterID int32
---@return int32
function UCharacterSaveDataUtil:GetFirstJobID_FromSaveCharacterData(CharacterID) end
---@param CharacterID int32
---@return int32
function UCharacterSaveDataUtil:GetExp_FromSaveCharacterData(CharacterID) end
---@param CharacterID int32
---@return TArray<int32>
function UCharacterSaveDataUtil:GetEquipSupportSkill_FromSaveCharacterData(CharacterID) end
---@param CharacterID int32
---@return FSaveEquipmentDataID
function UCharacterSaveDataUtil:GetEquipment_FromSaveCharacterData(CharacterID) end
---@param CharacterID int32
---@return int32
function UCharacterSaveDataUtil:GetCharacterID_FromSaveCharacterData(CharacterID) end
---@param CharacterID int32
---@param Part EEQUIPMENT_PART
---@return boolean
function UCharacterSaveDataUtil:GetCharacterFixedEquipment(CharacterID, Part) end
---@param CharacterID int32
---@param Part EEQUIPMENT_PART
---@return FName
function UCharacterSaveDataUtil:GetCharacterEquipmentPartLabel(CharacterID, Part) end
---@param CharacterID int32
---@return TArray<FName>
function UCharacterSaveDataUtil:GetCharacterEquipmentLabels(CharacterID) end
---@param CharacterID int32
---@return FSaveEquipmentData
function UCharacterSaveDataUtil:GetCharacterEquipmentLabel(CharacterID) end
---@param CharacterID int32
---@return FSavePlayerCharacterData
function UCharacterSaveDataUtil:GetCharacterData(CharacterID) end
---@param CharacterID int32
---@param FoundIndex int32
---@param FoundCharacter FSavePlayerCharacterData
---@param returnCode EBPFuncReturnCode::Type
---@return boolean
function UCharacterSaveDataUtil:FindCharacterFromPlayerMember(CharacterID, FoundIndex, FoundCharacter, returnCode) end
---@param TargetInvadeID int32
---@return boolean
function UCharacterSaveDataUtil:DeleteTameMonsterInvadeID(TargetInvadeID) end
---@param Index int32
---@return boolean
function UCharacterSaveDataUtil:DeleteTameMonster(Index) end
---@param Index int32
---@return boolean
function UCharacterSaveDataUtil:DeleteLegendMonster(Index) end
---@param FieldCommandType MJFieldCommandType
---@return boolean
function UCharacterSaveDataUtil:DeleteFollowWaitingNpc(FieldCommandType) end
---@param CharaID EPlayableCharacterID
---@return boolean
function UCharacterSaveDataUtil:DeleteFollowNpcByCharacterID(CharaID) end
---@param FieldCommandType MJFieldCommandType
---@return boolean
function UCharacterSaveDataUtil:DeleteFollowNpc(FieldCommandType) end
---@param CharacterID int32
---@param FullOpen boolean
function UCharacterSaveDataUtil:Debug_SetAllAbility(CharacterID, FullOpen) end
---@param SpecialActionType int32
---@return boolean
function UCharacterSaveDataUtil:CheckCharacterAlive_SpecialActionType(SpecialActionType) end
---@return boolean
function UCharacterSaveDataUtil:CanShowHunterPartnerInParty() end
---@param TameMonster FTameMonsterData
---@return boolean
function UCharacterSaveDataUtil:AddTameMonster(TameMonster) end
---@param AddMoney int32
function UCharacterSaveDataUtil:AddPlayerMoney(AddMoney) end
---@param LegendMonster FTameMonsterData
---@return boolean
function UCharacterSaveDataUtil:AddLegendMonster(LegendMonster) end


---@class UCharactersActionTableUtility : UDataTableUtilityBase
local UCharactersActionTableUtility = {}

---@param OutData FCharacterActionResource
---@param TargetLabel FName
---@param EnableLog boolean
---@return boolean
function UCharactersActionTableUtility:GetCharactersActionRowData(OutData, TargetLabel, EnableLog) end
---@param LabelList TArray<FName>
---@return boolean
function UCharactersActionTableUtility:GetCharactersActionLabels(LabelList) end


---@class UCharactersFlipbookUtility : UDataTableUtilityBase
local UCharactersFlipbookUtility = {}

---@param Action EKSCharacterAction
---@return boolean
function UCharactersFlipbookUtility:IsIdleAction(Action) end
---@param outLabel FName
---@param WorldContextObject UObject
---@param CharaID int32
---@param JobID int32
---@param form int32
---@param Type EPLAYER_JOB_FB_TYPE
---@return boolean
function UCharactersFlipbookUtility:GetThiefMissionFlipbookToSaveLoad(outLabel, WorldContextObject, CharaID, JobID, form, Type) end
---@param outLabel FName
---@param WorldContextObject UObject
---@param CharaID int32
---@param form int32
---@param JobID int32
---@return boolean
function UCharactersFlipbookUtility:GetMissionFlipbookLabelToSaveLoad(outLabel, WorldContextObject, CharaID, form, JobID) end
---@param outLabel FName
---@param CharaID int32
---@param selectType EPLAYER_SELECT_FB_TYPE
---@param pattern EPLAYER_SELECT_FB_PATTERN
---@return boolean
function UCharactersFlipbookUtility:GetMissionFlipbookLabelToPlayerSelect(outLabel, CharaID, selectType, pattern) end
---@param outLabel FName
---@param WorldContextObject UObject
---@param CharaID int32
---@param JobID int32
---@param Type EPLAYER_JOB_FB_TYPE
---@param checkTou boolean
---@return boolean
function UCharactersFlipbookUtility:GetMissionFlipbookLabelToJob(outLabel, WorldContextObject, CharaID, JobID, Type, checkTou) end
---@param OutData FKSUIFlipbookData
---@param TargetLabel FName
---@param EnableLog boolean
---@return boolean
function UCharactersFlipbookUtility:GetMissionCustomFlipbookRowData(OutData, TargetLabel, EnableLog) end
---@param OutNames TArray<FName>
---@return boolean
function UCharactersFlipbookUtility:GetMissionCustomFlipbookNames(OutNames) end
---@param OutData FCustomMissionFlipbookList
---@param CharaID int32
---@return boolean
function UCharactersFlipbookUtility:GetMissionCustomFlipbookListRowDataFromCharaID(OutData, CharaID) end
---@param OutData FCustomMissionFlipbookList
---@param TargetLabel FName
---@return boolean
function UCharactersFlipbookUtility:GetMissionCustomFlipbookListRowData(OutData, TargetLabel) end
---@param OutData FKSFlipbookData
---@param TargetLabel FName
---@param EnableLog boolean
---@return boolean
function UCharactersFlipbookUtility:GetCustomFlipbookRowData(OutData, TargetLabel, EnableLog) end
---@param OutData FKSCharaFlipbook
---@param TargetLabel FName
---@param EnableLog boolean
---@return boolean
function UCharactersFlipbookUtility:GetCharactersFlipbookRowData(OutData, TargetLabel, EnableLog) end
---@param targetCharaLabel FName
---@param eAction EKSCharacterAction
---@param eDir EKSCharacterDir
---@param outSocketData TMap<FName, FMJSpriteSocketData>
---@param outIsReverse boolean
---@return boolean
function UCharactersFlipbookUtility:GetActionSocket(targetCharaLabel, eAction, eDir, outSocketData, outIsReverse) end
---@param fbComp UPaperFlipbookComponent
---@param CharaActionLabel FName
---@param eAction EKSCharacterAction
---@param eDir EKSCharacterDir
---@param outFlipbookName FName
---@param outIsReverse boolean
---@return boolean
function UCharactersFlipbookUtility:GetActionFlipbookName(fbComp, CharaActionLabel, eAction, eDir, outFlipbookName, outIsReverse) end


---@class UCharactersGridPanelBase : UUserWidget
---@field OnOpenedCallback FCharactersGridPanelBaseOnOpenedCallback
---@field OnClosedCallback FCharactersGridPanelBaseOnClosedCallback
---@field OnSelectedCharacter FCharactersGridPanelBaseOnSelectedCharacter
---@field m_WidgetState ECHARACTER_GRID_PANEL_WIDGET_STATE
---@field m_CursorPosition FIntPoint
---@field m_GridSize FIntPoint
---@field m_PartyCharacterPanelRefs TArray<UPartyCharacterPanelBase>
---@field m_PartyCharacterPanelSelectBackRefs TArray<UPartyCharPanelSelectBackBase>
---@field m_PartyCharacterPanelPositions TMap<FIntPoint, UPartyCharacterPanelBase>
---@field m_PartyCharacterPanelSelectBackPositions TMap<FIntPoint, UPartyCharPanelSelectBackBase>
local UCharactersGridPanelBase = {}

---@param NewState ECHARACTER_GRID_PANEL_WIDGET_STATE
function UCharactersGridPanelBase:SetWidgetState(NewState) end
---@param TextLabel FName
function UCharactersGridPanelBase:SetTitleText(TextLabel) end
---@param newMember TArray<FCharacterGridPanelParam>
function UCharactersGridPanelBase:SetMember(newMember) end
---@param newPos FIntPoint
function UCharactersGridPanelBase:SetCursorPosition(newPos) end
function UCharactersGridPanelBase:Open() end
---@param Delta FIntPoint
function UCharactersGridPanelBase:MoveCursor(Delta) end
---@return TArray<UPartyCharPanelSelectBackBase>
function UCharactersGridPanelBase:GetPartyCharacterPanelSelectBackRefs() end
---@return TArray<UPartyCharacterPanelBase>
function UCharactersGridPanelBase:GetPartyCharacterPanelRefs() end
---@param Pos FIntPoint
---@param outPanel UPartyCharacterPanelBase
---@param outSelectBack UPartyCharPanelSelectBackBase
---@return boolean
function UCharactersGridPanelBase:GetPartyCharacterPanelByPos(Pos, outPanel, outSelectBack) end
---@return FIntPoint
function UCharactersGridPanelBase:GetCursorPosition() end
function UCharactersGridPanelBase:Decide() end
function UCharactersGridPanelBase:Close() end
---@param PlayerID EPlayableCharacterID
function UCharactersGridPanelBase:BroadcastOnSelectedCharacter(PlayerID) end
function UCharactersGridPanelBase:BroadcastOnOpenedDelegate() end
function UCharactersGridPanelBase:BroadcastOnClosedDelegate() end


---@class UCircularDayNightParentWidgetBase : UCanvasPanel
---@field ChildWidget UWidget
---@field IsChildKeepHorizontal boolean
---@field RotationAngle float
local UCircularDayNightParentWidgetBase = {}

---@param newRotationAngle float
function UCircularDayNightParentWidgetBase:SetRotationAngle(newRotationAngle) end


---@class UCloudSaveLoadFunction : UBlueprintFunctionLibrary
local UCloudSaveLoadFunction = {}

---@param WorldContext UObject
---@param SaveData UMJSaveData
---@param onSaveSuccess FDebug_CloudSaveGameOnSaveSuccess
---@param onSaveError FDebug_CloudSaveGameOnSaveError
---@return boolean
function UCloudSaveLoadFunction:Debug_CloudSaveGame(WorldContext, SaveData, onSaveSuccess, onSaveError) end
---@param SnapshotId int32
---@param onLoadSuccess FDebug_CloudLoadGameOnLoadSuccess
---@param OnLoadError FDebug_CloudLoadGameOnLoadError
---@return boolean
function UCloudSaveLoadFunction:Debug_CloudLoadGame(SnapshotId, onLoadSuccess, OnLoadError) end


---@class UCommonDialog : UKSUserWidgetBase
---@field CurrentParam FMJUICommonDialogParam
---@field ButtonIndex int32
local UCommonDialog = {}

---@param SelectSE TArray<FName>
---@return boolean
function UCommonDialog:SettingSelectSE(SelectSE) end
---@param buttonIdx int32
function UCommonDialog:SelectButton(buttonIdx) end
---@return boolean
function UCommonDialog:OpenPlayerMoney() end
---@param Param FMJUICommonDialogParam
---@return boolean
function UCommonDialog:OpenDialog(Param) end
function UCommonDialog:OnSelectCallback() end
function UCommonDialog:ExecCloseFinishCallback() end
---@return boolean
function UCommonDialog:ClosePlayerMoney() end
---@return boolean
function UCommonDialog:CloseDialog() end
---@param Visible boolean
---@return boolean
function UCommonDialog:ButtonVisible(Visible) end


---@class UCommonNotificationBase : UKSUserWidgetBase
local UCommonNotificationBase = {}


---@class UCursorIndex : UObject
---@field CurrentIndex int32
---@field minIndex int32
---@field maxIndex int32
local UCursorIndex = {}

---@param Index int32
function UCursorIndex:Set(Index) end
---@param initIndex int32
---@param minIndex int32
---@param maxIndex int32
function UCursorIndex:Initialize(initIndex, minIndex, maxIndex) end
---@param allowLoop boolean
---@return int32
function UCursorIndex:Increment(allowLoop) end
---@return int32
function UCursorIndex:Get() end
---@param allowLoop boolean
---@return int32
function UCursorIndex:Decrement(allowLoop) end
---@param initIndex int32
---@param minIndex int32
---@param maxIndex int32
---@return UCursorIndex
function UCursorIndex:Create(initIndex, minIndex, maxIndex) end


---@class UCustomListView : UListView
local UCustomListView = {}

---@param Item UObject
---@return UUserWidget
function UCustomListView:GetSelectItemWidget(Item) end


---@class UCustomSpriteDataTableUtility : UDataTableUtilityBase
local UCustomSpriteDataTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutData FKSSpriteData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UCustomSpriteDataTableUtility:GetMissionCustomSpriteRowData(returnCode, OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FKSSpriteData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UCustomSpriteDataTableUtility:GetCustomSpriteRowData(returnCode, OutData, TargetLabel, LogEnable) end


---@class UDarkAreaDataUtility : UDataTableUtilityBase
local UDarkAreaDataUtility = {}

---@param DarkAreaLabel FName
---@param isDarkend boolean
function UDarkAreaDataUtility:SetIsDarkendDarkArea(DarkAreaLabel, isDarkend) end
---@param isDarkend boolean
function UDarkAreaDataUtility:SetIsDarkendAllDarkArea(isDarkend) end
---@param levelLabel FName
---@return boolean
function UDarkAreaDataUtility:IsLevelDarkend(levelLabel) end
---@param levelLabel FName
---@return boolean
function UDarkAreaDataUtility:IsLevelBelongDarkArea(levelLabel) end
---@param DarkAreaLabel FName
---@return boolean
function UDarkAreaDataUtility:IsDarkendDarkAreaLabel(DarkAreaLabel) end
---@return boolean
function UDarkAreaDataUtility:IsDarkendAnyDarkArea() end
---@param levelLabel FName
---@return boolean
function UDarkAreaDataUtility:IsAllowLostWayLevel(levelLabel) end
---@param outWorldMapLabel TArray<FName>
---@return boolean
function UDarkAreaDataUtility:GetDarkendWorldMapLabels(outWorldMapLabel) end
---@param outLevelLabel TArray<FName>
---@return boolean
function UDarkAreaDataUtility:GetDarkendLevelLabels(outLevelLabel) end
---@param outDarkAreaLabel TArray<FName>
---@return boolean
function UDarkAreaDataUtility:GetDarkendDarkAreaLabels(outDarkAreaLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param levelLabel FName
---@param outDarkAreaLabel FName
---@return boolean
function UDarkAreaDataUtility:GetDarkAreaLabelByLevel(returnCode, levelLabel, outDarkAreaLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param levelLabel FName
---@param outDarkArea FDarkAreaData
---@return boolean
function UDarkAreaDataUtility:GetDarkAreaByLevel(returnCode, levelLabel, outDarkArea) end
---@param outDarkAreaLabel TArray<FName>
function UDarkAreaDataUtility:GetAllDarkAreaLabels(outDarkAreaLabel) end


---@class UDarkAreaParticleComponent : UParticleSystemComponent
---@field m_BaseLocation FVector
---@field m_LocationOffset FVector
---@field m_RotationOffset FRotator
---@field m_ScaleOffset FVector
---@field m_DarkAreaEffectParam FWorldMapDarkAreaEffectParam
local UDarkAreaParticleComponent = {}

---@param LocationOffset FVector
---@param RotationOffset FRotator
---@param ScaleOffset FVector
function UDarkAreaParticleComponent:SetTransformOffset(LocationOffset, RotationOffset, ScaleOffset) end
---@param Enable boolean
function UDarkAreaParticleComponent:SetEnableEffect(Enable) end
---@param newParam FWorldMapDarkAreaEffectParam
function UDarkAreaParticleComponent:SetDarkAreaEffectParam(newParam) end
---@param baseLocation FVector
function UDarkAreaParticleComponent:SetBaseLocation(baseLocation) end
---@return FName
function UDarkAreaParticleComponent:GetWorldMapLabel() end
---@return FName
function UDarkAreaParticleComponent:GetDarkAreaLabel() end
---@return FWorldMapDarkAreaEffectParam
function UDarkAreaParticleComponent:GetDarkAreaEffectParam() end
function UDarkAreaParticleComponent:ApplyTransform() end


---@class UDataTableUtilityBase : UBlueprintFunctionLibrary
local UDataTableUtilityBase = {}


---@class UDatabaseMisc : UBlueprintFunctionLibrary
local UDatabaseMisc = {}

function UDatabaseMisc:SetDatabaseNoticeDelegate() end


---@class UDebugBattleCharaComponent : UActorComponent
local UDebugBattleCharaComponent = {}

---@param eType ECHARACTER_PARAM_TYPE
---@param nValue int32
function UDebugBattleCharaComponent:SetMasterParameter(eType, nValue) end
---@param eType EBATTLE_DEBUG_SWITCH
---@param bValue boolean
function UDebugBattleCharaComponent:SetDebugSwitch(eType, bValue) end
---@param nValue int32
function UDebugBattleCharaComponent:SetCurrentMP(nValue) end
---@param nValue int32
function UDebugBattleCharaComponent:SetCurrentHP(nValue) end
---@param eType ECHARACTER_PARAM_TYPE
---@return int32
function UDebugBattleCharaComponent:GetTotalParameter(eType) end
---@param eType ECHARACTER_PARAM_TYPE
---@return int32
function UDebugBattleCharaComponent:GetMasterParameter(eType) end
---@return int32
function UDebugBattleCharaComponent:GetCurrentShield() end
---@param outActionPoint int32
---@param outActionPointMax int32
---@return boolean
function UDebugBattleCharaComponent:GetCurrentPOT(outActionPoint, outActionPointMax) end
---@return int32
function UDebugBattleCharaComponent:GetCurrentMP() end
---@return int32
function UDebugBattleCharaComponent:GetCurrentHP() end
---@return int32
function UDebugBattleCharaComponent:GetCurrentBP() end
---@param strCharacterName FText
function UDebugBattleCharaComponent:GetCharacterName(strCharacterName) end
---@return TArray<FItemData>
function UDebugBattleCharaComponent:GetCharacterEquipmentList() end
---@return AKSCharacterBase
function UDebugBattleCharaComponent:GetAnimationCharacter() end
---@param eType EBATTLE_DEBUG_SWITCH
---@return boolean
function UDebugBattleCharaComponent:CheckDebugSwitch(eType) end


---@class UDebugBattleLogComponent : UActorComponent
local UDebugBattleLogComponent = {}

---@return int32
function UDebugBattleLogComponent:GetBattleLogListNumMax() end
---@return TArray<FDebugBattleLog>
function UDebugBattleLogComponent:GetBattleLogList() end
---@return boolean
function UDebugBattleLogComponent:GetBattleLogDirty() end
---@return int32
function UDebugBattleLogComponent:GetBattleLogCount() end
function UDebugBattleLogComponent:ClearBattleLogDirty() end


---@class UDebugBattleManagerComponent : UActorComponent
local UDebugBattleManagerComponent = {}

---@param strAbilityName FName
function UDebugBattleManagerComponent:SetFixedWonderAbility(strAbilityName) end
---@param eType EBATTLE_DEBUG_SWITCH
---@param bValue boolean
function UDebugBattleManagerComponent:SetDebugSwitch(eType, bValue) end
---@param eType EBATTLE_DEBUG_SWITCH
---@param nValue int32
function UDebugBattleManagerComponent:SetDebugParameter(eType, nValue) end
---@param bEnable boolean
---@param acConvertPlayerIDList TMap<int32, FName>
---@return boolean
function UDebugBattleManagerComponent:SetConvertPlayerIDList(bEnable, acConvertPlayerIDList) end
---@return boolean
function UDebugBattleManagerComponent:IsEnableConvertPlayerID() end
---@return FName
function UDebugBattleManagerComponent:GetFixedWonderAbility() end
---@param eType EBATTLE_DEBUG_SWITCH
---@return int32
function UDebugBattleManagerComponent:GetDebugParameter(eType) end
---@param nPlayerID int32
---@return FName
function UDebugBattleManagerComponent:ConvertPlayerIDForBattleEventDebug(nPlayerID) end
---@param eType EBATTLE_DEBUG_SWITCH
---@return boolean
function UDebugBattleManagerComponent:CheckDebugSwitch(eType) end


---@class UDebugCanvasComponent : UActorComponent
---@field AutoArrangement boolean
---@field AutoID int32
---@field StartPos FVector2D
local UDebugCanvasComponent = {}

---@param bVisible boolean
function UDebugCanvasComponent:SetVisible(bVisible) end
---@param Enable boolean
---@param Pos FVector2D
function UDebugCanvasComponent:SetAutoArrangement(Enable, Pos) end
---@param ID int32
function UDebugCanvasComponent:RemoveTextWithID(ID) end
function UDebugCanvasComponent:RemoveText() end
---@param ID int32
function UDebugCanvasComponent:RemovePrimitiveWithID(ID) end
function UDebugCanvasComponent:RemovePrimitive() end
function UDebugCanvasComponent:RemoveAllText() end
function UDebugCanvasComponent:RemoveAllPrimitive() end
---@return boolean
function UDebugCanvasComponent:IsVisible() end
---@param ID int32
---@param textData FDebugTextData
function UDebugCanvasComponent:AddTextWithID(ID, textData) end
---@param textData FDebugTextData
function UDebugCanvasComponent:AddText(textData) end
---@param Text FText
---@param Color FLinearColor
function UDebugCanvasComponent:AddRowPartText(Text, Color) end
---@param ID int32
---@param primData FDebugPrimitiveData
function UDebugCanvasComponent:AddPrimitiveWithID(ID, primData) end
---@param primData FDebugPrimitiveData
function UDebugCanvasComponent:AddPrimitive(primData) end


---@class UDebugListMenuComponent : UActorComponent
local UDebugListMenuComponent = {}

---@param onDecided FSetDelegateOnDecidedOnDecided
function UDebugListMenuComponent:SetDelegateOnDecided(onDecided) end
---@param OnClosed FSetDelegateOnClosedOnClosed
function UDebugListMenuComponent:SetDelegateOnClosed(OnClosed) end
function UDebugListMenuComponent:OpenMenu() end
---@return boolean
function UDebugListMenuComponent:IsRunning() end
---@param filterColNum int32
---@param itemColNum int32
function UDebugListMenuComponent:InitMenu(filterColNum, itemColNum) end
function UDebugListMenuComponent:CloseMenu() end
function UDebugListMenuComponent:ClearDelegateOnDecided() end
---@param Data TArray<FDebugListMenuItem>
function UDebugListMenuComponent:AddItemDataArray(Data) end
---@param Data FDebugListMenuItem
function UDebugListMenuComponent:AddItemData(Data) end
---@param Data TArray<FDebugListMenuFilter>
function UDebugListMenuComponent:AddFilterDataArray(Data) end
---@param Data FDebugListMenuFilter
function UDebugListMenuComponent:AddFilterData(Data) end
---@param Index int32
---@param Text FText
---@param bChecked boolean
function UDebugListMenuComponent:AddFilter(Index, Text, bChecked) end


---@class UDebugMenuParamPanelWidgetBase : UAcqUserWidget
local UDebugMenuParamPanelWidgetBase = {}


---@class UDebugMenuParamWidgetBase : UAcqUserWidget
local UDebugMenuParamWidgetBase = {}

---@param InText FText
function UDebugMenuParamWidgetBase:SetInformationValue(InText) end
---@param Param FDebugParam
function UDebugMenuParamWidgetBase:OnTickFunc(Param) end


---@class UDebugMenuSupportBase : UActorComponent
---@field RootMenuName FText
---@field DebugParamList TArray<FDebugParam>
---@field cCurrentParamData FDebugParam
---@field IsSubMenuActive boolean
---@field m_nCurrentHierarchy int32
---@field m_nMaxHierarchy int32
---@field m_nParentHierarchy int32
local UDebugMenuSupportBase = {}

---@param Param FDebugParam
function UDebugMenuSupportBase:OnPreInitWidgetFunc(Param) end
---@param Param FDebugParam
function UDebugMenuSupportBase:OnDecideFunc(Param) end
---@param Param FDebugParam
function UDebugMenuSupportBase:OnChangeFunc(Param) end
function UDebugMenuSupportBase:Initialize() end
---@param Index int32
---@return TArray<FDebugParam>
function UDebugMenuSupportBase:GetSubMenuParam(Index) end
---@param baseManuItem FDebugParam
---@return TArray<FDebugParam>
function UDebugMenuSupportBase:GetDebugSubMenuList(baseManuItem) end
---@param nHierarcy int32
---@return TArray<FDebugParam>
function UDebugMenuSupportBase:GetDebugParamFromHierarchy(nHierarcy) end
---@param str FString
---@param col FColor
function UDebugMenuSupportBase:DebugPrintScreenMessage(str, col) end
function UDebugMenuSupportBase:CreateMenu_Implementation() end
function UDebugMenuSupportBase:CreateMenu() end
function UDebugMenuSupportBase:CloseMenu_Implementation() end
---@return int32
function UDebugMenuSupportBase:BackParentHierarchy() end
---@param MenuName FString
---@param Enable boolean
---@param OnChangeFunc FAddToggleVal_ChangeOnChangeFunc
---@param OnDecideFunc FAddToggleVal_ChangeOnDecideFunc
function UDebugMenuSupportBase:AddToggleVal_Change(MenuName, Enable, OnChangeFunc, OnDecideFunc) end
---@param MenuName FString
---@param Enable boolean
---@param OnDecideFunc FAddToggleValOnDecideFunc
function UDebugMenuSupportBase:AddToggleVal(MenuName, Enable, OnDecideFunc) end
function UDebugMenuSupportBase:AddSubMenuEnd() end
---@param MenuName FString
---@param OnDecideFunc FAddSubMenuBeginOnDecideFunc
function UDebugMenuSupportBase:AddSubMenuBegin(MenuName, OnDecideFunc) end
---@param MenuName FString
---@param strList TArray<FText>
---@param StartIndex int32
---@param OnChangeFunc FAddListVal_Change_PreInitWidgetOnChangeFunc
---@param OnDecideFunc FAddListVal_Change_PreInitWidgetOnDecideFunc
---@param OnPreInitWidgetFunc FAddListVal_Change_PreInitWidgetOnPreInitWidgetFunc
function UDebugMenuSupportBase:AddListVal_Change_PreInitWidget(MenuName, strList, StartIndex, OnChangeFunc, OnDecideFunc, OnPreInitWidgetFunc) end
---@param MenuName FString
---@param strList TArray<FText>
---@param StartIndex int32
---@param OnChangeFunc FAddListVal_ChangeOnChangeFunc
---@param OnDecideFunc FAddListVal_ChangeOnDecideFunc
function UDebugMenuSupportBase:AddListVal_Change(MenuName, strList, StartIndex, OnChangeFunc, OnDecideFunc) end
---@param MenuName FString
---@param strList TArray<FText>
---@param StartIndex int32
---@param OnDecideFunc FAddListValOnDecideFunc
function UDebugMenuSupportBase:AddListVal(MenuName, strList, StartIndex, OnDecideFunc) end
---@param MenuName FString
---@param DefaultValue int32
---@param intMin int32
---@param intMax int32
---@param OnChangeFunc FAddIntVal_ChangeOnChangeFunc
---@param OnDecideFunc FAddIntVal_ChangeOnDecideFunc
function UDebugMenuSupportBase:AddIntVal_Change(MenuName, DefaultValue, intMin, intMax, OnChangeFunc, OnDecideFunc) end
---@param MenuName FString
---@param DefaultValue int32
---@param intMin int32
---@param intMax int32
---@param OnDecideFunc FAddIntValOnDecideFunc
function UDebugMenuSupportBase:AddIntVal(MenuName, DefaultValue, intMin, intMax, OnDecideFunc) end
---@param MenuName FString
---@param InformationStr FString
---@param OnTickFunc FAddInfomationWithCallbackOnTickFunc
---@param ColorType EDEBUG_INFORMATION_COLOR_TYPE
function UDebugMenuSupportBase:AddInfomationWithCallback(MenuName, InformationStr, OnTickFunc, ColorType) end
---@param MenuName FString
---@param InfomationStr FString
---@param ColorType EDEBUG_INFORMATION_COLOR_TYPE
function UDebugMenuSupportBase:AddInfomation(MenuName, InfomationStr, ColorType) end
---@param MenuName FString
---@param DefaultValue float
---@param floatMin float
---@param floatMax float
---@param OnChangeFunc FAddFloatVal_ChangeOnChangeFunc
---@param OnDecideFunc FAddFloatVal_ChangeOnDecideFunc
function UDebugMenuSupportBase:AddFloatVal_Change(MenuName, DefaultValue, floatMin, floatMax, OnChangeFunc, OnDecideFunc) end
---@param MenuName FString
---@param DefaultValue float
---@param floatMin float
---@param floatMax float
---@param OnDecideFunc FAddFloatValOnDecideFunc
function UDebugMenuSupportBase:AddFloatVal(MenuName, DefaultValue, floatMin, floatMax, OnDecideFunc) end


---@class UDebugParamFunction : UBlueprintFunctionLibrary
local UDebugParamFunction = {}

---@param eFlag EDEBUG_FLAG
---@param Enable boolean
function UDebugParamFunction:SetDebugFlag(eFlag, Enable) end
---@param fAutoTimer float
function UDebugParamFunction:SetAutoTalkTimer(fAutoTimer) end
---@param eFlag EDEBUG_FLAG
---@return boolean
function UDebugParamFunction:GetDebugFlag(eFlag) end
---@return float
function UDebugParamFunction:GetAutoTalkTimer() end


---@class UDebugSaveDataUti : USaveDataUtilBase
local UDebugSaveDataUti = {}

function UDebugSaveDataUti:Debug_ActivateAllEventFlagsWithoutSaveBanFlag() end


---@class UDebugServiceConnecter : UServiceConnecter
local UDebugServiceConnecter = {}


---@class UDiseaseComponent : UActorComponent
---@field m_cOwnerPlayer ABattleCharacterBase
local UDiseaseComponent = {}



---@class UDiseaseListItem : UAcqUserWidget
local UDiseaseListItem = {}

---@param Data FDiseaseListItemData
function UDiseaseListItem:Setup(Data) end


---@class UDiseaseListWidget : UKSUserWidgetBase
---@field m_WidgetState EDiseaseListState
local UDiseaseListWidget = {}

---@param list TArray<FDiseaseListItemData>
function UDiseaseListWidget:SortDiseaseList(list) end
---@param State EDiseaseListState
function UDiseaseListWidget:SetWidgetState(State) end
---@return EDiseaseListState
function UDiseaseListWidget:GetWidgetState() end


---@class UEffectDataTableUtility : UDataTableUtilityBase
local UEffectDataTableUtility = {}

---@param OutRowNames TArray<FName>
---@return boolean
function UEffectDataTableUtility:GetEffectRowNames(OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FEffectData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UEffectDataTableUtility:GetEffectRowData(returnCode, OutData, TargetLabel, LogEnable) end


---@class UEncountDataTableUtility : UDataTableUtilityBase
local UEncountDataTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutData FEncountVolume
---@param TargetID int32
---@param LogEnable boolean
---@return boolean
function UEncountDataTableUtility:GetEncountVolumeRowDataByID(returnCode, OutData, TargetID, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FEncountVolume
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UEncountDataTableUtility:GetEncountVolumeRowData(returnCode, OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FEncountTriggerData
---@param TargetID int32
---@param LogEnable boolean
---@return boolean
function UEncountDataTableUtility:GetEncountTriggerRowDataByID(returnCode, OutData, TargetID, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FEncountTriggerData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UEncountDataTableUtility:GetEncountTriggerRowData(returnCode, OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@param Type EEncountTableType
---@return boolean
function UEncountDataTableUtility:GetEncountTableRowNames(returnCode, OutRowNames, Type) end
---@param EncountTriggerLabel FName
---@return int32
function UEncountDataTableUtility:EncountTriggerLabelToId(EncountTriggerLabel) end
---@param EncountTriggerId int32
---@return FName
function UEncountDataTableUtility:EncountTriggerIdToLabel(EncountTriggerId) end


---@class UEndRollSaveDataUtil : USaveDataUtilBase
local UEndRollSaveDataUtil = {}

---@param Index int32
---@return EEndRollSegmentSet
function UEndRollSaveDataUtil:GetClearedEndRollSegmentByIndex(Index) end
---@param Segment EEndRollSegmentSet
---@return boolean
function UEndRollSaveDataUtil:AddClearedMainStory(Segment) end


---@class UEndRollSegmentPlayData : UObject
local UEndRollSegmentPlayData = {}

---@return EEndRollSegmentSet
function UEndRollSegmentPlayData:GetSegmentSetID() end
---@return FName
function UEndRollSegmentPlayData:GetEventImage() end
---@return boolean
function UEndRollSegmentPlayData:GetBattleRevivalFlag() end


---@class UEndRollUtil : UBlueprintFunctionLibrary
local UEndRollUtil = {}

---@param WorldContextObject UObject
function UEndRollUtil:StopEndRoll(WorldContextObject) end
---@param WorldContextObject UObject
function UEndRollUtil:StartEndroll(WorldContextObject) end
function UEndRollUtil:SetupEndRoll() end
---@param WorldContextObject UObject
function UEndRollUtil:ResetEndRoll(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UEndRollUtil:IsReadyEndRoll(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UEndRollUtil:IsPlayingEndRoll(WorldContextObject) end
---@param WorldContextObject UObject
---@param Out AEndRollFlowManager
---@return boolean
function UEndRollUtil:GetEndRollManager(WorldContextObject, Out) end


---@class UEnforcerOffsetComponent : UActorComponent
---@field EnforcerOffset FTransform
---@field m_bIsEnforcerTarget boolean
local UEnforcerOffsetComponent = {}

---@param bEnable boolean
function UEnforcerOffsetComponent:SetEnforcerTarget(bEnable) end
---@param cTransform FTransform
function UEnforcerOffsetComponent:SetEnforcerOffset(cTransform) end


---@class UEquipmentMenuWidgetBase : UKSUserWidgetWithState
local UEquipmentMenuWidgetBase = {}

---@param IsBar boolean
---@return boolean
function UEquipmentMenuWidgetBase:SetBarMode(IsBar) end


---@class UEquipmentTextureTableUtility : UDataTableUtilityBase
local UEquipmentTextureTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutData FEquipmentTextureData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UEquipmentTextureTableUtility:GetEquipmentTextureRowData(returnCode, OutData, TargetLabel, LogEnable) end


---@class UEquipmentTextureUtility : UBlueprintFunctionLibrary
local UEquipmentTextureUtility = {}

---@param EquipmentTextureData FEquipmentTextureData
---@param stance EWEAPON_STANCE
---@param bGetNPC boolean
---@return FName
function UEquipmentTextureUtility:GetResourceLabel(EquipmentTextureData, stance, bGetNPC) end


---@class UEvaluateAchievementFunctions : UBlueprintFunctionLibrary
local UEvaluateAchievementFunctions = {}

---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateVisitLevelCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateSwoonNpcUniqueCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateSubStoryClearCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateSpecifySpecialItemCount_MusicRecord(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateSpecifySpecialItemCount_BattleTestedWeapon(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateSpecifySpecialItemCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateOwnShip(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateOpenEndCard(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateMaxDamage(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateMainStoryRecordReOpen(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateMainStoryClearCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateMainStoryClear(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateLinerShipCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateJoinedPlayerCharacterCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateJobItemCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateInformationFieldCommandSuccessCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateFollowingCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateExtraStoryRecordReOpen(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateEpilogueClear(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateClearExBoss(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateBreakCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateBoostAttackCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateAllAchievement(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateAcquisitonDivineAbilityCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateAcquisitonAdvancedAbilityCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateAcquisitonAbilityCount(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:EvaluateAcquisitonAbility(achieve, NoticeArgs, outProgress) end
---@param achieve FAchievementData
---@param NoticeArgs FNoticeArgs
---@param outProgress float
---@return boolean
function UEvaluateAchievementFunctions:CalculateMainStoryProgress(achieve, NoticeArgs, outProgress) end


---@class UEventCommandBase : ULevelSequenceDirector
---@field m_pTargetMainSequencePlayer ULevelSequencePlayer
---@field m_bIsStopMainSequence boolean
---@field m_fPlaybackSubSeqPosition float
---@field m_fFadeTime float
---@field m_pTargetSubSequencePlayer ULevelSequencePlayer
---@field m_bIsStopSubSequence boolean
---@field EventEmotionList TMap<FName, FEventEmotion>
local UEventCommandBase = {}

function UEventCommandBase:TitlePauseFunction() end
---@param nNumLoops int32
---@param fSubSeqPlayPosition float
---@param nIndex int32
function UEventCommandBase:SubSequencePlayIndexFunction(nNumLoops, fSubSeqPlayPosition, nIndex) end
---@param nNumLoops int32
---@param fSubSeqPlayPosition float
function UEventCommandBase:SubSequencePlayFunction(nNumLoops, fSubSeqPlayPosition) end
---@param fFadeOutTime float
function UEventCommandBase:StopRichEventBgmFunction(fFadeOutTime) end
---@param TagName FName
function UEventCommandBase:StopEmotionFunction(TagName) end
---@param TagName FName
---@param EmotionType EEMOTION_TYPE
---@param LifeTime float
---@param Offset FVector
function UEventCommandBase:StartPlayEmotionFunction(TagName, EmotionType, LifeTime, Offset) end
---@param CameraType EKSCameraType
---@param fBlend float
function UEventCommandBase:StartCameraSpawnFunction(CameraType, fBlend) end
---@param EventChara AKSCharacterBase
---@param CharaLabelName FName
---@param SetDir EKSCharacterDir
---@param AddTagName FName
function UEventCommandBase:SpawnCharaFunction(EventChara, CharaLabelName, SetDir, AddTagName) end
---@param Text FString
---@param Time float
function UEventCommandBase:ShowDebugInfoTextFunction(Text, Time) end
---@param Position FVector
---@param PlaySkip boolean
function UEventCommandBase:SetPlayerPositionFunction(Position, PlaySkip) end
---@param Command ERICHEVENT_CMD
---@param EndTime float
---@param Color FLinearColor
function UEventCommandBase:SetLateFadeParam(Command, EndTime, Color) end
---@param In boolean
---@param TargetBP FName
---@param DoorOpen boolean
function UEventCommandBase:SetHouseModeFunction(In, TargetBP, DoorOpen) end
---@param strSeLabel FName
function UEventCommandBase:PlayRichEventSeFunction(strSeLabel) end
---@param fFadeOutTime float
---@param fFadeInTime float
function UEventCommandBase:PlayRichEventBgmMapFunction(fFadeOutTime, fFadeInTime) end
---@param strBgmLabel FName
---@param fFadeOutTime float
---@param fFadeInTime float
function UEventCommandBase:PlayRichEventBgmFunction(strBgmLabel, fFadeOutTime, fFadeInTime) end
---@param nBlockId int32
function UEventCommandBase:PlayRichEventBgmBlockFunction(nBlockId) end
---@param strNarrationLabel FName
---@param StopMainSequence boolean
---@param fPlaybackSubSeqPosition float
function UEventCommandBase:NarrationPlayFunction(strNarrationLabel, StopMainSequence, fPlaybackSubSeqPosition) end
function UEventCommandBase:InitSeqData() end
---@return boolean
function UEventCommandBase:GetAllInvokeMode() end
---@param eNoticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function UEventCommandBase:FinishBattleWipe(eNoticeType, Args) end
---@param EndTime float
---@param Color FLinearColor
function UEventCommandBase:FadeOutFunction(EndTime, Color) end
---@param EndTime float
---@param Color FLinearColor
function UEventCommandBase:FadeInFunction(EndTime, Color) end
function UEventCommandBase:End() end
---@param EventChara AKSCharacterBase
function UEventCommandBase:DetachCharacterFunction(EventChara) end
---@return boolean
function UEventCommandBase:CheckActiveMessage() end
---@param fVolume float
---@param fFadeTime float
function UEventCommandBase:ChangeVolumeEnvFunction(fVolume, fFadeTime) end
---@param eType ERICHEVENT_CMD
---@return boolean
function UEventCommandBase:ChangeUpdateCommand(eType) end
---@param CameraType EKSCameraType
---@param fBlend float
function UEventCommandBase:ChangeCameraFunction(CameraType, fBlend) end
---@param EventChara AKSCharacterBase
---@param ActionLabelName EKSCharacterAction
---@param frame int32
---@param LoopSetting EKSCharacterAnimationLoop
---@param SetDir EKSCharacterDir
function UEventCommandBase:ChangeActionFunction(EventChara, ActionLabelName, frame, LoopSetting, SetDir) end
---@param BalloonType EBalloonType
---@param BalloonDir EEventBalloonDir
---@param TalkTargetName FName
---@param TalkText FName
---@param AutoTalkWait float
---@param StopMainSeq boolean
---@param PlaybackSubSeqPosition float
---@param WithoutTail boolean
function UEventCommandBase:BalloonOpenLabelPlayerFunction(BalloonType, BalloonDir, TalkTargetName, TalkText, AutoTalkWait, StopMainSeq, PlaybackSubSeqPosition, WithoutTail) end
---@param TalkTargetTag FName
---@param BalloonType EBalloonType
---@param BalloonDir EEventBalloonDir
---@param TalkTargetName FName
---@param TalkText FName
---@param AutoTalkWait float
---@param StopMainSeq boolean
---@param PlaybackSubSeqPosition float
---@param Offset FVector2D
---@param WithoutTail boolean
function UEventCommandBase:BalloonOpenLabelFunction(TalkTargetTag, BalloonType, BalloonDir, TalkTargetName, TalkText, AutoTalkWait, StopMainSeq, PlaybackSubSeqPosition, Offset, WithoutTail) end
---@param TalkTargetTag FName
---@param BalloonType EBalloonType
---@param BalloonDir EEventBalloonDir
---@param TalkTargetName FName
---@param TalkText FString
---@param AutoTalkWait float
---@param StopMainSeq boolean
---@param PlaybackSubSeqPosition float
---@param Offset FVector2D
---@param WithoutTail boolean
---@param TalkVoiceData FTalkVoice
function UEventCommandBase:BalloonOpenFunction(TalkTargetTag, BalloonType, BalloonDir, TalkTargetName, TalkText, AutoTalkWait, StopMainSeq, PlaybackSubSeqPosition, Offset, WithoutTail, TalkVoiceData) end
---@param EventChara AKSCharacterBase
---@param SetDir EKSCharacterDir
---@param MemoryLabelName FName
function UEventCommandBase:AttachPlayerFunction(EventChara, SetDir, MemoryLabelName) end
---@param EventChara AKSCharacterBase
---@param ActionLabelName EKSCharacterAction
---@param frame int32
---@param LoopSetting EKSCharacterAnimationLoop
---@param SetDir EKSCharacterDir
function UEventCommandBase:AttachCharacterActionFunction(EventChara, ActionLabelName, frame, LoopSetting, SetDir) end


---@class UEventFieldCommandBattleBase : UKSUserWidgetBase
local UEventFieldCommandBattleBase = {}

---@param NPCLabel FName
---@return boolean
function UEventFieldCommandBattleBase:Open(NPCLabel) end


---@class UEventFunction : UBlueprintFunctionLibrary
local UEventFunction = {}

---@param Delegate FSetTheaterEventDataDelegate
---@return boolean
function UEventFunction:SetTheaterEventData(Delegate) end
---@param targetNpc AKSCharacterBase
---@param ParamDir int32
function UEventFunction:SetNpcTalkDir(targetNpc, ParamDir) end
---@param outEventData TArray<FString>
---@param jsonData UJsonFieldData
---@param Command FString
---@param eventJsonName FString
---@return boolean
function UEventFunction:SetJsonData(outEventData, jsonData, Command, eventJsonName) end
---@param Delegate FSetEventDataDelegate
---@return boolean
function UEventFunction:SetEventData(Delegate) end
---@param EventName FName
---@param OverrideTimeZone int32
---@return boolean
function UEventFunction:PlayEventTheater(EventName, OverrideTimeZone) end
---@param outEventLabelList TArray<FName>
---@param placeData FPlacementData
function UEventFunction:MakeActiveEventLabelList(outEventLabelList, placeData) end
---@return boolean
function UEventFunction:IsEventSkipEnable() end
---@return boolean
function UEventFunction:IsEventPlayTheater() end
---@return boolean
function UEventFunction:IsEventPlaying() end
---@return boolean
function UEventFunction:IsEventBattleDefeatNextEvent() end
---@param StartFlag int32
---@param EndFlag int32
---@return boolean
function UEventFunction:IsEventActive(StartFlag, EndFlag) end
---@param StartFlag int32
---@param EndFlag int32
---@return boolean
function UEventFunction:IsActiveByEventFlag(StartFlag, EndFlag) end
---@return int32
function UEventFunction:GetThiefChokerFlag() end
---@param PartyChatId int32
---@param bTheater boolean
---@return FName
function UEventFunction:GetThiefActionLabelPartyChat(PartyChatId, bTheater) end
---@param Flag boolean
---@return FName
function UEventFunction:GetThiefActionLabelName(Flag) end
---@param StoryTaskID int32
---@param bTheater boolean
---@return FName
function UEventFunction:GetThiefActionLabelMainStory(StoryTaskID, bTheater) end
---@return FString
function UEventFunction:GetPlayingEventName() end
---@param Movie UMovieScene
---@return int32
function UEventFunction:GetMovieSectionsCount(Movie) end
---@param Movie UMovieScene
---@param Count int32
---@return UMovieSceneEventTriggerSection
function UEventFunction:GetMovieSectionData(Movie, Count) end
---@param Movie UMovieScene
---@param Count int32
---@return UMovieSceneAtomSection
function UEventFunction:GetMovieSectionAtomData(Movie, Count) end
---@param Section UMovieSceneEventTriggerSection
---@param Count int32
---@return FMovieSceneEvent
function UEventFunction:GetEventTriggerParam(Section, Count) end
---@param Section UMovieSceneEventTriggerSection
---@return int32
function UEventFunction:GetEventTriggerNum(Section) end
---@return AKSCharacterBase
function UEventFunction:GetEventTargetCharacter() end
---@param StoryTaskID int32
---@param FlagID int32
---@return boolean
function UEventFunction:GetEventMemoryObjectFlag(StoryTaskID, FlagID) end
---@param ParamDir int32
---@return EKSCharacterDir
function UEventFunction:GetEventDir(ParamDir) end
---@param EventName FName
---@param TargetCharacter AKSCharacterBase
---@return boolean
function UEventFunction:EventPlay(EventName, TargetCharacter) end
---@param WorldContextObject UObject
function UEventFunction:EventFlagRefresh(WorldContextObject) end
---@param timeZoneTrgType ETIMEZONE_TRIGGER_TYPE
---@return boolean
function UEventFunction:CheckCurrentTimeByTimeZoneTriggerType(timeZoneTrgType) end


---@class UEventSkipBase : UKSUserWidgetBase
local UEventSkipBase = {}

---@param CurrentTime float
---@param MaxTime float
---@return boolean
function UEventSkipBase:UpdateProgress(CurrentTime, MaxTime) end
---@param noticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function UEventSkipBase:OnEventSpeedChange(noticeType, NoticeArgs) end
---@param bforceSkip boolean
function UEventSkipBase:Debug_SetForceSkip(bforceSkip) end


---@class UEventStateData : UStateDataBase
local UEventStateData = {}


---@class UEventTableUtility : UBlueprintFunctionLibrary
local UEventTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param outEventSound FEventSoundData
---@param Label FName
function UEventTableUtility:GetEventSoundDataFromName(returnCode, outEventSound, Label) end
---@param returnCode EBPFuncReturnCode::Type
---@param outEventData FEventListData
---@param Label FName
function UEventTableUtility:GetEventListDataFromName(returnCode, outEventData, Label) end


---@class UFBImage : UImage
---@field CustomFlipbook TArray<UKSPaperFlipbook>
---@field flipbook UPaperFlipbook
---@field CalcData FFlipbookCalcData
---@field AutoSizeUpdate boolean
---@field ForceLayout boolean
---@field EnableOffset boolean
---@field DrawSize FVector2D
---@field Timer float
---@field AnimationLoop boolean
local UFBImage = {}

---@param InDeltaTime float
function UFBImage:Tick(InDeltaTime) end
function UFBImage:SwitchFlipbookModifyTarget() end
---@param flipbook UPaperFlipbook
---@return boolean
function UFBImage:SetFlipbook(flipbook) end
---@param TargetSprite UPaperSprite
function UFBImage:SetFBSize(TargetSprite) end
---@param Size FVector2D
function UFBImage:SetDrawSize(Size) end
---@param bLoop boolean
function UFBImage:SetAnimationLoop(bLoop) end
---@return boolean
function UFBImage:IsFlipbookAnimeFinish() end
---@return FVector2D
function UFBImage:GetSpriteOffset() end
---@return FVector2D
function UFBImage:GetMaxFBSize() end
---@return UKSPaperFlipbook
function UFBImage:GetFlipbookModifyTarget() end
function UFBImage:CalcSprite() end


---@class UFBPart : UAcqUserWidget
local UFBPart = {}


---@class UFastTravelChangeDestTableUtil : UDataTableUtilityBase
local UFastTravelChangeDestTableUtil = {}

---@param levelLabel FName
---@param NewDestination FFastTravelChangeDestination
---@return boolean
function UFastTravelChangeDestTableUtil:GetChangedDestinationByEventFlag(levelLabel, NewDestination) end


---@class UFieldChangeStateData : UStateDataBase
local UFieldChangeStateData = {}


---@class UFieldCommandDataUtility : UDataTableUtilityBase
local UFieldCommandDataUtility = {}

---@param FCType MJFieldCommandType
---@return FName
function UFieldCommandDataUtility:GetFieldCommandStatusMenuIconLabel(FCType) end
---@param FCType MJFieldCommandType
---@return FName
function UFieldCommandDataUtility:GetFieldCommandNameLabel(FCType) end
---@param FCType MJFieldCommandType
---@return FName
function UFieldCommandDataUtility:GetFieldCommandIconLabel(FCType) end
---@param returnCode EBPFuncReturnCode::Type
---@param FlowClass TSubclassOf<AFieldCommandFlowBase>
---@param FCType MJFieldCommandType
---@return boolean
function UFieldCommandDataUtility:GetFieldCommandFlowClassType(returnCode, FlowClass, FCType) end
---@param FCType MJFieldCommandType
---@return FName
function UFieldCommandDataUtility:GetFieldCommandDetailLabel(FCType) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FFieldCommandData
---@param FCType MJFieldCommandType
---@return boolean
function UFieldCommandDataUtility:GetFieldCommandDataByType(returnCode, OutData, FCType) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FFieldCommandData
---@param RowName FName
---@return boolean
function UFieldCommandDataUtility:GetFieldCommandDataByRowName(returnCode, OutData, RowName) end
---@param FCType MJFieldCommandType
---@return float
function UFieldCommandDataUtility:GetFieldCommandActionWaitTime(FCType) end


---@class UFieldCommandMenuBase : UKSUserWidgetBase
local UFieldCommandMenuBase = {}

---@param TargetChara AKSCharacterBase
---@param DrawLeft boolean
---@param CommandList TArray<MJFieldCommandType>
---@return boolean
function UFieldCommandMenuBase:Open(TargetChara, DrawLeft, CommandList) end
---@return boolean
function UFieldCommandMenuBase:IsInputEnableMode() end
---@param StateCheck boolean
---@return boolean
function UFieldCommandMenuBase:Close(StateCheck) end
---@return boolean
function UFieldCommandMenuBase:CheckUniqueCommandFlow() end


---@class UFieldCommandMenuStateData : UStateDataBase
local UFieldCommandMenuStateData = {}


---@class UFieldCommandPopupWidgetBase : UKSUserWidgetBase
local UFieldCommandPopupWidgetBase = {}

---@param TargetCharacter AKSCharacterBase
---@param Commands TArray<MJFieldCommandType>
---@return boolean
function UFieldCommandPopupWidgetBase:Open(TargetCharacter, Commands) end


---@class UFieldCommandPreviewMenu : UKSUserWidgetBase
---@field m_CurrentTabCursorIndex int32
---@field WidgetState EFieldCommandPreviewMenuState
local UFieldCommandPreviewMenu = {}

---@param NextState EFieldCommandPreviewMenuState
function UFieldCommandPreviewMenu:SetState(NextState) end
---@param Index int32
function UFieldCommandPreviewMenu:SetCurrentTabCursorIndex(Index) end
---@param CurrentState EFieldCommandPreviewMenuState
function UFieldCommandPreviewMenu:OnUpdateState(CurrentState) end
---@param CurrentState EFieldCommandPreviewMenuState
function UFieldCommandPreviewMenu:OnEndState(CurrentState) end
function UFieldCommandPreviewMenu:OnDecide_Internal() end
function UFieldCommandPreviewMenu:OnCursorUp_Internal() end
function UFieldCommandPreviewMenu:OnCursorDown_Internal() end
function UFieldCommandPreviewMenu:OnCancel_Internal() end
---@param CurrentState EFieldCommandPreviewMenuState
function UFieldCommandPreviewMenu:OnBeginState(CurrentState) end
---@return EFieldCommandPreviewMenuState
function UFieldCommandPreviewMenu:GetState() end
---@return int32
function UFieldCommandPreviewMenu:GetCurrentTabCursorIndex() end


---@class UFieldCommandPreviewPanelBase : UAcqUserWidget
---@field m_CurrentCursorIndex int32
---@field m_BanInput int32
local UFieldCommandPreviewPanelBase = {}

---@param Index int32
function UFieldCommandPreviewPanelBase:SetCurrentCursorIndex(Index) end
---@param allow int32
function UFieldCommandPreviewPanelBase:SetBanInput(allow) end
---@return int32
function UFieldCommandPreviewPanelBase:GetCurrentCursorIndex() end
---@param Type EUI_INPUT_TYPE
---@return boolean
function UFieldCommandPreviewPanelBase:GetBanInput(Type) end


---@class UFieldCommandPreviewTabIconBase : UAcqUserWidget
local UFieldCommandPreviewTabIconBase = {}


---@class UFieldCommandStateData : UStateDataBase
local UFieldCommandStateData = {}


---@class UFieldCommandUtil : UBlueprintFunctionLibrary
local UFieldCommandUtil = {}

---@param Val boolean
function UFieldCommandUtil:SetIsFcV2(Val) end
function UFieldCommandUtil:OpenFieldCommandPreviewMenu() end
function UFieldCommandUtil:OpenFieldCommandMenu() end
---@param Type TArray<MJFieldCommandType>
---@param TargetChara AKSCharacterBase
---@param IsDayTime boolean
---@return boolean
function UFieldCommandUtil:IsUseFieldCommandsAllwaysTimeZone(Type, TargetChara, IsDayTime) end
---@param Type MJFieldCommandType
---@param TargetChara AKSCharacterBase
---@param IsDayTime boolean
---@return boolean
function UFieldCommandUtil:IsUseFieldCommandAllwaysTimeZone(Type, TargetChara, IsDayTime) end
---@param Type MJFieldCommandType
---@return boolean
function UFieldCommandUtil:IsSwoonFc(Type) end
---@return boolean
function UFieldCommandUtil:IsPlayingFieldCommand() end
---@return boolean
function UFieldCommandUtil:IsPlayingBadConnectionFieldCommand() end
---@param WorldContextObject UObject
---@param refTalk AKSCharacterBase
---@return boolean
function UFieldCommandUtil:IsOpenFieldCommandMenu(WorldContextObject, refTalk) end
---@param Type MJFieldCommandType
---@return boolean
function UFieldCommandUtil:IsItemFc(Type) end
---@param Type MJFieldCommandType
---@return boolean
function UFieldCommandUtil:IsInformationFc(Type) end
---@param Type MJFieldCommandType
---@return boolean
function UFieldCommandUtil:IsFollowFc(Type) end
---@param NPC AKSCharacterBase
---@return boolean
function UFieldCommandUtil:IsFieldCommandTargetNpc(NPC) end
---@param NPCLabel FName
---@return boolean
function UFieldCommandUtil:IsBadConnectionNPC(NPCLabel) end
---@param TownID int32
---@return boolean
function UFieldCommandUtil:IsBadConnection(TownID) end
---@return TArray<MJFieldCommandType>
function UFieldCommandUtil:GetSwoonFcTypes() end
---@param AvaiableOnly boolean
---@param TargetChara AKSCharacterBase
---@param CanUseCommand boolean
---@param FieldCommandList TArray<MJFieldCommandType>
function UFieldCommandUtil:GetPartyFieldCommand(AvaiableOnly, TargetChara, CanUseCommand, FieldCommandList) end
---@return TArray<MJFieldCommandType>
function UFieldCommandUtil:GetItemFcTypes() end
---@return boolean
function UFieldCommandUtil:GetIsGameOverWhenLoose() end
---@return boolean
function UFieldCommandUtil:GetIsFcV2() end
---@return TArray<MJFieldCommandType>
function UFieldCommandUtil:GetInformationFcTypes() end
---@return TArray<MJFieldCommandType>
function UFieldCommandUtil:GetFollowFcTypes() end
---@param Val boolean
function UFieldCommandUtil:Debug_SetIsForceSuccessFC(Val) end
---@param Val boolean
function UFieldCommandUtil:Debug_SetIsForceFailureFC(Val) end
---@return boolean
function UFieldCommandUtil:Debug_GetIsForceSuccessFC() end
---@return boolean
function UFieldCommandUtil:Debug_GetIsForceFailureFC() end
---@param NPCLabel FName
---@param FCType MJFieldCommandType
---@return boolean
function UFieldCommandUtil:CanExecFieldCommand(NPCLabel, FCType) end


---@class UFieldCommandWidgetBase : UKSUserWidgetBase
---@field Blur UBackgroundBlur
local UFieldCommandWidgetBase = {}



---@class UFieldCommandWidgetBattleBase : UFieldCommandWidgetSwoonBase
---@field ForgetAbilityIndex int32
local UFieldCommandWidgetBattleBase = {}

---@param NPCLabelName FName
---@param IsAbilityFull boolean
---@return boolean
function UFieldCommandWidgetBattleBase:OpenLearnAbilityDialog(NPCLabelName, IsAbilityFull) end
---@param NPCLabel FName
---@param SelectAbilityList TArray<int32>
---@return boolean
function UFieldCommandWidgetBattleBase:OpenForgetAbilityDialog(NPCLabel, SelectAbilityList) end
---@param SelectAbilityList TArray<int32>
---@return boolean
function UFieldCommandWidgetBattleBase:OpenConfirmAbilityDialog(SelectAbilityList) end
---@param ExecLearnAbility boolean
function UFieldCommandWidgetBattleBase:IsExecLearnAbility(ExecLearnAbility) end


---@class UFieldCommandWidgetInfoBase : UFieldCommandWidgetBase
local UFieldCommandWidgetInfoBase = {}

---@param NPCLabel FName
---@return boolean
function UFieldCommandWidgetInfoBase:OpenInformationDialog(NPCLabel) end
---@param NPCLabel FName
---@return boolean
function UFieldCommandWidgetInfoBase:OpenFailedDialog(NPCLabel) end
---@param NPCLabel FName
---@return boolean
function UFieldCommandWidgetInfoBase:OpenConfirmDialog(NPCLabel) end
---@param WasExece boolean
---@param WasSuccess boolean
---@return boolean
function UFieldCommandWidgetInfoBase:GetResult(WasExece, WasSuccess) end


---@class UFieldCommandWidgetItemBase : UFieldCommandWidgetBase
---@field IsExecuted boolean
---@field IsSucceeded boolean
---@field ItemLabels TArray<FName>
---@field PlayEventLabel FName
local UFieldCommandWidgetItemBase = {}

---@param NPCLabel FName
---@return boolean
function UFieldCommandWidgetItemBase:OpenDialog(NPCLabel) end
---@return FName
function UFieldCommandWidgetItemBase:GetPlayEventLabel() end
---@return TArray<FName>
function UFieldCommandWidgetItemBase:GetItemLabels() end
---@return boolean
function UFieldCommandWidgetItemBase:GetIsSucceeded() end
---@return boolean
function UFieldCommandWidgetItemBase:GetIsExecuted() end


---@class UFieldCommandWidgetMonsterBase : UFieldCommandWidgetSwoonBase
local UFieldCommandWidgetMonsterBase = {}

---@param ShowMonsterList TArray<FMonsterListData>
---@return boolean
function UFieldCommandWidgetMonsterBase:OpenMonsterReleaseDialogInBattle(ShowMonsterList) end
---@param ShowMonsterList TArray<FMonsterListData>
---@return boolean
function UFieldCommandWidgetMonsterBase:OpenMonsterReleaseDialog(ShowMonsterList) end
---@param ReleaseMonsterList TArray<int32>
function UFieldCommandWidgetMonsterBase:GetReleaseMonsterList(ReleaseMonsterList) end
---@return boolean
function UFieldCommandWidgetMonsterBase:CloseMonsterReleaseDialog() end


---@class UFieldCommandWidgetRobBase : UFieldCommandWidgetSwoonBase
local UFieldCommandWidgetRobBase = {}

---@param GotItems TArray<FPurchaseItemInfoData>
---@param CouldNotGetItems TArray<FPurchaseItemInfoData>
---@return boolean
function UFieldCommandWidgetRobBase:OpenResultDialog(GotItems, CouldNotGetItems) end


---@class UFieldCommandWidgetSwoonBase : UFieldCommandWidgetBase
local UFieldCommandWidgetSwoonBase = {}

---@param NPCLabel FName
---@return boolean
function UFieldCommandWidgetSwoonBase:OpenNPCDialog(NPCLabel) end
---@param NPCLabel FName
---@return boolean
function UFieldCommandWidgetSwoonBase:OpenFailedDialog(NPCLabel) end
---@return int32
function UFieldCommandWidgetSwoonBase:GetDialogInput() end


---@class UFieldPathTableUtility : UBlueprintFunctionLibrary
local UFieldPathTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
function UFieldPathTableUtility:GetFieldPathTableRowNames(returnCode, OutRowNames) end
---@param OutData FFieldPathInfoData
---@param TargetLabel FName
---@return boolean
function UFieldPathTableUtility:GetFieldPathData(OutData, TargetLabel) end


---@class UFieldStateData : UStateDataBase
local UFieldStateData = {}


---@class UFlagOverrideUtility : UDataTableUtilityBase
local UFlagOverrideUtility = {}

---@param dbName FName
---@param notice EDBNoticeType
function UFlagOverrideUtility:NotifyFlagOverrideDB(dbName, notice) end


---@class UFlagRandomControlDbUtil : UDataTableUtilityBase
local UFlagRandomControlDbUtil = {}


---@class UFontDataUtility : UBlueprintFunctionLibrary
local UFontDataUtility = {}

---@return UDataTable
function UFontDataUtility:GetTalkFontStyleDB() end


---@class UFootStepTableUtility : UDataTableUtilityBase
local UFootStepTableUtility = {}

---@param OutData FFootStepData
---@param TargetLabel FName
---@param EnableLog boolean
---@return boolean
function UFootStepTableUtility:GetFootStepTableRowData(OutData, TargetLabel, EnableLog) end


---@class UGameColorTableUtility : UDataTableUtilityBase
local UGameColorTableUtility = {}

---@param dbName FName
---@param notice EDBNoticeType
function UGameColorTableUtility:NotifyGameColorDb(dbName, notice) end
---@param gameColor EGameColor
---@param outSlateColor FSlateColor
function UGameColorTableUtility:GetGameColorAsSlateColor(gameColor, outSlateColor) end
---@param gameColor EGameColor
---@return FLinearColor
function UGameColorTableUtility:GetGameColor(gameColor) end


---@class UGameConditionUtility : UBlueprintFunctionLibrary
local UGameConditionUtility = {}

---@param Type EGAME_CONDITION_TYPE
---@param Param FGameConditionInfo
---@return boolean
function UGameConditionUtility:CheckGameCondition(Type, Param) end


---@class UGameMainSequenceUtility : UBlueprintFunctionLibrary
local UGameMainSequenceUtility = {}

---@param StateParam FMainSequenceStateParam
---@return FMainSequneceRequestParam
function UGameMainSequenceUtility:CreateDefaultParamWithStateParam(StateParam) end


---@class UGameOverStateData : UStateDataBase
local UGameOverStateData = {}


---@class UGameParamTableUtility : UDataTableUtilityBase
local UGameParamTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UGameParamTableUtility:GetGameParamTableRowNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FGameParamInfo
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UGameParamTableUtility:GetGameParamTableRowData(returnCode, OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UGameParamTableUtility:GetBattleParamRowNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FGameParamInfo
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UGameParamTableUtility:GetBattleParamData(returnCode, OutData, TargetLabel, LogEnable) end


---@class UGameoverWidgetBase : UKSUserWidgetWithState
---@field FinishEvent FGameoverWidgetBaseFinishEvent
---@field OpenFinish FGameoverWidgetBaseOpenFinish
local UGameoverWidgetBase = {}

---@param Type EGAMEOVER_TYPE
function UGameoverWidgetBase:SetGameOverType(Type) end
---@return int32
function UGameoverWidgetBase:IsCursorSelect() end
function UGameoverWidgetBase:DecideEvent() end
function UGameoverWidgetBase:CursorUpEvent() end
function UGameoverWidgetBase:CursorDownEvent() end


---@class UGiftDataTableUtility : UDataTableUtilityBase
local UGiftDataTableUtility = {}


---@class UGiftUtility : UBlueprintFunctionLibrary
local UGiftUtility = {}

---@param GIFT FGiftData
---@param outFailedReceiveItems TArray<FName>
---@return boolean
function UGiftUtility:TryReceiveGift(GIFT, outFailedReceiveItems) end
---@return boolean
function UGiftUtility:GetIsPreOrdered() end
---@param OutData FGiftData
---@return boolean
function UGiftUtility:GetAvailablePreOrderGiftData(OutData) end
---@param Val boolean
function UGiftUtility:Debug_SetIsForcePreOrdered(Val) end


---@class UGraphicsUtility : UBlueprintFunctionLibrary
local UGraphicsUtility = {}

---@param bEnable boolean
function UGraphicsUtility:SetVSyncEnable(bEnable) end
---@param nQuality int32
function UGraphicsUtility:SetViewDistanceQuality(nQuality) end
---@param nQuality int32
function UGraphicsUtility:SetTextureQuality(nQuality) end
---@param nQuality int32
function UGraphicsUtility:SetShadowQuality(nQuality) end
---@param nQuality int32
function UGraphicsUtility:SetShaderQuality(nQuality) end
---@param nQuality int32
function UGraphicsUtility:SetResolutionQuality(nQuality) end
---@param nQuality int32
function UGraphicsUtility:SetPostProcessQuality(nQuality) end
---@param nMaxFPS int32
function UGraphicsUtility:SetMaxFPS(nMaxFPS) end
---@param WorldContextObject UObject
---@param nQuality int32
function UGraphicsUtility:SetGraphicsPreset(WorldContextObject, nQuality) end
---@param nQuality int32
function UGraphicsUtility:SetFoloageQuality(nQuality) end
---@param bEnable boolean
function UGraphicsUtility:SetEyeAdaptationEnable(bEnable) end
---@param nQuality int32
function UGraphicsUtility:SetEffectQuality(nQuality) end
---@param nQuality int32
function UGraphicsUtility:SetAntiAliasingQuality(nQuality) end
---@param WorldContextObject UObject
---@return boolean
function UGraphicsUtility:IsEnableGraphicsPreset(WorldContextObject) end
---@return int32
function UGraphicsUtility:GetViewDistanceQuality() end
---@return int32
function UGraphicsUtility:GetShaderQuality() end
---@return int32
function UGraphicsUtility:GetResolutionQuality() end
---@return int32
function UGraphicsUtility:GetFoliageQuality() end


---@class UGuildDataUtility : UDataTableUtilityBase
local UGuildDataUtility = {}

---@param GuildId int32
---@param licenseIndex int32
---@param bAcquired boolean
function UGuildDataUtility:SetAcquiredJobLicense(GuildId, licenseIndex, bAcquired) end
---@param GuildId int32
---@param licenseIndex int32
---@return boolean
function UGuildDataUtility:IsAcquiredJobLicense(GuildId, licenseIndex) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
function UGuildDataUtility:GetGuildNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param outGuildData FGuildData
---@param guildLabel FName
function UGuildDataUtility:GetGuildDataByLabel(returnCode, outGuildData, guildLabel) end
---@param outGuildId TArray<int32>
---@param WorldMapLabel FName
function UGuildDataUtility:FindGuildInWorldMapLocation(outGuildId, WorldMapLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param outGuildData FGuildData
---@param NPCLabel FName
function UGuildDataUtility:FindGuildDataByNpcLabel(returnCode, outGuildData, NPCLabel) end
---@param GuildId int32
---@param licenseIndex int32
---@return boolean
function UGuildDataUtility:CheckAchievedJobLicense(GuildId, licenseIndex) end


---@class UGuildMenuBase : UKSUserWidgetBase
---@field GuildData FGuildData
---@field guildLabel FName
local UGuildMenuBase = {}

---@param Label FName
function UGuildMenuBase:SetGuildData(Label) end
---@return boolean
function UGuildMenuBase:ReOpenGuildMenu() end
---@return boolean
function UGuildMenuBase:GetReOpenFlag() end


---@class UGuildSaveDataUtil : USaveDataUtilBase
local UGuildSaveDataUtil = {}

---@param GuildId int32
---@param bVisited boolean
function UGuildSaveDataUtil:SetVisitedGuild(GuildId, bVisited) end
---@param GuildId int32
---@param licenseIndex int32
---@param bAcquired boolean
function UGuildSaveDataUtil:SetAcquiredLicense(GuildId, licenseIndex, bAcquired) end
---@param GuildId int32
---@return boolean
function UGuildSaveDataUtil:IsVisitedGuild(GuildId) end
---@param GuildId int32
---@param licenseIndex int32
---@return boolean
function UGuildSaveDataUtil:IsAcquiredLicense(GuildId, licenseIndex) end


---@class UHelpWindowBase : UKSUserWidgetBase
---@field m_WidgetRoot UPanelWidget
---@field m_CurrentOffset FVector2D
local UHelpWindowBase = {}

---@param Widget UUserWidget
---@param forceFlip boolean
function UHelpWindowBase:SetPositionByWidget(Widget, forceFlip) end
---@param NewPosition FVector2D
function UHelpWindowBase:SetPosition(NewPosition) end
---@param Offset FVector2D
function UHelpWindowBase:SetOffset(Offset) end
---@return FVector2D
function UHelpWindowBase:GetCurrentOffset() end


---@class UHolyTorchSaveDataUtil : USaveDataUtilBase
local UHolyTorchSaveDataUtil = {}

---@param torchType EHOLY_TORCH_TYPE
---@param torchState EHOLY_TORCH_STATE
function UHolyTorchSaveDataUtil:SetHolyTorchState(torchType, torchState) end
---@return boolean
function UHolyTorchSaveDataUtil:IsAllHolyTorchReBurn() end
---@param torchType EHOLY_TORCH_TYPE
---@return EHOLY_TORCH_STATE
function UHolyTorchSaveDataUtil:GetHolyTorchState(torchType) end
---@return int32
function UHolyTorchSaveDataUtil:GetBurnOutNum() end
---@return int32
function UHolyTorchSaveDataUtil:GetBurnNum() end


---@class UHunterPartnerFbComponent : UCharacterFlipbookComponent
local UHunterPartnerFbComponent = {}

---@param bVisibility boolean
function UHunterPartnerFbComponent:SetPartnerVisibility(bVisibility) end
---@return boolean
function UHunterPartnerFbComponent:IsPartnerVisibile() end


---@class UInitialLaunchOptionMenu : UUserWidget
---@field m_WidgetState EINITIAL_OPTION_WIDGET_STATE
local UInitialLaunchOptionMenu = {}

---@param WidgetState EINITIAL_OPTION_WIDGET_STATE
function UInitialLaunchOptionMenu:UpdateWidgetState(WidgetState) end


---@class UInvadeDataUtility : UDataTableUtilityBase
local UInvadeDataUtility = {}

---@param Label FName
---@return int32
function UInvadeDataUtility:InvadeDataLabelToId(Label) end
---@param ID int32
---@return FName
function UInvadeDataUtility:InvadeDataIdToLabel(ID) end
---@param Label FName
---@return boolean
function UInvadeDataUtility:InvadeDataExistsByLabel(Label) end
---@return TArray<FName>
function UInvadeDataUtility:GetInvadeDataLabelList() end
---@param returnCode EBPFuncReturnCode::Type
---@param outInvadeData FInvadeData
---@param Label FName
function UInvadeDataUtility:GetInvadeDataByLabel(returnCode, outInvadeData, Label) end


---@class UInventorComponent : UActorComponent
---@field m_acInventorItemData TMap<FName, FInventorItemData>
local UInventorComponent = {}

---@param strInventorItemLabel FName
---@return boolean
function UInventorComponent:UseInventorItem(strInventorItemLabel) end
---@param nTurnCount int32
---@param bRandom boolean
---@param bUseText boolean
---@return boolean
function UInventorComponent:UpdateCreateInventorItem(nTurnCount, bRandom, bUseText) end
---@param strInventorItemLabel FName
---@return boolean
function UInventorComponent:StartCreateInventorItem(strInventorItemLabel) end
---@return boolean
function UInventorComponent:StartCreateAllInventorItem() end
---@param strLabel FName
---@return boolean
function UInventorComponent:IsInventorItemReady(strLabel) end
---@param strLabel FName
---@return boolean
function UInventorComponent:IsInventorItemExecCreate(strLabel) end
---@return boolean
function UInventorComponent:IsInventorItemAllReady() end
---@return boolean
function UInventorComponent:IsExecutableInventorItem() end
---@return boolean
function UInventorComponent:InitInventorItemData() end
---@param strLabel FName
---@param nRestTurn int32
---@param nCreateTurnMax int32
function UInventorComponent:GetInventorItemCreateTurn(strLabel, nRestTurn, nCreateTurnMax) end
---@param strInventorItemLabel FName
---@param nInventorTurn int32
---@return boolean
function UInventorComponent:AddInventorItemData(strInventorItemLabel, nInventorTurn) end


---@class UInventorInventionDbUtil : UDataTableUtilityBase
local UInventorInventionDbUtil = {}

---@param OutData FInventionData
---@param RowName FName
---@return boolean
function UInventorInventionDbUtil:GetInventionDataByRowName(OutData, RowName) end


---@class UItemDataUtility : UBlueprintFunctionLibrary
local UItemDataUtility = {}

---@param saveEquipDataLabel FSaveEquipmentData
---@param outSaveEquipDataId FSaveEquipmentDataID
function UItemDataUtility:SaveEquipmentDataLabelToId(saveEquipDataLabel, outSaveEquipDataId) end
---@param saveEquipDataId FSaveEquipmentDataID
---@param outSaveEquipDataLabel FSaveEquipmentData
function UItemDataUtility:SaveEquipmentDataIdToLabel(saveEquipDataId, outSaveEquipDataLabel) end
---@param dbName FName
---@param notice EDBNoticeType
function UItemDataUtility:NotifyItemDataDB(dbName, notice) end
---@param ItemLabel FName
---@return int32
function UItemDataUtility:ItemLabelToID(ItemLabel) end
---@param ItemId int32
---@return FName
function UItemDataUtility:ItemIDToLabel(ItemId) end
---@param spItemLabel FName
---@return boolean
function UItemDataUtility:IsUsableSpecialItemInMenu(spItemLabel) end
---@param ItemLabel FName
---@return boolean
function UItemDataUtility:IsSpecialItem(ItemLabel) end
---@param spItemLabel FName
---@return boolean
function UItemDataUtility:IsMeatItem(spItemLabel) end
---@param ItemLabel FName
---@return boolean
function UItemDataUtility:IsItemExistsInDB(ItemLabel) end
---@param spItemLabel FName
---@return boolean
function UItemDataUtility:IsHolyTorchItem(spItemLabel) end
---@param spItemLabel FName
---@return boolean
function UItemDataUtility:IsDisplaySpecialItemInMenuByLabel(spItemLabel) end
---@param specialItem FSpecialItemData
---@return boolean
function UItemDataUtility:IsDisplaySpecialItemInMenu(specialItem) end
---@param returnCode EBPFuncReturnCode::Type
---@param outSpItemData FSpecialItemData
---@param ItemLabel FName
function UItemDataUtility:GetSpesialItemDataByItemLabel(returnCode, outSpItemData, ItemLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param outSpItemData FSpecialItemData
---@param spItemLabel FName
function UItemDataUtility:GetSpesialItemData(returnCode, outSpItemData, spItemLabel) end
---@param spType ESPECIAL_ITEM_TYPE
---@param outList TArray<FName>
function UItemDataUtility:GetSpecialItemLabelList(spType, outList) end
---@param ItemLabel FName
---@return EBATTLE_TARGET_TYPE
function UItemDataUtility:GetItemTarget(ItemLabel) end
---@param outMaxTable TMap<EItemCategoryData, int32>
function UItemDataUtility:GetItemPossesionMaxTableByCategory(outMaxTable) end
---@param ItemLabel FName
---@return int32
function UItemDataUtility:GetItemPossesionMaxByItemLabel(ItemLabel) end
---@param ItemId int32
---@return int32
function UItemDataUtility:GetItemPossesionMaxByItemId(ItemId) end
---@param Category EItemCategoryData
---@return int32
function UItemDataUtility:GetItemPossesionMaxByCategory(Category) end
---@param outItemName FText
---@param ItemLabel FName
---@return boolean
function UItemDataUtility:GetItemNameTextWithIcon(outItemName, ItemLabel) end
---@param outItemName FText
---@param ItemLabel FName
---@return boolean
function UItemDataUtility:GetItemNameText(outItemName, ItemLabel) end
---@param ItemLabel FName
---@return FName
function UItemDataUtility:GetItemNameID(ItemLabel) end
---@param ItemLabel FName
---@return int32
function UItemDataUtility:GetItemMaxNum(ItemLabel) end
---@param outLabelList TArray<FText>
---@return boolean
function UItemDataUtility:GetItemLabelTextList(outLabelList) end
---@return TArray<FName>
function UItemDataUtility:GetItemLabelList() end
---@param ItemLabel FName
---@return int32
function UItemDataUtility:GetItemID(ItemLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param outItemFontTextData FItemIconText
---@param itemIconTextLabel FName
function UItemDataUtility:GetItemFontData(returnCode, outItemFontTextData, itemIconTextLabel) end
---@param ItemLabel FName
---@return FName
function UItemDataUtility:GetItemEquipmentTextureLabel(ItemLabel) end
---@param ItemLabel FName
---@return EEquipmentCategory
function UItemDataUtility:GetItemEquipmentCategory(ItemLabel) end
---@param ItemLabel FName
---@return EITEM_DISPLAY_TYPE
function UItemDataUtility:GetItemDisplayType(ItemLabel) end
---@param ItemLabel FName
---@return FName
function UItemDataUtility:GetItemDetailTextID(ItemLabel) end
---@param outItemData FItemData
---@param ItemId int32
---@return boolean
function UItemDataUtility:GetItemDataByItemID(outItemData, ItemId) end
---@param outItemData FItemData
---@param ItemLabel FName
---@return boolean
function UItemDataUtility:GetItemData(outItemData, ItemLabel) end
---@param ItemLabel FName
---@return UDataTable
function UItemDataUtility:GetItemCommandEffecter(ItemLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param outItemCategoryData FItemCategory
---@param ItemCategory EItemCategoryData
function UItemDataUtility:GetItemCategoryDataByEnum(returnCode, outItemCategoryData, ItemCategory) end
---@param ItemLabel FName
---@return EItemCategoryData
function UItemDataUtility:GetItemCategory(ItemLabel) end
---@param ItemLabel FName
---@return EATTRIBUTE_TYPE
function UItemDataUtility:GetItemAttribute(ItemLabel) end
---@param outAilment TArray<FAilmentHandler>
---@param ItemLabel FName
---@return boolean
function UItemDataUtility:GetItemAilment(outAilment, ItemLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param outEquipCategoryData FEquipmentCategoryBase
---@param equipCategory EEquipmentCategory
function UItemDataUtility:GetEquipmentCategoryDataByEnum(returnCode, outEquipCategoryData, equipCategory) end
---@param equipCategoryID int32
---@return FName
function UItemDataUtility:EquipmentCategoryIDToLabel(equipCategoryID) end
---@param ItemLabel FName
---@param Category EItemCategoryData
---@return boolean
function UItemDataUtility:CheckItemCategory(ItemLabel, Category) end


---@class UItemSaveDataUtil : USaveDataUtilBase
local UItemSaveDataUtil = {}

---@param purchaseItemLabel FName
---@param Data FSoldOutShopItemData
function UItemSaveDataUtil:SetSoldOutShopItemDataByLabel(purchaseItemLabel, Data) end
---@param purchaseItemId int32
---@param Data FSoldOutShopItemData
function UItemSaveDataUtil:SetSoldOutShopItemDataById(purchaseItemId, Data) end
---@param purchaseItemLabel FName
---@return boolean
function UItemSaveDataUtil:IsSoldOutShopItemByLabel(purchaseItemLabel) end
---@param purchaseItemId int32
---@return boolean
function UItemSaveDataUtil:IsSoldOutShopItemById(purchaseItemId) end
---@param outItems TArray<FBackPackItemData>
function UItemSaveDataUtil:GetSortedBackpackItemsForSale(outItems) end
---@param outItems TArray<FBackPackItemData>
function UItemSaveDataUtil:GetSortedBackpackItemsForBattle(outItems) end
---@param outItems TArray<FBackPackItemData>
function UItemSaveDataUtil:GetSortedBackpackItems(outItems) end
---@return int32
function UItemSaveDataUtil:GetMeetNum() end
---@param ItemLabel FName
---@return int32
function UItemSaveDataUtil:GetItemNumInBackpackByLabel(ItemLabel) end
---@param ID int32
---@return int32
function UItemSaveDataUtil:GetItemNumInBackpackById(ID) end
---@param outHistory TArray<int32>
function UItemSaveDataUtil:GetItemAcquisitionHistory(outHistory) end
---@param outItems TArray<FBackPackItemData>
function UItemSaveDataUtil:GetBackpackItems(outItems) end


---@class UItemUtility : UBlueprintFunctionLibrary
local UItemUtility = {}

---@param ItemList TArray<FSaveBackPackItem>
function UItemUtility:SortSaleItemByShopItemOrder(ItemList) end
---@param ItemList TArray<FItemData>
function UItemUtility:SortPurchaseItemByShopItemOrderForAnimalShop(ItemList) end
---@param ItemList TArray<FItemData>
function UItemUtility:SortPurchaseItemByShopItemOrder(ItemList) end
---@param ItemList TArray<FSaveBackPackItem>
function UItemUtility:SortItemByIdAndPriority(ItemList) end
---@param ItemList TArray<FSaveBackPackItem>
function UItemUtility:SortBattleItemById(ItemList) end
---@param ItemLabel FName
---@return boolean
function UItemUtility:IsMusicRecord(ItemLabel) end
---@param ItemId int64
---@param SortCategory int64
---@param itemPrice int64
---@return int64
function UItemUtility:CalcShopItemOrder(ItemId, SortCategory, itemPrice) end


---@class UJobDataTableUtility : UDataTableUtilityBase
local UJobDataTableUtility = {}

---@param dbName FName
---@param notice EDBNoticeType
function UJobDataTableUtility:NotifyJobDataDB(dbName, notice) end
---@return TArray<FName>
function UJobDataTableUtility:GetObtainJobItem() end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FJobData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UJobDataTableUtility:GetJobDataTableRowData(returnCode, OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FJobData
---@param JobID int32
---@return boolean
function UJobDataTableUtility:GetJobDataByJobID(returnCode, OutData, JobID) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UJobDataTableUtility:GeJobDataTableRowNames(returnCode, OutRowNames) end


---@class UJobEvalautionValueTableUtility : UDataTableUtilityBase
local UJobEvalautionValueTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutData FJobEvalautionValueData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UJobEvalautionValueTableUtility:GetJobEvalautionValueTableRowData(returnCode, OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FJobEvalautionValueData
---@param JobType EJOB_TYPE
---@param LogEnable boolean
---@return boolean
function UJobEvalautionValueTableUtility:GetJobEvalautionValueTableRomDataFromJobType(returnCode, OutData, JobType, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UJobEvalautionValueTableUtility:GeJobEvalautionValueTableRowNames(returnCode, OutRowNames) end


---@class UKSAutoSavingWidget : UUserWidget
local UKSAutoSavingWidget = {}

---@param ForOptionMenu boolean
---@return boolean
function UKSAutoSavingWidget:SetText(ForOptionMenu) end
---@return boolean
function UKSAutoSavingWidget:OpenUI() end
---@return boolean
function UKSAutoSavingWidget:CloseUI() end


---@class UKSCharacterFunction : UBlueprintFunctionLibrary
local UKSCharacterFunction = {}

---@param CharacterID EPlayableCharacterID
function UKSCharacterFunction:SubPlayerCharacterFirstEquipment(CharacterID) end
---@return LEVEL_AREA_TYPE
function UKSCharacterFunction:Static_GetPlayerCurrentArea() end
---@param ladderActor AActor
---@param ladderUpTrigger UBoxComponent
---@param StartPosition FVector
---@return boolean
function UKSCharacterFunction:StartPlayerLadderUp(ladderActor, ladderUpTrigger, StartPosition) end
---@param ladderActor AActor
---@param ladderUpTrigger UBoxComponent
---@param StartPosition FVector
---@return boolean
function UKSCharacterFunction:StartPlayerLadderDown(ladderActor, ladderUpTrigger, StartPosition) end
function UKSCharacterFunction:StartEpilogueParty() end
---@param PlayerID EPlayableCharacterID
---@param Location FVector
---@param Dir EKSCharacterDir
---@return AKSCharacterBase
function UKSCharacterFunction:SpawnPlayerCharacter(PlayerID, Location, Dir) end
---@param ActionLabel FName
---@param Location FVector
---@param Dir EKSCharacterDir
---@return AKSCharacterBase
function UKSCharacterFunction:SpawnNPCCharacter(ActionLabel, Location, Dir) end
---@param ActionLabel FName
---@param Location FVector
---@param Dir EKSCharacterDir
---@return AKSCharacterBase
function UKSCharacterFunction:SpawnEventCharacter(ActionLabel, Location, Dir) end
---@param ActionLabel FName
---@param Location FVector
---@param Dir EKSCharacterDir
---@param charIndex int32
---@return AKSCharacterBase
function UKSCharacterFunction:SpawnBarCharacter(ActionLabel, Location, Dir, charIndex) end
---@param CharaID TArray<int32>
---@param outCharaID TArray<int32>
function UKSCharacterFunction:SortCharacterIDFromJobDisplay(CharaID, outCharaID) end
---@param ladderActor AActor
---@param upCollision UBoxComponent
---@param vPosition FVector
---@param eCheckMode EKSCharacterMoveMode
---@param eSetMode EKSCharacterMoveMode
---@param bEnable boolean
---@return boolean
function UKSCharacterFunction:SetUpLadderUpStart(ladderActor, upCollision, vPosition, eCheckMode, eSetMode, bEnable) end
---@param ladderActor AActor
---@param downCollision UBoxComponent
---@param vPosition FVector
---@param eCheckMode EKSCharacterMoveMode
---@param eSetMode EKSCharacterMoveMode
---@param bEnable boolean
---@return boolean
function UKSCharacterFunction:SetUpLadderDownStart(ladderActor, downCollision, vPosition, eCheckMode, eSetMode, bEnable) end
function UKSCharacterFunction:SetupFirstLearnAbility() end
---@param WorldContextObject UObject
---@param Enable boolean
function UKSCharacterFunction:SetPlayerCharacterInput(WorldContextObject, Enable) end
---@param Scale float
---@param OffsetHeight float
---@param HouseOut boolean
---@param bNotPartyRefresh boolean
function UKSCharacterFunction:SetPartyHouseIn(Scale, OffsetHeight, HouseOut, bNotPartyRefresh) end
---@param bOpen boolean
function UKSCharacterFunction:SetMyShipSail(bOpen) end
---@param upEndPos FVector
---@param downEndPos FVector
function UKSCharacterFunction:SetLadderMoveParamsToPlayer(upEndPos, downEndPos) end
---@param vPosition FVector
---@param eMoveMode EKSCharacterMoveMode
function UKSCharacterFunction:SetLadderCharacterPosition(vPosition, eMoveMode) end
---@param WorldContextObject UObject
---@param Mode EKSInputMode
function UKSCharacterFunction:SetKSInputMode(WorldContextObject, Mode) end
---@param Enable boolean
function UKSCharacterFunction:SetCharacterEnable(Enable) end
function UKSCharacterFunction:ResetPartyCharacterForOutGame() end
function UKSCharacterFunction:ResetLadderMode() end
---@param Character AKSCharacterBase
function UKSCharacterFunction:RemoveCharacter(Character) end
---@param Character AKSCharacterBase
function UKSCharacterFunction:RegisterCharacterToManageList(Character) end
function UKSCharacterFunction:RefreshPartyCharacterFormation() end
---@param WorldContextObject UObject
function UKSCharacterFunction:RefreshPartyAfterChangeMember(WorldContextObject) end
---@param WorldContextObject UObject
---@param CharacterIDs TArray<int32>
function UKSCharacterFunction:RefreshCharacterVoice(WorldContextObject, CharacterIDs) end
---@param containNPC boolean
function UKSCharacterFunction:RefreshCharacterResource(containNPC) end
function UKSCharacterFunction:RefreshCharacterLantern() end
---@param dbName FName
---@param notice EDBNoticeType
function UKSCharacterFunction:NotifyCharaFormDB(dbName, notice) end
---@param Character AKSCharacterBase
---@return boolean
function UKSCharacterFunction:IsRegisteredInManageList(Character) end
---@param WorldContextObject UObject
---@return boolean
function UKSCharacterFunction:IsPlayerCharacterInput(WorldContextObject) end
---@param charaActor AActor
---@return boolean
function UKSCharacterFunction:IsPlayerCharacter(charaActor) end
---@return boolean
function UKSCharacterFunction:IsPlacateFollowNPC() end
---@param PlayerID EPlayableCharacterID
---@return boolean
function UKSCharacterFunction:IsMainPlayerCharacter(PlayerID) end
---@return boolean
function UKSCharacterFunction:IsLureFollowNPC() end
---@return boolean
function UKSCharacterFunction:IsLoaded() end
---@return boolean
function UKSCharacterFunction:IsLearnedAbility() end
---@return boolean
function UKSCharacterFunction:IsLeadFollowNPC() end
---@return boolean
function UKSCharacterFunction:IsHireFollowNPC() end
---@param CharaID int32
---@return boolean
function UKSCharacterFunction:IsGuestPlayerCharacterFromID(CharaID) end
---@param PlayerID EPlayableCharacterID
---@return boolean
function UKSCharacterFunction:IsGuestPlayerCharacter(PlayerID) end
---@param Character AKSCharacterBase
---@return boolean
function UKSCharacterFunction:IsFieldCommandActionEnd(Character) end
---@param CharacterID int32
---@param SupportAilment ESUPPORT_AILMENT_TYPE
---@param outEquipedSupportAbility FSupportAbilityDataBase
---@return boolean
function UKSCharacterFunction:IsEquipedSupportAbility(CharacterID, SupportAilment, outEquipedSupportAbility) end
---@return boolean
function UKSCharacterFunction:IsEightParty() end
---@param WorldContextObject UObject
function UKSCharacterFunction:InitPlayerAfterSetSaveData(WorldContextObject) end
---@param TargetCharacter AKSCharacterBase
---@param Scale float
---@return FVector
function UKSCharacterFunction:GetTargetRearLocation(TargetCharacter, Scale) end
---@param CharaA AKSCharacterBase
---@param CharB AKSCharacterBase
---@return EKSCharacterDir
function UKSCharacterFunction:GetReverseDirByPosition(CharaA, CharB) end
---@param Dir EKSCharacterDir
---@return EKSCharacterDir
function UKSCharacterFunction:GetReverseDir(Dir) end
---@return UPlayerPropertyComponent
function UKSCharacterFunction:GetPlayerProperty() end
---@return AKSCharacterBase
function UKSCharacterFunction:GetPlayerObject() end
---@param CharacterID int32
---@param CharacterData FPlayableCharacterData
---@return boolean
function UKSCharacterFunction:GetPlayerDataByIntID(CharacterID, CharacterData) end
---@param PlayerID EPlayableCharacterID
---@param CharacterData FPlayableCharacterData
---@return boolean
function UKSCharacterFunction:GetPlayerDataByID(PlayerID, CharacterData) end
---@param WorldContextObject UObject
---@param PlayerID EPlayableCharacterID
---@param CharaForm uint8
---@return FName
function UKSCharacterFunction:GetPlayerCharacterLabelWithForm(WorldContextObject, PlayerID, CharaForm) end
---@param WorldContextObject UObject
---@param PlayerID EPlayableCharacterID
---@return uint8
function UKSCharacterFunction:GetPlayerCharacterForm(WorldContextObject, PlayerID) end
---@param OutData TArray<FSimpleActionLoad>
---@param levelName FName
function UKSCharacterFunction:GetNPCResourceLabelFromLevelName_NoReaction(OutData, levelName) end
---@param OutData TArray<FName>
---@param levelName FName
function UKSCharacterFunction:GetNPCResourceLabelFromLevelName_ExceptNoReaction(OutData, levelName) end
---@param OutData TArray<FName>
---@param levelName FName
function UKSCharacterFunction:GetNPCResourceLabelFromLevelName(OutData, levelName) end
---@return boolean
function UKSCharacterFunction:GetMyShipSail() end
---@param Action EKSCharacterAction
---@return EKSCharacterMoveMode
function UKSCharacterFunction:GetMoveModeForAction(Action) end
---@param WorldContextObject UObject
---@param OutNewLocation FVector
---@param Location FVector
---@param Length float
---@param AddOffset FVector
---@return boolean
function UKSCharacterFunction:GetLandLocation(WorldContextObject, OutNewLocation, Location, Length, AddOffset) end
---@param WorldContextObject UObject
---@return AKSPlayerController
function UKSCharacterFunction:GetKSPlayerController(WorldContextObject) end
---@param WorldContextObject UObject
---@return EKSInputMode
function UKSCharacterFunction:GetKSInputMode(WorldContextObject) end
---@param Dir EKSCharacterDir
---@return FVector
function UKSCharacterFunction:GetDirVector(Dir) end
---@param OutData TArray<FName>
---@param WorldContextObject UObject
function UKSCharacterFunction:GetCurrentPartyResourceLabel(OutData, WorldContextObject) end
---@param CharacterID int32
---@return TArray<ESpecialActionType>
function UKSCharacterFunction:GetCharacterSpecialActionTypeList(CharacterID) end
---@param CharacterID int32
---@param Index int32
---@return ESpecialActionType
function UKSCharacterFunction:GetCharacterSpecialActionType(CharacterID, Index) end
---@param CharacterID int32
---@return TArray<FName>
function UKSCharacterFunction:GetCharacterSpecialActionTextLabelsForMenuName(CharacterID) end
---@param CharacterID int32
---@return TArray<FName>
function UKSCharacterFunction:GetCharacterSpecialActionTextLabelsForMenuDetail(CharacterID) end
---@param CharacterID int32
---@return TArray<FName>
function UKSCharacterFunction:GetCharacterSpecialActionTextLabelsForBattleCommandName(CharacterID) end
---@param CharacterID int32
---@return TArray<FName>
function UKSCharacterFunction:GetCharacterSpecialActionTextLabelsForBattleCommandDetail(CharacterID) end
---@param CharacterID int32
---@return TArray<FName>
function UKSCharacterFunction:GetCharacterSpecialActionTextLabelsForAbilityLabel(CharacterID) end
---@param CharacterID int32
---@return FName
function UKSCharacterFunction:GetCharacterSpecialActionTextLabelForPlayerSelectDetail(CharacterID) end
---@param CharacterID int32
---@param Index int32
---@return FName
function UKSCharacterFunction:GetCharacterSpecialActionTextLabelForMenuName(CharacterID, Index) end
---@param CharacterID int32
---@param Index int32
---@return FName
function UKSCharacterFunction:GetCharacterSpecialActionTextLabelForMenuDetail(CharacterID, Index) end
---@param CharacterID int32
---@param Index int32
---@return FName
function UKSCharacterFunction:GetCharacterSpecialActionTextLabelForBattleCommandName(CharacterID, Index) end
---@param CharacterID int32
---@param Index int32
---@return FName
function UKSCharacterFunction:GetCharacterSpecialActionTextLabelForBattleCommandDetail(CharacterID, Index) end
---@param CharacterID int32
---@param Index int32
---@return TArray<FName>
function UKSCharacterFunction:GetCharacterSpecialActionTextLabelForAbilityLabel(CharacterID, Index) end
---@param WorldContextObject UObject
---@param PlayerID EPlayableCharacterID
---@param JobID EJOB_TYPE
---@param CharaForm int32
---@return FName
function UKSCharacterFunction:GetCharacterLabelNameForSaveLoad(WorldContextObject, PlayerID, JobID, CharaForm) end
---@param WorldContextObject UObject
---@param PlayerID EPlayableCharacterID
---@param JobID EJOB_TYPE
---@return FName
function UKSCharacterFunction:GetCharacterLabelNameForJob(WorldContextObject, PlayerID, JobID) end
---@param WorldContextObject UObject
---@param PlayerID EPlayableCharacterID
---@return FName
function UKSCharacterFunction:GetCharacterLabelNameForEventFlag(WorldContextObject, PlayerID) end
---@param WorldContextObject UObject
---@param PlayerID EPlayableCharacterID
---@return FName
function UKSCharacterFunction:GetCharacterLabelNameForBaseJob(WorldContextObject, PlayerID) end
---@param WorldContextObject UObject
---@param PlayerID EPlayableCharacterID
---@param JobID EJOB_TYPE
---@param IsEventFlagCheck boolean
---@return FName
function UKSCharacterFunction:GetCharacterLabelName(WorldContextObject, PlayerID, JobID, IsEventFlagCheck) end
---@param Target AKSCharacterBase
---@param IsPlayableCharacter boolean
---@return EPlayableCharacterID
function UKSCharacterFunction:GetCharacterID(Target, IsPlayableCharacter) end
---@param OutData FCharacterFormData
---@param Label FName
---@param Action EKSCharacterAction
---@param Dir EKSCharacterDir
---@return boolean
function UKSCharacterFunction:GetCharacterFormData(OutData, Label, Action, Dir) end
---@param PlayerID EPlayableCharacterID
---@return TArray<MJFieldCommandType>
function UKSCharacterFunction:GetCharacterFieldCommandType(PlayerID) end
---@param outCharaIdList TArray<int32>
function UKSCharacterFunction:GetAllPlayerCharacterIdList(outCharaIdList) end
---@param outCharaEnumList TArray<EPlayableCharacterID>
function UKSCharacterFunction:GetAllPlayerCharacterEnumList(outCharaEnumList) end
---@param ResourceLabel FName
---@return FName
function UKSCharacterFunction:GetActionLabelNameByResourceLabel(ResourceLabel) end
function UKSCharacterFunction:FullRecoveryAllPartyMember() end
---@param eCheckMode EKSCharacterMoveMode
---@param eSetMode EKSCharacterMoveMode
---@param bEnable boolean
---@return boolean
function UKSCharacterFunction:FinishLadderModeWithoutPosition(eCheckMode, eSetMode, bEnable) end
---@param vPosition FVector
---@param eCheckMode EKSCharacterMoveMode
---@param eSetMode EKSCharacterMoveMode
---@param bEnable boolean
---@return boolean
function UKSCharacterFunction:FinishLadderMode(vPosition, eCheckMode, eSetMode, bEnable) end
---@param EndPosition FVector
---@return boolean
function UKSCharacterFunction:EndPlayerLadderUp(EndPosition) end
---@param EndPosition FVector
---@return boolean
function UKSCharacterFunction:EndPlayerLadderDown(EndPosition) end
function UKSCharacterFunction:EndEpilogueParty() end
---@return boolean
function UKSCharacterFunction:EnablePartyCharaRemove() end
---@return TArray<FString>
function UKSCharacterFunction:Debug_GetPlayableCharacterIdNameList() end
---@param CharaID EPlayableCharacterID
---@return FString
function UKSCharacterFunction:Debug_GetPlayableCharacterIdName(CharaID) end
function UKSCharacterFunction:ClearActionReferenceObject() end
---@param ActionLabel FName
---@param Action EKSCharacterAction
---@return boolean
function UKSCharacterFunction:CheckStopAction(ActionLabel, Action) end
---@param eMoveMode EKSCharacterMoveMode
---@param bEnable boolean
---@return boolean
function UKSCharacterFunction:CheckLadderState(eMoveMode, bEnable) end
---@return boolean
function UKSCharacterFunction:CheckHaveLantern() end
---@param CharacterID int32
---@param Type ESpecialActionType
---@param OutputIndex int32
---@return boolean
function UKSCharacterFunction:CheckCharacterHaveSpecialAction(CharacterID, Type, OutputIndex) end
---@param CharacterID EPlayableCharacterID
function UKSCharacterFunction:AddPlayerCharacterFirstEquipment(CharacterID) end


---@class UKSCharacterMovementComponent : UCharacterMovementComponent
local UKSCharacterMovementComponent = {}


---@class UKSCheatManager : UCheatManager
---@field m_pLoadCheatCommand ADebugLoadCheatCommand
---@field m_CheatCommandList TArray<ADebugLoadCheatCommand>
local UKSCheatManager = {}

---@param bEnable boolean
function UKSCheatManager:TameAlwaysSuccess(bEnable) end
---@param Enable boolean
function UKSCheatManager:StartLastChapter(Enable) end
---@param Enable boolean
function UKSCheatManager:StartEpilogue(Enable) end
---@param bEnable boolean
function UKSCheatManager:ShowGameMainSequenceLog(bEnable) end
---@param Enable boolean
---@param TextSize float
function UKSCheatManager:ShowEventTextData(Enable, TextSize) end
---@param bEnable boolean
function UKSCheatManager:SetSystemDataVibrationEnable(bEnable) end
function UKSCheatManager:SetRandomParticipationOrder() end
---@param parts int32
---@param Type int32
function UKSCheatManager:SetMyShipCustom(parts, Type) end
---@param partnerID int32
function UKSCheatManager:SetHunterPartnerID(partnerID) end
---@param Index int32
---@param Value int32
function UKSCheatManager:SetEventCounter(Index, Value) end
---@param IsEnable boolean
function UKSCheatManager:SetEnableWorldMapDebugDraw(IsEnable) end
---@param IsEnable boolean
function UKSCheatManager:SetEnableFlatEarthMode(IsEnable) end
---@param IsEnable boolean
function UKSCheatManager:SetDarkArea(IsEnable) end
---@param BitFlagLabel FString
---@param Flag boolean
function UKSCheatManager:SetBitFlagLabel(BitFlagLabel, Flag) end
---@param CharaID int32
---@param IsLearn boolean
function UKSCheatManager:SetAllAbility(CharaID, IsLearn) end
---@param CharaID int32
---@param AbilityIndex int32
---@param IsLearn boolean
function UKSCheatManager:SetAdvancedAbility(CharaID, AbilityIndex, IsLearn) end
function UKSCheatManager:ResumeNormalPartySet() end
---@param CharaID int32
---@param AllChara boolean
function UKSCheatManager:ReleasePotentialityAction(CharaID, AllChara) end
---@param SequenceName FString
---@param SubSequenceName FString
function UKSCheatManager:PlaySequenceEvent(SequenceName, SubSequenceName) end
---@param strAbilityLabel FString
---@param nBoostLevel int32
---@param bPlayerSide boolean
function UKSCheatManager:PlayAbility(strAbilityLabel, nBoostLevel, bPlayerSide) end
---@param bEnable boolean
function UKSCheatManager:PartyNoKO(bEnable) end
---@param bEnable boolean
function UKSCheatManager:PartyNoDamage(bEnable) end
---@param bEnable boolean
function UKSCheatManager:PartyFullPower(bEnable) end
---@param bEnable boolean
function UKSCheatManager:OpenFCViewer(bEnable) end
---@param SlotName FString
---@param UserIndex int32
---@param IsSuccesss boolean
function UKSCheatManager:OnFinishSaveGame(SlotName, UserIndex, IsSuccesss) end
---@param SlotName FString
---@param UserIndex int32
---@param SaveGame UMJSaveData
function UKSCheatManager:OnFinishLoadGame(SlotName, UserIndex, SaveGame) end
---@param payload FOnSuccessCloudLoadPayload
function UKSCheatManager:OnFinishCloudLoadGame(payload) end
---@param bEnable boolean
---@param R uint8
---@param G uint8
---@param B uint8
function UKSCheatManager:MJWipeColorChange(bEnable, R, G, B) end
---@param ResourceName FString
function UKSCheatManager:MJTutorialAutoCapture(ResourceName) end
---@param bEnable boolean
function UKSCheatManager:MJTimeZoneLock(bEnable) end
---@param Filename FString
function UKSCheatManager:MJStartAutoPlay(Filename) end
---@param VoiceLabel FName
function UKSCheatManager:MJSoundPlayVoice(VoiceLabel) end
---@param SELabel FName
function UKSCheatManager:MJSoundPlaySe(SELabel) end
---@param BgmLabel FName
---@param FadeOutTime float
---@param FadeInTime float
function UKSCheatManager:MJSoundPlayBgm(BgmLabel, FadeOutTime, FadeInTime) end
---@param nBlockIndex int32
function UKSCheatManager:MJSoundBlockIndex(nBlockIndex) end
---@param Enable boolean
function UKSCheatManager:MJShowTextSizeInfo(Enable) end
---@param bEnable boolean
function UKSCheatManager:MJShowStoryDebugInfo(bEnable) end
---@param bDraw boolean
function UKSCheatManager:MJShowSoundListeningPoint(bDraw) end
---@param bDraw boolean
function UKSCheatManager:MJShowSoundListenerPoint(bDraw) end
---@param bDraw boolean
function UKSCheatManager:MJShowSoundAISACParam(bDraw) end
---@param bShow boolean
function UKSCheatManager:MJShowLevelManagerInfo(bShow) end
---@param bEnable boolean
function UKSCheatManager:MJShowDebugInfoStoryMemory(bEnable) end
---@param bEnable boolean
function UKSCheatManager:MJShowDebugInfoEvent(bEnable) end
---@param bEnable boolean
---@param pageIndex int32
function UKSCheatManager:MJShowDebugInfo(bEnable, pageIndex) end
---@param bEnable boolean
function UKSCheatManager:MJShowDebugGuildInfo(bEnable) end
---@param bShow boolean
function UKSCheatManager:MJShowDBManagerInfo(bShow) end
function UKSCheatManager:MJShowDarkAreaStatus() end
---@param Enable boolean
function UKSCheatManager:MJShowCharacterSocket(Enable) end
---@param Enable boolean
function UKSCheatManager:MJShowCharacterMoveMode(Enable) end
---@param Enable boolean
function UKSCheatManager:MJShowCharacterFootStep(Enable) end
---@param bEnable boolean
function UKSCheatManager:MJShowAllTutorialList(bEnable) end
---@param ID int32
function UKSCheatManager:MJSharedSaveGameBySlotId(ID) end
---@param ID int32
function UKSCheatManager:MJSharedLoadGameBySlotId(ID) end
function UKSCheatManager:MJSetupAtlantisPartyRandom() end
---@param bEnable boolean
function UKSCheatManager:MJSetTutorialViewFlag(bEnable) end
---@param EnemyGroupID FName
function UKSCheatManager:MJSettingEncountInfoFromEnemyGroup(EnemyGroupID) end
---@param char1 int32
---@param char2 int32
---@param char3 int32
---@param char4 int32
function UKSCheatManager:MJSetSubParty(char1, char2, char3, char4) end
---@param Enable boolean
function UKSCheatManager:MJSetSimpleActionLoad(Enable) end
---@param Enable boolean
function UKSCheatManager:MJSetShowLoadedCharacterResource(Enable) end
---@param Enable boolean
function UKSCheatManager:MJSetPartyResourceOnlyFlag(Enable) end
---@param char1 int32
---@param char2 int32
---@param char3 int32
---@param char4 int32
function UKSCheatManager:MJSetParty(char1, char2, char3, char4) end
---@param Money int32
function UKSCheatManager:MJSetMoney(Money) end
---@param MainStoryId int32
---@param Confirmed boolean
function UKSCheatManager:MJSetMainStoryConfirmedFlag(MainStoryId, Confirmed) end
---@param isOld boolean
function UKSCheatManager:MJSetIsOldWorldMapTexure(isOld) end
---@param bEnable boolean
function UKSCheatManager:MJSetIsForceTrialMode(bEnable) end
---@param bEnable boolean
function UKSCheatManager:MJSetIsForceSkipNoticeScreen(bEnable) end
---@param DarkAreaLabel FName
---@param isDarkend boolean
function UKSCheatManager:MJSetIsDarkend(DarkAreaLabel, isDarkend) end
---@param isDarkend boolean
function UKSCheatManager:MJSetIsAllDarkend(isDarkend) end
---@param isIgnore boolean
function UKSCheatManager:MJSetIgnorePlaceNoReactionNPC(isIgnore) end
---@param IsEnable boolean
function UKSCheatManager:MJSetForceFastTravel(IsEnable) end
---@param fixMoveMode int32
function UKSCheatManager:MJSetFixMoveMode(fixMoveMode) end
---@param Enable boolean
function UKSCheatManager:MJSetFieldIgnoreBattleResourceLoad(Enable) end
---@param IsVisited boolean
---@param levelLabel FName
function UKSCheatManager:MJSetExcludeSpecifiyMapVisited(IsVisited, levelLabel) end
---@param Enable boolean
function UKSCheatManager:MJSetEnableTitleMovieCurrentTime(Enable) end
---@param bEnable boolean
function UKSCheatManager:MJSetEnableDebugAchievementNotification(bEnable) end
---@param targetActorName FString
function UKSCheatManager:MJSetDebugTargetActorName(targetActorName) end
---@param fAutoTimer float
function UKSCheatManager:MJSetAutoBalloonTimer(fAutoTimer) end
---@param IsVisited boolean
function UKSCheatManager:MJSetAllMapVisited(IsVisited) end
---@param Enable boolean
function UKSCheatManager:MJSEList(Enable) end
---@param InFilename FString
function UKSCheatManager:MJScreenshot(InFilename) end
---@param ID int32
function UKSCheatManager:MJSaveGameBySlotId(ID) end
---@param battleMapName FName
function UKSCheatManager:MJRequestBattleMap(battleMapName) end
---@param bEnable boolean
function UKSCheatManager:MJReleaseAllStoryRecord(bEnable) end
function UKSCheatManager:MJRefreshFlagObject() end
function UKSCheatManager:MJPlacementRefresh() end
function UKSCheatManager:MJPlacementAllRemove() end
---@param Enable boolean
function UKSCheatManager:MJOutputAnimationPlayerLog(Enable) end
---@param Enable boolean
function UKSCheatManager:MJOutputAnimationOtherLog(Enable) end
function UKSCheatManager:MJOpenScreenCapture() end
---@param guildLabel FName
function UKSCheatManager:MJOpenGuildMenu(guildLabel) end
---@param bFull boolean
function UKSCheatManager:MJMemReport(bFull) end
---@param ID int32
function UKSCheatManager:MJLoadGameBySlotId(ID) end
---@param Enable boolean
function UKSCheatManager:MJInvisibleDebugCharacter(Enable) end
---@param hidden boolean
function UKSCheatManager:MJHideDebugTargetActor(hidden) end
---@param Enable boolean
function UKSCheatManager:MJForceBattleEnemyNameOpen(Enable) end
---@param bEnable boolean
function UKSCheatManager:MJFallPrevention(bEnable) end
---@param bEnable boolean
---@param R uint8
---@param G uint8
---@param B uint8
function UKSCheatManager:MJFadeColorChange(bEnable, R, G, B) end
function UKSCheatManager:MJEnemyWeaknessFullOpen() end
function UKSCheatManager:MJEndAtlantisParty() end
---@param Enable boolean
function UKSCheatManager:MJEnableSafetyBalloon(Enable) end
---@param Enable boolean
function UKSCheatManager:MJEmotionDisable(Enable) end
function UKSCheatManager:MJCloudSaveGame() end
---@param SnapshotId int32
function UKSCheatManager:MJCloudLoadGame(SnapshotId) end
function UKSCheatManager:MJCloseScreenCapture() end
function UKSCheatManager:MJClearFadeForcibly() end
function UKSCheatManager:MJClearBattleMap() end
---@param nType int32
function UKSCheatManager:MJChangeTimeZone(nType) end
---@param partyIdx int32
function UKSCheatManager:MJChangeParty(partyIdx) end
---@param OldApply boolean
function UKSCheatManager:MJApplyOldKeyConfig(OldApply) end
---@param Num int32
function UKSCheatManager:MJAddAllItemToBackpack(Num) end
---@param Show boolean
function UKSCheatManager:KSShowUserWidgetState(Show) end
---@param Enable boolean
function UKSCheatManager:KSShowTimeLockTrigger(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowShopTrigger(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowLoadLogStartEnd(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowLoadFilename(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowLevelTrigger(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowLadderTrigger(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowInputMode(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowHouseInTrigger(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowEventTrigger(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowEndRollDebugInfo_Segment(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowEndRollDebugInfo_Credit(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowCollision(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowCharacterPos(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowCharacterMovePoint(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowCharacterMoveLocation(Enable) end
function UKSCheatManager:KSShowCharacterList() end
---@param Type int32
function UKSCheatManager:KSShowCharacterLaycast(Type) end
---@param Enable boolean
function UKSCheatManager:KSShowCharacterDir(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowCharacterAction(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowCanoeDockTrigger(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowCameraLockTrigger(Enable) end
---@param Enable boolean
function UKSCheatManager:KSShowCameraLockTiggerInfo(Enable) end
---@param Enable boolean
function UKSCheatManager:KSSetUseCustomFlipbook(Enable) end
---@param Mode int32
function UKSCheatManager:KSSetRunMode(Mode) end
---@param AddSpeed float
function UKSCheatManager:KSSetPlayerMoveSpeed(AddSpeed) end
---@param X float
---@param Y float
---@param Z float
function UKSCheatManager:KSSetPlayerLocation(X, Y, Z) end
---@param PlayerID int32
---@param Sequence int32
---@param Enable boolean
function UKSCheatManager:KSSetCharacterFlag(PlayerID, Sequence, Enable) end
---@param EventName FString
---@param TimeZone int32
function UKSCheatManager:KSPlayEventTheater(EventName, TimeZone) end
---@param EventName FString
---@param FrameNum int32
function UKSCheatManager:KSPlayEvent(EventName, FrameNum) end
---@param Label FName
---@param nType int32
function UKSCheatManager:KSPlayBalloon(Label, nType) end
---@param Enable boolean
function UKSCheatManager:KSPerformanceCheck(Enable) end
---@param Enable boolean
function UKSCheatManager:KSLevelTriggerCheck(Enable) end
---@param Enable boolean
function UKSCheatManager:KSLevelChangeList(Enable) end
---@param levelName FName
---@param triggerIndex uint8
function UKSCheatManager:KSLevelChange(levelName, triggerIndex) end
function UKSCheatManager:KSForceGarbageCollection() end
---@param Enable boolean
---@param Label boolean
function UKSCheatManager:KSFlagEditor(Enable, Label) end
---@param Enable boolean
function UKSCheatManager:KSEventTriggerEnable(Enable) end
---@param Enable boolean
function UKSCheatManager:KSEventCameraMode(Enable) end
---@param Enable boolean
function UKSCheatManager:KSAllowLoadDisabledSaveData(Enable) end
---@param ItemLabel FName
---@param Num int32
function UKSCheatManager:KSAddItemToBackpack(ItemLabel, Num) end
---@param Index int32
function UKSCheatManager:GetEventCounter(Index) end
function UKSCheatManager:FullPotentialityAction() end
---@param bEnable boolean
function UKSCheatManager:FixedRandomDamage(bEnable) end
---@param bEnable boolean
function UKSCheatManager:FixedRandomAilment(bEnable) end
---@param FilePath FString
function UKSCheatManager:ExecCheatCommandFromSaved(FilePath) end
---@param FilePath FString
function UKSCheatManager:ExecCheatCommand(FilePath) end
---@param bEnable boolean
function UKSCheatManager:EscapeAlwaysSuccess(bEnable) end
---@param bEnable boolean
function UKSCheatManager:EnemyNoKO(bEnable) end
---@param bEnable boolean
function UKSCheatManager:EnemyNoDamage(bEnable) end
---@param bEnable boolean
function UKSCheatManager:EnemyFullPower(bEnable) end
---@param bEnable boolean
function UKSCheatManager:EnableManualSequencerUpdate(bEnable) end
---@param bEnable boolean
function UKSCheatManager:EnableBusinessSupport(bEnable) end
---@param bEnable boolean
function UKSCheatManager:EnableBattleVictory(bEnable) end
---@param bEnable boolean
---@param bOnce boolean
function UKSCheatManager:EnableBattleDefeat(bEnable, bOnce) end
---@param bEnable boolean
function UKSCheatManager:EnableAutoBattle(bEnable) end
---@param bEnable boolean
function UKSCheatManager:EnableAllLearnAbilityOpen(bEnable) end
---@param bEnable boolean
function UKSCheatManager:EnableAllInvadeMonsterOpen(bEnable) end
---@param bEnable boolean
function UKSCheatManager:EnableAllAbilityOpen(bEnable) end
---@param InvadeID int32
function UKSCheatManager:DeleteTameMonster(InvadeID) end
function UKSCheatManager:ClearParticipationOrder() end
---@param ChangeSpeed float
function UKSCheatManager:ChangeGameSpeed(ChangeSpeed) end
function UKSCheatManager:ChangeBattleSpeed() end
---@param Awake int32
function UKSCheatManager:AwakeningMonster(Awake) end
---@param Index int32
---@param Value int32
function UKSCheatManager:AddEventCounter(Index, Value) end


---@class UKSDPICustomScalingRule : UDPICustomScalingRule
local UKSDPICustomScalingRule = {}


---@class UKSDebugMenuStatics : UBlueprintFunctionLibrary
local UKSDebugMenuStatics = {}

function UKSDebugMenuStatics:NextBattleCalcText() end
---@return boolean
function UKSDebugMenuStatics:IsOutputPlayerAnimLog() end
---@return boolean
function UKSDebugMenuStatics:IsOutputOtherAnimLog() end
---@return boolean
function UKSDebugMenuStatics:IsLevelTriggerIntercept() end
---@return boolean
function UKSDebugMenuStatics:IsEditor() end
---@return boolean
function UKSDebugMenuStatics:IsDisableEmotion() end
---@return boolean
function UKSDebugMenuStatics:IsDebugMenuOpen() end
---@return TArray<FString>
function UKSDebugMenuStatics:GetSpawnNpcListFromTextFile() end
---@param PlacementLabels TArray<FName>
---@param PlacementLabels_FText TArray<FText>
---@return boolean
function UKSDebugMenuStatics:GetPlacementLabelsForDebug(PlacementLabels, PlacementLabels_FText) end
---@param ID int32
---@return FString
function UKSDebugMenuStatics:GetEventFalgLabel(ID) end
---@return FString
function UKSDebugMenuStatics:GetDebugMenuSortList() end
---@return uint8
function UKSDebugMenuStatics:GetDebugDrawCounter() end
---@return UUserWidget
function UKSDebugMenuStatics:GetCurrentDebugMenuWidget() end
---@param nIndex int32
---@return FString
function UKSDebugMenuStatics:GetBattleCalcText(nIndex) end
---@param Obj UObject
---@param outExportedFilePath FString
---@return boolean
function UKSDebugMenuStatics:ExportUObjectAsJson(Obj, outExportedFilePath) end
---@param FilePath FString
---@param Filename FString
function UKSDebugMenuStatics:ExportTextFile(FilePath, Filename) end
---@param Obj UObject
---@return boolean
function UKSDebugMenuStatics:ExportSaveData(Obj) end
function UKSDebugMenuStatics:DebugDrawSwitch() end
function UKSDebugMenuStatics:CloseDebugMenu() end
function UKSDebugMenuStatics:ClearBattleCalcText() end
---@param pushText FString
function UKSDebugMenuStatics:AppendBattleCalcText(pushText) end


---@class UKSFade : UUserWidget
---@field FadeType EFADE_TYPE
---@field TickType int32
---@field IsEnd boolean
---@field Timer float
---@field EndTime float
---@field FadeColor FLinearColor
---@field StartAlpha float
---@field EndSlateVisible ESlateVisibility
---@field OnFinishFadeOut FKSFadeOnFinishFadeOut
---@field OnFinishFadeIn FKSFadeOnFinishFadeIn
---@field m_DebugFadeColor FColor
---@field m_bDebugFadeColorEnable boolean
local UKSFade = {}

function UKSFade:SetupDebugFadeColor() end
---@return boolean
function UKSFade:IsFadeVisible() end
---@return boolean
function UKSFade:IsFadeEnd() end
---@return EFADE_TYPE
function UKSFade:GetFadeType() end
---@param inColor FLinearColor
---@param inEndTime float
---@return boolean
function UKSFade:FadeOut(inColor, inEndTime) end
---@param rColor FLinearColor
---@param inEndTime float
---@return boolean
function UKSFade:FadeInit(rColor, inEndTime) end
---@param inColor FLinearColor
---@param inEndTime float
---@return boolean
function UKSFade:FadeIn(inColor, inEndTime) end
---@return boolean
function UKSFade:FadeEnd() end


---@class UKSGameInstance : UGameInstance
---@field m_bDebugMode boolean
---@field FontMap TMap<int32, FFontItemData>
---@field FontJA TArray<UObject>
---@field FontEN TArray<UObject>
---@field IsCreateFCv2 boolean
local UKSGameInstance = {}

---@param levelName FName
function UKSGameInstance:SetStartLevel(levelName) end
---@param bInTestLevel boolean
function UKSGameInstance:SetPlayInTestLevel(bInTestLevel) end
---@param isSuspend boolean
function UKSGameInstance:SetGameSuspend(isSuspend) end
---@param FirstSpawn boolean
function UKSGameInstance:SetFirstSpawn(FirstSpawn) end
---@param bDisable boolean
function UKSGameInstance:SetDisableWorldRendering(bDisable) end
---@param isDebug boolean
function UKSGameInstance:SetDebugMode(isDebug) end
---@param DebugLoadLebel boolean
function UKSGameInstance:SetDebugLoadLevel(DebugLoadLebel) end
function UKSGameInstance:LoadFonts() end
---@param lang EKSLanguage
function UKSGameInstance:LoadFont(lang) end
---@param eLang EKSLanguage
function UKSGameInstance:KSSetLang(eLang) end
---@return boolean
function UKSGameInstance:IsPlayInTestLevel() end
---@return boolean
function UKSGameInstance:IsGamePlayMode() end
---@return FName
function UKSGameInstance:GetStartLevel() end
---@return boolean
function UKSGameInstance:GetIsDebugLoadLevel() end
---@return UKSGameInstance
function UKSGameInstance:GetInstance() end
---@return boolean
function UKSGameInstance:GetFirstSpawn() end
---@return boolean
function UKSGameInstance:GetDebugMode() end
---@return AKSCharacterManager
function UKSGameInstance:GetCharacterManager() end
---@param Type int32
function UKSGameInstance:Debug_SetOverwritePlatformFontType(Type) end


---@class UKSGameStatics : UBlueprintFunctionLibrary
local UKSGameStatics = {}

---@param WorldContextObject UObject
function UKSGameStatics:WipeOutAtBattleStart(WorldContextObject) end
---@param WorldContextObject UObject
function UKSGameStatics:WipeOutAtBattleEnd(WorldContextObject) end
---@param WorldContextObject UObject
function UKSGameStatics:WipeInAtBattleStart(WorldContextObject) end
---@param WorldContextObject UObject
function UKSGameStatics:WipeInAtBattleEnd(WorldContextObject) end
---@param WorldContextObject UObject
---@param reason ELOADING_REASON
---@return UKSLoadingWidget
function UKSGameStatics:StopLoadingUI(WorldContextObject, reason) end
function UKSGameStatics:StartTimer() end
---@param WorldContextObject UObject
---@param reason ELOADING_REASON
---@return UKSLoadingWidget
function UKSGameStatics:StartLoadingUI(WorldContextObject, reason) end
---@param WorldContextObject UObject
---@param Enable boolean
function UKSGameStatics:SetUseCustomFlipbook(WorldContextObject, Enable) end
---@param WorldContextObject UObject
---@param Enable boolean
function UKSGameStatics:SetTransitionFromLoadGame(WorldContextObject, Enable) end
---@param WorldContextObject UObject
---@param InDynDelegate FSetTimerForNextTickInDynDelegate
---@return FTimerHandle
function UKSGameStatics:SetTimerForNextTick(WorldContextObject, InDynDelegate) end
---@param WorldContextObject UObject
---@param eType ECHANGE_TIME_DILATION
function UKSGameStatics:SetTimeDilation(WorldContextObject, eType) end
---@param WorldContextObject UObject
---@param Tag FName
---@param Enable boolean
function UKSGameStatics:SetTagVisibleStaticMesh(WorldContextObject, Tag, Enable) end
---@param WorldContextObject UObject
---@param Tag FName
---@param Enable boolean
function UKSGameStatics:SetTagVisible(WorldContextObject, Tag, Enable) end
---@param WorldContextObject UObject
---@param Enable boolean
function UKSGameStatics:SetShowMultilingualGuide(WorldContextObject, Enable) end
---@param Type ERESOLUTION_TYPE
function UKSGameStatics:SetResolution(Type) end
---@param WorldContextObject UObject
---@param inEnable boolean
function UKSGameStatics:SetPlayerDash(WorldContextObject, inEnable) end
---@param WorldContextObject UObject
---@param inEnable boolean
function UKSGameStatics:SetPartyChatEnable(WorldContextObject, inEnable) end
---@param WorldContextObject UObject
---@param inEnable boolean
function UKSGameStatics:SetMainMenuEnable(WorldContextObject, inEnable) end
---@param InResult EBATTLE_RESULT
function UKSGameStatics:SetLastBattleResult(InResult) end
---@param InLang EKSLanguage
function UKSGameStatics:SetLanguage(InLang) end
---@param WorldContextObject UObject
---@param inHouse boolean
function UKSGameStatics:SetInHouse(WorldContextObject, inHouse) end
---@param pRootComp USceneComponent
---@param bHidden boolean
function UKSGameStatics:SetHiddenCollisionComponentChild(pRootComp, bHidden) end
---@param pRootActor AActor
---@param bHidden boolean
function UKSGameStatics:SetHiddenCollisionActorChild(pRootActor, bHidden) end
---@param pRootActor AActor
---@param bHidden boolean
function UKSGameStatics:SetHiddenActorChild(pRootActor, bHidden) end
---@param WorldContextObject UObject
---@param State int32
---@param IsInputChange boolean
function UKSGameStatics:SetEventSpeedUpMode(WorldContextObject, State, IsInputChange) end
---@param WorldContextObject UObject
---@param InEncountSign boolean
function UKSGameStatics:SetEncountSignMode(WorldContextObject, InEncountSign) end
---@param WorldContextObject UObject
---@param InEncount boolean
function UKSGameStatics:SetEncount(WorldContextObject, InEncount) end
function UKSGameStatics:SetBattleSpeed() end
---@param WorldContextObject UObject
---@param InBattleMode boolean
function UKSGameStatics:SetBattleMode(WorldContextObject, InBattleMode) end
---@param WorldContextObject UObject
function UKSGameStatics:ResetGameOnGameOver(WorldContextObject) end
function UKSGameStatics:ResetBattleSpeedUp() end
---@return EKSLanguage
function UKSGameStatics:PS_GetSystemLanguage() end
---@return boolean
function UKSGameStatics:PS4IsEnterAssingCircle() end
---@param WorldContextObject UObject
---@param Comment FString
function UKSGameStatics:PrintCurrentRealTime(WorldContextObject, Comment) end
---@param WorldContextObject UObject
---@return UKSAutoSavingWidget
function UKSGameStatics:OpenOptionAutoSavingUI(WorldContextObject) end
---@param WorldContextObject UObject
---@return UKSAutoSavingWidget
function UKSGameStatics:OpenAutoSavingUI(WorldContextObject) end
---@param IsEnable boolean
function UKSGameStatics:KSSetPerformanceModeChangedNotificationEnabled(IsEnable) end
---@return boolean
function UKSGameStatics:IsUseCharacterResourceDB() end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:IsTrialEdition(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:IsTransitionFromLoadGame(WorldContextObject) end
---@return boolean
function UKSGameStatics:IsReleaseMusicPlayer() end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:IsPlayerActiveMode(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:IsPlayBalloonVoice(WorldContextObject) end
---@return boolean
function UKSGameStatics:IsPlatformSwitch() end
---@return boolean
function UKSGameStatics:IsPlatformPS5() end
---@return boolean
function UKSGameStatics:IsPlatformPS4() end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:IsPlatformPC(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:IsNoticeScreenSkip(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:IsMainMenuOpen(WorldContextObject) end
---@param WorldContextObject UObject
---@param User EFADE_USER
---@return boolean
function UKSGameStatics:IsFadeUser(WorldContextObject, User) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:IsFadeEnd(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:IsCheckInputEventFunction(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:IsCheckInputBattleFunction(WorldContextObject) end
---@param WorldContextObject UObject
function UKSGameStatics:HideWipeAtBattleEnd_Immediately(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetUseCustomFlipbook(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetTitlePlaying(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetShowMultilingualGuide(WorldContextObject) end
---@return ERESOLUTION_TYPE
function UKSGameStatics:GetResolution() end
---@return EMJRegion
function UKSGameStatics:GetRegion_Switch() end
---@return FName
function UKSGameStatics:GetPlayVoiceWaitTimeLabel() end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetPlayerDash(WorldContextObject) end
---@return EMJRegion
function UKSGameStatics:GetPlatformRegion() end
---@return EKSLanguage
function UKSGameStatics:GetPlatformDefaultLanguage() end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetPartyChatEnable(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetOpenMainMenuDisable(WorldContextObject) end
---@return EKSLanguage
function UKSGameStatics:GetOldLanguage() end
---@return FName
function UKSGameStatics:GetNoVoiceWaitTimeLabel() end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetMainMenuEnable(WorldContextObject) end
---@return EBATTLE_RESULT
function UKSGameStatics:GetLastBattleResult() end
---@return EKSLanguage
function UKSGameStatics:GetLanguage() end
---@param WorldContextObject UObject
---@return AKSGameMode
function UKSGameStatics:GetKSGameMode(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetInHouse(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetFieldCommandDisable(WorldContextObject) end
---@return boolean
function UKSGameStatics:GetFCMode() end
---@param WorldContextObject UObject
---@return UKSFade
function UKSGameStatics:GetFadeWidget(WorldContextObject) end
---@param WorldContextObject UObject
---@return EFADE_TYPE
function UKSGameStatics:GetFadeType(WorldContextObject) end
---@return boolean
function UKSGameStatics:GetEventSpeedUpMode() end
---@return EEVENT_MODE
function UKSGameStatics:GetEventMode() end
---@return boolean
function UKSGameStatics:GetEventAutoMode() end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetEncountSignMode(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetEncount(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetElapsedTimeZoneDisable(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetChangeTimeZoneDisable(WorldContextObject) end
---@return float
function UKSGameStatics:GetCalcBaseBattleSpeed() end
---@return boolean
function UKSGameStatics:GetBuildRegionJP() end
---@param FlagName FName
---@return int32
function UKSGameStatics:GetBitFlagIndexByName(FlagName) end
---@param FlagName FName
---@return boolean
function UKSGameStatics:GetBitFlagByName(FlagName) end
---@param WorldContextObject UObject
---@return boolean
function UKSGameStatics:GetBattleMode(WorldContextObject) end
---@param WorldContextObject UObject
---@param PlayVoice boolean
---@return float
function UKSGameStatics:GetBalloonThinkingTextWaitValue(WorldContextObject, PlayVoice) end
---@param WorldContextObject UObject
---@param PlayVoice boolean
---@return float
function UKSGameStatics:GetBalloonTextWaitValue(WorldContextObject, PlayVoice) end
---@param WorldContextObject UObject
---@return float
function UKSGameStatics:GetBalloonSpeedValue(WorldContextObject) end
---@param PlayerController APlayerController
---@return boolean
function UKSGameStatics:GetActivatedWindow(PlayerController) end
---@param WorldContextObject UObject
---@param EndTime float
---@param Color FLinearColor
---@param FadeUser EFADE_USER
---@return UKSFade
function UKSGameStatics:FadeOut(WorldContextObject, EndTime, Color, FadeUser) end
---@param WorldContextObject UObject
---@param FadeUser EFADE_USER
function UKSGameStatics:FadeInImmediately(WorldContextObject, FadeUser) end
---@param WorldContextObject UObject
---@param EndTime float
---@param Color FLinearColor
---@param FadeUser EFADE_USER
---@return UKSFade
function UKSGameStatics:FadeIn(WorldContextObject, EndTime, Color, FadeUser) end
---@param reason FString
function UKSGameStatics:EndTimerToComment(reason) end
function UKSGameStatics:EndTimer() end
---@param WorldContextObject UObject
---@param fixMoveMode EDebugFixMoveMode
function UKSGameStatics:Debug_SetFixMoveMode(WorldContextObject, fixMoveMode) end
---@param WorldContextObject UObject
---@return EDebugFixMoveMode
function UKSGameStatics:Debug_GetFixMoveMode(WorldContextObject) end
---@param WorldContextObject UObject
---@return UKSAutoSavingWidget
function UKSGameStatics:CloseAutoSavingUI(WorldContextObject) end
---@param WorldContextObject UObject
function UKSGameStatics:ClearFadeForcibly(WorldContextObject) end
---@return float
function UKSGameStatics:CheckTimer() end
function UKSGameStatics:ChangBattleSpeedUp() end
---@param Type EREQUEST_TYPE
---@param Param FMainSequneceRequestParam
function UKSGameStatics:AddSequenceRequestForHolding(Type, Param) end
---@param Type EREQUEST_TYPE
---@param Param FMainSequneceRequestParam
function UKSGameStatics:AddSequenceRequest(Type, Param) end
---@param WorldContextObject UObject
---@param PlayerController APlayerController
function UKSGameStatics:AcqQuitGame(WorldContextObject, PlayerController) end


---@class UKSListColumnWidgetBase : UUserWidget
local UKSListColumnWidgetBase = {}

---@param col1 FName
---@param col2 FName
---@param col3 FName
function UKSListColumnWidgetBase:SetText_Column3(col1, col2, col3) end
---@param col1 FName
---@param col2 FName
function UKSListColumnWidgetBase:SetText_Column2(col1, col2) end
---@param col1 FName
function UKSListColumnWidgetBase:SetText_Column1(col1) end


---@class UKSListItemWidgetBase : UAcqUserWidget
local UKSListItemWidgetBase = {}


---@class UKSListWidgetBase : UAcqUserWidget
---@field m_ColumnWidgetClass TSubclassOf<UKSListColumnWidgetBase>
---@field m_ItemWidgetClass TSubclassOf<UKSListItemWidgetBase>
---@field m_ColumnWidget UKSListColumnWidgetBase
---@field m_ContainerName FName
local UKSListWidgetBase = {}



---@class UKSLoadingWidget : UAcqUserWidget
local UKSLoadingWidget = {}

---@return boolean
function UKSLoadingWidget:StopLoading_Inner() end
---@param reason ELOADING_REASON
---@return boolean
function UKSLoadingWidget:StopLoading(reason) end
---@return boolean
function UKSLoadingWidget:StartLoading_Inner() end
---@param reason ELOADING_REASON
---@return boolean
function UKSLoadingWidget:StartLoading(reason) end
---@return ERESOLUTION_TYPE
function UKSLoadingWidget:GetLoadingResourceResolution() end


---@class UKSPaperFlipbook : UPaperFlipbook
---@field m_PaperSpritePool TArray<UKSPaperSprite>
---@field m_pPrevSprite UKSPaperSprite
local UKSPaperFlipbook = {}

---@param releaseSprite boolean
function UKSPaperFlipbook:ResetKeyFrames(releaseSprite) end
---@return FVector2D
function UKSPaperFlipbook:GetMaxSpriteSize() end
---@param Data FFlipbookCalcData
function UKSPaperFlipbook:CalcFlipbookData(Data) end


---@class UKSPaperSprite : UPaperSprite
---@field CharaFootPivot FVector2D
local UKSPaperSprite = {}

---@return FVector2D
function UKSPaperSprite:GetOffset() end
---@return FVector2D
function UKSPaperSprite:GetDimension() end


---@class UKSPartySplitWidgetBase : UKSUserWidgetWithState
---@field OnClosedKSPartySplitWithResult FKSPartySplitWidgetBaseOnClosedKSPartySplitWithResult
local UKSPartySplitWidgetBase = {}

---@param isDisplay boolean
function UKSPartySplitWidgetBase:SetIsDisplayWarning(isDisplay) end
---@return EPARTY_SPLIT_CLOSE_REASON
function UKSPartySplitWidgetBase:GetCloseReason() end


---@class UKSSaveDataStatics : UBlueprintFunctionLibrary
local UKSSaveDataStatics = {}

---@param AutoSavedDelegate FStartAutoSaveAutoSavedDelegate
---@return boolean
function UKSSaveDataStatics:StartAutoSave(AutoSavedDelegate) end
---@param WorldContextObject UObject
---@param ParamType EKSSaveDataParamType
---@param Param int32
function UKSSaveDataStatics:SetSysSaveDataParam(WorldContextObject, ParamType, Param) end
---@param WorldContextObject UObject
---@param ParamType EKSKeyConfigElement
---@param Param int32
function UKSSaveDataStatics:SetSysSaveDataKeyConfigParam(WorldContextObject, ParamType, Param) end
---@param WorldContextObject UObject
---@param flagType EKSSaveDataFlagType
---@param Flag boolean
function UKSSaveDataStatics:SetSysSaveDataFlag(WorldContextObject, flagType, Flag) end
---@param WorldContextObject UObject
---@param sysSaveData UKSSaveSystem
function UKSSaveDataStatics:SetSysSaveData(WorldContextObject, sysSaveData) end
---@param Target ESaveDataLoadTarget
function UKSSaveDataStatics:SetNextLoadTarget(Target) end
---@param WorldContextObject UObject
---@param gameSaveData UMJSaveData
function UKSSaveDataStatics:SetGameSaveData(WorldContextObject, gameSaveData) end
---@param WorldContextObject UObject
function UKSSaveDataStatics:SetDefaultOptionParam(WorldContextObject) end
---@param WorldContextObject UObject
function UKSSaveDataStatics:SetDefaultGraphicsOptionParam(WorldContextObject) end
---@param MainStoryId int32
---@param Status int32
function UKSSaveDataStatics:SetActivitySubTaskStatus(MainStoryId, Status) end
---@param InputPin TArray<int32>
---@param ReturnArrayLength int32
---@param InitValue int32
---@return TArray<int32>
function UKSSaveDataStatics:ResizeArraywithBlank(InputPin, ReturnArrayLength, InitValue) end
---@return FString
function UKSSaveDataStatics:MakeSystemDataFileName() end
---@param SlotNo EKSSaveSlotName
---@return FString
function UKSSaveDataStatics:MakeGameDataFileNameByEnum(SlotNo) end
---@param SlotNo int32
---@return FString
function UKSSaveDataStatics:MakeGameDataFileName(SlotNo) end
---@param WorldContextObject UObject
---@return boolean
function UKSSaveDataStatics:IsVoiceLangJapanese(WorldContextObject) end
---@return boolean
function UKSSaveDataStatics:IsAutoSaving() end
---@param outParam TArray<int32>
---@param WorldContextObject UObject
function UKSSaveDataStatics:GetSysSaveDataParamArray(outParam, WorldContextObject) end
---@param WorldContextObject UObject
---@param ParamType EKSSaveDataParamType
---@return int32
function UKSSaveDataStatics:GetSysSaveDataParam(WorldContextObject, ParamType) end
---@param outParam TArray<int32>
---@param WorldContextObject UObject
function UKSSaveDataStatics:GetSysSaveDataKeyConfigArray(outParam, WorldContextObject) end
---@param outFlag TArray<int32>
---@param WorldContextObject UObject
function UKSSaveDataStatics:GetSysSaveDataFlagArray(outFlag, WorldContextObject) end
---@param WorldContextObject UObject
---@param flagType EKSSaveDataFlagType
---@return boolean
function UKSSaveDataStatics:GetSysSaveDataFlag(WorldContextObject, flagType) end
---@param WorldContextObject UObject
---@return UKSSaveSystem
function UKSSaveDataStatics:GetSysSaveData(WorldContextObject) end
---@return ESaveDataLoadTarget
function UKSSaveDataStatics:GetNextLoadTarget() end
---@param WorldContextObject UObject
---@return UMJSaveData
function UKSSaveDataStatics:GetGameSaveData(WorldContextObject) end
---@return int32
function UKSSaveDataStatics:GetCurrentPlayTime() end
---@param MainStoryId int32
---@return int32
function UKSSaveDataStatics:GetActivitySubTaskStatus(MainStoryId) end
---@return boolean
function UKSSaveDataStatics:DoesExistsTrialGameData() end
---@return boolean
function UKSSaveDataStatics:DoesExistsPS4GameData() end
function UKSSaveDataStatics:Debug_OutputActivitySaveData() end
function UKSSaveDataStatics:Debug_CheckContainerSizeInSaveData() end


---@class UKSSaveSystem : USaveGame
---@field SystemSaveData FKSSysSaveData
---@field SaveSlotData TArray<FKSSaveSlotData>
---@field ActivitySaveData FMJActivitySaveData
---@field IsClearAllChallengeBattle boolean
local UKSSaveSystem = {}

---@param SlotNo EKSSaveSlotName
---@param slotData FKSSaveSlotData
function UKSSaveSystem:SetSlotdata(SlotNo, slotData) end
---@param ParamType EKSSaveDataParamType
---@param Param int32
function UKSSaveSystem:SetParam(ParamType, Param) end
---@param ParamType EKSKeyConfigElement
---@param Param int32
function UKSSaveSystem:SetKeyConfigParam(ParamType, Param) end
---@param Param EKeyboardLayoutType
function UKSSaveSystem:SetKeyboardLayoutParam(Param) end
---@param Val boolean
function UKSSaveSystem:SetIsClearAllChallengeBattle(Val) end
---@param flagType EKSSaveDataFlagType
---@param Flag boolean
function UKSSaveSystem:SetFlag(flagType, Flag) end
---@param Other UKSSaveSystem
function UKSSaveSystem:MergeActivitySaveData(Other) end
---@param SlotNo EKSSaveSlotName
---@param outSlotData FKSSaveSlotData
function UKSSaveSystem:GetSlotdata(SlotNo, outSlotData) end
---@param outParam TArray<int32>
function UKSSaveSystem:GetParamArray(outParam) end
---@param ParamType EKSSaveDataParamType
---@return int32
function UKSSaveSystem:GetParam(ParamType) end
---@param outParam TArray<int32>
function UKSSaveSystem:GetKeyConfigParamArray(outParam) end
---@param ParamType EKSKeyConfigElement
---@return int32
function UKSSaveSystem:GetKeyConfigParam(ParamType) end
---@return EKeyboardLayoutType
function UKSSaveSystem:GetKeyboardLayoutParam() end
---@return boolean
function UKSSaveSystem:GetIsClearAllChallengeBattle() end
---@param outFlag TArray<int32>
function UKSSaveSystem:GetFlagArray(outFlag) end
---@param flagType EKSSaveDataFlagType
---@return boolean
function UKSSaveSystem:GetFlag(flagType) end
function UKSSaveSystem:Debug_OutputAllData() end


---@class UKSTextBlock : UTextLayoutWidget
---@field Text FText
---@field TextDelegate FKSTextBlockTextDelegate
---@field ColorAndOpacity FSlateColor
---@field ColorAndOpacityDelegate FKSTextBlockColorAndOpacityDelegate
---@field Font FSlateFontInfo
---@field ShadowOffset FVector2D
---@field ShadowColorAndOpacity FLinearColor
---@field ShadowColorAndOpacityDelegate FKSTextBlockShadowColorAndOpacityDelegate
---@field MinDesiredWidth float
---@field Decorators TArray<UKSTextBlockDecorator>
---@field Debug_InitializeText FText
---@field m_Language EKSLanguage
---@field m_FontType EKSFontType
---@field m_GameTextLabel FName
---@field m_GameTextFormatLabel FName
---@field m_GameTextList TArray<FName>
---@field DisableRefreshFont boolean
---@field OnRefreshFont FKSTextBlockOnRefreshFont
---@field m_bUpdateOutlineSize boolean
local UKSTextBlock = {}

function UKSTextBlock:UpdateFontOutlineSize() end
---@param Value float
function UKSTextBlock:SetWrapTextAt(Value) end
---@param InText FText
function UKSTextBlock:SetText(InText) end
---@param InShadowOffset FVector2D
function UKSTextBlock:SetShadowOffset(InShadowOffset) end
---@param InShadowColorAndOpacity FLinearColor
function UKSTextBlock:SetShadowColorAndOpacity(InShadowColorAndOpacity) end
---@param InOpacity float
function UKSTextBlock:SetOpacity(InOpacity) end
---@param GameTextFormatLabel FName
---@param GameTextLabel FName
function UKSTextBlock:SetGameTextWithFormatText(GameTextFormatLabel, GameTextLabel) end
---@param GameTextLabel FName
---@param LabelNum int32
function UKSTextBlock:SetGameTextWithFormatNumber(GameTextLabel, LabelNum) end
---@param GameTextLabel FName
---@param Key FText
function UKSTextBlock:SetGameTextWithFormatKey(GameTextLabel, Key) end
---@param GameTextLabel FName
function UKSTextBlock:SetGameText(GameTextLabel) end
---@param InFontType EKSFontType
---@param InColorAndOpacity FSlateColor
---@param InFontSize int32
function UKSTextBlock:SetFontStyle(InFontType, InColorAndOpacity, InFontSize) end
---@param InFontInfo FSlateFontInfo
function UKSTextBlock:SetFont(InFontInfo) end
---@param InColorAndOpacity FSlateColor
function UKSTextBlock:SetColorAndOpacity(InColorAndOpacity) end
function UKSTextBlock:RefreshGameText() end
---@return FText
function UKSTextBlock:GetText() end
---@return FSlateFontInfo
function UKSTextBlock:GetFont() end
---@param Enable boolean
function UKSTextBlock:Debug_ShowTextSizeInfo(Enable) end
function UKSTextBlock:Debug_ApplyDebugText() end


---@class UKSTextBlockDecorator : URichTextBlockDecorator
local UKSTextBlockDecorator = {}


---@class UKSTextStatics : UBlueprintFunctionLibrary
local UKSTextStatics = {}

---@param eLang EKSLanguage
---@return boolean
function UKSTextStatics:LoadTextVoice(eLang) end
---@param eLang EKSLanguage
---@return boolean
function UKSTextStatics:LoadText(eLang) end
---@return boolean
function UKSTextStatics:IsKSTextLoaded() end
---@param Label FName
---@param OutText FGameTextItemInfo
function UKSTextStatics:GetTextItemInfo(Label, OutText) end
---@param Label FName
---@param OutText FGameTextCharaInfo
function UKSTextStatics:GetTextCharaInfo(Label, OutText) end
---@param Label FName
---@param OutText FTalkVoice
function UKSTextStatics:GetTalkVoice(Label, OutText) end
---@param Label FName
---@param OutText FTalkText
---@return boolean
function UKSTextStatics:GetTalkText(Label, OutText) end
---@param Label FName
---@param OutText FString
function UKSTextStatics:GetGameTextString(Label, OutText) end
---@param Label FName
---@param OutText FText
function UKSTextStatics:GetGameTextMacroOperation(Label, OutText) end
---@param Label FName
---@param OutText FText
function UKSTextStatics:GetGameText(Label, OutText) end
---@return FName
function UKSTextStatics:GetFallbackTalkTextLabel() end
---@param WorldContextObject UObject
---@param Type EKSKeyConfigElement
---@return FText
function UKSTextStatics:GetButtonTextFromKeyConfig(WorldContextObject, Type) end
---@param WorldContextObject UObject
---@param Type ECONTROL_GUIDE_BUTTON_TYPE
---@return FText
function UKSTextStatics:GetButtonText(WorldContextObject, Type) end


---@class UKSUIStatics : UBlueprintFunctionLibrary
local UKSUIStatics = {}

function UKSUIStatics:ReloadUIResources() end
---@param PushUI UUserWidget
---@return int32
function UKSUIStatics:PushActive(PushUI) end
---@param UI UUserWidget
---@param IsPop boolean
---@param PopUI UUserWidget
function UKSUIStatics:PopActiveUIWith(UI, IsPop, PopUI) end
---@param PopUI UUserWidget
function UKSUIStatics:PopActive(PopUI) end
---@param PushUI UUserWidget
---@param UseStack boolean
---@return int32
function UKSUIStatics:OpenRequest(PushUI, UseStack) end
---@param FastWorldMap boolean
function UKSUIStatics:OpenMainMenu(FastWorldMap) end
---@return boolean
function UKSUIStatics:IsUIResManagerLoading() end
---@param CheckUI UUserWidget
---@return boolean
function UKSUIStatics:IsStack(CheckUI) end
---@param inKind EKSUIKind
---@return boolean
function UKSUIStatics:IsKSUserWidgetRunning(inKind) end
---@return boolean
function UKSUIStatics:IsClosingStack() end
---@param resName FName
---@return UTexture2D
function UKSUIStatics:GetUIResTexture2D(resName) end
---@param resName FName
---@return UStaticMesh
function UKSUIStatics:GetUIResStaticMesh(resName) end
---@param Kind EKSUIPartsKind
---@return UUserWidget
function UKSUIStatics:GetUIPartsWidget(Kind) end
---@return UBalloonBundleWidgetBase
function UKSUIStatics:GetBalloonBundle() end
---@return UUserWidget
function UKSUIStatics:GetActiveStack() end
---@param Target UWidget
---@return FVector2D
function UKSUIStatics:GetAbsoluteSize(Target) end
---@param DeleteUI UUserWidget
function UKSUIStatics:DeleteStackUI(DeleteUI) end
---@param bforceSkip boolean
function UKSUIStatics:Debug_SetEventForceSkip(bforceSkip) end
---@param bSkip boolean
function UKSUIStatics:Debug_SetBalloonMessageFullSkip(bSkip) end
---@param Money int64
---@param MinDigit int32
---@param MaxDigit int32
---@return FText
function UKSUIStatics:ConvertMoneyToText_int64(Money, MinDigit, MaxDigit) end
---@param Money int32
---@param MinDigit int32
---@param MaxDigit int32
---@return FText
function UKSUIStatics:ConvertMoneyToText(Money, MinDigit, MaxDigit) end
---@param Kind EKSUIKind
---@param ForceClose boolean
function UKSUIStatics:CloseRequestFromKind(Kind, ForceClose) end
---@param PopUI UUserWidget
---@param ForceClose boolean
function UKSUIStatics:CloseRequest(PopUI, ForceClose) end
---@param FastClose boolean
---@return boolean
function UKSUIStatics:CloseMainMenuFromMissionRecordPartyChat(FastClose) end
---@param FastClose boolean
---@return boolean
function UKSUIStatics:CloseMainMenu(FastClose) end
---@param Target UUserWidget
---@param ZOrder int32
---@param UsePlayer boolean
function UKSUIStatics:AddToScreen(Target, ZOrder, UsePlayer) end


---@class UKSUserWidgetBase : UAcqUserWidget
---@field OnOpenCallback FKSUserWidgetBaseOnOpenCallback
---@field OnOpenFinishCallback FKSUserWidgetBaseOnOpenFinishCallback
---@field OnCloseCallback FKSUserWidgetBaseOnCloseCallback
---@field OnCloseFinishCallback FKSUserWidgetBaseOnCloseFinishCallback
---@field OnCloseFinishCallbackBP FKSUserWidgetBaseOnCloseFinishCallbackBP
---@field m_TemporaryHideUser int32
---@field OpenAnim UWidgetAnimation
---@field CloseAnim UWidgetAnimation
---@field AnimationList TArray<UWidgetAnimation>
local UKSUserWidgetBase = {}

function UKSUserWidgetBase:UpdateOpening() end
function UKSUserWidgetBase:UpdateMain() end
function UKSUserWidgetBase:UpdateClosing() end
function UKSUserWidgetBase:UIOpen() end
function UKSUserWidgetBase:UIClose() end
---@param hideUser EWIDGET_TEMPORARY_HIDE_USER
function UKSUserWidgetBase:TurnOffTemporaryHiddenFlag(hideUser) end
---@param fDeltaTime float
function UKSUserWidgetBase:TickUpdateState(fDeltaTime) end
---@return boolean
function UKSUserWidgetBase:SetReference() end
---@param bManual boolean
function UKSUserWidgetBase:SetManualAnimationUpdate(bManual) end
function UKSUserWidgetBase:ResetInputAllowed() end
function UKSUserWidgetBase:ResetFromTitle() end
function UKSUserWidgetBase:ResetForceUIClose() end
---@param NewLanguage EKSLanguage
function UKSUserWidgetBase:RefreshLanguage(NewLanguage) end
function UKSUserWidgetBase:OnResetHiddenFlag() end
function UKSUserWidgetBase:OnOpenFinish() end
function UKSUserWidgetBase:OnCloseFinish() end
---@param CreatePhase EWIDGET_CREATE_PHASE
function UKSUserWidgetBase:NoticeCreatedWidget(CreatePhase) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UKSUserWidgetBase:ManualAnimationUpdate(MyGeometry, InDeltaTime) end
---@return boolean
function UKSUserWidgetBase:IsWait() end
---@return boolean
function UKSUserWidgetBase:IsUpdate() end
---@return boolean
function UKSUserWidgetBase:IsTemporaryHidden() end
---@return boolean
function UKSUserWidgetBase:IsRunning() end
---@return boolean
function UKSUserWidgetBase:IsForceClosing() end
---@return boolean
function UKSUserWidgetBase:IsChangeStateOpenFinish() end
---@return boolean
function UKSUserWidgetBase:IsChangeStateCloseFinish() end
---@return boolean
function UKSUserWidgetBase:Init() end
---@param isHidden boolean
---@param hideUser EWIDGET_TEMPORARY_HIDE_USER
function UKSUserWidgetBase:HideTemporaryInternal(isHidden, hideUser) end
---@param isHidden boolean
---@param hideUser EWIDGET_TEMPORARY_HIDE_USER
function UKSUserWidgetBase:HideTemporary(isHidden, hideUser) end
---@param Animation UWidgetAnimation
---@return boolean
function UKSUserWidgetBase:GetPlayingAnimation(Animation) end
---@return boolean
function UKSUserWidgetBase:GetManualAnimationUpdate() end
---@return float
function UKSUserWidgetBase:GetDeltaTime() end
function UKSUserWidgetBase:ForceUIClose() end
---@param WidgetName FName
---@return UUserWidget
function UKSUserWidgetBase:FindWidget(WidgetName) end
---@return FString
function UKSUserWidgetBase:Debug_GetStateInfoAsString() end
---@param Param int32
function UKSUserWidgetBase:Debug_DecideUI(Param) end
---@return boolean
function UKSUserWidgetBase:CheckInputAllowed() end


---@class UKSUserWidgetWithState : UKSUserWidgetBase
local UKSUserWidgetWithState = {}

function UKSUserWidgetWithState:UpdateState() end
---@param NextState int32
function UKSUserWidgetWithState:SetNextState(NextState) end
---@param CurrentState int32
function UKSUserWidgetWithState:OnUpdateState(CurrentState) end
---@param CurrentState int32
---@param NextState int32
function UKSUserWidgetWithState:OnEndState(CurrentState, NextState) end
---@param PrevState int32
---@param CurrentState int32
function UKSUserWidgetWithState:OnBeginState(PrevState, CurrentState) end
---@param State int32
---@return boolean
function UKSUserWidgetWithState:IsClosingState(State) end
function UKSUserWidgetWithState:InitState() end
---@return int32
function UKSUserWidgetWithState:GetPrevState() end
---@return int32
function UKSUserWidgetWithState:GetNextState() end
---@return int32
function UKSUserWidgetWithState:GetCurrentState() end


---@class UKeyConfigButton1Base : UUserWidget
local UKeyConfigButton1Base = {}

---@param Text FName
function UKeyConfigButton1Base:SetDescriptionText(Text) end


---@class ULetterBoxBase : UKSUserWidgetBase
local ULetterBoxBase = {}

---@return boolean
function ULetterBoxBase:HiddenLetterWidget() end
---@return boolean
function ULetterBoxBase:ApplyLetterSize() end


---@class ULevelFunction : UBlueprintFunctionLibrary
local ULevelFunction = {}

---@return FPlayerLocation
function ULevelFunction:MakeCurrentPlayerLocation() end
---@param WorldContextObject UObject
---@param Pos FVector
---@param AreaType LEVEL_AREA_TYPE
---@return boolean
function ULevelFunction:IsSameLevelArea(WorldContextObject, Pos, AreaType) end
---@return boolean
function ULevelFunction:IsPlayableLevelChange() end
---@return FName
function ULevelFunction:GetTimeZoneChangeSeLabelInCurrentLevel() end
---@param WorldContextObject UObject
---@param LevelTriggerID ELevelTriggerID
---@return FCameraLockParams
function ULevelFunction:GetLevelTriggerCameraLockParams(WorldContextObject, LevelTriggerID) end
---@param WorldContextObject UObject
---@param CheckPos FVector
---@return LEVEL_AREA_TYPE
function ULevelFunction:GetLevelArea(WorldContextObject, CheckPos) end
---@param WorldContextObject UObject
---@param StartLocation FVector
---@param Length float
---@param HitActor AActor
---@param OutHit FHitResult
function ULevelFunction:GetLandObject(WorldContextObject, StartLocation, Length, HitActor, OutHit) end
---@param WorldContextObject UObject
---@param LevelTriggerID ELevelTriggerID
---@return ALevelTriggerActor
function ULevelFunction:FindLevelTriggerByTriggerId(WorldContextObject, LevelTriggerID) end
---@param bVisited boolean
---@param levelLabel FName
function ULevelFunction:Debug_SetExcludeSpecifiyMapVisited(bVisited, levelLabel) end
---@param bVisited boolean
function ULevelFunction:Debug_SetAllMapVisited(bVisited) end
---@param OutMapLabels TArray<FName>
function ULevelFunction:Debug_GetAllMapLabels(OutMapLabels) end
---@param CheckPos FVector
---@return LEVEL_AREA_TYPE
function ULevelFunction:CheckContainedLevelArea(CheckPos) end


---@class ULevelLoader : UObject
---@field m_TargetLevelSet ULevelSet
---@field m_LoadedLevel TMap<FName, ULevelSet>
---@field m_LevelSetClass UClass
local ULevelLoader = {}



---@class ULevelManagerUtility : UBlueprintFunctionLibrary
local ULevelManagerUtility = {}

---@param MapIndex int32
---@return boolean
function ULevelManagerUtility:SwitchBattleLevel(MapIndex) end
---@param eType EPLACEMENT_TYPE
---@param Label FName
---@param IsVisible boolean
function ULevelManagerUtility:SetVisibleObjects(eType, Label, IsVisible) end
---@param IsVisible boolean
function ULevelManagerUtility:SetVisibleEmotionAllNPC(IsVisible) end
function ULevelManagerUtility:SetVisibleBarChangeCharacter() end
---@param IsVisible boolean
function ULevelManagerUtility:SetVisibleAllObjects(IsVisible) end
---@param Param float
function ULevelManagerUtility:SetVignetteWeakRate(Param) end
---@param Param float
function ULevelManagerUtility:SetVignetteNormalRate(Param) end
---@param TriggerID ELevelTriggerID
function ULevelManagerUtility:SetRequestedLevelTriggerID(TriggerID) end
---@param bLinerShip boolean
function ULevelManagerUtility:SetLevelChangeByLinerShip(bLinerShip) end
---@param Param float
function ULevelManagerUtility:SetGainRateMin(Param) end
---@param Param float
function ULevelManagerUtility:SetGainRateMax(Param) end
---@param Param float
function ULevelManagerUtility:SetFocalRegionWideAdd(Param) end
---@param BGMID int32
function ULevelManagerUtility:SetBgmIdFromOuter(BGMID) end
---@param SaveLevel FName
function ULevelManagerUtility:SaveVisitedMap(SaveLevel) end
function ULevelManagerUtility:ResetCameraLockParam() end
---@param restorePlacement FReminiscenceRestorePlacement
function ULevelManagerUtility:RequestRestorePlayerPlacement(restorePlacement) end
---@param Location FPlayerLocation
function ULevelManagerUtility:RequestMapInLocation(Location) end
---@param EquipLantern FEquipLanternData
function ULevelManagerUtility:RequestMapInEquipLantern(EquipLantern) end
---@param CameraLockPos FVector
---@param LevelTriggerID ELevelTriggerID
function ULevelManagerUtility:RequestMapInCameraLock(CameraLockPos, LevelTriggerID) end
---@param Map FName
---@param TriggerID ELevelTriggerID
---@param Fade boolean
---@param ChangeBGM boolean
---@return boolean
function ULevelManagerUtility:RequestLoadFieldLevel(Map, TriggerID, Fade, ChangeBGM) end
---@param NPCUniqID int32
function ULevelManagerUtility:RemoveTargetNPC_ByID(NPCUniqID) end
---@param eType EPLACEMENT_TYPE
---@param ObjLabel FName
---@return boolean
function ULevelManagerUtility:RemoveObjectFromList(eType, ObjLabel) end
function ULevelManagerUtility:RemoveAllType() end
---@param NPCUniqID int32
---@return boolean
function ULevelManagerUtility:RefreshSwoon(NPCUniqID) end
---@param FadeChara boolean
---@param IsForceSpawn boolean
---@param NextTimeZone boolean
---@param bUpdateSwoon boolean
---@return boolean
function ULevelManagerUtility:RefreshSpawnCurrentLevel(FadeChara, IsForceSpawn, NextTimeZone, bUpdateSwoon) end
function ULevelManagerUtility:RefreshFlagObjectRenderStateDirty() end
function ULevelManagerUtility:RefreshFlagObject() end
function ULevelManagerUtility:RefreshBarChangeCharacter() end
function ULevelManagerUtility:RecalcCollectedPostProcessVolumes() end
---@return boolean
function ULevelManagerUtility:PlayLevelBGM() end
---@param softRef TSoftObjectPtr<AActor>
function ULevelManagerUtility:ModifyActorSoftReference(softRef) end
---@return boolean
function ULevelManagerUtility:IsValidLevelManager_Inner() end
---@param returnCode EBPIsValidReturnCode::Type
function ULevelManagerUtility:IsValidLevelManager(returnCode) end
---@return boolean
function ULevelManagerUtility:IsTransitionToGameOver() end
---@param levelId int32
---@return boolean
function ULevelManagerUtility:IsTownById(levelId) end
---@return boolean
function ULevelManagerUtility:IsSameLevelChanging() end
---@return boolean
function ULevelManagerUtility:IsRequestedMapInLocation() end
---@return boolean
function ULevelManagerUtility:IsPrevLevelSea() end
---@return boolean
function ULevelManagerUtility:IsPrevLevelInGame() end
---@return boolean
function ULevelManagerUtility:IsNowLevelTown() end
---@return boolean
function ULevelManagerUtility:IsNowLevelSea() end
---@return boolean
function ULevelManagerUtility:IsNowLevelInGame() end
---@return boolean
function ULevelManagerUtility:IsNextLevelInGame() end
---@return boolean
function ULevelManagerUtility:IsLevelChanging() end
---@return boolean
function ULevelManagerUtility:IsImmovableByFieldChanging() end
---@return boolean
function ULevelManagerUtility:IsGameOverPlaying() end
---@return boolean
function ULevelManagerUtility:IsGameOverLevelLoad() end
---@return boolean
function ULevelManagerUtility:IsFirstVisitLevel() end
---@param levelId int32
---@return boolean
function ULevelManagerUtility:IsDungeonById(levelId) end
---@return boolean
function ULevelManagerUtility:IsCompletedLevelChanging() end
---@param inHouse boolean
---@param floor int32
function ULevelManagerUtility:HouseChangeVisible(inHouse, floor) end
---@return float
function ULevelManagerUtility:GetVignetteWeakRate() end
---@return float
function ULevelManagerUtility:GetVignetteNormalRate() end
---@return FName
function ULevelManagerUtility:GetShowLevelName() end
---@return FReminiscenceRestorePlacement
function ULevelManagerUtility:GetRestorePlayherPlacement() end
---@param outEncountTriggerData FEncountTriggerData
---@return boolean
function ULevelManagerUtility:GetRestoreEncountDataAfterReminiscence(outEncountTriggerData) end
---@return ELevelTriggerID
function ULevelManagerUtility:GetRequestedLevelTriggerID() end
---@param useSubTownID boolean
---@return int32
function ULevelManagerUtility:GetPrevTownID(useSubTownID) end
---@return FName
function ULevelManagerUtility:GetPrevLevelName() end
---@return int32
function ULevelManagerUtility:GetPrevLevelDataID() end
---@param outLevelData FLevelInfoData
---@return boolean
function ULevelManagerUtility:GetPrevLevelData(outLevelData) end
---@return ELEVEL_DARK_STATE
function ULevelManagerUtility:GetPrevLevelDarkState() end
---@param UniqID int32
---@return AKSCharacterBase
function ULevelManagerUtility:GetNPCUniqID(UniqID) end
---@param outNpcPathList TArray<AMJPathSplineObject>
function ULevelManagerUtility:GetNPCPathList(outNpcPathList) end
---@param ObjLabel FName
---@return AKSCharacterBase
function ULevelManagerUtility:GetNPC(ObjLabel) end
---@param useSubTownID boolean
---@return int32
function ULevelManagerUtility:GetNowTownID(useSubTownID) end
---@return FName
function ULevelManagerUtility:GetNowLevelName() end
---@return int32
function ULevelManagerUtility:GetNowLevelDataID() end
---@param outLevelData FLevelInfoData
---@return boolean
function ULevelManagerUtility:GetNowLevelData(outLevelData) end
---@param useSubTownID boolean
---@return int32
function ULevelManagerUtility:GetNextTownID(useSubTownID) end
---@return FName
function ULevelManagerUtility:GetNextLevelName() end
---@return int32
function ULevelManagerUtility:GetNextLevelDataID() end
---@param outLevelData FLevelInfoData
---@return boolean
function ULevelManagerUtility:GetNextLevelData(outLevelData) end
---@return FPlayerLocation
function ULevelManagerUtility:GetMapInLocation() end
---@return FEquipLanternData
function ULevelManagerUtility:GetMapInEquipLantern() end
---@return ALevelManager_Others
function ULevelManagerUtility:GetLevelManageOthersActor() end
---@return boolean
function ULevelManagerUtility:GetLevelChangeByLinerShip() end
---@return float
function ULevelManagerUtility:GetGainRateMin() end
---@return float
function ULevelManagerUtility:GetGainRateMax() end
---@return float
function ULevelManagerUtility:GetFocalRegionWideAdd() end
---@return ELEVEL_DARK_STATE
function ULevelManagerUtility:GetCurrentLevelDarkState() end
---@return FName
function ULevelManagerUtility:GetBattleEnemyGroupID() end
---@return ELEVEL_TYPE
function ULevelManagerUtility:GetActiveLevelType() end
---@return boolean
function ULevelManagerUtility:FinishBattleLevel() end
function ULevelManagerUtility:Debug_ShowPostProcessVolumeInfo() end
---@param Param int32
function ULevelManagerUtility:Debug_SetBarPlaceCharaRateOne(Param) end
---@param Param int32
function ULevelManagerUtility:Debug_SetBarNotPlaceCharaRate(Param) end
---@param Param TArray<int32>
function ULevelManagerUtility:Debug_SetBarCharaList(Param) end
---@param levelName FName
---@param triggerIndex uint8
---@return boolean
function ULevelManagerUtility:Debug_LevelChange(levelName, triggerIndex) end
---@return int32
function ULevelManagerUtility:Debug_GetBarPlaceCharaRateOne() end
---@return int32
function ULevelManagerUtility:Debug_GetBarNotPlaceCharaRate() end
---@return TArray<int32>
function ULevelManagerUtility:Debug_GetBarCharaList() end
function ULevelManagerUtility:Debug_ChangeBarChara() end
function ULevelManagerUtility:ClearRestorePlayherPlacement() end
function ULevelManagerUtility:ClearMapInLocation() end
function ULevelManagerUtility:ClearMapInEquipLantern() end
function ULevelManagerUtility:ClearCollisionDisabledNPC() end
---@return int32
function ULevelManagerUtility:CalcLostWayProbability() end
---@param Level int32
---@return boolean
function ULevelManagerUtility:ApplyScreenBrightness(Level) end
function ULevelManagerUtility:ApplyRestorePlayerPlacement() end
---@param bCheckEventPlaying boolean
function ULevelManagerUtility:ApplyPostProcessCurrentParam(bCheckEventPlaying) end
---@param WorldContextObject UObject
---@return boolean
function ULevelManagerUtility:ApplyCurrentLevelResolution(WorldContextObject) end
---@param IsNormal boolean
---@param CheckEventPlaying boolean
---@return boolean
function ULevelManagerUtility:ApplyCornerDarkness(IsNormal, CheckEventPlaying) end
---@param NPCUniqID int32
function ULevelManagerUtility:AddCollisionDisabledNPC(NPCUniqID) end


---@class ULevelResolutionUtility : UDataTableUtilityBase
local ULevelResolutionUtility = {}

---@param WorldContextObject UObject
---@param levelName FName
function ULevelResolutionUtility:SetFixCurrentLevelResolution(WorldContextObject, levelName) end
---@param levelName FName
---@param fSceenPercent float
---@param fSeparateTranslucencyScreenPercent float
function ULevelResolutionUtility:GetLevelScreenParcentage(levelName, fSceenPercent, fSeparateTranslucencyScreenPercent) end
---@param OutData TArray<FName>
---@return boolean
function ULevelResolutionUtility:GetLevelResolutionLabelNames(OutData) end
---@param OutData FLevelResolutioData
---@param TargetLabel FName
---@param EnableLog boolean
---@return boolean
function ULevelResolutionUtility:GetLevelResolution(OutData, TargetLabel, EnableLog) end


---@class ULevelSaveDataUtil : USaveDataUtilBase
local ULevelSaveDataUtil = {}

---@param bVisited boolean
---@param MapID int32
function ULevelSaveDataUtil:SetVisitedMap(bVisited, MapID) end
---@param bVisited boolean
---@param MapID int32
function ULevelSaveDataUtil:SetShowMapIcon(bVisited, MapID) end
---@param levelId int32
---@param NewMapData FMapData
---@return boolean
function ULevelSaveDataUtil:SetMapData(levelId, NewMapData) end
---@param MaskArea EWorldMapPrologueMaskArea
---@param IsVisited boolean
function ULevelSaveDataUtil:SetIsVisitedWorldMapPrologueMaskArea(MaskArea, IsVisited) end
---@param MaskArea EWorldMapMaskArea
---@param IsVisited boolean
function ULevelSaveDataUtil:SetIsVisitedWorldMapMaskArea(MaskArea, IsVisited) end
---@param Area EWorldMapIslandLayerArea
---@param IsVisited boolean
function ULevelSaveDataUtil:SetIsVisitedWorldMapIslandLayerArea(Area, IsVisited) end
---@param darkState ELEVEL_DARK_STATE
function ULevelSaveDataUtil:SetCurrentLevelDarkState(darkState) end
---@param TownID int32
---@param ConnectionValue int32
function ULevelSaveDataUtil:SetConnectionValue(TownID, ConnectionValue) end
function ULevelSaveDataUtil:ResetLostWayCount() end
---@param levelId int32
---@param ObjectUniqueID int32
---@return boolean
function ULevelSaveDataUtil:OpenTreasureBox(levelId, ObjectUniqueID) end
function ULevelSaveDataUtil:IncreaseLostWayCount() end
---@param MapID int32
---@return boolean
function ULevelSaveDataUtil:GetVisitedMap(MapID) end
---@param MapID int32
---@return boolean
function ULevelSaveDataUtil:GetShowMapIcon(MapID) end
---@return int32
function ULevelSaveDataUtil:GetLostWayCount() end
---@param MaskArea EWorldMapPrologueMaskArea
---@return boolean
function ULevelSaveDataUtil:GetIsVisitedWorldMapPrologueMaskArea(MaskArea) end
---@param MaskArea EWorldMapMaskArea
---@return boolean
function ULevelSaveDataUtil:GetIsVisitedWorldMapMaskArea(MaskArea) end
---@param Area EWorldMapIslandLayerArea
---@return boolean
function ULevelSaveDataUtil:GetIsVisitedWorldMapIslandLayerArea(Area) end
---@return ELEVEL_DARK_STATE
function ULevelSaveDataUtil:GetCurrentLevelDarkState() end
---@param TownID int32
---@return int32
function ULevelSaveDataUtil:GetConnectionValue(TownID) end
---@param levelId int32
---@param FoundMapData FMapData
---@return boolean
function ULevelSaveDataUtil:FindMapData(levelId, FoundMapData) end
---@param levelId int32
---@param ObjectUniqueID int32
---@return boolean
function ULevelSaveDataUtil:DEBUG_CloseTreasureBox(levelId, ObjectUniqueID) end
---@param newData FRevivalObjectSaveData
function ULevelSaveDataUtil:AddOrOverrideRevivalObjectSaveData(newData) end


---@class ULevelSet : UObject
---@field m_ParentLevelStreaming ULevelStreamingCustom
---@field m_SubLevelStreaming TMap<FName, ULevelStreamingCustom>
local ULevelSet = {}

function ULevelSet:OnUnloaded() end
function ULevelSet:OnShown() end
function ULevelSet:OnLoaded() end
function ULevelSet:OnHidden() end


---@class ULevelStreamingCustom : ULevelStreamingDynamic
local ULevelStreamingCustom = {}

function ULevelStreamingCustom:OnUnloaded() end
function ULevelStreamingCustom:OnShown() end
function ULevelStreamingCustom:OnLoaded() end
function ULevelStreamingCustom:OnHidden() end


---@class ULevelTableUtility : UBlueprintFunctionLibrary
local ULevelTableUtility = {}

---@param levelName FName
---@param TriggerID ELevelTriggerID
---@return FName
function ULevelTableUtility:MakeLevelTriggerLabel(levelName, TriggerID) end
---@param levelLabel FName
---@return int32
function ULevelTableUtility:LevelLabelToID(levelLabel) end
---@param levelId int32
---@return FName
function ULevelTableUtility:LevelIDToLabel(levelId) end
---@param levelName FName
---@return boolean
function ULevelTableUtility:IsSeaLevel(levelName) end
---@param levelData FLevelInfoData
---@return boolean
function ULevelTableUtility:IsInGameLevel(levelData) end
---@param returnCode EBPFuncReturnCode::Type
---@param outLevelTrgData FLevelTriggerParams
---@param RowName FName
function ULevelTableUtility:GetLevelTriggerParamsByRowName(returnCode, outLevelTrgData, RowName) end
---@param levelTriggerLabel FName
---@return ELevelTriggerID
function ULevelTableUtility:GetLevelTriggerID(levelTriggerLabel) end
---@param OutRowNames TArray<FName>
---@return boolean
function ULevelTableUtility:GetLevelRowNames(OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param outLevelData FLevelInfoData
---@param RowName FName
function ULevelTableUtility:GetLevelInfoDataByRowName(returnCode, outLevelData, RowName) end
---@param returnCode EBPFuncReturnCode::Type
---@param outLevelData FLevelInfoData
---@param levelName FName
function ULevelTableUtility:GetLevelInfoDataByLevelName(returnCode, outLevelData, levelName) end
---@param returnCode EBPFuncReturnCode::Type
---@param outLevelData FLevelInfoData
---@param levelId int32
function ULevelTableUtility:GetLevelInfoDataByLevelID(returnCode, outLevelData, levelId) end
---@param levelLabel FName
---@return boolean
function ULevelTableUtility:ExistsInLevelDb(levelLabel) end
function ULevelTableUtility:Debug_OutputRegionVisited() end
function ULevelTableUtility:Debug_OutputMapVisited() end
---@param levelName FName
---@return boolean
function ULevelTableUtility:Debug_ContainsInLevelDB(levelName) end


---@class ULibAsset : UBlueprintFunctionLibrary
local ULibAsset = {}

---@param AssetPath FString
---@return boolean
function ULibAsset:LevelExists(AssetPath) end
---@param softAssetData TSoftObjectPtr<UObject>
---@return boolean
function ULibAsset:AssetExistsFromSoftReference(softAssetData) end
---@param AssetPath FString
---@return boolean
function ULibAsset:AssetExists(AssetPath) end


---@class ULibAsyncLoad : UBlueprintFunctionLibrary
local ULibAsyncLoad = {}

---@param assetsPtrList TArray<TSoftObjectPtr<UObject>>
function ULibAsyncLoad:UnloadAssets(assetsPtrList) end
---@param WorldContextObject UObject
---@param assetsPtrList TArray<TSoftObjectPtr<UObject>>
---@param Callback FLoadAssetsAsyncCallback
function ULibAsyncLoad:LoadAssetsAsync(WorldContextObject, assetsPtrList, Callback) end
---@param outList TArray<UObject>
---@param assetPtrList TArray<TSoftObjectPtr<UObject>>
function ULibAsyncLoad:LoadAssetList(outList, assetPtrList) end
---@param WorldContextObject UObject
---@param AssetRefList TArray<FSoftObjectPath>
---@param Callback FLoadAssetAsyncByReferenceCallback
function ULibAsyncLoad:LoadAssetAsyncByReference(WorldContextObject, AssetRefList, Callback) end
---@param AssetPtr TSoftObjectPtr<UObject>
---@return UObject
function ULibAsyncLoad:LoadAsset(AssetPtr) end
---@return boolean
function ULibAsyncLoad:InitLoadAsync() end
---@return int32
function ULibAsyncLoad:GetAcyncLoadRequestNum() end
function ULibAsyncLoad:DestroyLoadAsync() end


---@class ULibBalloon : UBlueprintFunctionLibrary
local ULibBalloon = {}

---@return UBalloonBundleWidgetBase
function ULibBalloon:GetBalloonBundleWidget() end
---@param TalkLabel FName
---@param balloonOffset FVector2D
---@param BalloonDir EEventBalloonDir
---@param EnableTail boolean
---@param TargetActor AActor
---@param Scale float
---@return FAddBalloonParam
function ULibBalloon:CreateBalloonParam_Auto(TalkLabel, balloonOffset, BalloonDir, EnableTail, TargetActor, Scale) end


---@class ULibColor : UBlueprintFunctionLibrary
local ULibColor = {}

---@param cColor FColor
---@param lower boolean
---@return FString
function ULibColor:ToHtmlStringRGBA(cColor, lower) end
---@param Val uint8
---@param lower boolean
---@return FString
function ULibColor:ToHtmlString(Val, lower) end
---@param TargetSource FString
---@param ColorType EGameColor
---@return FString
function ULibColor:GetTextColorChangeCodeToGameColor(TargetSource, ColorType) end
---@param TargetSource FString
---@param Color FColor
---@return FString
function ULibColor:GetTextColorChangeCode(TargetSource, Color) end
---@param EColor EColor
---@return FLinearColor
function ULibColor:GetColor(EColor) end


---@class ULibDataTable : UBlueprintFunctionLibrary
local ULibDataTable = {}

---@param Table UDataTable
---@param RowName FName
---@param OutRow FTableRowBase
---@param OutResult EGET_DATATABLE_RESULT
---@return boolean
function ULibDataTable:GetDataTableRowByName(Table, RowName, OutRow, OutResult) end


---@class ULibDialog : UBlueprintFunctionLibrary
local ULibDialog = {}

---@param Param FMJUICommonDialogParam
---@return UCommonDialog
function ULibDialog:OpenDialog(Param) end
---@param IsRunning boolean
function ULibDialog:IsDialogRunning(IsRunning) end
---@param Caption FText
---@param Detail FText
---@param SelectWidgetList TArray<UUserWidget>
---@param SelectIndex int32
---@param OnTop boolean
---@param CloseFinishCallback FCreateSelectWidgetParamCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateSelectWidgetParam(Caption, Detail, SelectWidgetList, SelectIndex, OnTop, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param OpenSeLabel FName
---@return FMJUICommonDialogParam
function ULibDialog:CreateEventParam_OpenSe(Caption, Detail, ButtonText, OpenSeLabel) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param CloseFinishCallback FCreateEventParam_FinishCallbackCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateEventParam_FinishCallback(Caption, Detail, ButtonText, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param EnableCancel boolean
---@param BloodList TArray<boolean>
---@param CloseFinishCallback FCreateEventParam_EnableBloodCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateEventParam_EnableBlood(Caption, Detail, ButtonText, EnableCancel, BloodList, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param EnableCancel boolean
---@param CloseFinishCallback FCreateEventParam_CancelKey_FinishCallbackCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateEventParam_CancelKey_FinishCallback(Caption, Detail, ButtonText, EnableCancel, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param EnableCancel boolean
---@param DefaultButton int32
---@param CloseFinishCallback FCreateEventParam_CancelKey_DefaultButton_FinishCallbackCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateEventParam_CancelKey_DefaultButton_FinishCallback(Caption, Detail, ButtonText, EnableCancel, DefaultButton, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@return FMJUICommonDialogParam
function ULibDialog:CreateEventParam(Caption, Detail, ButtonText) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param OpenSeLabel FName
---@param CloseFinishCallback FCreateDefaultParam_OpenSe_FinishCallbackCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_OpenSe_FinishCallback(Caption, Detail, ButtonText, OpenSeLabel, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param CloseFinishCallback FCreateDefaultParam_FinishCallbackCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_FinishCallback(Caption, Detail, ButtonText, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param DuplocationFlag boolean
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_Duplication(Caption, Detail, ButtonText, DuplocationFlag) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param AttachDetail UUserWidget
---@param AutoClose boolean
---@param EnableCancel boolean
---@param InputReception boolean
---@param SelectCallback FCreateDefaultParam_Detail_AutoClose_Cancel_Input_SelectCallbackSelectCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_Detail_AutoClose_Cancel_Input_SelectCallback(Caption, Detail, ButtonText, AttachDetail, AutoClose, EnableCancel, InputReception, SelectCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param DefaultButton int32
---@param CloseFinishCallback FCreateDefaultParam_DefaultButton_FinishCallbackCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_DefaultButton_FinishCallback(Caption, Detail, ButtonText, DefaultButton, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param AutoSelectClose boolean
---@param CloseFinishCallback FCreateDefaultParam_AutoSelectClose_CallbackCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_AutoSelectClose_Callback(Caption, Detail, ButtonText, AutoSelectClose, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param AutoSelectClose boolean
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_AutoSelectClose(Caption, Detail, ButtonText, AutoSelectClose) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param AutoClose boolean
---@param EnableCancel boolean
---@param InputReception boolean
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_AutoClose_Cancel_InputReception(Caption, Detail, ButtonText, AutoClose, EnableCancel, InputReception) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param AutoSelectClose boolean
---@param Cancel boolean
---@param CloseFinishCallback FCreateDefaultParam_AutoClose_Cancel_CallbackCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_AutoClose_Cancel_Callback(Caption, Detail, ButtonText, AutoSelectClose, Cancel, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param AutoClose boolean
---@param AttachCaption UUserWidget
---@param CaptionTop boolean
---@param CaptionSeparation boolean
---@param SelectCallback FCreateDefaultParam_AutoClose_AttachCaption_SelectCallbackSelectCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_AutoClose_AttachCaption_SelectCallback(Caption, Detail, ButtonText, AutoClose, AttachCaption, CaptionTop, CaptionSeparation, SelectCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param AttachDetail UUserWidget
---@param OnTop boolean
---@param CloseFinishCallback FCreateDefaultParam_AttachDetail_CallbackCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_AttachDetail_Callback(Caption, Detail, ButtonText, AttachDetail, OnTop, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param AttachCaption UUserWidget
---@param CaptionTop boolean
---@param CaptionSeparation boolean
---@param AttachDetail UUserWidget
---@param DetailTop boolean
---@param CloseFinishCallback FCreateDefaultParam_AttachDetail_AttachCaption_CallbackCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_AttachDetail_AttachCaption_Callback(Caption, Detail, ButtonText, AttachCaption, CaptionTop, CaptionSeparation, AttachDetail, DetailTop, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param AttachCaption UUserWidget
---@param CaptionTop boolean
---@param CaptionSeparation boolean
---@param OpenSeLabel FName
---@param CloseFinishCallback FCreateDefaultParam_AttachCaption_OpenSe_CallbackCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_AttachCaption_OpenSe_Callback(Caption, Detail, ButtonText, AttachCaption, CaptionTop, CaptionSeparation, OpenSeLabel, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@param AttachCaption UUserWidget
---@param CaptionTop boolean
---@param CaptionSeparation boolean
---@param CloseFinishCallback FCreateDefaultParam_AttachCaption_CallbackCloseFinishCallback
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam_AttachCaption_Callback(Caption, Detail, ButtonText, AttachCaption, CaptionTop, CaptionSeparation, CloseFinishCallback) end
---@param Caption FText
---@param Detail FText
---@param ButtonText TArray<FText>
---@return FMJUICommonDialogParam
function ULibDialog:CreateDefaultParam(Caption, Detail, ButtonText) end


---@class ULibDisplay : UBlueprintFunctionLibrary
local ULibDisplay = {}

---@param InFullScreenMode EWindowMode::Type
---@param Resolution FIntPoint
---@return boolean
function ULibDisplay:SetWindowResolution(InFullScreenMode, Resolution) end
---@param Fps float
---@return boolean
function ULibDisplay:SetFPS(Fps) end
function ULibDisplay:RefreshDisplayInformation() end
---@param WorldContextObject UObject
---@param IsRemoveDpiScale boolean
---@return FVector2D
function ULibDisplay:GetWindowLetterBoxSize(WorldContextObject, IsRemoveDpiScale) end
---@param Resolutions TArray<FIntPoint>
function ULibDisplay:GetWindowedResolutions(Resolutions) end
---@param WorldContextObject UObject
---@return FVector2D
function ULibDisplay:GetWidgetSpaceSize(WorldContextObject) end
---@param Resolutions TArray<FIntPoint>
function ULibDisplay:GetFullscreenResolutions(Resolutions) end
---@return EWindowMode::Type
function ULibDisplay:GetCurrentWindowMode() end
---@return FIntPoint
function ULibDisplay:GetCurrentScreenResolutionFromConfig() end
---@return FIntPoint
function ULibDisplay:GetCurrentScreenResolutionEx() end
---@return FIntPoint
function ULibDisplay:GetCurrentScreenResolution() end
---@return float
function ULibDisplay:GetCurrentFPS() end
---@return boolean
function ULibDisplay:DisplayLog() end


---@class ULibEnum : UBlueprintFunctionLibrary
local ULibEnum = {}

---@param EnumName FString
---@param OutStringList TArray<FText>
---@return int32
function ULibEnum:NameEnumLabel(EnumName, OutStringList) end
---@param EnumName FString
---@param OutStringList TArray<FText>
---@return int32
function ULibEnum:NameEnumDisplayName(EnumName, OutStringList) end
---@param EnumName FString
---@return int32
function ULibEnum:GetMaxEnumValue(EnumName) end
---@param EnumName FString
---@return UEnum
function ULibEnum:GetEnumType(EnumName) end
---@param EnumName FString
---@param Value int32
---@param OutString FString
function ULibEnum:GetEnumNameStringByValue(EnumName, Value, OutString) end
---@param EnumName FString
---@param Key int32
---@param OutValueName FString
function ULibEnum:GetEnumLabel(EnumName, Key, OutValueName) end
---@param EnumName FString
---@return int32
function ULibEnum:GetEnumEntryNum(EnumName) end
---@param EnumName FString
---@param Value int32
---@param OutString FString
function ULibEnum:GetEnumDisplayNameByValue(EnumName, Value, OutString) end
---@param EnumName FString
---@param Key int32
---@param OutValueName FString
function ULibEnum:GetEnumDisplayName(EnumName, Key, OutValueName) end
---@param EnumType UEnum
---@param OutStringList TArray<FString>
---@return int32
function ULibEnum:BuildEnumStrings(EnumType, OutStringList) end
---@param EnumType UEnum
---@param OutStringList TArray<FString>
---@return int32
function ULibEnum:BuildEnumNameStrings(EnumType, OutStringList) end
---@param EnumType UEnum
---@param OutStringList TArray<FText>
---@return int32
function ULibEnum:BuildEnumLabel(EnumType, OutStringList) end
---@param EnumType UEnum
---@param OutStringList TArray<FName>
---@return int32
function ULibEnum:BuildEnumFNameLabel(EnumType, OutStringList) end
---@param EnumType UEnum
---@param OutStringList TArray<FText>
---@return int32
function ULibEnum:BuildEnumDisplayName(EnumType, OutStringList) end


---@class ULibEvent : UBlueprintFunctionLibrary
local ULibEvent = {}


---@class ULibGetParam : UBlueprintFunctionLibrary
local ULibGetParam = {}

---@param OutData FVector4
---@param RowName FName
---@param LogEnable boolean
---@return boolean
function ULibGetParam:GetGameParamToVector4(OutData, RowName, LogEnable) end
---@param OutData FVector2D
---@param RowName FName
---@param LogEnable boolean
---@return boolean
function ULibGetParam:GetGameParamToVector2D(OutData, RowName, LogEnable) end
---@param OutData FVector
---@param RowName FName
---@param LogEnable boolean
---@return boolean
function ULibGetParam:GetGameParamToVector(OutData, RowName, LogEnable) end
---@param RowName FName
---@param Min int32
---@param Max int32
---@param Init int32
---@param Param int32
function ULibGetParam:GetGameParamToInt(RowName, Min, Max, Init, Param) end
---@param Min FName
---@param Max FName
---@param Init FName
---@param Param FName
---@param RowName FName
---@param LogEnable boolean
---@return boolean
function ULibGetParam:GetGameParamToFName(Min, Max, Init, Param, RowName, LogEnable) end
---@param RowName FName
---@param OutParams FVector4
function ULibGetParam:GetGameParamToFloatV4(RowName, OutParams) end
---@param RowName FName
---@param Min float
---@param Max float
---@param Init float
---@param Param float
function ULibGetParam:GetGameParamToFloat(RowName, Min, Max, Init, Param) end
---@param RowName FName
---@param Param int32
function ULibGetParam:GetGameParamOnlyToInt(RowName, Param) end
---@param RowName FName
---@return float
function ULibGetParam:GetGameParamOnlyToFloat(RowName) end
---@param OutData int32
---@param RowName FName
---@param LogEnable boolean
---@return boolean
function ULibGetParam:GetGameParamMinToInt32(OutData, RowName, LogEnable) end
---@param OutData int32
---@param RowName FName
---@param LogEnable boolean
---@return boolean
function ULibGetParam:GetGameParamMaxToInt32(OutData, RowName, LogEnable) end
---@param OutData FGuid
---@param RowName FName
---@param LogEnable boolean
---@return boolean
function ULibGetParam:GetGameParamDataToGuid(OutData, RowName, LogEnable) end
---@param OutData int32
---@param RowName FName
---@param LogEnable boolean
---@return boolean
function ULibGetParam:GetBattleParamMinToInt32(OutData, RowName, LogEnable) end
---@param OutData int32
---@param RowName FName
---@param LogEnable boolean
---@return boolean
function ULibGetParam:GetBattleParamMaxToInt32(OutData, RowName, LogEnable) end
---@param OutData FGuid
---@param RowName FName
---@param LogEnable boolean
---@return boolean
function ULibGetParam:GetBattleParamDataToGuid(OutData, RowName, LogEnable) end


---@class ULibHolyTorch : UBlueprintFunctionLibrary
local ULibHolyTorch = {}

---@param torchType EHOLY_TORCH_TYPE
function ULibHolyTorch:ReburnHolyTorch(torchType) end
---@return EHOLY_TORCH_SHINING_STATE
function ULibHolyTorch:GetShiningState() end
---@param torchType EHOLY_TORCH_TYPE
function ULibHolyTorch:BurnOutHolyTorch(torchType) end


---@class ULibImage : UBlueprintFunctionLibrary
local ULibImage = {}

---@param RenderTarget UTextureRenderTarget2D
---@param ClearColour FLinearColor
---@param outByteArray TArray<uint8>
---@return boolean
function ULibImage:SaveImageToByteArray(RenderTarget, ClearColour, outByteArray) end
---@param ByteArray TArray<uint8>
---@param Width int32
---@param Height int32
---@param IsValid boolean
---@return UTexture2D
function ULibImage:LoadImageFromByteArray(ByteArray, Width, Height, IsValid) end


---@class ULibKey : UBlueprintFunctionLibrary
local ULibKey = {}

function ULibKey:SaveInputSetting() end
---@param InAxisName FName
function ULibKey:RemoveAxisMappingByName(InAxisName) end
---@param InActionName FName
function ULibKey:RemoveActionMappingByName(InActionName) end
---@param Key FKey
---@return FName
function ULibKey:KeyToName(Key) end
---@param PlayerController APlayerController
---@param InActionName FName
---@return boolean
function ULibKey:IsInputKeyDownByActionMappings(PlayerController, InActionName) end
---@param Key FKey
---@return int32
function ULibKey:GetTypeHashFromFKey(Key) end
---@return EKeyboardLayoutType
function ULibKey:GetKeyboardLayoutType() end
---@return FString
function ULibKey:GetKeyBoardCode() end
---@param PlayerController APlayerController
---@return FKey
function ULibKey:GetInputKeyDownFKeyConfigFilter(PlayerController) end
---@param PlayerController APlayerController
---@return FKey
function ULibKey:GetInputKeyDownFKey(PlayerController) end
---@param TypeHash int32
---@return FKey
function ULibKey:GetFKeyFromTypeHash(TypeHash) end
---@return EControllerInputType
function ULibKey:GetControllerInputType() end
---@return EControllerInputType
function ULibKey:GetControllerInputCurrentType() end
function ULibKey:DebugLogTypeHashFromKey() end
function ULibKey:DebugLogCodesFromKey() end
---@param InAxisName FName
function ULibKey:DebugLogAxisMappingByName(InAxisName) end
function ULibKey:DebugLogAllAxisMapping() end
function ULibKey:DebugLogAllActionMapping() end
---@param InActionName FName
function ULibKey:DebugLogActionMappingByName(InActionName) end
---@param PlayerController APlayerController
---@return FKey
function ULibKey:CheckInputKeyDown(PlayerController) end
---@param PlayerController APlayerController
---@return boolean
function ULibKey:CheckInputAnyKeyboardKeyJustPressed(PlayerController) end
---@param InAxisName FName
---@param Key FKey
---@param Scale float
function ULibKey:AddAxisMapping(InAxisName, Key, Scale) end
---@param InActionName FName
---@param Key FKey
function ULibKey:AddActionMapping(InActionName, Key) end


---@class ULibMainScenario : UBlueprintFunctionLibrary
local ULibMainScenario = {}


---@class ULibMath : UBlueprintFunctionLibrary
local ULibMath = {}

---@param Index int32
---@param BitArray TArray<int32>
function ULibMath:ToggleBit(Index, BitArray) end
---@param Index int32
---@param BitArray TArray<int32>
function ULibMath:SetBit(Index, BitArray) end
---@param Index int32
---@param BitArray TArray<int32>
---@return boolean
function ULibMath:GetBit(Index, BitArray) end
---@param Index int32
---@param BitArray TArray<int32>
function ULibMath:ClearBit(Index, BitArray) end
---@param Value int32
---@param Shift int32
---@return int32
function ULibMath:BitShiftRight(Value, Shift) end
---@param Value int32
---@param Shift int32
---@return int32
function ULibMath:BitShiftLeft(Value, Shift) end


---@class ULibMisc : UBlueprintFunctionLibrary
local ULibMisc = {}

---@param WorldContextObject UObject
---@param classAssetId TSoftClassPtr<UObject>
---@param Transform FTransform
---@return AActor
function ULibMisc:SpawnActorByClassAssetId(WorldContextObject, classAssetId, Transform) end
---@param nameArray TArray<FName>
---@param orderArray TArray<int64>
---@param isAscending boolean
function ULibMisc:SortNameArrayInt64Order(nameArray, orderArray, isAscending) end
---@param nameArray TArray<FName>
---@param orderArray TArray<float>
---@param isAscending boolean
function ULibMisc:SortNameArrayByFloatOrder(nameArray, orderArray, isAscending) end
---@param nameArray TArray<FName>
---@param orderArray TArray<int32>
---@param isAscending boolean
function ULibMisc:SortNameArray(nameArray, orderArray, isAscending) end
---@param intArray TArray<int32>
---@param orderArray TArray<int32>
---@param isAscending boolean
function ULibMisc:SortIntArray(intArray, orderArray, isAscending) end
---@param WorldContextObject UObject
---@param bShow boolean
function ULibMisc:SetShowCollision(WorldContextObject, bShow) end
---@param Value float
function ULibMisc:SetGamma(Value) end
---@param taregtArray TArray<FName>
---@param Size int32
function ULibMisc:Reserve_NameArray(taregtArray, Size) end
---@param TargetMap TMap<int32, int32>
---@param Size int32
function ULibMisc:Reserve_Map(TargetMap, Size) end
---@param targetArray TArray<int32>
---@param Size int32
function ULibMisc:Reserve_IntArray(targetArray, Size) end
---@param Widget UWidget
function ULibMisc:ReleaseSlateResource(Widget) end
function ULibMisc:PrintBPCallstack() end
---@param ErrorType ELogErrorType
---@param Message FString
function ULibMisc:OutputMessageLog(ErrorType, Message) end
---@param ErrorType ELogErrorType
---@param Log FString
---@param TimeToDisplay float
function ULibMisc:OutputLog(ErrorType, Log, TimeToDisplay) end
---@param Log FString
---@param TimeToDisplay float
function ULibMisc:LogError(Log, TimeToDisplay) end
---@param WorldContextObject UObject
---@return boolean
function ULibMisc:IsDebugCameraRunning(WorldContextObject) end
---@param cSoftObject TSoftObjectPtr<UObject>
---@return FSoftObjectPath
function ULibMisc:GetSpriteAssetPath(cSoftObject) end
---@param WorldContextObject UObject
---@return boolean
function ULibMisc:GetShowCollision(WorldContextObject) end
---@return float
function ULibMisc:GetGamma() end
---@param AssetPath FString
---@return int32
function ULibMisc:GetDataTableRowNum(AssetPath) end
---@param Key FString
---@param bSucceeded boolean
---@return FString
function ULibMisc:GetCommandLineValue(Key, bSucceeded) end
---@param OwningPlayer APlayerController
---@param classAssetId TSoftClassPtr<UObject>
---@return UUserWidget
function ULibMisc:CreateUserWidgetByClassAssetId(OwningPlayer, classAssetId) end
---@param cSelf AActor
---@param cActorComponentClass UClass
---@return UActorComponent
function ULibMisc:AddActorComponent(cSelf, cActorComponentClass) end


---@class ULibReflection : UBlueprintFunctionLibrary
local ULibReflection = {}


---@class ULibSound : UBlueprintFunctionLibrary
local ULibSound = {}

---@param currentBattleBgmLabel FName
---@param jingleBgmLabel FName
---@return FName
function ULibSound:ReplaceBattleResultBgmByCondition(currentBattleBgmLabel, jingleBgmLabel) end
---@param BgmLabel FName
---@return FName
function ULibSound:ReplaceBattleBgmByCondition(BgmLabel) end
---@param SELabel FName
---@return boolean
function ULibSound:PlaySeByLabel(SELabel) end
---@return boolean
function ULibSound:IsCheckNormalMapInOverAllChapterAndBgmNull() end
---@param CompType EKSAudioComponentType
---@return boolean
function ULibSound:IsAtomPlaying(CompType) end
---@param rLevelInfo FLevelInfoData
---@param bCheckReserveTimeZone boolean
---@param forceNonDarkening boolean
---@return FName
function ULibSound:CheckShouldPlayBgm(rLevelInfo, bCheckReserveTimeZone, forceNonDarkening) end


---@class ULibString : UBlueprintFunctionLibrary
local ULibString = {}

---@param TargetArrayRef TArray<FText>
---@param IsDescending boolean
function ULibString:SortFText(TargetArrayRef, IsDescending) end
---@param SourceString FString
---@param RegexString FString
---@param To FString
---@return FString
function ULibString:ReplaceFStringWithRegex(SourceString, RegexString, To) end
---@param SourceArray TArray<FText>
---@param Separator FString
---@return FString
function ULibString:JoinFTextArray(SourceArray, Separator) end
---@param SourceArray TArray<FName>
---@param Separator FString
---@param IsIgnoreNone boolean
---@return FString
function ULibString:JoinFNameArray(SourceArray, Separator, IsIgnoreNone) end


---@class ULibTutorial : UBlueprintFunctionLibrary
local ULibTutorial = {}

---@param Type ETUTORIAL_TYPE
function ULibTutorial:SetTutorialFinishFlag(Type) end
---@param Type ETUTORIAL_TYPE
---@param ForceOpen boolean
---@param CharaID int32
---@param CloseFinishCallback FOpenTutorialWithCloseCallbackCloseFinishCallback
---@param IsOpen boolean
function ULibTutorial:OpenTutorialWithCloseCallback(Type, ForceOpen, CharaID, CloseFinishCallback, IsOpen) end
---@param Type ETUTORIAL_TYPE
---@param ForceOpen boolean
---@param CharaID int32
---@param IsOpen boolean
function ULibTutorial:OpenTutorial(Type, ForceOpen, CharaID, IsOpen) end
---@return boolean
function ULibTutorial:IsRunningTutorial() end
---@param CharaID int32
---@return boolean
function ULibTutorial:CheckProlouge(CharaID) end
---@param CharaID int32
---@return boolean
function ULibTutorial:CheckMultiStory(CharaID) end
---@param CharaID int32
---@return boolean
function ULibTutorial:CheckMerchant(CharaID) end
---@param CharaID int32
---@return boolean
function ULibTutorial:CheckCoupling_Sin(CharaID) end
---@param CharaID int32
---@return boolean
function ULibTutorial:CheckCoupling_Odo(CharaID) end
---@param CharaID int32
---@return boolean
function ULibTutorial:CheckCoupling_Kus(CharaID) end
---@param CharaID int32
---@return boolean
function ULibTutorial:CheckCoupling_Gak(CharaID) end


---@class ULibUI : UBlueprintFunctionLibrary
local ULibUI = {}

---@param CurrentTime float
---@param MaxTime float
function ULibUI:UpdateProgress(CurrentTime, MaxTime) end
---@param hideUser EWIDGET_TEMPORARY_HIDE_USER
function ULibUI:TurnOffTemporaryHiddenFlag(hideUser) end
function ULibUI:TemporaryCloseActionPopup() end
---@param Type EKSUIKind
---@param Visible ESlateVisibility
function ULibUI:SetWidgetVisible(Type, Visible) end
---@param isPause boolean
function ULibUI:SetWidgetPaused(isPause) end
---@param Enable boolean
function ULibUI:SetSupportAbilityMenuEnable(Enable) end
---@param ForceHidden boolean
function ULibUI:SetRadarForceHidden(ForceHidden) end
---@param letterWidget ULetterBoxBase
function ULibUI:SetLetterBoxWidget(letterWidget) end
---@param Enable boolean
function ULibUI:SetJobMenuEnable(Enable) end
---@param IsOpening boolean
function ULibUI:SetIsOpeningPartyChatNotification(IsOpening) end
---@param Widget UUserWidget
function ULibUI:SetHelpWindowPositionByWidget(Widget) end
---@param NewPosition FVector2D
function ULibUI:SetHelpWindowPosition(NewPosition) end
---@param Offset FVector2D
function ULibUI:SetHelpWindowOffset(Offset) end
---@param Enable boolean
function ULibUI:SetAbilityMenuEnable(Enable) end
function ULibUI:ResetMapNameNotification() end
function ULibUI:ReOpenSubTitle() end
function ULibUI:ReOpenGuildMenu() end
function ULibUI:ReOpenEnterActionPopup() end
---@param RegionName FName
---@param MapName FName
---@param EncounterLevel int32
---@param DangerLevel int32
---@param IsOpenKeep boolean
---@param EmblemTexture UTexture
---@param NotificationFormat FName
function ULibUI:PushMapNameNotification(RegionName, MapName, EncounterLevel, DangerLevel, IsOpenKeep, EmblemTexture, NotificationFormat) end
---@param PageData TArray<FDataTableTutorialPageData>
---@param Type ETUTORIAL_TYPE
---@param UITutorial UUITutorialBase
---@param IsEndCard boolean
---@param IsEpilouge boolean
function ULibUI:OpenTutorialUI(PageData, Type, UITutorial, IsEndCard, IsEpilouge) end
---@param SubTitleLabel FName
---@param RequestEvent boolean
---@param AfterEventLabel FName
function ULibUI:OpenSubTitle(SubTitleLabel, RequestEvent, AfterEventLabel) end
---@param TitleLabel FName
---@param FormatTextLabel FName
function ULibUI:OpenStoryNotificationSubStory(TitleLabel, FormatTextLabel) end
---@param MainStoryLabel FName
---@param TitleLabel FName
---@param FormatTextLabel FName
function ULibUI:OpenStoryNotificationMarchant(MainStoryLabel, TitleLabel, FormatTextLabel) end
---@param MainStoryLabel FName
---@param TitleLabel FName
---@param FormatTextLabel FName
function ULibUI:OpenStoryNotificationCoupling(MainStoryLabel, TitleLabel, FormatTextLabel) end
---@param ResourceLabel FName
function ULibUI:OpenScreenCaputreWithTexture(ResourceLabel) end
---@param PlayNoice boolean
function ULibUI:OpenScreenCapture(PlayNoice) end
---@param SaveMode boolean
---@param FromDebugMenu boolean
function ULibUI:OpenSaveLoadMenu(SaveMode, FromDebugMenu) end
---@return UPartySplitWidgetBase
function ULibUI:OpenPartySplitWidget() end
---@return UMusicPlayerWidget
function ULibUI:OpenMusicPlayer() end
function ULibUI:OpenMissionRecord() end
---@return UKSPartySplitWidgetBase
function ULibUI:OpenKSPartySplitWidget() end
---@param Offset FVector2D
function ULibUI:OpenHelpWindowWithOffset(Offset) end
function ULibUI:OpenHelpWindow() end
---@param guildLabel FName
---@param IsOpen boolean
function ULibUI:OpenGuildMenu(guildLabel, IsOpen) end
---@param targetNpc AKSCharacterBase
function ULibUI:OpenFieldCommandPreviewMenu(targetNpc) end
---@param targetNpc AKSCharacterBase
---@param DrawLeft boolean
---@param CommandList TArray<MJFieldCommandType>
function ULibUI:OpenFieldCommandMenu(targetNpc, DrawLeft, CommandList) end
---@param TargetChara AKSCharacterBase
---@param CommandList TArray<MJFieldCommandType>
---@return boolean
function ULibUI:OpenFieldCommandJudge(TargetChara, CommandList) end
---@param TargetActor AActor
---@param ActionTextLabel FName
function ULibUI:OpenEnterActionPopup(TargetActor, ActionTextLabel) end
---@return UDiseaseListWidget
function ULibUI:OpenDiseaseListUI() end
---@param SpActMerchantResult FSpActMerchantResult
---@param bIsFast boolean
function ULibUI:OpenBusinessWithNpcNotificationAnimal(SpActMerchantResult, bIsFast) end
---@param SpActMerchantResult FSpActMerchantResult
---@param bIsFast boolean
function ULibUI:OpenBusinessWithNpcNotification(SpActMerchantResult, bIsFast) end
---@return boolean
function ULibUI:IsRunningPartySplitWidget() end
---@return boolean
function ULibUI:IsRunningMusicPlayer() end
---@return boolean
function ULibUI:IsRunningKSPartySplitWidget() end
---@return boolean
function ULibUI:IsRunningFieldCommandPreviewMenu() end
---@return boolean
function ULibUI:IsOpeningGuildMenu() end
---@return boolean
function ULibUI:IsMainMenuFastWorldMapMode() end
---@return boolean
function ULibUI:IsActiveSubTitle() end
---@param isHide boolean
---@param hideUser EWIDGET_TEMPORARY_HIDE_USER
function ULibUI:HideWidgetTemporary(isHide, hideUser) end
---@param Target UPaperSprite
---@return UTexture2D
function ULibUI:GetSourceTextureFromPaperSprite(Target) end
---@return boolean
function ULibUI:GetNoiceFinish() end
---@return ULetterBoxBase
function ULibUI:GetLetterBoxWidget() end
---@return EPARTY_SPLIT_CLOSE_REASON
function ULibUI:GetKSPartySplitWidgetCloseReason() end
---@return boolean
function ULibUI:GetGuildReOpenFlag() end
---@return boolean
function ULibUI:GetFCMenuUniqueCommandFlow() end
---@return boolean
function ULibUI:GetFCMenuInputEnableMode() end
---@return boolean
function ULibUI:GetEnableSafetyBalloon() end
---@return FName
function ULibUI:GetAfterEventLabel() end
---@param Val boolean
function ULibUI:Debug_SetIsForceHideQuitGameMenu(Val) end
---@param Val boolean
function ULibUI:Debug_SetIsForceAvailableTrialData(Val) end
---@param Enable boolean
function ULibUI:Debug_SetEnableSafetyBalloon(Enable) end
---@return boolean
function ULibUI:Debug_GetIsForceHideQuitGameMenu() end
---@return boolean
function ULibUI:Debug_GetIsForceAvailableTrialData() end
---@param IsNext boolean
function ULibUI:CloseSubTitle(IsNext) end
function ULibUI:CloseScreenCapture() end
function ULibUI:ClosePartySplitWidget() end
function ULibUI:CloseMusicPlayer() end
function ULibUI:CloseKSPartySplitWidget() end
---@param OpenJudgeWindow boolean
function ULibUI:CloseFieldCommandPreviewMenu(OpenJudgeWindow) end
---@param OpenJudgeWindow boolean
---@param StateCheck boolean
function ULibUI:CloseFieldCommandMenu(OpenJudgeWindow, StateCheck) end
function ULibUI:CloseEnterActionPopup() end
function ULibUI:CloseDiseaseListUI() end
---@param bIsFast boolean
function ULibUI:CloseBusinessWithNpcNotification(bIsFast) end
---@return boolean
function ULibUI:CanMainMenuOpen() end
---@return boolean
function ULibUI:CanMainMenuClose() end
function ULibUI:ApplyLetterBoxSize() end


---@class ULibVibration : UBlueprintFunctionLibrary
local ULibVibration = {}

---@return boolean
function ULibVibration:GetDefaultVibrationEnable() end


---@class ULinerShipUtility : UDataTableUtilityBase
local ULinerShipUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param outRouteData FLinerShipRouteData
---@param routeLabel FName
function ULinerShipUtility:GetRouteDataByLabel(returnCode, outRouteData, routeLabel) end
---@param outRouteData TArray<FLinerShipRouteData>
---@param levelName FName
---@param swapLevelAB boolean
function ULinerShipUtility:GetAllRouteDataInTown(outRouteData, levelName, swapLevelAB) end


---@class UListCharacterWidgetBase : UKSUserWidgetWithState
local UListCharacterWidgetBase = {}

---@param IsAddFriendMode boolean
---@param NewCharacterID EPlayableCharacterID
---@return boolean
function UListCharacterWidgetBase:SetupJoinNewMember(IsAddFriendMode, NewCharacterID) end
---@param IsRefreshPartyCharacter boolean
function UListCharacterWidgetBase:SetIsRefreshPartyCharacter(IsRefreshPartyCharacter) end
---@param IsBar boolean
function UListCharacterWidgetBase:SetIsOpenInBar(IsBar) end
---@param IsIgnoreFade boolean
function UListCharacterWidgetBase:SetIsIgnoreFadeOnCloseWidget(IsIgnoreFade) end
---@return UOverlay
function UListCharacterWidgetBase:GetPartyPanelRool() end
---@return UOverlay
function UListCharacterWidgetBase:GetMenuFooterRoot() end


---@class UListItemDetailWidgetBase : UUserWidget
local UListItemDetailWidgetBase = {}

function UListItemDetailWidgetBase:Show() end
function UListItemDetailWidgetBase:Hide() end


---@class UListItemWidget_Opt_Base : UMJListItemWidget
---@field m_OptionItemData FOptionItemData
local UListItemWidget_Opt_Base = {}

---@param currentResolution FIntPoint
---@return boolean
function UListItemWidget_Opt_Base:SetupWindowResolution(currentResolution) end
---@param Enable boolean
function UListItemWidget_Opt_Base:SetSpacerEnable(Enable) end
---@param OptionItemData FOptionItemData
function UListItemWidget_Opt_Base:SetOptionItemData(OptionItemData) end
function UListItemWidget_Opt_Base:RefreshUI() end
---@return boolean
function UListItemWidget_Opt_Base:RefreshGuideData() end
---@return FOptionItemData
function UListItemWidget_Opt_Base:GetOptionItemData() end


---@class ULoadAssetHandle : UObject
---@field LoadedObjects TArray<UObject>
local ULoadAssetHandle = {}

function ULoadAssetHandle:CallLoadFinish() end
---@param LoadedObjects TArray<UObject>
function ULoadAssetHandle:Callback(LoadedObjects) end


---@class ULoadCharaAssetQueue : UObject
---@field m_FlipbookResources TArray<UObject>
local ULoadCharaAssetQueue = {}

function ULoadCharaAssetQueue:CallbackLoadResource() end
---@param loadObjList TArray<UObject>
function ULoadCharaAssetQueue:CallbackLoadFlipbook(loadObjList) end


---@class UMJBillboardComponent : USceneComponent
---@field m_pCineCamComp UCameraComponent
local UMJBillboardComponent = {}



---@class UMJGameViewportClient : UGameViewportClient
local UMJGameViewportClient = {}


---@class UMJLevelSet : ULevelSet
local UMJLevelSet = {}


---@class UMJListItemWidget : UKSListItemWidgetBase
---@field RefText_Col1 UKSTextBlock
---@field RefText_Col2 UKSTextBlock
---@field RefText_Col3 UKSTextBlock
---@field RefText_Unit UKSTextBlock
---@field RefIcon_Cursor UImage
---@field RefIcon_Item UImage
---@field RefIcon_Item_0 UImage
---@field RefImg_StrikeThrough UImage
---@field RefImg_BackGround UImage
---@field RefFixedIcon UImage
---@field RefVBox_Detail UVerticalBox
---@field RefColumnExtension UHorizontalBox
---@field RefTitle UVerticalBox
---@field RefAnim_Focus UWidgetAnimation
---@field RefAnim_OutFocus UWidgetAnimation
---@field RefAnim_Decide UWidgetAnimation
---@field RefAnim_DisableFocus UWidgetAnimation
---@field RefAnim_DisableOutFocus UWidgetAnimation
---@field DefaultBackColor FLinearColor
---@field DefaultTextColor FLinearColor
---@field DefaultVisibility boolean
---@field IsFirstSetup boolean
---@field RefSpacer UUserWidget
---@field RefDivider UUserWidget
---@field RefRankWidget URankWidgetBase
---@field TextCol_Enable FLinearColor
---@field TextCol_Disable FLinearColor
---@field IconCol_Enable FLinearColor
---@field IconCol_Disable FLinearColor
---@field CurrentAnimation UWidgetAnimation
---@field IndxInAll int32
---@field ShowUnit boolean
---@field ColumnExtension UUserWidget
---@field TextCol2_Dark boolean
---@field itemStatus ELIST_ITEM_STATUS
---@field ResetToDefaultAnimDisable UWidgetAnimation
local UMJListItemWidget = {}

---@param StrikeThrough boolean
function UMJListItemWidget:UpdateCheckIcon(StrikeThrough) end
function UMJListItemWidget:StopAnim() end
---@param itemmData FMJListWidgetItemData
---@param unitType ELIST_NUM_UNIT_TYPE
---@param success boolean
function UMJListItemWidget:Setup(itemmData, unitType, success) end
---@param titleWidget UUserWidget
function UMJListItemWidget:SetTitleWidget(titleWidget) end
---@param TextLabel FName
function UMJListItemWidget:SetTextToColumn1(TextLabel) end
---@param Color FSlateColor
function UMJListItemWidget:SetTextColor(Color) end
---@param spacerType ELIST_ITEM_NEXT_SPACE
function UMJListItemWidget:SetSpacer(spacerType) end
---@param ShiningFlag boolean
function UMJListItemWidget:SetShining(ShiningFlag) end
---@param unitType ELIST_NUM_UNIT_TYPE
function UMJListItemWidget:SetNumUnit(unitType) end
---@param itemTexture UTexture2D
---@param Name FText
---@param Value_0 FText
---@param Value_1 FText
---@param rankNum int32
---@param Detail FText
---@param Status ELIST_ITEM_STATUS
function UMJListItemWidget:SetItemDataIsRank(itemTexture, Name, Value_0, Value_1, rankNum, Detail, Status) end
---@param iconTex UTexture2D
---@param iconTex0 UTexture2D
---@param Name FText
---@param value0 FText
---@param value1 FText
---@param Detail FText
---@param Status ELIST_ITEM_STATUS
function UMJListItemWidget:SetItemData(iconTex, iconTex0, Name, value0, value1, Detail, Status) end
---@param Color FSlateColor
function UMJListItemWidget:SetIconColor(Color) end
---@param Tex UTexture2D
function UMJListItemWidget:SetFixedIcon(Tex) end
---@param detailWidget UListItemDetailWidgetBase
function UMJListItemWidget:SetDetailWidget(detailWidget) end
---@param Dark boolean
function UMJListItemWidget:SetDarkToTextCol2(Dark) end
---@param IsVisible boolean
function UMJListItemWidget:SetCursorVisibility(IsVisible) end
---@param extensionWidget UUserWidget
function UMJListItemWidget:SetColumnExWidget(extensionWidget) end
---@param newPram ELIST_ITEM_STATUS
function UMJListItemWidget:SetColorByStatus(newPram) end
---@param iconTex UTexture2D
function UMJListItemWidget:SetCol1Icon(iconTex) end
function UMJListItemWidget:RemoveDetailWidget() end
function UMJListItemWidget:RemoveColumnExWidget() end
---@param anim UWidgetAnimation
---@param isFast boolean
function UMJListItemWidget:PlayAnim(anim, isFast) end
---@param isFast boolean
function UMJListItemWidget:OutFocus(isFast) end
---@param success boolean
function UMJListItemWidget:InitInstance(success) end
---@param indexInAll int32
---@param showColumn2 boolean
---@param showColumn3 boolean
---@param itemStatus ELIST_ITEM_STATUS
---@param StrikeThrough boolean
function UMJListItemWidget:Init(indexInAll, showColumn2, showColumn3, itemStatus, StrikeThrough) end
---@return int32
function UMJListItemWidget:GetItemIndexAll() end
---@return float
function UMJListItemWidget:GetHeight() end
---@return FVector2D
function UMJListItemWidget:GetCursorRelativePosition() end
---@return UUserWidget
function UMJListItemWidget:GetColumnExWidget() end
---@param isFast boolean
function UMJListItemWidget:Focus(isFast) end
function UMJListItemWidget:FirstSetup() end
function UMJListItemWidget:Decide() end


---@class UMJRichTextBlock : URichTextBlock
---@field m_Language EKSLanguage
---@field bOverrideFontSize boolean
---@field OverrideDefaultFontSize int32
---@field bOverrideDefaultFontColor boolean
---@field OverrideDefaultFontColor FLinearColor
---@field bOverrideDefaultOutlineSize boolean
---@field OverrideDefaultOutLineSize int32
---@field bOverrideDefaultOutlineColor boolean
---@field OverrideOutlineColor FLinearColor
---@field bOverrideDefaultShadowColor boolean
---@field OverrideShadowColor FLinearColor
---@field bBanOverrideStyle boolean
---@field m_bUpdateOutlineSize boolean
---@field m_bOutlineCalcRoundingDown boolean
local UMJRichTextBlock = {}

function UMJRichTextBlock:UpdateFontOutlineSize() end
---@param InText FText
function UMJRichTextBlock:SetMJText(InText) end
---@param forceRefresh boolean
---@return boolean
function UMJRichTextBlock:RefreshFontSet(forceRefresh) end
function UMJRichTextBlock:OverrideDefaultStyleParameter() end


---@class UMJSaveData : USaveGame
---@field BitFlag TArray<int32>
---@field EventPlayedFlag TArray<int32>
---@field EventValueParam TArray<int32>
---@field EventCounter TArray<int32>
---@field PlayerLocation FPlayerLocation
---@field ladderUpPos FVector
---@field ladderDownPos FVector
---@field ladderMovePos FVector
---@field TimeZoneData FTimeZoneSaveData
---@field Voice EKSLanguage
---@field PreparationKnown TArray<boolean>
---@field IsTressaInParty boolean
---@field TotalMoneyByTressa int32
---@field LearnAbilityList TArray<int32>
---@field TameMonsterList TArray<FTameMonsterData>
---@field LegendMonsterList TArray<FTameMonsterData>
---@field HunterPartner int32
---@field TameMonsterMode uint8
---@field SubMissionOrder TArray<int32>
---@field PartyChatSaveData TMap<int32, FPartyChatSaveData>
---@field MapChangeHistory TArray<int32>
---@field LevelChangeCounterForFinalChapterHintPartyChat int32
---@field FixedFieldBgmMainStoryTaskIdTable TMap<int32, int32>
---@field LastBgmID int32
---@field FirstSelectCharacterID int32
---@field ParticipationOrderCharacterID TArray<int32>
---@field IsRadarMapVisible boolean
---@field SupportAilmentSwitch TArray<boolean>
---@field ShowMapIcon TArray<int32>
---@field VisitedMap TArray<int32>
---@field VisitedWorldMapMaskArea TArray<int32>
---@field VisitedWorldMapPrologueMaskArea TArray<int32>
---@field VisitedWorldMapIslandLayerArea TArray<int32>
---@field EnableSwitchIndoorTrigger TArray<int32>
---@field PlayingReminiscenceId int32
---@field ReminiscenceCharaId int32
---@field CurrentPartySet EKSPartySet
---@field PlayerParty FPlayerParty
---@field BackupMainMemberId TArray<int32>
---@field BackupSubMemberId TArray<int32>
---@field PlayerBackpack FPlayerBackpack
---@field ItemAcquitisionHistory FItemAcquisitionHistory
---@field FollowNpcSaveData TArray<FSaveFollowNpcData>
---@field FollowWaitingNpcSaveData TArray<FSaveFollowNpcData>
---@field BackupFollowNpcList TArray<FSaveFollowNpcData>
---@field BackupFollowWaitingNpcList TArray<FSaveFollowNpcData>
---@field PlayerParty_Set1 FPlayerParty
---@field PlayerParty_Set2 FPlayerParty
---@field PlayerParty_Set3 FPlayerParty
---@field PlayerParty_Set4 FPlayerParty
---@field PlayerParty_Set5 FPlayerParty
---@field LastAtlantisPartySet TArray<int32>
---@field BackupMoney FReminiscenceBufferMoney
---@field BackupItem FReminiscenceBufferItem
---@field BackupEquipment FReminiscenceBufferEquipment
---@field BackupJob FReminiscenceBufferJob
---@field BackupAbility FReminiscenceBufferAbility
---@field BackupExp FReminiscenceBufferExp
---@field BackupJP FReminiscenceBufferJP
---@field BackupDopingParam FReminiscenceBufferDopingParam
---@field BackupLearnAbility FReminiscenceBufferLearnAbility
---@field BackupFollowNpc FReminiscenceBufferFollowNpc
---@field BackupTameMonster FReminiscenceBufferTameMonster
---@field BackupTimeZone FReminiscenceBufferTimeZone
---@field BackupPOT FReminiscenceBufferPOT
---@field DifficultyPoint int32
---@field BackupDifficultyPoint int32
---@field BackupCurrentHP TArray<int32>
---@field BackupCurrentSP TArray<int32>
---@field ReminiPlayerLocation FPlayerLocation
---@field ReminiCameraLockPos FVector
---@field ReminiCameraLockLvTrigId uint8
---@field ReminiRestoreData FReminiscenceRestorePlacement
---@field PlayerMember TArray<FSavePlayerCharacterData>
---@field Endroll_BattleReplayData TArray<FBattleReplayData>
---@field Endroll_ClearedMS TArray<int32>
---@field BattleHelpWindowOpen boolean
---@field CurrentEncountTriggerID int32
---@field BattleSpeedStep int32
---@field TownData TMap<int32, FTownData>
---@field MenuData FMenuData
---@field EnemyInfoData TMap<int32, FSaveEnemyData>
---@field CameraLockPos FVector
---@field GamePlaySecond int32
---@field equipEncountRevision int32
---@field SubMissionData TArray<FSaveMissionData>
---@field MapData TMap<int32, FMapData>
---@field RevivalObjectSaveData TArray<FRevivalObjectSaveData>
---@field MoveMode EKSCharacterMoveMode
---@field EquipLanternData FEquipLanternData
---@field NPCEventList TMap<int32, FNpcEventData>
---@field SoldOutShopItemDataList TMap<int32, FSoldOutShopItemData>
---@field NPCSpawnStartDelayCountList TMap<int32, int8>
---@field NPCSpawnEndDelayCountList TMap<int32, int8>
---@field NPCTZCangeSwoonRevivalCountList TMap<int32, int8>
---@field CameraLockCurrentLevelTriggerID uint8
---@field CameraLockCurrentLevelID int32
---@field MainStoryData TArray<FMainStorySaveData>
---@field MainStoryTaskData TMap<int32, FMainStoryTaskSaveData>
---@field AutoInterruptMainStory int32
---@field AutoInterruptMainStory_Prologue int32
---@field ExtraStoryProgress TArray<int32>
---@field AchievementSaveData FAchievementSaveData
---@field GuildData TArray<FSaveDataGuild>
---@field SubTitleData TArray<FSaveDataSubTitle>
---@field MyShipCustom TArray<int32>
---@field MyShipCustomFirstChoice TArray<int32>
---@field LevelDarkState int32
---@field LostWayCount int32
---@field HolyTorchState TArray<int32>
---@field TutorialCanDisplayFlag int32
---@field ChallengeBattleStatus FChallengeBattleStatus
local UMJSaveData = {}

---@param Index int32
function UMJSaveData:ToggleBitFlag(Index) end
---@param eLang EKSLanguage
function UMJSaveData:SetVoice(eLang) end
---@param SetBit boolean
---@param Index int32
function UMJSaveData:SetVisitedMap(SetBit, Index) end
function UMJSaveData:SetupOnStartReminiscence() end
---@param fixedCharaList TArray<EPlayableCharacterID>
---@return boolean
function UMJSaveData:SetupFixedParty(fixedCharaList) end
---@param CharacterID int32
function UMJSaveData:SetupBackpackAndMoneyToInitial(CharacterID) end
---@param reminisceceId int32
---@return boolean
function UMJSaveData:SetupBackpackAndEquipmentForReminiscence(reminisceceId) end
---@param TimeZoneData FTimeZoneSaveData
function UMJSaveData:SetTimeZoneData(TimeZoneData) end
---@param Mode ETameMonsterMode
function UMJSaveData:SetTameMonsterMode(Mode) end
---@param NewTameMonsterList TArray<FTameMonsterData>
function UMJSaveData:SetTameMonsterList(NewTameMonsterList) end
---@param StartSelect int32
function UMJSaveData:SetSubMissionRecordStartSelect(StartSelect) end
---@param SetBit boolean
---@param Index int32
function UMJSaveData:SetShowMapIcon(SetBit, Index) end
---@param EnemyID int32
---@param SaveEnemyData FSaveEnemyData
function UMJSaveData:SetSaveEnemyData(EnemyID, SaveEnemyData) end
---@param CharacterID int32
function UMJSaveData:SetReminiscenceCharacterId(CharacterID) end
---@param levelId int32
---@param LevelTriggerID uint8
function UMJSaveData:SetRecentCameraLockLevelTrigger(levelId, LevelTriggerID) end
---@param bVisible boolean
function UMJSaveData:SetRadarMapVisible(bVisible) end
---@param reminiscenceId int32
function UMJSaveData:SetPlayingReminiscenceId(reminiscenceId) end
---@param Location FPlayerLocation
function UMJSaveData:SetPlayerLocationBeforeReminiscence(Location) end
---@param PlayerLocation FPlayerLocation
function UMJSaveData:SetPlayerLocation(PlayerLocation) end
---@param SwitchList TArray<boolean>
function UMJSaveData:SetPartySupportAilmentSwitch(SwitchList) end
---@param IDList TArray<int32>
function UMJSaveData:SetParticipationOrderCharacterID(IDList) end
---@param NewNPCEventList TMap<int32, FNpcEventData>
function UMJSaveData:SetNPCEventList(NewNPCEventList) end
---@param Mode EKSCharacterMoveMode
function UMJSaveData:SetMoveMode(Mode) end
---@param MapID int32
function UMJSaveData:SetMapChangeHistory(MapID) end
---@param SetPoint int32
---@return int32
function UMJSaveData:SetMainProgressPoint(SetPoint) end
---@param StartSelect int32
function UMJSaveData:SetMainMissionRecordStartSelect(StartSelect) end
---@param NewLegendMonsterList TArray<FTameMonsterData>
function UMJSaveData:SetLegendMonsterList(NewLegendMonsterList) end
---@param Index int32
---@param AbilitySetID int32
function UMJSaveData:SetLearnAbility(Index, AbilitySetID) end
---@param ID int32
function UMJSaveData:SetLastBgmId(ID) end
---@param ladderUpPos FVector
---@param ladderDownPos FVector
---@param ladderMovePos FVector
function UMJSaveData:SetLadderPosition(ladderUpPos, ladderDownPos, ladderMovePos) end
---@param battleType EChallengeBattleType
---@param Val boolean
function UMJSaveData:SetIsClearChallengeBattle(battleType, Val) end
---@param Second int32
function UMJSaveData:SetGamePlaySecond(Second) end
---@param StartSelect int32
function UMJSaveData:SetExtraMissionRecordStartSelect(StartSelect) end
---@param Index int32
---@param Value int32
function UMJSaveData:SetEventValueParam(Index, Value) end
---@param Index int32
---@param Flag boolean
function UMJSaveData:SetEventtPlayedFlag(Index, Flag) end
---@param Index int32
---@param Value int32
---@return int32
function UMJSaveData:SetEventCounter(Index, Value) end
---@param Equip FEquipLanternData
function UMJSaveData:SetEquipLanternData(Equip) end
---@param equipEncountRevision int32
function UMJSaveData:SetEquipEncountRevision(equipEncountRevision) end
---@param list TArray<int32>
function UMJSaveData:SetEnableSwitchIndoorTriggerList(list) end
---@param SetPoint int32
---@return int32
function UMJSaveData:SetDifficultyPoint(SetPoint) end
---@param partySet EKSPartySet
function UMJSaveData:SetCurrentPartySet(partySet) end
---@param TriggerID int32
function UMJSaveData:SetCurrentEncountTriggerID(TriggerID) end
---@param Pos FVector
function UMJSaveData:SetCameraLockPos(Pos) end
---@param CameraLockPos FVector
---@param TriggerID uint8
function UMJSaveData:SetCameraLockBeforeReminiscence(CameraLockPos, TriggerID) end
---@param inStart int32
---@param inEnd int32
---@param Flag boolean
function UMJSaveData:SetBitFlagRange(inStart, inEnd, Flag) end
---@param IndexArray TArray<int32>
---@param Flag boolean
function UMJSaveData:SetBitFlagArray(IndexArray, Flag) end
---@param Index int32
---@param Flag boolean
function UMJSaveData:SetBitFlag(Index, Flag) end
---@param Value int32
function UMJSaveData:SetBattleSpeedStep(Value) end
---@param Open boolean
function UMJSaveData:SetBattleHelpWindowOpen(Open) end
---@return boolean
function UMJSaveData:ResumePartySetAfterAtlantis() end
function UMJSaveData:RestoreOriginalData() end
function UMJSaveData:RestoreDifficultyPoint() end
---@return boolean
function UMJSaveData:ResetPartySetToSet1() end
---@return boolean
function UMJSaveData:PreparePartySetBeforeAtlantis() end
function UMJSaveData:MergeReminiscenceData() end
function UMJSaveData:MergeDifficultyPoint() end
---@param CharacterID EPlayableCharacterID
---@param OutResult boolean
---@param outIsAddMainMember boolean
function UMJSaveData:JoinPlayerCharacterToParty(CharacterID, OutResult, outIsAddMainMember) end
---@return boolean
function UMJSaveData:IsRadarVisible() end
function UMJSaveData:InitTownConnectionValue() end
function UMJSaveData:InitTimezone() end
---@param mainMember TArray<int32>
---@param subMember TArray<int32>
function UMJSaveData:InitPlayerParty(mainMember, subMember) end
function UMJSaveData:InitPlayerMembers() end
function UMJSaveData:InitNewGameData() end
function UMJSaveData:InitFollowNPC() end
function UMJSaveData:InitEndroll() end
function UMJSaveData:InitBackpackAndMoneyBuffer() end
---@return EKSLanguage
function UMJSaveData:GetVoice() end
---@param Index int32
---@return boolean
function UMJSaveData:GetVisitedMap(Index) end
---@return FTimeZoneSaveData
function UMJSaveData:GetTimeZoneData() end
---@return ETameMonsterMode
function UMJSaveData:GetTameMonsterMode() end
---@return TArray<FTameMonsterData>
function UMJSaveData:GetTameMonsterList() end
---@return TArray<FSaveDataSubTitle>
function UMJSaveData:GetSubTitleData() end
---@return int32
function UMJSaveData:GetSubMissionRecordStartSelect() end
---@return TMap<int32, FSoldOutShopItemData>
function UMJSaveData:GetSoldOutShopitemDataList() end
---@param Index int32
---@return boolean
function UMJSaveData:GetShowMapIcon(Index) end
---@param EnemyID int32
---@return FSaveEnemyData
function UMJSaveData:GetSaveEnemyData(EnemyID) end
---@return TArray<FRevivalObjectSaveData>
function UMJSaveData:GetRevivalObjectSaveData() end
---@return int32
function UMJSaveData:GetReminiscenceCharacterId() end
---@return uint8
function UMJSaveData:GetRecentCameraLockLevelTriggerID() end
---@return int32
function UMJSaveData:GetRecentCameraLockLevelID() end
---@return int32
function UMJSaveData:GetPlayingReminiscenceId() end
---@param partySet EKSPartySet
---@return FPlayerParty
function UMJSaveData:GetPlayerPartySet(partySet) end
---@return FPlayerParty
function UMJSaveData:GetPlayerParty() end
---@return TArray<FSavePlayerCharacterData>
function UMJSaveData:GetPlayerMember() end
---@return FPlayerLocation
function UMJSaveData:GetPlayerLocationBeforeReminiscence() end
---@return FPlayerLocation
function UMJSaveData:GetPlayerLocation() end
---@return TArray<FSaveBackPackItem>
function UMJSaveData:GetPlayerBackpackItemList() end
---@return TArray<boolean>
function UMJSaveData:GetPartySupportAilmentSwitch() end
---@return TArray<int32>
function UMJSaveData:GetParticipationOrderCharacterID() end
---@return TMap<int32, FNpcEventData>
function UMJSaveData:GetNPCEventList() end
---@return EKSCharacterMoveMode
function UMJSaveData:GetMoveMode() end
---@return TArray<int32>
function UMJSaveData:GetMapChangeHistory() end
---@return TMap<int32, FMainStoryTaskSaveData>
function UMJSaveData:GetMainStoryTaskSaveData() end
---@return TArray<FMainStorySaveData>
function UMJSaveData:GetMainStory() end
---@return int32
function UMJSaveData:GetMainProgressPoint() end
---@return int32
function UMJSaveData:GetMainMissionRecordStartSelect() end
---@return int32
function UMJSaveData:GetLevelChangeCounterForFinalChapterHintPartyChat() end
---@return TArray<FTameMonsterData>
function UMJSaveData:GetLegendMonsterList() end
---@return TArray<int32>
function UMJSaveData:GetLearnAbility() end
---@return int32
function UMJSaveData:GetLastPlayedBgmID() end
---@param outLadderUpPos FVector
---@param outLadderDownPos FVector
---@param outLadderMovePos FVector
function UMJSaveData:GetLadderPosition(outLadderUpPos, outLadderDownPos, outLadderMovePos) end
---@param battleType EChallengeBattleType
---@return boolean
function UMJSaveData:GetIsClearChallengeBattle(battleType) end
---@return boolean
function UMJSaveData:GetIsClearAllChallengeBattle() end
---@return TArray<FSaveDataGuild>
function UMJSaveData:GetGuildData() end
---@return int32
function UMJSaveData:GetGamePlaySecond() end
---@param FirstSelectCharaID int32
function UMJSaveData:GetFirstSelectCharacterID(FirstSelectCharaID) end
---@return TArray<int32>
function UMJSaveData:GetExtraStoryProgressBuffer() end
---@return int32
function UMJSaveData:GetExtraMissionRecordStartSelect() end
---@param Index int32
---@return int32
function UMJSaveData:GetEventValueParam(Index) end
---@param Index int32
---@return boolean
function UMJSaveData:GetEventtPlayedFlag(Index) end
---@return TArray<int32>
function UMJSaveData:GetEventPlayedFlag() end
---@param Index int32
---@return int32
function UMJSaveData:GetEventCounter(Index) end
---@return FEquipLanternData
function UMJSaveData:GetEquipLanternData() end
---@return int32
function UMJSaveData:GetEquipEncountRevision() end
---@return TArray<int32>
function UMJSaveData:GetEnableSwitchIndoorTriggerListRef() end
---@return TArray<int32>
function UMJSaveData:GetEnableSwitchIndoorTriggerList() end
---@return int32
function UMJSaveData:GetDifficultyPoint() end
---@return EKSPartySet
function UMJSaveData:GetCurrentPartySet() end
---@return int32
function UMJSaveData:GetCurrentEncountTriggerID() end
---@return FVector
function UMJSaveData:GetCameraLockPosBeforeReminiscence() end
---@return FVector
function UMJSaveData:GetCameraLockPos() end
---@return uint8
function UMJSaveData:GetCameraLockLvTriggerIdBeforeReminiscence() end
---@param Index int32
---@return boolean
function UMJSaveData:GetBitFlag(Index) end
---@return TArray<int32>
function UMJSaveData:GetBit() end
---@return int32
function UMJSaveData:GetBattleSpeedStep() end
---@return boolean
function UMJSaveData:GetBattleHelpWindowOpen() end
---@return TMap<int32, FTownData>
function UMJSaveData:GetAllTownData() end
---@return TMap<int32, FMapData>
function UMJSaveData:GetAllMapData() end
---@param Index int32
---@return boolean
function UMJSaveData:DeleteTameMonsterList(Index) end
---@param ArraySize int32
---@return FAcquisitionAbilityData
function UMJSaveData:CreateAcquitisionAdvancedAbilityData(ArraySize) end
---@param ArraySize int32
---@return TArray<FAcquisitionAbilityData>
function UMJSaveData:CreateAcquitisionAbilityData(ArraySize) end
---@param PartySetID EKSPartySet
function UMJSaveData:CopyPartySetDataOtherThanMember(PartySetID) end
function UMJSaveData:ClearReminiscenceCharacterId() end
function UMJSaveData:ClearRecentCameraLockLevelTrigger() end
function UMJSaveData:ClearPlayingReminiscenceId() end
function UMJSaveData:ClearPlayerLocationBeforeReminiscence() end
function UMJSaveData:ClearCameraLockBeforeReminiscence() end
---@param outEmptyIndex int32
---@return boolean
function UMJSaveData:CheckLearnAbilityFull(outEmptyIndex) end
---@param partySet EKSPartySet
function UMJSaveData:ChangePartySet(partySet) end
function UMJSaveData:BackupDataBeforeReminiscence() end
function UMJSaveData:BackupAndResetDifficultyPoint() end
---@param AddPoint int32
---@return int32
function UMJSaveData:AddMainProgressPoint(AddPoint) end
---@param Index int32
---@param Value int32
---@return int32
function UMJSaveData:AddEventValueParam(Index, Value) end
---@param Index int32
---@param Value int32
---@return int32
function UMJSaveData:AddEventCounter(Index, Value) end
---@param AddPoint int32
---@return int32
function UMJSaveData:AddDifficultyPoint(AddPoint) end


---@class UMJSoundListenerComponent : USceneComponent
local UMJSoundListenerComponent = {}

---@param eListenerType ELISTENER_TYPE
---@param pParentComponent USceneComponent
function UMJSoundListenerComponent:ChangeListenerPoint(eListenerType, pParentComponent) end


---@class UMacroData : UObject
---@field m_ChildrenNodes TArray<UMacroData>
local UMacroData = {}



---@class UMainMenuBase : UKSUserWidgetBase
local UMainMenuBase = {}

---@return boolean
function UMainMenuBase:PreCloseActionFromPartyChat() end
---@return boolean
function UMainMenuBase:PreCloseAction() end
---@return boolean
function UMainMenuBase:OpenMissionRecordReOpen() end
---@return boolean
function UMainMenuBase:OpenFastWorldMap() end
---@param FastWorldMapMode boolean
function UMainMenuBase:IsFastWorldMapMode(FastWorldMapMode) end
---@return UMainMenuListBase
function UMainMenuBase:GetMainMenuList() end
---@return boolean
function UMainMenuBase:CanMainMenuClose() end
---@param CanClose boolean
function UMainMenuBase:CanCloseMainMenu(CanClose) end


---@class UMainMenuListBase : UUserWidget
local UMainMenuListBase = {}

---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function UMainMenuListBase:OnPartyRefresh(eNoticeType, NoticeArgs) end
function UMainMenuListBase:Init() end


---@class UMainMenuStateData : UMainMenuStateDataBase
local UMainMenuStateData = {}


---@class UMainMenuStateDataBase : UStateDataBase
local UMainMenuStateDataBase = {}


---@class UMainMenuWorldMapStateData : UMainMenuStateDataBase
local UMainMenuWorldMapStateData = {}


---@class UMainTitleBase : UKSUserWidgetBase
local UMainTitleBase = {}

---@param PlayerCharaId int32
function UMainTitleBase:SetupNewGameForAutoPlay(PlayerCharaId) end
---@param Scene UTitleBase
---@param Flow EUITitleFlow
function UMainTitleBase:SetTitleScene(Scene, Flow) end


---@class UMapNameNotificationBase : UKSUserWidgetBase
---@field m_OpenOwner EMAP_NAME_NOTIFICATION_OPEN_OWNER
local UMapNameNotificationBase = {}

---@param Owner EMAP_NAME_NOTIFICATION_OPEN_OWNER
function UMapNameNotificationBase:SetOpenOwner(Owner) end
---@param IsVisible ESlateVisibility
---@return boolean
function UMapNameNotificationBase:SetLevelChangeVisible(IsVisible) end
---@return boolean
function UMapNameNotificationBase:ResetNotification() end
---@param RegionName FName
---@param MapName FName
---@param EmblemTexture UTexture
---@return boolean
function UMapNameNotificationBase:OpenEventAreaUI(RegionName, MapName, EmblemTexture) end
---@param RegionName FName
---@param MapName FName
---@param EncounterLevel int32
---@param DangerLevel int32
---@param IsOpenKeep boolean
---@param EmblemTexture UTexture
---@param NotificationFormat FName
---@return boolean
function UMapNameNotificationBase:OpenAreaUI(RegionName, MapName, EncounterLevel, DangerLevel, IsOpenKeep, EmblemTexture, NotificationFormat) end
---@return boolean
function UMapNameNotificationBase:CloseAreaUIDelay() end
---@return boolean
function UMapNameNotificationBase:CloseAreaUI() end


---@class UMasqueradeComponent : UActorComponent
---@field m_cOwnerPlayer ABattleCharacterBase
---@field m_cMasqueradeTarget ABattleCharacterBase
---@field m_bExecMasquerade boolean
local UMasqueradeComponent = {}

---@return boolean
function UMasqueradeComponent:ResumeMasquerade() end
---@param eBattleVoiceType EBATTLE_VOICE_TYPE
---@param cPlayCondition FBattleVoiceSetData
---@return boolean
function UMasqueradeComponent:PlayMasqueradeBattleVoice(eBattleVoiceType, cPlayCondition) end
---@return boolean
function UMasqueradeComponent:IsExecMasquerade() end
---@return TArray<EWEAPON_CATEGORY>
function UMasqueradeComponent:GetMasqueradeEquipWeaponList() end
---@return FName
function UMasqueradeComponent:GetMasqueradeCommandNameSecondJob() end
---@return FName
function UMasqueradeComponent:GetMasqueradeCommandNameFirstJob() end
---@return TArray<FName>
function UMasqueradeComponent:GetMasqueradeCommandListSecondJob() end
---@return TArray<FName>
function UMasqueradeComponent:GetMasqueradeCommandListFirstJob() end
---@return FName
function UMasqueradeComponent:GetMasqueradeCommandDetailSecondJob() end
---@return FName
function UMasqueradeComponent:GetMasqueradeCommandDetailFirstJob() end
---@param nFirstJob int32
---@param nSecondJob int32
function UMasqueradeComponent:GetMasqueradeCharacterJobByRowID(nFirstJob, nSecondJob) end
---@param eFirstJob EJOB_TYPE
---@param eSecondJob EJOB_TYPE
---@param bEnableSecondJob boolean
function UMasqueradeComponent:GetMasqueradeCharacterJob(eFirstJob, eSecondJob, bEnableSecondJob) end
---@param eCharaID EPlayableCharacterID
function UMasqueradeComponent:GetMasqueradeCharacterID(eCharaID) end
---@param eForteWeapon EWEAPON_CATEGORY
function UMasqueradeComponent:GetMasqueradeCharacterForteWeapon(eForteWeapon) end
---@param strCharmPlayerName FName
---@param strCharmPlayerWeapon FName
function UMasqueradeComponent:GetMasqueradeCharacterCharmData(strCharmPlayerName, strCharmPlayerWeapon) end
---@param cTarget ABattleCharacterBase
---@param nInvocationTurn int32
---@return boolean
function UMasqueradeComponent:ExecMasquerade(cTarget, nInvocationTurn) end


---@class UMenuSaveLoadBase : UKSUserWidgetWithState
---@field m_LoadTarget ESaveDataLoadTarget
---@field IsChallengeModeLoad boolean
local UMenuSaveLoadBase = {}

---@param Target ESaveDataLoadTarget
function UMenuSaveLoadBase:SetLoadTarget(Target) end
---@param Val boolean
function UMenuSaveLoadBase:SetIsChallengeModeLoad(Val) end
---@param IsSaveMode boolean
---@param FromDebugMenu boolean
---@return boolean
function UMenuSaveLoadBase:OpenMenu(IsSaveMode, FromDebugMenu) end
---@return UKSSaveSystem
function UMenuSaveLoadBase:GetTargetSystemData() end
---@param Result ESAVELOAD_RESULT
function UMenuSaveLoadBase:GetResult(Result) end
---@return ESaveDataLoadTarget
function UMenuSaveLoadBase:GetLoadTarget() end


---@class UMillionaireModeUtility : UDataTableUtilityBase
local UMillionaireModeUtility = {}

---@param millionaireModeLabel FName
---@return boolean
function UMillionaireModeUtility:IsActiveMillionaireMode(millionaireModeLabel) end
---@param millionaireModeLabel FName
---@return int64
function UMillionaireModeUtility:GetMillionaireModePrice(millionaireModeLabel) end
---@param millionaireModeLabel FName
---@param outMillionaireModeData FMillionaireModeData
---@return boolean
function UMillionaireModeUtility:GetMillionaireModeData(millionaireModeLabel, outMillionaireModeData) end
---@param outMillionaireModeData FMillionaireModeData
---@return boolean
function UMillionaireModeUtility:GetActiveMillionaireModeData(outMillionaireModeData) end


---@class UMissionSaveDataUtil : USaveDataUtilBase
local UMissionSaveDataUtil = {}

---@param AreaID int32
---@param missionSaveDataIndex int32
---@param State int32
---@return boolean
function UMissionSaveDataUtil:SetSubStoryState(AreaID, missionSaveDataIndex, State) end
---@param MissionIndex int32
---@return boolean
function UMissionSaveDataUtil:SetSubStoryOrder(MissionIndex) end
---@param AreaID int32
---@param missionSaveDataIndex int32
---@param bNewFlag boolean
function UMissionSaveDataUtil:SetSubStoryNewFlag(AreaID, missionSaveDataIndex, bNewFlag) end
---@param AreaID int32
---@param missionSaveDataIndex int32
---@param MapID int32
---@param MarkerPos FVector
---@return boolean
function UMissionSaveDataUtil:SetSubStoryMarker(AreaID, missionSaveDataIndex, MapID, MarkerPos) end
---@param AreaID int32
---@param missionSaveDataIndex int32
---@param ClearIndex int32
---@return boolean
function UMissionSaveDataUtil:SetSubStoryClearIndex(AreaID, missionSaveDataIndex, ClearIndex) end
---@param AreaID int32
---@param newSubMissionData FSaveMissionData
---@return boolean
function UMissionSaveDataUtil:SetSubMissionData(AreaID, newSubMissionData) end
---@param CharacterID int32
---@param progressCount int32
function UMissionSaveDataUtil:SetMainMissionProgressCount(CharacterID, progressCount) end
---@param ExStoryCategory int32
---@param progressCount int32
function UMissionSaveDataUtil:SetExtraStoryProgressCount(ExStoryCategory, progressCount) end
---@return boolean
function UMissionSaveDataUtil:ResetSubStoryOrder() end
---@param AreaID int32
---@param missionSaveDataIndex int32
---@return int32
function UMissionSaveDataUtil:GetSubStoryState(AreaID, missionSaveDataIndex) end
---@param outSubMissionOrder TArray<int32>
---@return boolean
function UMissionSaveDataUtil:GetSubStoryOrder(outSubMissionOrder) end
---@param AreaID int32
---@param missionSaveDataIndex int32
---@return boolean
function UMissionSaveDataUtil:GetSubStoryNewFlag(AreaID, missionSaveDataIndex) end
---@param MapID int32
---@param outAreaID TArray<int32>
---@param outMissionSaveDataIndex TArray<int32>
---@param outMarkerPos TArray<FVector>
function UMissionSaveDataUtil:GetSubStoryMarkerInMap(MapID, outAreaID, outMissionSaveDataIndex, outMarkerPos) end
---@param AreaID int32
---@param missionSaveDataIndex int32
---@return int32
function UMissionSaveDataUtil:GetSubStoryClearIndex(AreaID, missionSaveDataIndex) end
---@param AreaID int32
---@param outSubMissionData FSaveMissionData
---@return boolean
function UMissionSaveDataUtil:GetSubMissionData(AreaID, outSubMissionData) end
---@param CharacterID int32
---@return int32
function UMissionSaveDataUtil:GetMainMissionProgressCount_FromSaveCharacterData(CharacterID) end
---@param ExStoryCategory int32
---@return int32
function UMissionSaveDataUtil:GetExtraStoryProgressCount(ExStoryCategory) end


---@class UMusicPlayerWidget : UKSUserWidgetBase
---@field m_WidgetState EMUSIC_PLAYER_WIDGET_STATE
local UMusicPlayerWidget = {}

---@param WidgetState EMUSIC_PLAYER_WIDGET_STATE
function UMusicPlayerWidget:UpdateWidgetState(WidgetState) end
---@param CurrentState EMUSIC_PLAYER_WIDGET_STATE
function UMusicPlayerWidget:OnEndState(CurrentState) end
---@param CurrentState EMUSIC_PLAYER_WIDGET_STATE
function UMusicPlayerWidget:OnBeginState(CurrentState) end


---@class UMyShipUtility : UBlueprintFunctionLibrary
local UMyShipUtility = {}

---@param SailType EMYSHIP_CUSTOM_TYPE
---@return FName
function UMyShipUtility:GetSailTextureResourceLabel(SailType) end
---@return FName
function UMyShipUtility:GetMyShipMeshResourceLabel() end
---@return FName
function UMyShipUtility:GetMyShipFlipbook() end
---@return FName
function UMyShipUtility:GetMyShipFirstChoiceMeshResourceLabel() end
function UMyShipUtility:ApplyMyShipCustomizeFirstChoice() end
function UMyShipUtility:ApplyMyShipCustomize() end


---@class UNPCDataBaseUtility : UDataTableUtilityBase
local UNPCDataBaseUtility = {}

---@param RowName FName
---@param outPurchaseData FNPCPurchaseDataBase
---@return boolean
function UNPCDataBaseUtility:GetNPCPurchaseData(RowName, outPurchaseData) end
---@param RowName FName
---@param outLeadData FNPCLeadDataBase
---@return boolean
function UNPCDataBaseUtility:GetNPCLeadData(RowName, outLeadData) end
---@param RowName FName
---@param outHearInfoData FNPCHearInfoDataBase
---@return boolean
function UNPCDataBaseUtility:GetNPCHearInfoData(RowName, outHearInfoData) end
---@param RowName FName
---@param outHearData FNPCHearDataBase
---@return boolean
function UNPCDataBaseUtility:GetNPCHearData(RowName, outHearData) end
---@param Type ENPC_DB_TYPE
---@param OutRowNames TArray<FName>
---@return boolean
function UNPCDataBaseUtility:GetNPCDataBaseRowNames(Type, OutRowNames) end
---@param RowName FName
---@param outBattleData FNPCBattleData
---@return boolean
function UNPCDataBaseUtility:GetNPCBattleData(RowName, outBattleData) end


---@class UNPCSaveDataUtil : USaveDataUtilBase
local UNPCSaveDataUtil = {}

---@param nNPCIndex int32
---@param nTimeZoneCnt int32
---@return boolean
function UNPCSaveDataUtil:SetNPCTZChangeSwoonRevivalCount(nNPCIndex, nTimeZoneCnt) end
---@param NPCLabel FName
---@param Flag boolean
---@param SwoonType ENpcSwoonType
---@param NPCIndex int32
---@return boolean
function UNPCSaveDataUtil:SetNPCSwoonFlag(NPCLabel, Flag, SwoonType, NPCIndex) end
---@param NPCID int32
---@param NpcEventData FNpcEventData
---@return boolean
function UNPCSaveDataUtil:SetNPCEventData(NPCID, NpcEventData) end
---@param NPCLabel FName
---@return boolean
function UNPCSaveDataUtil:IsSwoonNPC(NPCLabel) end
---@param nNPCIndex int32
---@return int32
function UNPCSaveDataUtil:GetNPCTZChangeSwoonRevivalCount(nNPCIndex) end
---@param NPCLabel FName
---@param NpcEventData FNpcEventData
---@param NPCID int32
---@return boolean
function UNPCSaveDataUtil:GetNPCEventDataByLabel(NPCLabel, NpcEventData, NPCID) end
---@param NPCID int32
---@param Out FNpcEventData
---@return boolean
function UNPCSaveDataUtil:GetNPCEventDataByID(NPCID, Out) end
---@param NPCLabel FName
function UNPCSaveDataUtil:DEBUG_ClearNpcPurchasedItems(NPCLabel) end
---@param NPCLabel FName
function UNPCSaveDataUtil:DEBUG_ClearNpcHearFlag(NPCLabel) end
function UNPCSaveDataUtil:DEBUG_ClearAllNpcPurchasedItems() end
---@return TArray<int32>
function UNPCSaveDataUtil:DEBUG_ClearAllNpcHearFlag() end


---@class UNarrationDataTableUtility : UBlueprintFunctionLibrary
local UNarrationDataTableUtility = {}

---@param NarrationDataLabel FName
---@return int32
function UNarrationDataTableUtility:NarrationDataLabelToID(NarrationDataLabel) end
---@param NarrationDataID int32
---@return FName
function UNarrationDataTableUtility:NarrationDataIDToLabel(NarrationDataID) end
---@param OutRowNames TArray<FName>
---@return boolean
function UNarrationDataTableUtility:GetNarrationDataRowNames(OutRowNames) end
---@param RowName FName
---@param outRowData FNarrationDataBase
---@return boolean
function UNarrationDataTableUtility:GetNarrationData(RowName, outRowData) end


---@class UNarrationMessageWidgetBase : UAcqUserWidget
local UNarrationMessageWidgetBase = {}

function UNarrationMessageWidgetBase:SkipDraw() end
function UNarrationMessageWidgetBase:SetNottingLine() end
function UNarrationMessageWidgetBase:SetBlankLine() end
function UNarrationMessageWidgetBase:Reset() end
---@param Text FText
---@param TextJustification int32
---@param DisableAnimation boolean
---@param DrawTime float
---@param VoiceData FTalkVoice
---@return boolean
function UNarrationMessageWidgetBase:PlayMessage(Text, TextJustification, DisableAnimation, DrawTime, VoiceData) end
function UNarrationMessageWidgetBase:PlayFadeOut() end


---@class UNarrationWidgetBase : UKSUserWidgetBase
local UNarrationWidgetBase = {}

---@param IsEnd boolean
function UNarrationWidgetBase:UpdateDrawMessage(IsEnd) end
---@param page FNarrationDataBase
---@return boolean
function UNarrationWidgetBase:SetPlayPageMessage(page) end
---@param PassBGOpen boolean
---@param PassBGClose boolean
function UNarrationWidgetBase:SetAnimationMode(PassBGOpen, PassBGClose) end
---@param NoteLabel FName
---@param UseBackground boolean
function UNarrationWidgetBase:PlayNote(NoteLabel, UseBackground) end
---@param NarrationSetLabel FName
function UNarrationWidgetBase:PlayNarration(NarrationSetLabel) end
function UNarrationWidgetBase:PhraseMessageDraw() end
function UNarrationWidgetBase:OpenInner() end
---@param TargetObject UNarrationMessageWidgetBase
---@param TalkLabel FName
---@param TextJustification int32
---@param DisableAnimation boolean
---@param IsVoiceSkip boolean
---@return boolean
function UNarrationWidgetBase:OneLineDraw(TargetObject, TalkLabel, TextJustification, DisableAnimation, IsVoiceSkip) end
---@param IsEnd boolean
function UNarrationWidgetBase:NextPage(IsEnd) end
function UNarrationWidgetBase:CloseMessage() end
---@param IsForceClose boolean
function UNarrationWidgetBase:Close(IsForceClose) end
function UNarrationWidgetBase:AllDrawMessage() end


---@class UNextPurposeDataUtility : UDataTableUtilityBase
local UNextPurposeDataUtility = {}

---@param dbName FName
---@param notice EDBNoticeType
function UNextPurposeDataUtility:NotifyNextPurposeDataDB(dbName, notice) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@param Type ENextPurposeDataType
---@return boolean
function UNextPurposeDataUtility:GetNextPurposeTableRowNames(returnCode, OutRowNames, Type) end
---@param OutData FNextPurposeData
---@param TargetID int32
---@return boolean
function UNextPurposeDataUtility:GetNextPurposeRowDataByID(OutData, TargetID) end
---@param OutData FNextPurposeData
---@param TargetLabel FName
---@return boolean
function UNextPurposeDataUtility:GetNextPurposeRowData(OutData, TargetLabel) end
---@param outLabels TArray<FName>
---@param MainStoryLabel FName
---@return boolean
function UNextPurposeDataUtility:GetNextPurposeLabelsByMainStory(outLabels, MainStoryLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FNextPurposeData
---@param mainStoryTaskLabel FName
function UNextPurposeDataUtility:GetNextPurposeDataByMainStoryTaskLabel(returnCode, OutData, mainStoryTaskLabel) end


---@class UNpcPropertyComponent : UActorComponent
---@field m_NpcLabel FName
---@field m_NpcUniqueID int32
---@field m_RequestID int32
---@field m_IsEnableMove boolean
---@field m_IsMoveNPC boolean
---@field m_IsNoReactionNPC boolean
---@field m_IsEnableFieldCommand boolean
---@field m_IsPlayingAutoTalk boolean
---@field m_AutoBalloonDistance float
local UNpcPropertyComponent = {}

---@param Val int32
function UNpcPropertyComponent:SetRequestID(Val) end
---@param Val boolean
function UNpcPropertyComponent:SetPlayingAutoTalk(Val) end
---@param Value int32
---@return int32
function UNpcPropertyComponent:SetNpcUniqueID(Value) end
---@param Value FName
---@return FName
function UNpcPropertyComponent:SetNpcLabel(Value) end
---@param Val boolean
function UNpcPropertyComponent:SetIsNoReactionNPC(Val) end
---@param Val boolean
function UNpcPropertyComponent:SetIsMoveNPC(Val) end
---@param Val boolean
function UNpcPropertyComponent:SetIsEnableMove(Val) end
---@param Val boolean
function UNpcPropertyComponent:SetIsEnableFieldCommand(Val) end
---@param Distance float
function UNpcPropertyComponent:SetAutoBalloonDistance(Distance) end
---@return boolean
function UNpcPropertyComponent:IsSwoon() end
---@return boolean
function UNpcPropertyComponent:IsSignBoard() end
---@return boolean
function UNpcPropertyComponent:IsPlayingAutoTalk() end
---@return boolean
function UNpcPropertyComponent:IsGramoPhone() end
---@return int32
function UNpcPropertyComponent:GetRequestID() end
---@param OutData FNPCPurchaseDataBase
---@return boolean
function UNpcPropertyComponent:GetPurchaseData(OutData) end
---@return int32
function UNpcPropertyComponent:GetNpcUniqueID() end
---@return FName
function UNpcPropertyComponent:GetNpcLabel() end
---@param OutData FNPCLeadDataBase
---@return boolean
function UNpcPropertyComponent:GetLeadData(OutData) end
---@return boolean
function UNpcPropertyComponent:GetIsNoReactionNPC() end
---@return boolean
function UNpcPropertyComponent:GetIsMoveNPC() end
---@return boolean
function UNpcPropertyComponent:GetIsEnableMove() end
---@return boolean
function UNpcPropertyComponent:GetIsEnableFieldCommand() end
---@param OutData FNPCHearDataBase
---@return boolean
function UNpcPropertyComponent:GetHearData(OutData) end
---@param OutData FNPCBattleData
---@return boolean
function UNpcPropertyComponent:GetBattleData(OutData) end
---@return float
function UNpcPropertyComponent:GetAutoBalloonDistance() end
---@return boolean
function UNpcPropertyComponent:CheckFieldCommandEnable() end


---@class UNullServiceConnecter : UServiceConnecter
local UNullServiceConnecter = {}


---@class UObjectDataTableUtility : UDataTableUtilityBase
local UObjectDataTableUtility = {}

---@param ID int32
---@return FName
function UObjectDataTableUtility:GetObjectLabelById(ID) end
---@param OutData FKSObjectData
---@param TargetLabel FName
---@return boolean
function UObjectDataTableUtility:GetObjectDataRow(OutData, TargetLabel) end


---@class UOpenSpeechUIComponent : UActorComponent
---@field m_SubTitleLabel FName
local UOpenSpeechUIComponent = {}

function UOpenSpeechUIComponent:OpenSpeechUI() end
function UOpenSpeechUIComponent:CloseSpeechUI() end
---@return boolean
function UOpenSpeechUIComponent:CheckCanBegin() end


---@class UOperationPlayerCameraComponentBase : UActorComponent
---@field m_PosInterpTimer float
---@field m_PosInterpOffsetStart FVector
---@field m_PosInterpOffsetEnd FVector
---@field m_PosInterpOffset FVector
local UOperationPlayerCameraComponentBase = {}

---@param DeltaTime float
---@return boolean
function UOperationPlayerCameraComponentBase:UpdateCameraInterpolationByPlayerPos(DeltaTime) end
---@param startPlayerPos FVector
---@return boolean
function UOperationPlayerCameraComponentBase:StartCameraInterpolationByPlayerPos(startPlayerPos) end


---@class UOptionGroupTableUtility : UDataTableUtilityBase
local UOptionGroupTableUtility = {}

---@param OptionGroupLable FName
---@return int32
function UOptionGroupTableUtility:OptionGroupLabelToID(OptionGroupLable) end
---@param OptionGroupID int32
---@return FName
function UOptionGroupTableUtility:OptionGroupIDToLabel(OptionGroupID) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UOptionGroupTableUtility:GetOptionGroupTableRowNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FOptionGroupData
---@param TargetID int32
---@param LogEnable boolean
---@return boolean
function UOptionGroupTableUtility:GetOptionGroupRowDataByID(returnCode, OutData, TargetID, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FOptionGroupData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UOptionGroupTableUtility:GetOptionGroupRowData(returnCode, OutData, TargetLabel, LogEnable) end


---@class UOptionMenuWBPBase : UKSUserWidgetWithState
local UOptionMenuWBPBase = {}

---@param FromTitleScene boolean
---@return boolean
function UOptionMenuWBPBase:SetFromTitleScene(FromTitleScene) end
---@param Saving boolean
function UOptionMenuWBPBase:IsSaving(Saving) end


---@class UOssServiceConnecter : UServiceConnecter
local UOssServiceConnecter = {}


---@class UOutGameStateData : UStateDataBase
local UOutGameStateData = {}


---@class UPartnerDetailWidget : UUserWidget
local UPartnerDetailWidget = {}


---@class UPartyCharPanelSelectBackBase : UAcqUserWidget
local UPartyCharPanelSelectBackBase = {}

function UPartyCharPanelSelectBackBase:StayAnim() end
function UPartyCharPanelSelectBackBase:OutFocus() end
function UPartyCharPanelSelectBackBase:Focus() end
function UPartyCharPanelSelectBackBase:FastOutFocus() end


---@class UPartyCharaPropertyComponent : UActorComponent
---@field m_PlayerCharacterID EPlayableCharacterID
local UPartyCharaPropertyComponent = {}

---@param ID EPlayableCharacterID
---@return EPlayableCharacterID
function UPartyCharaPropertyComponent:SetPlayerID(ID) end
---@return EPlayableCharacterID
function UPartyCharaPropertyComponent:GetPlayerID() end


---@class UPartyCharacterListBase : UUserWidget
local UPartyCharacterListBase = {}

function UPartyCharacterListBase:ResetPartyPanel() end
---@param EnableStatusSpacer boolean
function UPartyCharacterListBase:Init(EnableStatusSpacer) end
---@param MainMemberIndex int32
---@return UPartyCharacterPanelBase
function UPartyCharacterListBase:GetMainMemberPanel(MainMemberIndex) end


---@class UPartyCharacterPanelBase : UAcqUserWidget
---@field IsUseUiResource boolean
---@field m_CharacterData FSavePlayerCharacterData
local UPartyCharacterPanelBase = {}

---@param ShowCount int32
function UPartyCharacterPanelBase:SetVisibleEquipmentInfo(ShowCount) end
---@param IsVisible boolean
function UPartyCharacterPanelBase:SetVisibleEquipIcon(IsVisible) end
---@param ParamMin int32
---@param ParamMax int32
function UPartyCharacterPanelBase:SetParamRange(ParamMin, ParamMax) end
---@param Val boolean
function UPartyCharacterPanelBase:SetIsUseUiResource(Val) end
---@param Index int32
---@param ParamType EEQUIPMENT_ITEM_PARAM
---@param ParamBefore int32
---@param ParamAfter int32
---@return boolean
function UPartyCharacterPanelBase:SetEquipmentInfo(Index, ParamType, ParamBefore, ParamAfter) end
---@param CanEquip boolean
function UPartyCharacterPanelBase:SetEquipmentAnim(CanEquip) end
---@param CharacterData FSavePlayerCharacterData
function UPartyCharacterPanelBase:SetCharacterData(CharacterData) end
function UPartyCharacterPanelBase:OutFocus() end
---@return boolean
function UPartyCharacterPanelBase:GetIsUseUiResource() end
---@return FSavePlayerCharacterData
function UPartyCharacterPanelBase:GetCharacterData() end
function UPartyCharacterPanelBase:Focus() end
function UPartyCharacterPanelBase:Decide() end


---@class UPartyChatBase : UKSUserWidgetBase
local UPartyChatBase = {}

---@param IsVisible boolean
---@return boolean
function UPartyChatBase:VisibleBackGround(IsVisible) end
---@param PartyChatData FPartyChat
---@param UseBackgroundImage boolean
---@return boolean
function UPartyChatBase:SetupPartyChatWidget(PartyChatData, UseBackgroundImage) end
---@param Index int32
---@param Dir EKSCharacterDir
---@return boolean
function UPartyChatBase:SetCharaDir(Index, Dir) end
---@param Index int32
---@param Character EPlayableCharacterID
---@param Dir EKSCharacterDir
---@return boolean
function UPartyChatBase:SetCharacterIndex(Index, Character, Dir) end
---@param isFast boolean
---@return boolean
function UPartyChatBase:OutFocusPartyChatCharactr(isFast) end
---@param Pos FVector2D
---@param Index int32
function UPartyChatBase:GetCharacterPos(Pos, Index) end
---@param FocusCharacters TArray<int32>
---@param isFast boolean
---@return boolean
function UPartyChatBase:FocusPartyChatCharactr(FocusCharacters, isFast) end


---@class UPartyChatFunction : UBlueprintFunctionLibrary
local UPartyChatFunction = {}

---@param PartyChat FPartyChat
---@return boolean
function UPartyChatFunction:IsWithinMainStoryProgress(PartyChat) end
---@param PartyChat FPartyChat
---@return boolean
function UPartyChatFunction:IsValidPartyChatData(PartyChat) end
---@return boolean
function UPartyChatFunction:IsTraveledUniqueMapEnoughTimes() end
---@param PartyChat FPartyChat
---@return boolean
function UPartyChatFunction:IsSameLevel(PartyChat) end
---@return boolean
function UPartyChatFunction:IsPlayingFinalChapterPartyChat() end
---@return boolean
function UPartyChatFunction:IsChokerDetachPartyChat() end
---@return boolean
function UPartyChatFunction:IsChokerAttachPartyChat() end
---@return boolean
function UPartyChatFunction:IsAnyCharacterPlayingMainStory() end
---@param PartyChat FPartyChat
---@param containSubMember boolean
---@return boolean
function UPartyChatFunction:IsAllRequiredCharactersInParty(PartyChat, containSubMember) end


---@class UPartyChatNotificationBase : UKSUserWidgetBase
---@field m_IsOpening boolean
---@field m_IsTemporaryHidden boolean
local UPartyChatNotificationBase = {}

---@param IsOpening boolean
function UPartyChatNotificationBase:SetIsOpening(IsOpening) end


---@class UPartyChatSaveDataUtil : USaveDataUtilBase
local UPartyChatSaveDataUtil = {}

---@param PartyChatId int32
---@param State EPARTY_CHAT_STATE
function UPartyChatSaveDataUtil:SetState(PartyChatId, State) end
---@param PartyChatId int32
---@param TimezoneType int32
---@param timeZonePosition int32
---@return boolean
function UPartyChatSaveDataUtil:SetPartyChatTimeZoneOnPlayed(PartyChatId, TimezoneType, timeZonePosition) end
---@param PartyChatId int32
---@param levelId int32
function UPartyChatSaveDataUtil:SetPartyChatLevelOnPlayed(PartyChatId, levelId) end
---@param PartyChatId int32
---@param FlagID int32
---@param Val boolean
---@return boolean
function UPartyChatSaveDataUtil:SetPartyChatEventObjectFlag(PartyChatId, FlagID, Val) end
---@param PartyChatId int32
---@param bNew boolean
function UPartyChatSaveDataUtil:SetNewFlag(PartyChatId, bNew) end
---@param PartyChatId int32
---@return boolean
function UPartyChatSaveDataUtil:IsPartyChatFlag(PartyChatId) end
---@param PartyChatId int32
---@return EPARTY_CHAT_STATE
function UPartyChatSaveDataUtil:GetState(PartyChatId) end
---@param PartyChatId int32
---@return int32
function UPartyChatSaveDataUtil:GetPartyChatTimeZoneTypeOnPlayed(PartyChatId) end
---@param PartyChatId int32
---@return int32
function UPartyChatSaveDataUtil:GetPartyChatTimeZonePositionOnPlayed(PartyChatId) end
---@param PartyChatId int32
---@return int32
function UPartyChatSaveDataUtil:GetPartyChatLevelOnPlayed(PartyChatId) end
---@param MainStoryLabel FName
---@return TArray<FName>
function UPartyChatSaveDataUtil:GetPartyChatLabelsRelatedMainStoryWithReleasedState(MainStoryLabel) end
---@param PartyChatId int32
---@param FlagID int32
---@param Val boolean
function UPartyChatSaveDataUtil:GetPartyChatEventObjectFlag(PartyChatId, FlagID, Val) end
---@param PartyChatId int32
---@return boolean
function UPartyChatSaveDataUtil:GetNewFlag(PartyChatId) end
---@return int32
function UPartyChatSaveDataUtil:GetLevelChangeCounterForFinalChapterHintPartyChat() end
---@param PartyChatId int32
---@return boolean
function UPartyChatSaveDataUtil:GetIsUnRelease(PartyChatId) end
---@param PartyChatId int32
---@return boolean
function UPartyChatSaveDataUtil:GetIsRelease(PartyChatId) end
---@param newCount int32
function UPartyChatSaveDataUtil:Debug_SetLevelChangeCounterForFinalChapterHintPartyChat(newCount) end


---@class UPartyChatStateData : UStateDataBase
local UPartyChatStateData = {}


---@class UPartyChatTableUtility : UDataTableUtilityBase
local UPartyChatTableUtility = {}

---@param PartyChatLable FName
---@return int32
function UPartyChatTableUtility:PartyChatLabelToID(PartyChatLable) end
---@param PartyChatId int32
---@return FName
function UPartyChatTableUtility:PartyChatIDToLabel(PartyChatId) end
---@param dbName FName
---@param notice EDBNoticeType
function UPartyChatTableUtility:NotifyPartyChatDB(dbName, notice) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UPartyChatTableUtility:GetPartyChatTableRowNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FPartyChat
---@param EventLabel FName
---@param LogEnable boolean
---@return boolean
function UPartyChatTableUtility:GetPartyChatRowDataFromEventLabel(returnCode, OutData, EventLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FPartyChat
---@param TargetID int32
---@param LogEnable boolean
---@return boolean
function UPartyChatTableUtility:GetPartyChatRowDataByID(returnCode, OutData, TargetID, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FPartyChat
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UPartyChatTableUtility:GetPartyChatRowData(returnCode, OutData, TargetLabel, LogEnable) end
---@param MainStoryLabel FName
---@return TArray<FName>
function UPartyChatTableUtility:GetPartyChatLabelsRelatedMainStory(MainStoryLabel) end
---@return TArray<FName>
function UPartyChatTableUtility:GetPartyChatLabelsOthers() end
---@param Type EPARTY_CHAT_TYPE
---@return TArray<FName>
function UPartyChatTableUtility:GetPartyChatLabelsByType(Type) end


---@class UPartySaveDataUtil : USaveDataUtilBase
local UPartySaveDataUtil = {}

---@return boolean
function UPartySaveDataUtil:UpdateCurrentPartySet() end
---@return boolean
function UPartySaveDataUtil:IsPartySolo() end
---@param CharaID EPlayableCharacterID
---@return boolean
function UPartySaveDataUtil:IsBattleMember(CharaID) end
---@return TArray<int32>
function UPartySaveDataUtil:GetSubMemberCharacterIDs() end
---@return TArray<int32>
function UPartySaveDataUtil:GetSubMemberArrayIndex() end
---@return TArray<FSavePlayerCharacterData>
function UPartySaveDataUtil:GetSubMember() end
---@return EPlayableCharacterID
function UPartySaveDataUtil:GetPartyTopCharacterID() end
---@return TArray<FSavePlayerCharacterData>
function UPartySaveDataUtil:GetMemberFromMainMenu() end
---@return TArray<int32>
function UPartySaveDataUtil:GetMainMemberCharacterIDs() end
---@return TArray<int32>
function UPartySaveDataUtil:GetMainMemberArrayIndex() end
---@param partySet EKSPartySet
---@return TArray<int32>
function UPartySaveDataUtil:GetLastAtlantisPartySet(partySet) end
---@return TArray<FSavePlayerCharacterData>
function UPartySaveDataUtil:GetBattleMember() end
---@param CharaID EPlayableCharacterID
---@return boolean
function UPartySaveDataUtil:CheckInSubParty(CharaID) end
---@param CharaID EPlayableCharacterID
---@param partySet EKSPartySet
---@return boolean
function UPartySaveDataUtil:CheckInPartySet(CharaID, partySet) end
---@param CharaID EPlayableCharacterID
---@return boolean
function UPartySaveDataUtil:CheckInParty(CharaID) end


---@class UPartySplitCharacterPanelBase : UUserWidget
local UPartySplitCharacterPanelBase = {}

---@param CharacterID EPlayableCharacterID
function UPartySplitCharacterPanelBase:SetCharacterFlpBook(CharacterID) end


---@class UPartySplitCharacterPlacementBoxBase : UUserWidget
---@field m_PlacedCharacter EPlayableCharacterID
---@field IsInFocus boolean
---@field m_TitleTextLabel FName
local UPartySplitCharacterPlacementBoxBase = {}

---@param CharacterID EPlayableCharacterID
function UPartySplitCharacterPlacementBoxBase:SetPlacedCharacter(CharacterID) end
---@param isFast boolean
function UPartySplitCharacterPlacementBoxBase:OutFocus(isFast) end
---@param isFast boolean
function UPartySplitCharacterPlacementBoxBase:InFocus(isFast) end
---@return EPlayableCharacterID
function UPartySplitCharacterPlacementBoxBase:GetPlacedCharacter() end


---@class UPartySplitMainPartyBoxBase : UUserWidget
---@field m_CharacterPanels TArray<UPartySplitCharacterPanelBase>
---@field m_MainMember TArray<EPlayableCharacterID>
---@field m_TitleTextLabel FName
local UPartySplitMainPartyBoxBase = {}

---@param newMainMember TArray<EPlayableCharacterID>
function UPartySplitMainPartyBoxBase:SetMemberList(newMainMember) end


---@class UPartySplitResultBase : UUserWidget
---@field OnStartedOpenCallback FPartySplitResultBaseOnStartedOpenCallback
---@field OnOpenedCallback FPartySplitResultBaseOnOpenedCallback
---@field OnStartedCloseCallback FPartySplitResultBaseOnStartedCloseCallback
---@field OnClosedCallback FPartySplitResultBaseOnClosedCallback
---@field m_MainParty TArray<UPartyCharacterPanelBase>
---@field m_PlacedCharacter TMap<EPARTY_SPLIT_PLACEMENT_POSITION, UPartyCharacterPanelBase>
---@field m_TitleTextLabel FName
---@field m_MainPartyTextLabel FName
---@field m_WildernessPlaceTextLabel FName
---@field m_DesertPlaceTextLabel FName
---@field m_MountainPlaceTextLabel FName
---@field m_IslandPlaceTextLabel FName
local UPartySplitResultBase = {}

---@param member TMap<EPlayableCharacterID, EPARTY_SPLIT_PLACEMENT_POSITION>
function UPartySplitResultBase:SetMember(member) end
function UPartySplitResultBase:Open() end
function UPartySplitResultBase:Close() end
function UPartySplitResultBase:BroadcastOnStartOpenDelegate() end
function UPartySplitResultBase:BroadcastOnStartCloseDelegate() end
function UPartySplitResultBase:BroadcastOnOpenedDelegate() end
function UPartySplitResultBase:BroadcastOnClosedDelegate() end


---@class UPartySplitUiUtil : UBlueprintFunctionLibrary
local UPartySplitUiUtil = {}

---@param party TMap<EPlayableCharacterID, EPARTY_SPLIT_PLACEMENT_POSITION>
---@return boolean
function UPartySplitUiUtil:SavePartySplitResult(party) end
---@param party TMap<EPlayableCharacterID, EPARTY_SPLIT_PLACEMENT_POSITION>
---@return boolean
function UPartySplitUiUtil:IsCompletePartySplit(party) end


---@class UPartySplitWidgetBase : UKSUserWidgetBase
---@field OnClosedPartySplitWithResult FPartySplitWidgetBaseOnClosedPartySplitWithResult
---@field m_WidgetState EPARTY_SPLIT_WIDGET_STATE
---@field m_CursorPosition FIntPoint
---@field m_MainPartyBox UPartySplitMainPartyBoxBase
---@field m_CharacterGrid UCharactersGridPanelBase
---@field m_PartySplitResult UPartySplitResultBase
---@field m_CursorPosToPlacementBox TMap<FIntPoint, UPartySplitCharacterPlacementBoxBase>
---@field m_PlacementPosToPlacementBoxe TMap<EPARTY_SPLIT_PLACEMENT_POSITION, UPartySplitCharacterPlacementBoxBase>
---@field m_CharacterPlacementPositions TMap<EPlayableCharacterID, EPARTY_SPLIT_PLACEMENT_POSITION>
---@field m_CloseReason EPARTY_SPLIT_CLOSE_REASON
---@field m_HeaderTextLabel FName
---@field m_FooterSelectPlaceTextLabel FName
---@field m_FooterSelectCharacterTextLabel FName
---@field m_FooterConfirmButtonTextLabel FName
---@field m_FooterResetButtonTextLabel FName
---@field m_CharacterGridTitleTextLabel FName
---@field m_WildernessPlaceTextLabel FName
---@field m_DesertPlaceTextLabel FName
---@field m_MountainPlaceTextLabel FName
---@field m_IslandPlaceTextLabel FName
---@field m_BackDialogTextLabel FName
---@field m_FailedDialogTextLabel FName
---@field m_ResetDialogTextLabel FName
---@field m_ConfirmDialogTextLabel FName
---@field debug_IsLoggingMode boolean
local UPartySplitWidgetBase = {}

---@param NewState EPARTY_SPLIT_WIDGET_STATE
function UPartySplitWidgetBase:SetWidgetState(NewState) end
---@param newPos FIntPoint
function UPartySplitWidgetBase:SetCursorPosition(newPos) end
---@param newPositions TMap<EPlayableCharacterID, EPARTY_SPLIT_PLACEMENT_POSITION>
function UPartySplitWidgetBase:SetCharacterPlacementPosition(newPositions) end
function UPartySplitWidgetBase:OnInputPlus() end
function UPartySplitWidgetBase:OnInputMinus() end
function UPartySplitWidgetBase:OnInputDecide() end
---@param Input FIntPoint
function UPartySplitWidgetBase:OnInputCursor(Input) end
function UPartySplitWidgetBase:OnInputCancel() end
---@param NextState EPARTY_SPLIT_WIDGET_STATE
---@param PrevState EPARTY_SPLIT_WIDGET_STATE
function UPartySplitWidgetBase:OnChangedWidgetState(NextState, PrevState) end
---@return EPARTY_SPLIT_WIDGET_STATE
function UPartySplitWidgetBase:GetWidgetState() end
---@param keyPos EPARTY_SPLIT_PLACEMENT_POSITION
---@return UPartySplitCharacterPlacementBoxBase
function UPartySplitWidgetBase:GetPlacementBoxByPlacementPos(keyPos) end
---@param keyPos FIntPoint
---@return UPartySplitCharacterPlacementBoxBase
function UPartySplitWidgetBase:GetPlacementBoxByCursorPos(keyPos) end
---@return FIntPoint
function UPartySplitWidgetBase:GetCursorPosition() end
---@return EPARTY_SPLIT_PLACEMENT_POSITION
function UPartySplitWidgetBase:GetCurrentSelectedPlacementPosition() end
---@return UPartySplitCharacterPlacementBoxBase
function UPartySplitWidgetBase:GetCurrentSelectedPlacementBox() end
---@return EPARTY_SPLIT_CLOSE_REASON
function UPartySplitWidgetBase:GetCloseReason() end
---@return TMap<EPlayableCharacterID, EPARTY_SPLIT_PLACEMENT_POSITION>
function UPartySplitWidgetBase:GetCharacterPositions() end
function UPartySplitWidgetBase:BroadcastOnClosedPartySplitWithResultDelegate() end


---@class UPathSplineComponent : USplineComponent
---@field m_ePathType EPATH_TYPE
local UPathSplineComponent = {}

---@return EPATH_TYPE
function UPathSplineComponent:GetPathType() end


---@class UPlacedSequencerBase : ULevelSequenceDirector
local UPlacedSequencerBase = {}

---@param Time float
---@return float
function UPlacedSequencerBase:SetUpFrameNumber(Time) end
---@param TalkDataLabel FName
---@param PlacementLabel FName
---@param balloonOffset FVector2D
---@param DispTime float
---@param DispDistance float
---@param BalloonDir EEventBalloonDir
---@param EnableTail boolean
function UPlacedSequencerBase:OpenAutoBalloonWithNPCFunction(TalkDataLabel, PlacementLabel, balloonOffset, DispTime, DispDistance, BalloonDir, EnableTail) end
---@param TalkTargetTag FName
---@param TalkDataLabel FName
---@param balloonOffset FVector2D
---@param DispTime float
---@param DispDistance float
---@param BalloonDir EEventBalloonDir
---@param EnableTail boolean
function UPlacedSequencerBase:OpenAutoBalloonFunction(TalkTargetTag, TalkDataLabel, balloonOffset, DispTime, DispDistance, BalloonDir, EnableTail) end
function UPlacedSequencerBase:InitSeqData() end
function UPlacedSequencerBase:Initialize() end
function UPlacedSequencerBase:Finalize() end


---@class UPlacementFadeComponent : UActorComponent
---@field m_pOwnerAct AActor
---@field m_fFadeTimer float
---@field m_pMaterialInstance UMaterialInstanceDynamic
---@field OnFadeInEvent FPlacementFadeComponentOnFadeInEvent
---@field OnFadeOutEvent FPlacementFadeComponentOnFadeOutEvent
local UPlacementFadeComponent = {}

---@param fFadeTime float
function UPlacementFadeComponent:StartFadeOutWithFadeTime(fFadeTime) end
function UPlacementFadeComponent:StartFadeOut() end
---@param fFadeTime float
function UPlacementFadeComponent:StartFadeInWithFadeTime(fFadeTime) end
function UPlacementFadeComponent:StartFadeInWait() end
function UPlacementFadeComponent:StartFadeIn() end
---@param cMaterial UMaterialInstanceDynamic
function UPlacementFadeComponent:SetUpMaterialInstance(cMaterial) end
---@param FadeTime float
function UPlacementFadeComponent:SetExFactorFadeTime(FadeTime) end
---@param fadeRate float
function UPlacementFadeComponent:SetExFactorFadeRate(fadeRate) end
---@param fadeRate float
function UPlacementFadeComponent:SetCameraFactorFadeRate(fadeRate) end
---@return boolean
function UPlacementFadeComponent:IsRunningExFactorFadeOut() end
---@return boolean
function UPlacementFadeComponent:IsRunningCameraFactorFadeOut() end
---@return boolean
function UPlacementFadeComponent:IsFadeOutFinish() end
---@return boolean
function UPlacementFadeComponent:IsFadeMode() end
---@return boolean
function UPlacementFadeComponent:IsFadeInWait() end
---@return boolean
function UPlacementFadeComponent:IsFadeInFinish() end
---@return boolean
function UPlacementFadeComponent:IsFadeFinish() end
---@return boolean
function UPlacementFadeComponent:IsCompletedExFactorFadeOut() end
---@return boolean
function UPlacementFadeComponent:IsCompletedCameraFactorFadeOut() end
---@return UMaterialInstanceDynamic
function UPlacementFadeComponent:GetMaterialInstance() end
function UPlacementFadeComponent:FadeInImmediately() end


---@class UPlacementUtility : UDataTableUtilityBase
local UPlacementUtility = {}

---@param PlacementLabel FName
---@return boolean
function UPlacementUtility:IsMerchantSubStoryFromPlacementLabel(PlacementLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param outLabel TArray<FName>
---@param levelName FName
function UPlacementUtility:GetPlacementNameByLevelName(returnCode, outLabel, levelName) end
---@param OutLabelInfo FLabelListData
---@param RowName FName
---@return boolean
function UPlacementUtility:GetPlacementInfo(OutLabelInfo, RowName) end
---@param PlacementData FPlacementData
---@param Index int32
---@param outEventParamSet FPlacementEventParamSet
function UPlacementUtility:GetPlacementEventParamSetByIndex(PlacementData, Index, outEventParamSet) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
function UPlacementUtility:GetPlacementDataRowNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param outInfoData TArray<FPlacementData>
---@param levelName FName
function UPlacementUtility:GetPlacementDataByLevelName(returnCode, outInfoData, levelName) end
---@param OutData FPlacementData
---@param TargetLabel FName
---@return boolean
function UPlacementUtility:GetPlacementData(OutData, TargetLabel) end
---@param OutData FNPCData
---@param PlacementLabel FName
---@return boolean
function UPlacementUtility:GetNPCDataByPlacementInfo(OutData, PlacementLabel) end
---@param OutData FNPCData
---@param NPCLabel FName
---@return boolean
function UPlacementUtility:GetNPCDataByNPCLabel(OutData, NPCLabel) end
---@param PlacementData FPlacementData
---@param outEventParamSet TArray<FPlacementEventParamSet>
---@return boolean
function UPlacementUtility:GetActivePlacementEventParamSet(PlacementData, outEventParamSet) end
---@param NPCLabel FName
---@param EventType ENPCEVENT_TYPE
---@param EventParam FName
---@return FName
function UPlacementUtility:GetActiveEventLabelFromEventTypeAndParam(NPCLabel, EventType, EventParam) end
---@param strData FString
---@param retByte uint8
function UPlacementUtility:EventTypeStringToByte(strData, retByte) end
---@param levelName FName
function UPlacementUtility:Debug_OutputPlacementInfo(levelName) end
---@param strData FString
---@param retByte uint8
function UPlacementUtility:CharaDirStringToByte(strData, retByte) end


---@class UPlayerDataUtility : UDataTableUtilityBase
local UPlayerDataUtility = {}

---@param Label FName
---@return int32
function UPlayerDataUtility:PlayerLabelToID(Label) end
---@param ID int32
---@return FName
function UPlayerDataUtility:PlayerIDToLabel(ID) end
---@param CharaID int32
---@param NameText FText
function UPlayerDataUtility:GetPlayerText(CharaID, NameText) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UPlayerDataUtility:GetPlayerTableRowNames(returnCode, OutRowNames) end
---@param OutData FPlayableCharacterData
---@param TargetID int32
---@return boolean
function UPlayerDataUtility:GetPlayerTableRowDataByID(OutData, TargetID) end
---@param OutData FPlayableCharacterData
---@param TargetID EPlayableCharacterID
---@return boolean
function UPlayerDataUtility:GetPlayerTableRowDataByEnum(OutData, TargetID) end
---@param OutData FPlayableCharacterData
---@param TargetLabel FName
---@return boolean
function UPlayerDataUtility:GetPlayerTableRowData(OutData, TargetLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRows TArray<FPlayableCharacterData>
---@return boolean
function UPlayerDataUtility:GetPlayerTableAllRows(returnCode, OutRows) end
---@param CharaID int32
---@param Image UTexture2D
---@return boolean
function UPlayerDataUtility:GetPlayerPortraitNameImage(CharaID, Image) end
---@param CharaID int32
---@param Image UTexture2D
---@param IsNight boolean
---@return boolean
function UPlayerDataUtility:GetPlayerPortraitImage(CharaID, Image, IsNight) end
---@param CharaID int32
---@param Image UTexture2D
---@param IsNight boolean
---@return boolean
function UPlayerDataUtility:GetPlayerPortraitBgImage(CharaID, Image, IsNight) end
---@param CharaID int32
---@param DayFcName FName
---@param NightFcName FName
function UPlayerDataUtility:GetPlayerFieldCommandName(CharaID, DayFcName, NightFcName) end
---@param CharaID int32
---@param DayFc FName
---@param NightFC FName
function UPlayerDataUtility:GetPlayerFieldCommandDetailInPlayerSelect(CharaID, DayFc, NightFC) end
---@param CharaID int32
---@param DetailText FText
function UPlayerDataUtility:GetPlayerDetailText(CharaID, DetailText) end
---@param CharaID int32
---@param outEquipmentLabels TArray<FName>
function UPlayerDataUtility:GetFirstEquipmentLabels(CharaID, outEquipmentLabels) end
---@param CharaID int32
---@param ClassText FText
function UPlayerDataUtility:GetClassText(CharaID, ClassText) end
---@param CharaID int32
---@param IsJapanese boolean
---@param VoiceSheet TArray<FName>
function UPlayerDataUtility:GetCharaVoice(CharaID, IsJapanese, VoiceSheet) end


---@class UPlayerLocationTrace : UObject
local UPlayerLocationTrace = {}


---@class UPlayerPropertyComponent : UActorComponent
---@field m_CurrentTransportType ETRANSPORTATION_TYPE
---@field m_CurrentTransportEffectType ETRANSPORT_EFFECT
---@field m_CurrentLevelArea LEVEL_AREA_TYPE
---@field m_PlayerCharacterID EPlayableCharacterID
---@field m_EnableFCJudge boolean
---@field m_RefTalkCharacter AKSCharacterBase
---@field m_RefEventTriger AEventTriggerBox
---@field m_RefSwitchIndoorTrigger ASwitchIndoorTrigger
---@field m_IsPTC_CheckSwitchIndoorTrigger boolean
---@field m_IsMissionRecord_CheckSwitchIndoorTrigger boolean
---@field m_IsPTC_SwitchIndoorTriggerEndOverlapIgnore boolean
local UPlayerPropertyComponent = {}

---@param Val AKSCharacterBase
function UPlayerPropertyComponent:SetRefTalkCharacter(Val) end
---@param Val ASwitchIndoorTrigger
function UPlayerPropertyComponent:SetRefSwitchIndoorTrigger(Val) end
---@param Val AEventTriggerBox
function UPlayerPropertyComponent:SetRefEventTriger(Val) end
---@param ID EPlayableCharacterID
---@return EPlayableCharacterID
function UPlayerPropertyComponent:SetPlayerID(ID) end
---@param bIsTriiger boolean
function UPlayerPropertyComponent:SetMissionRecord_CheckSwitchIndoorTrigger(bIsTriiger) end
---@param Val boolean
function UPlayerPropertyComponent:SetEnableFCJudge(Val) end
---@param Value ETRANSPORTATION_TYPE
---@return ETRANSPORTATION_TYPE
function UPlayerPropertyComponent:SetCurrentTransportType(Value) end
---@param Value ETRANSPORT_EFFECT
---@return ETRANSPORT_EFFECT
function UPlayerPropertyComponent:SetCurrentTransportEffectType(Value) end
---@param Value LEVEL_AREA_TYPE
---@return LEVEL_AREA_TYPE
function UPlayerPropertyComponent:SetCurrentLevelArea(Value) end
---@return boolean
function UPlayerPropertyComponent:IsMissionRecord_CheckSwitchIndoorTrigger() end
---@return AKSCharacterBase
function UPlayerPropertyComponent:GetRefTalkCharacter() end
---@return ASwitchIndoorTrigger
function UPlayerPropertyComponent:GetRefSwitchIndoorTrigger() end
---@return AEventTriggerBox
function UPlayerPropertyComponent:GetRefEventTriger() end
---@return EPlayableCharacterID
function UPlayerPropertyComponent:GetPlayerID() end
---@return boolean
function UPlayerPropertyComponent:GetEnableFCJudge() end
---@return ETRANSPORTATION_TYPE
function UPlayerPropertyComponent:GetCurrentTransportType() end
---@return ETRANSPORT_EFFECT
function UPlayerPropertyComponent:GetCurrentTransportEffectType() end
---@return LEVEL_AREA_TYPE
function UPlayerPropertyComponent:GetCurrentLevelArea() end
function UPlayerPropertyComponent:ClearReferenceObject() end


---@class UPlayerSelectIconBase : UWorldMapIconBase
local UPlayerSelectIconBase = {}

function UPlayerSelectIconBase:UpdateFlipBook() end
---@return FVector2D
function UPlayerSelectIconBase:GetSnapPositionOffset() end


---@class UPotentialityActionComponent : UActorComponent
---@field m_cOwnerPlayer ABattleCharacterBase
---@field m_cPlayerStatusUI UUserWidget
---@field m_cPlayerSubStatusUI UUserWidget
---@field m_nResumeBoostPoint int32
---@field m_nResumeActionPoint int32
---@field m_cPotentialityActionData FPotentialityActionData
---@field m_eUniqueActionType EPOTENTIALITY_ACTION_TYPE
---@field m_nActionPoint int32
---@field m_nActionPointMax int32
---@field m_bActionReady boolean
---@field m_bActionExec boolean
---@field m_bDoubleActionExec boolean
---@field m_bIsExecBreakAct boolean
local UPotentialityActionComponent = {}

---@param nNewActionPoint int32
function UPotentialityActionComponent:SetPotentialityActionPoint(nNewActionPoint) end
---@param cPlayerStatusUI UUserWidget
function UPotentialityActionComponent:SetPlayerSubStatusUI(cPlayerStatusUI) end
---@param cPlayerStatusUI UUserWidget
function UPotentialityActionComponent:SetPlayerStatusUI(cPlayerStatusUI) end
---@param bExecBreakAct boolean
function UPotentialityActionComponent:SetExecBreakAct(bExecBreakAct) end
---@return boolean
function UPotentialityActionComponent:ResumeUnusedPotentialityAction() end
---@param nValue int32
---@return boolean
function UPotentialityActionComponent:RecoveryPotentialityActionPoint(nValue) end
---@return boolean
function UPotentialityActionComponent:OnPotentialityAction_Common() end
---@return boolean
function UPotentialityActionComponent:OnPotentialityAction() end
---@param bCancel boolean
---@return boolean
function UPotentialityActionComponent:OffPotentialityAction_Common(bCancel) end
---@param bCancel boolean
---@return boolean
function UPotentialityActionComponent:OffPotentialityAction(bCancel) end
---@return boolean
function UPotentialityActionComponent:IsPotentialityActionReady() end
---@return boolean
function UPotentialityActionComponent:IsPotentialityActionPointMax() end
---@return boolean
function UPotentialityActionComponent:IsPotentialityActionExec() end
---@return boolean
function UPotentialityActionComponent:IsPotentialityActionAvailable() end
---@param cActionData FPotentialityActionData
---@param nActionPoint int32
function UPotentialityActionComponent:InitPotentialityAction(cActionData, nActionPoint) end
---@return EPOTENTIALITY_ACTION_TYPE
function UPotentialityActionComponent:GetUniquePotentialityAction() end
---@param outActionPoint int32
---@param outActionPointMax int32
function UPotentialityActionComponent:GetPotentialityActionPoint(outActionPoint, outActionPointMax) end
---@return FPotentialityActionData
function UPotentialityActionComponent:GetPotentialityActionData() end
---@param outActionCommandName FName
---@param outActionCommandDetail FName
function UPotentialityActionComponent:GetPotentialityActionCommandText(outActionCommandName, outActionCommandDetail) end
---@return TArray<FName>
function UPotentialityActionComponent:GetPotentialityActionAbility() end
function UPotentialityActionComponent:FullPotentialityActionPoint() end
---@return boolean
function UPotentialityActionComponent:FinishPotentialityAction() end
---@return boolean
function UPotentialityActionComponent:ExecPotentialityAction() end
---@param nValue int32
function UPotentialityActionComponent:Debug_SetPotentialityActionPointMax(nValue) end
---@param nValue int32
function UPotentialityActionComponent:Debug_SetPotentialityActionPoint(nValue) end
---@param eActionType EPOTENTIALITY_ACTION_TYPE
---@return boolean
function UPotentialityActionComponent:CheckEnablePotentialityAction(eActionType) end
---@param nAddActionPoint int32
---@param bIgnoreAddAbility boolean
function UPotentialityActionComponent:AddPotentialityActionPoint(nAddActionPoint, bIgnoreAddAbility) end


---@class UPotentialityActionDataUtility : UDataTableUtilityBase
local UPotentialityActionDataUtility = {}

---@param CharacterID EPlayableCharacterID
---@return boolean
function UPotentialityActionDataUtility:ReleasePotentialityAction(CharacterID) end
---@param CharacterID EPlayableCharacterID
---@return boolean
function UPotentialityActionDataUtility:IsReleasePotentialityAction(CharacterID) end
---@param OutData FPotentialityActionData
---@param CharacterID EPlayableCharacterID
---@param LogEnable boolean
---@return boolean
function UPotentialityActionDataUtility:GetPotentialityActionDataByPlayableCharacterID(OutData, CharacterID, LogEnable) end
---@param OutData FPotentialityActionData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UPotentialityActionDataUtility:GetPotentialityActionData(OutData, TargetLabel, LogEnable) end


---@class UPotentialityActionDetailBase : UKSUserWidgetBase
---@field m_pTitleText UKSTextBlock
---@field m_pDetailText UKSTextBlock
---@field m_pOpenAnimation UWidgetAnimation
---@field m_pCloseAnimation UWidgetAnimation
---@field m_pForceCloseAnimation UWidgetAnimation
---@field m_pForceOpenAnimation UWidgetAnimation
---@field m_fCloseTime float
local UPotentialityActionDetailBase = {}

---@param TitleLabel FName
---@param DetailLabel FName
function UPotentialityActionDetailBase:SetText(TitleLabel, DetailLabel) end
function UPotentialityActionDetailBase:Open() end
function UPotentialityActionDetailBase:ForceOpen() end
function UPotentialityActionDetailBase:ForceClose() end
function UPotentialityActionDetailBase:Close() end


---@class UPotentialityActionGageBase : UAcqUserWidget
---@field m_CurrentValue float
---@field m_MaxValue float
---@field m_PlayableCharacterId EPlayableCharacterID
---@field m_IsDead boolean
local UPotentialityActionGageBase = {}

---@param CurrentValue float
---@param MaxValue float
---@param isSkipAnim boolean
function UPotentialityActionGageBase:SetValue(CurrentValue, MaxValue, isSkipAnim) end
---@param PlayableCharacterId EPlayableCharacterID
function UPotentialityActionGageBase:Setup(PlayableCharacterId) end
function UPotentialityActionGageBase:PlayOpenAnimation() end
function UPotentialityActionGageBase:PlayCloseAnimation() end
function UPotentialityActionGageBase:OnRevival() end
function UPotentialityActionGageBase:OnDead() end


---@class UProceduralBuildingMeshList : UObject
---@field m_cBuildingMesh FProceduralBuildingMeshDataSet
local UProceduralBuildingMeshList = {}



---@class UPureImage : UImage
local UPureImage = {}


---@class URadarMapBase : UKSUserWidgetBase
---@field m_DestinationIconParam TMap<FName, FRadarMapIconParam>
---@field m_PositionOverlapPrevention TMap<int32, FRadarMapDisplayData>
local URadarMapBase = {}

---@param IsVisible boolean
---@return boolean
function URadarMapBase:SetRadarMapVisible(IsVisible) end
---@return boolean
function URadarMapBase:SetBackTitle() end
---@return boolean
function URadarMapBase:RemoveIcon_AllSubStoryEventTrigger() end
---@return boolean
function URadarMapBase:RemoveIcon_AllMapObject() end
---@return boolean
function URadarMapBase:RemoveIcon_AllLevelTrigger() end
---@return boolean
function URadarMapBase:RemoveIcon_AllFieldNpc() end
---@param DestinationLabel FName
function URadarMapBase:RemoveDestinationIconParam(DestinationLabel) end
function URadarMapBase:RemoveAllDestinationIconParam() end
---@return boolean
function URadarMapBase:RefreshLevelTriggerIcon() end
---@return boolean
function URadarMapBase:RefreshAllIcon() end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function URadarMapBase:OnRefreshSpawnComplete(eNoticeType, NoticeArgs) end
---@param IsVisible boolean
function URadarMapBase:NextSwitch(IsVisible) end
---@param DestinationLabel FName
---@param iconParam FRadarMapIconParam
function URadarMapBase:ModifyDestinationIconParam(DestinationLabel, iconParam) end
---@param DestinationLabel FName
---@return FRadarMapIconParam
function URadarMapBase:GetDestinationIconParam(DestinationLabel) end
---@param DestinationLabel FName
---@return boolean
function URadarMapBase:ExistsDestinationIconParam(DestinationLabel) end
---@return FString
function URadarMapBase:Debug_GetAllDestinationIconParam() end
---@return boolean
function URadarMapBase:ClearIcon() end
---@param TreasureIndex int32
---@return boolean
function URadarMapBase:CheckTreasureBoxIcon(TreasureIndex) end
---@param PointIndex int32
---@return boolean
function URadarMapBase:CheckHiddenPointIcon(PointIndex) end
---@param attachIndex int32
---@param DestinationLabel FName
---@param IconType ERADARMAP_ICON_TYPE
---@param ObjType ERADARMAP_ICON_OBJ_TYPE
---@param LevelTriggerID uint8
---@param NextFieldName FName
---@param TargetObjectName FName
---@param Position FVector
---@param TreasureIndex int32
---@param gameColor EGameColor
---@param RippleColor EGameColor
---@param TargetCharaID int32
---@return boolean
function URadarMapBase:AddIcon(attachIndex, DestinationLabel, IconType, ObjType, LevelTriggerID, NextFieldName, TargetObjectName, Position, TreasureIndex, gameColor, RippleColor, TargetCharaID) end
---@param DestinationLabel FName
---@param iconParam FRadarMapIconParam
function URadarMapBase:AddDestinationIconParam(DestinationLabel, iconParam) end


---@class URadarMapUtility : UDataTableUtilityBase
local URadarMapUtility = {}

---@return boolean
function URadarMapUtility:Setup() end
function URadarMapUtility:RefreshRadarMap() end
---@param dbName FName
---@param notice EDBNoticeType
function URadarMapUtility:NotifyRadarMapDb(dbName, notice) end
---@param outMainStoryLvTrigIdList TArray<ELevelTriggerID>
---@param outSubStoryLvTrigIdList TArray<ELevelTriggerID>
---@param levelName FName
function URadarMapUtility:GetSubStoryDestinationLevelTriggerInLevel(outMainStoryLvTrigIdList, outSubStoryLvTrigIdList, levelName) end
---@param outIconPlacement TArray<FRadarMapDisplayData>
---@param levelName FName
function URadarMapUtility:GetDestinationSubPlacementInLevel(outIconPlacement, levelName) end
---@param outIconPlacement TArray<FRadarMapDisplayData>
---@param levelName FName
function URadarMapUtility:GetDestinationPlacementInLevel(outIconPlacement, levelName) end
---@param outLevelTriggerIdList TArray<ELevelTriggerID>
---@param levelName FName
function URadarMapUtility:GetDestinationLevelTriggerInLevel(outLevelTriggerIdList, levelName) end
---@param OutRow FRadarMapDestinationData
---@param MainStory FName
---@param levelName FName
---@param LevelAreaType LEVEL_AREA_TYPE
---@return boolean
function URadarMapUtility:GetDestinationDataByMainStory(OutRow, MainStory, levelName, LevelAreaType) end
---@param OutRow FRadarMapDestinationData
---@param Label FName
---@return boolean
function URadarMapUtility:GetDestinationData(OutRow, Label) end


---@class URankWidgetBase : UUserWidget
local URankWidgetBase = {}

function URankWidgetBase:SetupRankList() end
---@param rank int32
function URankWidgetBase:SetRank(rank) end


---@class UReminiscenceDataUtility : UDataTableUtilityBase
local UReminiscenceDataUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param outReminiMergeData FReminiscenceMergeSetting
---@param reminiMergeLabel FName
function UReminiscenceDataUtility:GetReminiscenceMergeByLabel(returnCode, outReminiMergeData, reminiMergeLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param outReminiData FReminiscenceSetting
---@param reminiLabel FName
function UReminiscenceDataUtility:GetReminiscenceDataByLabel(returnCode, outReminiData, reminiLabel) end


---@class UReminiscenceUtility : UBlueprintFunctionLibrary
local UReminiscenceUtility = {}

---@param PlayerCharaId EPlayableCharacterID
---@return boolean
function UReminiscenceUtility:StartPrologueReminiscenceFromMainMenu(PlayerCharaId) end
---@param PlayerCharaId EPlayableCharacterID
---@return boolean
function UReminiscenceUtility:StartPrologueReminiscenceFromBarMenu(PlayerCharaId) end
---@param PlayerCharaId EPlayableCharacterID
---@return boolean
function UReminiscenceUtility:StartPrologueReminiscence(PlayerCharaId) end
---@param reminiscenceLabel FName
---@return boolean
function UReminiscenceUtility:StartPlayableReminiscenceByLabel(reminiscenceLabel) end
---@param reminiscenceId int32
---@return boolean
function UReminiscenceUtility:StartPlayableReminiscence(reminiscenceId) end
---@param PlayerCharaId EPlayableCharacterID
---@return boolean
function UReminiscenceUtility:SkipPrologueReminiscence(PlayerCharaId) end
---@param reminisceceId int32
---@param addedItemLabels TArray<FName>
---@return boolean
function UReminiscenceUtility:SetupFirstEquipmentOnSkipReminiscence(reminisceceId, addedItemLabels) end
function UReminiscenceUtility:SetReturnLevelAfterReminiscence() end
---@param bFromMainMenu boolean
function UReminiscenceUtility:SetPlayReminiscenceFromMainMenu(bFromMainMenu) end
---@param bPlaying boolean
function UReminiscenceUtility:SetPlayingReminiscence(bPlaying) end
---@param PlayerCharaId EPlayableCharacterID
---@param bCompleted boolean
function UReminiscenceUtility:SetCompletedPrologueReminiscence(PlayerCharaId, bCompleted) end
---@param WorldContextObject UObject
---@param backupData FReminiscenceRestorePlacement
function UReminiscenceUtility:RestorePlayerPlacementForPartyChat(WorldContextObject, backupData) end
---@return boolean
function UReminiscenceUtility:RestorePartyOnPrologueReminiscence() end
---@return boolean
function UReminiscenceUtility:RestorePartyOnPlayableReminiscence() end
---@param PlayerCharaId EPlayableCharacterID
---@param OutResult boolean
---@param outIsAddMainMember boolean
function UReminiscenceUtility:JoinPlayerCharacter(PlayerCharaId, OutResult, outIsAddMainMember) end
---@return boolean
function UReminiscenceUtility:IsPlayReminiscenceFromMainMenu() end
---@return boolean
function UReminiscenceUtility:IsPlayingReminiscence() end
---@return boolean
function UReminiscenceUtility:IsPlayingPrologueReminiscence() end
---@return boolean
function UReminiscenceUtility:IsPlayingPastReminiscence() end
---@param PlayerCharaId EPlayableCharacterID
---@return boolean
function UReminiscenceUtility:IsCompletedPrologueReminiscence(PlayerCharaId) end
---@return FPlayerLocation
function UReminiscenceUtility:GetReturnLevelAfterReminiscence() end
---@return boolean
function UReminiscenceUtility:ExistsReturnLevelAfterReminiscence() end
---@return boolean
function UReminiscenceUtility:EndPrologueReminiscence() end
---@return boolean
function UReminiscenceUtility:EndPlayableReminiscence() end
---@param outDebugInfo FString
function UReminiscenceUtility:Debug_GetReminiscenceDebugInfo(outDebugInfo) end
function UReminiscenceUtility:ClearReturnLevelAfterReminiscence() end
---@param WorldContextObject UObject
---@param outBackupData FReminiscenceRestorePlacement
---@return boolean
function UReminiscenceUtility:BackupPlayerPlacementForTheater(WorldContextObject, outBackupData) end


---@class URevivalObjectManageComponent : UActorComponent
local URevivalObjectManageComponent = {}

---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function URevivalObjectManageComponent:OnStartLevelChange(eNoticeType, NoticeArgs) end


---@class URevivalObjectManageHelper : UBlueprintFunctionLibrary
local URevivalObjectManageHelper = {}

---@param ObjectData FKSObjectData
---@param PlacementData FPlacementData
function URevivalObjectManageHelper:RegisterRevivalObject(ObjectData, PlacementData) end


---@class URichEventCommandBase : UEventCommandBase
---@field IsGameOverFinish boolean
---@field eGameOverState EEVENTGAMEOVER_STATE
---@field FadeEndTime float
---@field FadeEndColor FLinearColor
---@field ParticipationIndex int32
---@field DialogMode EEVENTDIALOG_MODE
---@field SelectDialogIndex int32
---@field SelectLabelName FName
local URichEventCommandBase = {}

---@param Name FString
---@param NameLabel FName
---@param Message FString
---@param MessageLabel FName
function URichEventCommandBase:VisibleTalkTaxtData(Name, NameLabel, Message, MessageLabel) end
---@param nIndex int32
function URichEventCommandBase:StopSubSequenceIndexFunction(nIndex) end
function URichEventCommandBase:StopSubSequenceFunction() end
---@param Sequence ULevelSequencePlayer
function URichEventCommandBase:StopSubSequenceAction(Sequence) end
function URichEventCommandBase:StopResidentSubSequencerFunction() end
---@param Loop FString
function URichEventCommandBase:StartResidentSubSequencerFunction(Loop) end
---@param EnemyGroupID FString
---@param FinishEvent FString
function URichEventCommandBase:StartPreparationBattleFunction(EnemyGroupID, FinishEvent) end
---@param EventData FEventData
function URichEventCommandBase:StartPreparationBattleExec(EventData) end
---@param ResourceName FName
---@param EndTime float
---@param FadeColor FLinearColor
function URichEventCommandBase:StartFlashbackFunciton(ResourceName, EndTime, FadeColor) end
---@param EnemyGroupID FString
---@param FinishEvent FString
function URichEventCommandBase:StartFinalBattleFunction(EnemyGroupID, FinishEvent) end
---@param EventData FEventData
function URichEventCommandBase:StartFinalBattleExec(EventData) end
---@param EventData FEventData
function URichEventCommandBase:StartEventBattle(EventData) end
---@param Character EPlayableCharacterID
function URichEventCommandBase:StartEndCardFunciton(Character) end
---@param SeqIndex int32
---@param TagName FName
---@param Offset FVector
function URichEventCommandBase:StartDeepThinkResidentFunction(SeqIndex, TagName, Offset) end
---@param nIndex int32
---@param TagName FName
---@param Offset FVector
function URichEventCommandBase:StartDeepThinkFunction(nIndex, TagName, Offset) end
function URichEventCommandBase:StartDeepDirectingFunction() end
---@param EventChara AKSCharacterBase
---@param Visible boolean
---@param FadeTime float
function URichEventCommandBase:StartCharaFadeFunction(EventChara, Visible, FadeTime) end
---@param EnemyGroup FString
---@param FinishEvent FString
---@param EventBattle boolean
---@param SingleBattle boolean
---@param EventBattleChara EPlayableCharacterID
---@param FixFirstOrderPlayer EPlayableCharacterID
---@param DarkSurface boolean
function URichEventCommandBase:StartBattleFunction(EnemyGroup, FinishEvent, EventBattle, SingleBattle, EventBattleChara, FixFirstOrderPlayer, DarkSurface) end
---@param EnemyGroup FString
---@param FinishEvent FString
---@param EventBattle boolean
---@param EventBattleChara EPlayableCharacterID
---@param FixFirstOrderPlayer EPlayableCharacterID
---@param FlagIndex int32
function URichEventCommandBase:StartBattleBitFlagFunction(EnemyGroup, FinishEvent, EventBattle, EventBattleChara, FixFirstOrderPlayer, FlagIndex) end
---@param EventChara AKSCharacterBase
---@param SetDir EKSCharacterDir
---@param AddTagName FName
---@param ActionLabelName EKSCharacterAction
---@param LoopSetting EKSCharacterAnimationLoop
function URichEventCommandBase:SpawnThiefActionFunction(EventChara, SetDir, AddTagName, ActionLabelName, LoopSetting) end
---@param EventChara AKSCharacterBase
---@param PartyPosition int32
---@param SetDir EKSCharacterDir
---@param AddTagName FName
---@param ActionLabelName EKSCharacterAction
---@param LoopSetting EKSCharacterAnimationLoop
function URichEventCommandBase:SpawnPartyPositionCharaFunction(EventChara, PartyPosition, SetDir, AddTagName, ActionLabelName, LoopSetting) end
---@param EventChara AKSCharacterBase
---@param CharaLabelName FName
---@param SetDir EKSCharacterDir
---@param AddTagName FName
---@param partnerID EHUNTER_PARTNER_ID
function URichEventCommandBase:SpawnPartnerCharaFunction(EventChara, CharaLabelName, SetDir, AddTagName, partnerID) end
---@param EventChara AKSCharacterBase
---@param Index int32
---@param SetDir EKSCharacterDir
---@param AddTagName FName
---@param ActionLabelName EKSCharacterAction
---@param LoopSetting EKSCharacterAnimationLoop
function URichEventCommandBase:SpawnParticipationOrderCharaFunction(EventChara, Index, SetDir, AddTagName, ActionLabelName, LoopSetting) end
---@param EventChara AKSCharacterBase
---@param SetDir EKSCharacterDir
---@param AddTagName FName
---@param ActionLabelName EKSCharacterAction
---@param LoopSetting EKSCharacterAnimationLoop
function URichEventCommandBase:SpawnFirstSelectCharaFunction(EventChara, SetDir, AddTagName, ActionLabelName, LoopSetting) end
---@param ID int32
---@param EffectLabel FName
---@param LifeTime float
---@param Pos FVector
---@param Rotate FRotator
---@param Scale FVector
---@param CharacterLabel FName
---@param partnerID EHUNTER_PARTNER_ID
function URichEventCommandBase:SpawnEventEffectPartnerFunction(ID, EffectLabel, LifeTime, Pos, Rotate, Scale, CharacterLabel, partnerID) end
---@param ID int32
---@param EffectLabel FName
---@param LifeTime float
---@param Pos FVector
---@param CharacterLabel FName
function URichEventCommandBase:SpawnEventEffectFunction(ID, EffectLabel, LifeTime, Pos, CharacterLabel) end
---@param EventChara AKSCharacterBase
---@param ID int32
---@param EffectLabel FName
---@param LifeTime float
---@param Pos FVector
function URichEventCommandBase:SpawnEventCharaEffectFunction(EventChara, ID, EffectLabel, LifeTime, Pos) end
---@param EventChara AKSCharacterBase
---@param CharaLabelName FName
---@param SetDir EKSCharacterDir
---@param AddTagName FName
---@param ActionLabelName EKSCharacterAction
---@param LoopSetting EKSCharacterAnimationLoop
function URichEventCommandBase:SpawnCharaActionFunction(EventChara, CharaLabelName, SetDir, AddTagName, ActionLabelName, LoopSetting) end
---@param EventChara AKSCharacterBase
---@param CharaLabelName FName
---@param SetDir EKSCharacterDir
---@param AddTagName FName
---@param ActionLabelName EKSCharacterAction
---@param LoopSetting EKSCharacterAnimationLoop
---@param FootStep boolean
function URichEventCommandBase:SpawnCharaActionFootStepFunction(EventChara, CharaLabelName, SetDir, AddTagName, ActionLabelName, LoopSetting, FootStep) end
---@param EventChara AKSCharacterBase
---@param PartySetID EKSPartySet
---@param PartyPosition int32
---@param SetDir EKSCharacterDir
---@param AddTagName FName
---@param ActionLabelName EKSCharacterAction
---@param LoopSetting EKSCharacterAnimationLoop
function URichEventCommandBase:SpawnAtlantisPartyCharaFunction(EventChara, PartySetID, PartyPosition, SetDir, AddTagName, ActionLabelName, LoopSetting) end
---@param Time float
---@return float
function URichEventCommandBase:SetUpFrameNumber(Time) end
---@param Index int32
---@param OptionName FName
function URichEventCommandBase:SetSubSequenceOptionFunction(Index, OptionName) end
function URichEventCommandBase:SetOpenEventGameOverUI() end
---@param TargetBP FName
---@param DoorOpen boolean
---@param IgnoreSE boolean
function URichEventCommandBase:SetOpenCloseDoorFunction(TargetBP, DoorOpen, IgnoreSE) end
---@param In boolean
---@param TargetBP FName
---@param DoorOpen boolean
function URichEventCommandBase:SetHouseModeTheaterFunction(In, TargetBP, DoorOpen) end
---@param EventChara AKSCharacterBase
---@param Enable boolean
function URichEventCommandBase:SetGravityModeFunction(EventChara, Enable) end
---@param EventChara AKSCharacterBase
---@param Rate float
function URichEventCommandBase:SetFlipbookPlayRateFunction(EventChara, Rate) end
function URichEventCommandBase:SetFlipbookPlayRateAllFunction() end
---@param Enable boolean
function URichEventCommandBase:SetEnableFootStepSoundFunction(Enable) end
---@param EventChara AKSCharacterBase
---@param Enable boolean
function URichEventCommandBase:SetEnableCharacterFootStepFunction(EventChara, Enable) end
---@param TargetTag FName
---@param Enable boolean
function URichEventCommandBase:SetEnableActorBillboardFunction(TargetTag, Enable) end
---@param Index int32
---@param Flag boolean
function URichEventCommandBase:SetBitFlagFunction(Index, Flag) end
---@param FrameNumber int32
function URichEventCommandBase:SequencerFrameJumpFunction(FrameNumber) end
---@param FrameNumber int32
---@param FlagIndex int32
function URichEventCommandBase:SequencerFrameBitFlagJumpFunction(FrameNumber, FlagIndex) end
---@param nIndex int32
function URichEventCommandBase:RestartSubSequenceReditentFunction(nIndex) end
---@param nIndex int32
function URichEventCommandBase:RestartSubSequenceFunction(nIndex) end
function URichEventCommandBase:RestartMainSequencerFunction() end
function URichEventCommandBase:ResetFlipbookPlayRateFunction() end
---@param ID int32
---@return boolean
function URichEventCommandBase:RemoveEventEffectFunction(ID) end
---@param TargetCamera UCameraComponent
---@param Enable boolean
function URichEventCommandBase:PostEffectSepiaFunction(TargetCamera, Enable) end
---@param TargetCamera UCameraComponent
---@param Enable boolean
function URichEventCommandBase:PostEffectSepiaFadeFunction(TargetCamera, Enable) end
---@param TargetCamera UCameraComponent
---@param Scale FVector
function URichEventCommandBase:PostEffectMonochromeParamFunction(TargetCamera, Scale) end
---@param TargetCamera UCameraComponent
---@param Enable boolean
function URichEventCommandBase:PostEffectMonochromeFunction(TargetCamera, Enable) end
---@param TargetCamera UCameraComponent
---@param Enable boolean
function URichEventCommandBase:PostEffectMonochromeFadeFunction(TargetCamera, Enable) end
---@param SELabel ESE_TYPE
function URichEventCommandBase:PlayRichEventSeLabelFunction(SELabel) end
---@param strSeLabel FName
---@param partnerID EHUNTER_PARTNER_ID
function URichEventCommandBase:PlayRichEventPartnerSeFunction(strSeLabel, partnerID) end
function URichEventCommandBase:PlayFieldCommandDialogFunction() end
---@param SoundData USoundAtomCue
function URichEventCommandBase:PlayEditorSound(SoundData) end
---@param FrameSetData FJumpFrameSet
---@param EndFrame int32
function URichEventCommandBase:ParticipationOrderFrameJumpFunction(FrameSetData, EndFrame) end
---@param TutorialType ETUTORIAL_TYPE
---@param Force boolean
function URichEventCommandBase:OpenTutorialUIFunciton(TutorialType, Force) end
---@param TalkLabel FName
---@param SelectTextLabel1 FName
---@param JumpLabelName1 FName
---@param SelectTextLabel2 FName
---@param JumpLabelName2 FName
---@param SelectTextLabel3 FName
---@param JumpLabelName3 FName
---@param SelectTextLabel4 FName
---@param JumpLabelName4 FName
function URichEventCommandBase:OpenSelectDialogVariableTypeFunction(TalkLabel, SelectTextLabel1, JumpLabelName1, SelectTextLabel2, JumpLabelName2, SelectTextLabel3, JumpLabelName3, SelectTextLabel4, JumpLabelName4) end
---@param TalkLabel FName
---@param SelectTextLabel1 FName
---@param SelectSubSeqIndex1 int32
---@param SelectTextLabel2 FName
---@param SelectSubSeqIndex2 int32
function URichEventCommandBase:OpenSelectDialogNextEventFunction(TalkLabel, SelectTextLabel1, SelectSubSeqIndex1, SelectTextLabel2, SelectSubSeqIndex2) end
---@param TalkLabel FName
---@param SelectTextLabel1 FName
---@param JumpLabelName1 FName
---@param SelectTextLabel2 FName
---@param JumpLabelName2 FName
function URichEventCommandBase:OpenSelectDialogLabelJumpFunction(TalkLabel, SelectTextLabel1, JumpLabelName1, SelectTextLabel2, JumpLabelName2) end
---@param levelLabel FName
function URichEventCommandBase:OpenMapNotificationUIFunciton(levelLabel) end
function URichEventCommandBase:OpenKenshiTutorialUIFunciton() end
---@param TalkLabel FName
---@param ItemLabel_1 FName
---@param ItemNum_1 int32
---@param ItemLabel_2 FName
---@param ItemNum_2 int32
---@param ItemLabel_3 FName
---@param ItemNum_3 int32
---@param ItemLabel_4 FName
---@param ItemNum_4 int32
function URichEventCommandBase:OpenGetItemDialogFunction(TalkLabel, ItemLabel_1, ItemNum_1, ItemLabel_2, ItemNum_2, ItemLabel_3, ItemNum_3, ItemLabel_4, ItemNum_4) end
---@param JumpLabel FName
function URichEventCommandBase:OpenEventGameOverUIFunciton(JumpLabel) end
---@param TalkLabel FName
---@param SelectTextLabel1 FName
---@param JumpLabelName1 FName
---@param SelectTextLabel2 FName
---@param JumpLabelName2 FName
---@param AnswerIndex int32
function URichEventCommandBase:OpenChoiceAnswerDialogFunction(TalkLabel, SelectTextLabel1, JumpLabelName1, SelectTextLabel2, JumpLabelName2, AnswerIndex) end
---@param RegionName FString
---@param levelName FString
function URichEventCommandBase:NotificationEditorDrawText(RegionName, levelName) end
function URichEventCommandBase:NarrationWaitFunction() end
---@param NarrationText TArray<FString>
---@param AutoTime FString
function URichEventCommandBase:NarrationEditorDrawText(NarrationText, AutoTime) end
---@param Actor AActor
---@param AddOffset FVector
function URichEventCommandBase:MoveSpotLightTargetFunction(Actor, AddOffset) end
---@param Actor AActor
---@param AddOffset FVector
function URichEventCommandBase:MoveSpotLightResidentFunction(Actor, AddOffset) end
function URichEventCommandBase:MessagePauseFunction() end
---@param TagName FName
---@param Enable boolean
function URichEventCommandBase:MapObjectVisibleParentFunction(TagName, Enable) end
---@param TagName FName
---@param Enable boolean
function URichEventCommandBase:MapObjectVisibleFunction(TagName, Enable) end
function URichEventCommandBase:MapObjectRefreshFunction() end
---@param ResourceName FName
function URichEventCommandBase:LoadFlashbackDataFunciton(ResourceName) end
---@return boolean
function URichEventCommandBase:IsEventFadeOutEnd() end
---@return boolean
function URichEventCommandBase:IsEventFadeInEnd() end
function URichEventCommandBase:Initialize() end
---@param Count int32
---@return int32
function URichEventCommandBase:GetTrackNum(Count) end
---@param Track UMovieSceneTrack
---@return FName
function URichEventCommandBase:GetTrackName(Track) end
---@param Count int32
---@return TArray<UMovieSceneTrack>
function URichEventCommandBase:GetTrackData(Count) end
---@param Section UMovieSceneSubSection
---@return FString
function URichEventCommandBase:GetTargetSequenceName(Section) end
---@param Count int32
---@return FString
function URichEventCommandBase:GetMovieSectionsName(Count) end
---@param Count int32
---@return UMovieSceneSection
function URichEventCommandBase:GetMovieSectionsData(Count) end
---@return int32
function URichEventCommandBase:GetMovieSectionsCount() end
---@param Count int32
---@return FString
function URichEventCommandBase:GetMovieBindingName(Count) end
---@return int32
function URichEventCommandBase:GetMovieBindingCount() end
---@param FrameSetData FJumpFrameSet
function URichEventCommandBase:FirstSelectCharaFrameJumpFunction(FrameSetData) end
function URichEventCommandBase:Finalize() end
---@param FadeType EEVENT_FADE_TYPE
---@param Color FLinearColor
function URichEventCommandBase:FadeOutTypeSelectFunction(FadeType, Color) end
---@param FadeType EEVENT_FADE_TYPE
---@param Color FLinearColor
function URichEventCommandBase:FadeInTypeSelectFunction(FadeType, Color) end
---@param EndTime float
---@param Color FLinearColor
function URichEventCommandBase:EventFadeOutUIFunction(EndTime, Color) end
---@param EndTime float
function URichEventCommandBase:EventFadeInUIFunction(EndTime) end
---@param EndTime float
function URichEventCommandBase:EndFlashbackFunciton(EndTime) end
---@param SeqIndex int32
function URichEventCommandBase:EndDeepThinkResidentFunction(SeqIndex) end
---@param nIndex int32
function URichEventCommandBase:EndDeepThinkFunction(nIndex) end
function URichEventCommandBase:EndDeepDirectingFunction() end
---@return boolean
function URichEventCommandBase:DialogUpdate() end
---@param Actor AActor
function URichEventCommandBase:DeepDirectingStartEndAttachFunction(Actor) end
---@param Enable boolean
function URichEventCommandBase:DeepDirectingAttachPlayerFunction(Enable) end
---@param Enable boolean
function URichEventCommandBase:DeepDirectingAttachCameraFunction(Enable) end
---@param ChapterIndex int32
---@param Frame1 int32
---@param Frame2 int32
---@param Frame3 int32
function URichEventCommandBase:DancerSongFrameJumpFunction(ChapterIndex, Frame1, Frame2, Frame3) end
---@param Zone ETimeZoneType
---@return boolean
function URichEventCommandBase:CheckTimeZoneEditor(Zone) end
---@param ActorComponent USceneComponent
---@param Zone ETimeZoneType
function URichEventCommandBase:CheckObjectTimeZoneFunction(ActorComponent, Zone) end
---@param Zone ETimeZoneType
function URichEventCommandBase:ChangeTimeZoneFunction(Zone) end
---@param TargetTag FName
---@param ActionLabelName EKSCharacterAction
---@param frame int32
---@param LoopSetting EKSCharacterAnimationLoop
---@param SetDir EKSCharacterDir
function URichEventCommandBase:ChangeActionCharaTagNameFunction(TargetTag, ActionLabelName, frame, LoopSetting, SetDir) end
function URichEventCommandBase:CallHideBattleWipeFunction() end
---@param TalkTargetTag FName
---@param BalloonDir EEventBalloonDir
---@param TalkText FName
---@param AutoTalkWait float
---@param Offset FVector2D
---@param StopSubSeq boolean
function URichEventCommandBase:BalloonOpenSubSequenceFunction(TalkTargetTag, BalloonDir, TalkText, AutoTalkWait, Offset, StopSubSeq) end
---@param TalkTargetTag FName
---@param BalloonDir EEventBalloonDir
---@param TalkTextA FName
---@param TalkTextB FName
---@param AutoTalkWait float
---@param StopMainSeq boolean
---@param PlaybackSubSeqPosition float
---@param Offset FVector2D
---@param WithoutTail boolean
function URichEventCommandBase:BalloonOpenPartnerFunction(TalkTargetTag, BalloonDir, TalkTextA, TalkTextB, AutoTalkWait, StopMainSeq, PlaybackSubSeqPosition, Offset, WithoutTail) end
---@param TalkTargetTag FName
---@param BalloonDir EEventBalloonDir
---@param TalkText FName
---@param AutoTalkWait float
---@param Offset FVector2D
---@param StopMainSeq boolean
---@param PlaybackSubSeqPosition float
---@param WithoutTail boolean
function URichEventCommandBase:BalloonOpenLabelPositionFunction(TalkTargetTag, BalloonDir, TalkText, AutoTalkWait, Offset, StopMainSeq, PlaybackSubSeqPosition, WithoutTail) end
---@param BalloonPos EBALLOON_TEXT_POS
---@param TalkText FName
---@param AutoTalkWait float
---@param IsCustomFadeTime boolean
---@param FadeOutTime float
---@param StopMainSeq boolean
function URichEventCommandBase:BalloonOpenDeepThinkingFixedFunction(BalloonPos, TalkText, AutoTalkWait, IsCustomFadeTime, FadeOutTime, StopMainSeq) end
---@param EventChara AKSCharacterBase
---@param Enable boolean
function URichEventCommandBase:AttachCharacterChangeCollisionFunction(EventChara, Enable) end
---@param PartySetID EKSPartySet
---@param PartyPosition int32
---@param FrameSetData FJumpFrameSet
function URichEventCommandBase:AtlantisCharaFrameJumpFunction(PartySetID, PartyPosition, FrameSetData) end


---@class URichEventCommandObject : UActorComponent
---@field m_pTargetMainSequencePlayer ULevelSequencePlayer
---@field m_bIsStopMainSequence boolean
---@field m_fPlaybackSubSeqPosition float
---@field m_fFadeTime float
---@field EventEmotionList TMap<FName, FEventEmotion>
local URichEventCommandObject = {}

function URichEventCommandObject:TitlePauseFunction() end
---@param nNumLoops int32
---@param fSubSeqPlayPosition float
---@param nIndex int32
function URichEventCommandObject:SubSequencePlayIndexFunction(nNumLoops, fSubSeqPlayPosition, nIndex) end
---@param nNumLoops int32
---@param fSubSeqPlayPosition float
function URichEventCommandObject:SubSequencePlayFunction(nNumLoops, fSubSeqPlayPosition) end
---@param nIndex int32
function URichEventCommandObject:StopSubSequenceIndexFunction(nIndex) end
function URichEventCommandObject:StopSubSequenceFunction() end
---@param Sequence ULevelSequencePlayer
function URichEventCommandObject:StopSubSequenceAction(Sequence) end
---@param fFadeOutTime float
function URichEventCommandObject:StopRichEventBgmFunction(fFadeOutTime) end
---@param TagName FName
function URichEventCommandObject:StopEmotionFunction(TagName) end
---@param TagName FName
---@param EmotionType EEMOTION_TYPE
---@param LifeTime float
---@param Offset FVector
function URichEventCommandObject:StartPlayEmotionFunction(TagName, EmotionType, LifeTime, Offset) end
---@param CameraType EKSCameraType
---@param fBlend float
function URichEventCommandObject:StartCameraSpawnFunction(CameraType, fBlend) end
---@param EnemyGroup FString
---@param FinishEvent FString
---@param EventBattle boolean
function URichEventCommandObject:StartBattleFunction(EnemyGroup, FinishEvent, EventBattle) end
---@param EventChara AKSCharacterBase
---@param CharaLabelName FName
---@param SetDir EKSCharacterDir
---@param AddTagName FName
function URichEventCommandObject:SpawnCharaFunction(EventChara, CharaLabelName, SetDir, AddTagName) end
---@param Text FString
---@param Time float
function URichEventCommandObject:ShowDebugInfoTextFunction(Text, Time) end
---@param Index int32
---@param OptionName FName
function URichEventCommandObject:SetSubSequenceOptionFunction(Index, OptionName) end
---@param Position FVector
function URichEventCommandObject:SetPlayerPositionFunction(Position) end
---@param In boolean
---@param TargetBP FName
---@param DoorOpen boolean
function URichEventCommandObject:SetHouseModeFunction(In, TargetBP, DoorOpen) end
---@param nIndex int32
function URichEventCommandObject:RestartSubSequenceFunction(nIndex) end
---@param strSeLabel FName
function URichEventCommandObject:PlayRichEventSeFunction(strSeLabel) end
---@param fFadeOutTime float
---@param fFadeInTime float
function URichEventCommandObject:PlayRichEventBgmMapFunction(fFadeOutTime, fFadeInTime) end
---@param strBgmLabel FName
---@param fFadeOutTime float
---@param fFadeInTime float
function URichEventCommandObject:PlayRichEventBgmFunction(strBgmLabel, fFadeOutTime, fFadeInTime) end
---@param nBlockId int32
function URichEventCommandObject:PlayRichEventBgmBlockFunction(nBlockId) end
---@param strNarrationLabel FName
---@param StopMainSequence boolean
---@param fPlaybackSubSeqPosition float
function URichEventCommandObject:NarrationPlayFunction(strNarrationLabel, StopMainSequence, fPlaybackSubSeqPosition) end
---@param Actor AActor
---@param AddOffset FVector
---@return FName
function URichEventCommandObject:MoveSpotLightTargetFunction(Actor, AddOffset) end
function URichEventCommandObject:InitSeqData() end
---@param FadeType EEVENT_FADE_TYPE
---@param Color FLinearColor
function URichEventCommandObject:FadeOutTypeSelectFunction(FadeType, Color) end
---@param EndTime float
---@param Color FLinearColor
function URichEventCommandObject:FadeOutFunction(EndTime, Color) end
---@param FadeType EEVENT_FADE_TYPE
---@param Color FLinearColor
function URichEventCommandObject:FadeInTypeSelectFunction(FadeType, Color) end
---@param EndTime float
---@param Color FLinearColor
function URichEventCommandObject:FadeInFunction(EndTime, Color) end
function URichEventCommandObject:End() end
---@param EventChara AKSCharacterBase
function URichEventCommandObject:DetachCharacterFunction(EventChara) end
---@param fVolume float
---@param fFadeTime float
function URichEventCommandObject:ChangeVolumeEnvFunction(fVolume, fFadeTime) end
---@param eType ERICHEVENT_CMD
---@return boolean
function URichEventCommandObject:ChangeUpdateCommand(eType) end
---@param CameraType EKSCameraType
---@param fBlend float
function URichEventCommandObject:ChangeCameraFunction(CameraType, fBlend) end
---@param EventChara AKSCharacterBase
---@param ActionLabelName EKSCharacterAction
---@param frame int32
---@param LoopSetting EKSCharacterAnimationLoop
---@param SetDir EKSCharacterDir
function URichEventCommandObject:ChangeActionFunction(EventChara, ActionLabelName, frame, LoopSetting, SetDir) end
---@param BalloonType EBalloonType
---@param BalloonDir EEventBalloonDir
---@param TalkTargetName FName
---@param TalkText FName
---@param AutoTalkWait float
---@param StopMainSeq boolean
---@param PlaybackSubSeqPosition float
function URichEventCommandObject:BalloonOpenLabelPlayerFunction(BalloonType, BalloonDir, TalkTargetName, TalkText, AutoTalkWait, StopMainSeq, PlaybackSubSeqPosition) end
---@param TalkTargetTag FName
---@param BalloonType EBalloonType
---@param BalloonDir EEventBalloonDir
---@param TalkTargetName FName
---@param TalkText FName
---@param AutoTalkWait float
---@param StopMainSeq boolean
---@param PlaybackSubSeqPosition float
function URichEventCommandObject:BalloonOpenLabelFunction(TalkTargetTag, BalloonType, BalloonDir, TalkTargetName, TalkText, AutoTalkWait, StopMainSeq, PlaybackSubSeqPosition) end
---@param TalkTargetTag FName
---@param BalloonType EBalloonType
---@param BalloonDir EEventBalloonDir
---@param TalkTargetName FName
---@param TalkText FString
---@param AutoTalkWait float
---@param StopMainSeq boolean
---@param PlaybackSubSeqPosition float
function URichEventCommandObject:BalloonOpenFunction(TalkTargetTag, BalloonType, BalloonDir, TalkTargetName, TalkText, AutoTalkWait, StopMainSeq, PlaybackSubSeqPosition) end
---@param EventChara AKSCharacterBase
---@param SetDir EKSCharacterDir
function URichEventCommandObject:AttachPlayerFunction(EventChara, SetDir) end
---@param EventChara AKSCharacterBase
---@param Enable boolean
function URichEventCommandObject:AttachCharacterChangeCollisionFunction(EventChara, Enable) end
---@param EventChara AKSCharacterBase
---@param ActionLabelName EKSCharacterAction
---@param frame int32
---@param LoopSetting EKSCharacterAnimationLoop
---@param SetDir EKSCharacterDir
function URichEventCommandObject:AttachCharacterActionFunction(EventChara, ActionLabelName, frame, LoopSetting, SetDir) end


---@class URichEventEditorComponent : UPaperFlipbookComponent
local URichEventEditorComponent = {}


---@class URichEventSoundPreviewerObject : UObject
local URichEventSoundPreviewerObject = {}


---@class USaveDataObject : UObject
---@field SlotName EKSSaveSlotName
local USaveDataObject = {}



---@class USaveDataUtilBase : UBlueprintFunctionLibrary
local USaveDataUtilBase = {}

---@return UMJSaveData
function USaveDataUtilBase:GetSaveData() end


---@class USaveLoadFunction : UBlueprintFunctionLibrary
local USaveLoadFunction = {}

---@param Filename FString
---@return boolean
function USaveLoadFunction:Debug_SharedSaveGameByFileName(Filename) end
---@param Filename FString
---@return UMJSaveData
function USaveLoadFunction:Debug_SharedLoadGameByFileName(Filename) end
---@param Val boolean
function USaveLoadFunction:Debug_SetIsForceSaveFailed(Val) end
---@param Val float
function USaveLoadFunction:Debug_SetIsForceAsyncSaveWaitTime(Val) end
---@param Val boolean
function USaveLoadFunction:Debug_SetIsForceAsyncSave(Val) end
---@param Val float
function USaveLoadFunction:Debug_SetIsForceAsyncLoadWaitTime(Val) end
---@param Val boolean
function USaveLoadFunction:Debug_SetIsForceAsyncLoad(Val) end
---@param Filename FString
---@param SavedDelegate FDebug_AcqSaveGameByFileNameSavedDelegate
function USaveLoadFunction:Debug_AcqSaveGameByFileName(Filename, SavedDelegate) end
---@param Filename FString
---@param LoadedDelegate FDebug_AcqLoadGameByFileNameLoadedDelegate
---@param LoadTarget ESaveDataLoadTarget
function USaveLoadFunction:Debug_AcqLoadGameByFileName(Filename, LoadedDelegate, LoadTarget) end
---@param SystemData UKSSaveSystem
---@param SavedDelegate FAcqSaveSystemDataForChallengeBattleModeSavedDelegate
function USaveLoadFunction:AcqSaveSystemDataForChallengeBattleMode(SystemData, SavedDelegate) end
---@param SavedDelegate FAcqSaveSystemDataSavedDelegate
function USaveLoadFunction:AcqSaveSystemData(SavedDelegate) end
---@param SlotNo EKSSaveSlotName
---@param SaveData UMJSaveData
---@param SavedDelegate FAcqSaveGameForChallengeBattleModeSavedDelegate
function USaveLoadFunction:AcqSaveGameForChallengeBattleMode(SlotNo, SaveData, SavedDelegate) end
---@param SlotNo EKSSaveSlotName
---@param SavedDelegate FAcqSaveGameSavedDelegate
function USaveLoadFunction:AcqSaveGame(SlotNo, SavedDelegate) end
---@param LoadTarget ESaveDataLoadTarget
---@return UKSSaveSystem
function USaveLoadFunction:AcqLoadSystemDataNoCallback(LoadTarget) end
---@param LoadedDelegate FAcqLoadSystemDataForChallengeBattleModeLoadedDelegate
function USaveLoadFunction:AcqLoadSystemDataForChallengeBattleMode(LoadedDelegate) end
---@param LoadedDelegate FAcqLoadSystemDataLoadedDelegate
---@param LoadTarget ESaveDataLoadTarget
function USaveLoadFunction:AcqLoadSystemData(LoadedDelegate, LoadTarget) end
---@param SlotNo EKSSaveSlotName
---@param LoadedDelegate FAcqLoadGameForChallengeBattleModeLoadedDelegate
function USaveLoadFunction:AcqLoadGameForChallengeBattleMode(SlotNo, LoadedDelegate) end
---@param SlotNo EKSSaveSlotName
---@param LoadedDelegate FAcqLoadGameLoadedDelegate
---@param LoadTarget ESaveDataLoadTarget
function USaveLoadFunction:AcqLoadGame(SlotNo, LoadedDelegate, LoadTarget) end


---@class UScreenCaptureBase : UKSUserWidgetBase
local UScreenCaptureBase = {}

---@param ResourceLabel FName
function UScreenCaptureBase:OpenUIWithTexture(ResourceLabel) end
---@param PlayNoise boolean
function UScreenCaptureBase:OpenUI(PlayNoise) end
---@return boolean
function UScreenCaptureBase:NoiseFinish() end
function UScreenCaptureBase:CloseUI() end


---@class USeVibrationTableUtility : UDataTableUtilityBase
local USeVibrationTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function USeVibrationTableUtility:GetSeVibrationTableRowNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FSeVibrationData
---@param TargetID int32
---@param LogEnable boolean
---@return boolean
function USeVibrationTableUtility:GetSeVibrationRowDataByID(returnCode, OutData, TargetID, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FSeVibrationData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function USeVibrationTableUtility:GetSeVibrationRowData(returnCode, OutData, TargetLabel, LogEnable) end


---@class USelectPlayerStatusBase : UAcqUserWidget
local USelectPlayerStatusBase = {}

---@return float
function USelectPlayerStatusBase:GetBoostGaugeLoopTime() end


---@class USequencerResourceDBUtility : UDataTableUtilityBase
local USequencerResourceDBUtility = {}

---@param OutData FSequencerResourceData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function USequencerResourceDBUtility:GetSequencerResourceDataRow(OutData, TargetLabel, LogEnable) end


---@class UServiceConnecter : UObject
---@field OnUnLockedAchievement FServiceConnecterOnUnLockedAchievement
local UServiceConnecter = {}



---@class UShopDataUtility : UDataTableUtilityBase
local UShopDataUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@param Type EShopDataType
---@return boolean
function UShopDataUtility:GetShopTableRowNames(returnCode, OutRowNames, Type) end
---@param OutData FLabelListData
---@param TargetLabel FName
---@return boolean
function UShopDataUtility:GetShopListRowData(OutData, TargetLabel) end
---@param OutData FShopInfoData
---@param TargetID int32
---@return boolean
function UShopDataUtility:GetShopInfoRowDataByID(OutData, TargetID) end
---@param OutData FShopInfoData
---@param TargetLabel FName
---@return boolean
function UShopDataUtility:GetShopInfoRowData(OutData, TargetLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FPurchaseItemInfoData
---@param TargetID int32
---@return boolean
function UShopDataUtility:GetPurchaseItemRowDataByID(returnCode, OutData, TargetID) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FPurchaseItemInfoData
---@param TargetLabel FName
---@return boolean
function UShopDataUtility:GetPurchaseItemRowData(returnCode, OutData, TargetLabel) end
---@param ID int32
---@return FName
function UShopDataUtility:GetPurchaseItemLabelById(ID) end
---@param Label FName
---@return int32
function UShopDataUtility:GetPurchaseItemIdByLable(Label) end


---@class UShopMenuWidgetBase : UKSUserWidgetWithState
local UShopMenuWidgetBase = {}

---@param ShopLabel FName
---@param ForceDefaultBar boolean
---@param FromNPC boolean
function UShopMenuWidgetBase:SetParam(ShopLabel, ForceDefaultBar, FromNPC) end
function UShopMenuWidgetBase:OpenExBar() end


---@class UShopUtility : UBlueprintFunctionLibrary
local UShopUtility = {}

---@param purchaseItemData FPurchaseItemInfoData
---@return boolean
function UShopUtility:IsLineUpItemInShop(purchaseItemData) end
---@param ItemData FItemData
---@return ESHOP_CATEGORY_TYPE
function UShopUtility:GetShopCategoryByItemData(ItemData) end
---@param ShopLabel FName
---@param outListWidgetDataList TArray<FMJListWidgetItemData>
---@param outItemLabelList TArray<FName>
---@param outPurchaseItemDataList TArray<FPurchaseItemInfoData>
function UShopUtility:CreateShopItemListDataForAnimalShop(ShopLabel, outListWidgetDataList, outItemLabelList, outPurchaseItemDataList) end
---@param ShopLabel FName
---@param outListWidgetDataList TArray<FMJListWidgetItemData>
---@param outItemLabelList TArray<FName>
---@param outPurchaseItemDataList TArray<FPurchaseItemInfoData>
function UShopUtility:CreateShopItemListData(ShopLabel, outListWidgetDataList, outItemLabelList, outPurchaseItemDataList) end


---@class USingleMenuWidgetBase : UKSUserWidgetWithState
local USingleMenuWidgetBase = {}

---@param WorldMapLabel FName
---@return boolean
function USingleMenuWidgetBase:StorySelectOpen(WorldMapLabel) end
---@param bPause boolean
function USingleMenuWidgetBase:SetPauseWhileRunning(bPause) end
---@return boolean
function USingleMenuWidgetBase:GetPauseWhileRunning() end
---@param NPCLabel FName
---@return boolean
function USingleMenuWidgetBase:EventFieldCommandBattleOpen(NPCLabel) end


---@class USoundTableUtility : UDataTableUtilityBase
local USoundTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutData FSoundVoiceData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function USoundTableUtility:GetVoiceJaRowData(returnCode, OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FSoundVoiceData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function USoundTableUtility:GetVoiceEnRowData(returnCode, OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@param Type ESoundTableType
---@return boolean
function USoundTableUtility:GetSoundTableRowNames(returnCode, OutRowNames, Type) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FSoundSEData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function USoundTableUtility:GetSeRowData(returnCode, OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FKSCueSheetData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function USoundTableUtility:GetCueSheetRowData(returnCode, OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FBgmInfoData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function USoundTableUtility:GetBgmRowData(returnCode, OutData, TargetLabel, LogEnable) end


---@class USpActMerchantUtility : UDataTableUtilityBase
local USpActMerchantUtility = {}

---@param spActLabel FName
---@param outSpActData FSpActionMerchant_MenuData
---@return boolean
function USpActMerchantUtility:MakeSpecialActionDataForMenu(spActLabel, outSpActData) end
---@param spActData FSpActionMerchant_Data
---@return FText
function USpActMerchantUtility:MakeDescriptionText(spActData) end
---@param returnCode EBPFuncReturnCode::Type
---@param outType FSpActionMerchant_Type
---@param typeLabel FName
function USpActMerchantUtility:GetSpActionTypeByLabel(returnCode, outType, typeLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FSpActionMerchant_Data
---@param NPCID int32
function USpActMerchantUtility:GetSpActionDataByNpcId(returnCode, OutData, NPCID) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FSpActionMerchant_Data
---@param dataLabel FName
function USpActMerchantUtility:GetSpActionDataByLabel(returnCode, OutData, dataLabel) end
---@param OutResult FSpActMerchantResult
---@param Trigger ESPACT_MER_TRIGGER_TYPE
---@param originalPrice int32
---@return boolean
function USpActMerchantUtility:ExecMerchantSpecialAction_WithoutNpc(OutResult, Trigger, originalPrice) end
---@param OutResult FSpActMerchantResult
---@param NPCID int32
---@param Trigger ESPACT_MER_TRIGGER_TYPE
---@param originalPrice int32
---@return boolean
function USpActMerchantUtility:ExecMerchantSpecialAction_WithNpc(OutResult, NPCID, Trigger, originalPrice) end
---@param Trigger ESPACT_MER_TRIGGER_TYPE
---@return boolean
function USpActMerchantUtility:CheckMerchantSpecialAction_WithoutNpc(Trigger) end


---@class USpawnPointBillboardComponent : UBillboardComponent
local USpawnPointBillboardComponent = {}


---@class USpecialActionDataUtility : UDataTableUtilityBase
local USpecialActionDataUtility = {}

---@param Label FName
---@return int32
function USpecialActionDataUtility:SpecialActionLabelToID(Label) end
---@param ID int32
---@return FName
function USpecialActionDataUtility:SpecialActionIDToLabel(ID) end
---@param OutData FSpecialActionData
---@param SpecialActionType ESpecialActionType
---@return boolean
function USpecialActionDataUtility:GetSpecialActionTableRowDataByEnum(OutData, SpecialActionType) end
---@param OutData FSpecialActionData
---@param Label FName
---@return boolean
function USpecialActionDataUtility:GetSpecialActionTableRowData(OutData, Label) end
---@param OutData FProcessItemNum
---@param ID int32
---@return boolean
function USpecialActionDataUtility:GetProcessItemNumData(OutData, ID) end
---@param ID int32
---@param remainCallNum int32
---@return int32
function USpecialActionDataUtility:GetProcessItemNum(ID, remainCallNum) end
---@param Normal int32
---@param Awake int32
---@param awakeAfter int32
---@return int32
function USpecialActionDataUtility:GetLegendSeaMonsterIndex(Normal, Awake, awakeAfter) end
---@param partnerID EHUNTER_PARTNER_ID
---@param ignoreAwakening boolean
---@return FName
function USpecialActionDataUtility:GetHunterPartnerMonsterLabelById(partnerID, ignoreAwakening) end
---@return FName
function USpecialActionDataUtility:GetHunterPartnerMonsterLabel() end
---@param partnerID EHUNTER_PARTNER_ID
---@return FName
function USpecialActionDataUtility:GetHunterPartnerActionLabelById(partnerID) end
---@return FName
function USpecialActionDataUtility:GetHunterPartnerActionLabel() end


---@class USplineMoveComponent : UActorComponent
---@field m_bNearPlayer boolean
---@field m_fPathZ float
---@field m_fPow float
---@field m_fBaseCheck float
---@field m_fOverCheckDistance float
---@field m_nChangeDirCnt int32
---@field m_nChangeDirCntDef int32
---@field m_fArrivalDistance int32
---@field m_fPathDistance float
---@field m_pPath UPathSplineComponent
---@field m_fMoveDiffCheck float
local USplineMoveComponent = {}

---@param uGetSpline UPathSplineComponent
---@param eType EPATH_TYPE
---@return boolean
function USplineMoveComponent:SetUpSplineData(uGetSpline, eType) end
---@param InfoData FFieldPathInfoData
function USplineMoveComponent:SetUpFieldPathData(InfoData) end
---@param uSpline USplineComponent
function USplineMoveComponent:SetSplineMovePointSetting(uSpline) end
---@param Enable boolean
function USplineMoveComponent:SetMoveStopEvent(Enable) end
---@param uSpline USplineComponent
function USplineMoveComponent:SetFirstPosition(uSpline) end
---@param uSpline USplineComponent
---@param fDeltaTime float
---@param fWaitTime float
---@param fSearchRange float
---@return boolean
function USplineMoveComponent:NPCCharacterMoving(uSpline, fDeltaTime, fWaitTime, fSearchRange) end
---@param uSpline USplineComponent
---@return boolean
function USplineMoveComponent:IsEndPointArrived(uSpline) end
---@param uSpline USplineComponent
---@return boolean
function USplineMoveComponent:GetNowMoveSpeed(uSpline) end
---@return FString
function USplineMoveComponent:GetDebugSplineMoveParam() end
---@param uSpline USplineComponent
---@return float
function USplineMoveComponent:GetCurrentSplinePosition(uSpline) end
---@return boolean
function USplineMoveComponent:CheckTalkEffectVisible() end
---@param fWaitTime float
---@param fSearchRange float
function USplineMoveComponent:CheckNearPlayer(fWaitTime, fSearchRange) end
---@param fDeltaTime float
---@return boolean
function USplineMoveComponent:CheckContactPlayerInterval(fDeltaTime) end
---@param fDelatTime float
---@return boolean
function USplineMoveComponent:CalcStartCheck(fDelatTime) end


---@class UStaffCreditParent : UKSUserWidgetWithState
---@field CreditPartsList TArray<UStaffCreditWidgetBase>
---@field creditTable UDataTable
---@field totalStagingTime float
---@field ViewportHeight float
---@field DisolvePartsTime float
local UStaffCreditParent = {}

---@param PlayTime float
---@return boolean
function UStaffCreditParent:WipeOut(PlayTime) end
---@param PlayTime float
---@return boolean
function UStaffCreditParent:WipeIn(PlayTime) end
---@return boolean
function UStaffCreditParent:StartStaging() end
---@return boolean
function UStaffCreditParent:SetupStaffCredit() end
---@param totalStagingTime float
function UStaffCreditParent:SetTotalStagingTime(totalStagingTime) end
---@param NextState EStaffCreditState
function UStaffCreditParent:SetNextState_Local(NextState) end
---@param creditTable UDataTable
function UStaffCreditParent:SetDataTable(creditTable) end
---@param bgType ECreditBgType
---@param imageName FName
---@return boolean
function UStaffCreditParent:SetBackground(bgType, imageName) end
---@return boolean
function UStaffCreditParent:ReleaseAll() end
---@param CreditWidget UStaffCreditWidgetBase
---@return boolean
function UStaffCreditParent:IsWidgetOutOfViewport(CreditWidget) end
---@return boolean
function UStaffCreditParent:IsDisplayDebugInfo() end
---@return EStaffCreditState
function UStaffCreditParent:GetPrevState_Local() end
---@return EStaffCreditState
function UStaffCreditParent:GetCurrentState_Local() end
function UStaffCreditParent:DebugUpdate() end
---@param WidgetType ECreditWidgetType
---@return UStaffCreditWidgetBase
function UStaffCreditParent:CreateCreditWidget(WidgetType) end
---@return boolean
function UStaffCreditParent:CheckCompleteScroll() end
---@param CreditWidget UStaffCreditWidgetBase
---@return boolean
function UStaffCreditParent:AddCreditWidgetToScrollList(CreditWidget) end


---@class UStaffCreditWidgetBase : UAcqUserWidget
---@field WidgetSize FVector2D
---@field m_IsScrollWidget boolean
local UStaffCreditWidgetBase = {}

---@param stagingTime float
---@return boolean
function UStaffCreditWidgetBase:UpdateStaging(stagingTime) end
---@param itemArray TArray<FStaffCreditTable>
---@return boolean
function UStaffCreditWidgetBase:Setup(itemArray) end
---@param StartTime float
---@param stagingTime float
function UStaffCreditWidgetBase:SetStagingTime(StartTime, stagingTime) end
---@param startY float
---@param endY float
function UStaffCreditWidgetBase:SetStagingPositionY(startY, endY) end
---@param isScroll boolean
function UStaffCreditWidgetBase:SetScrollWidget(isScroll) end
---@param Type ECreditWidgetType
function UStaffCreditWidgetBase:SetCreditWidgetType(Type) end
---@param Pos FVector2D
function UStaffCreditWidgetBase:SetCanvasPosition(Pos) end
---@param IsActive boolean
function UStaffCreditWidgetBase:SetActive(IsActive) end
---@return boolean
function UStaffCreditWidgetBase:IsScrollWidget() end
---@return boolean
function UStaffCreditWidgetBase:IsComplete() end
---@return boolean
function UStaffCreditWidgetBase:IsActive() end
---@return float
function UStaffCreditWidgetBase:GetWidgetWidth() end
---@return FVector2D
function UStaffCreditWidgetBase:GetWidgetSize() end
---@return float
function UStaffCreditWidgetBase:GetWidgetHeight() end
---@return float
function UStaffCreditWidgetBase:GetStartTime() end
---@return ECreditWidgetType
function UStaffCreditWidgetBase:GetCreditWidgetType() end
---@return FVector2D
function UStaffCreditWidgetBase:GetCanvasPosition() end
function UStaffCreditWidgetBase:CalcWidgetSize() end


---@class UStateDataBase : UObject
---@field m_SeqType EMAINSEQ_TYPE
---@field m_BeforeSeqType EMAINSEQ_TYPE
---@field m_NextSeqType EMAINSEQ_TYPE
---@field m_ExecRequestType EREQUEST_TYPE
---@field m_RequestList TArray<EREQUEST_TYPE>
---@field m_Param FMainSequenceStateParam
local UStateDataBase = {}

---@return boolean
function UStateDataBase:UpdateState() end
---@param Param FMainSequenceStateParam
function UStateDataBase:SetStateParam(Param) end
---@return EPRIORITY
function UStateDataBase:GetPriority() end
---@param Type EMAINSEQ_TYPE
---@return boolean
function UStateDataBase:ChangeState(Type) end


---@class USteamUtility : UBlueprintFunctionLibrary
local USteamUtility = {}


---@class UStoryDataUtility : UDataTableUtilityBase
local UStoryDataUtility = {}

---@param subStoryLabel FName
---@return int32
function UStoryDataUtility:SubStoryLabelToId(subStoryLabel) end
---@param subStoryId int32
---@return FName
function UStoryDataUtility:SubStoryIdToLabel(subStoryId) end
---@param PlayerCharaId int32
---@return boolean
function UStoryDataUtility:StartMainStoryFromNewGame(PlayerCharaId) end
---@param MainStoryId int32
function UStoryDataUtility:RefreshMainStoryRelease(MainStoryId) end
function UStoryDataUtility:RefreshAllMainStoryState() end
function UStoryDataUtility:RefreshAllMainStoryRelease() end
---@param dbName FName
---@param notice EDBNoticeType
function UStoryDataUtility:NotifySubStoryDB(dbName, notice) end
---@param dbName FName
---@param notice EDBNoticeType
function UStoryDataUtility:NotifyMainStoryDB(dbName, notice) end
---@param mainStoryTaskLabel FName
---@return int32
function UStoryDataUtility:MainStoryTaskLabelToId(mainStoryTaskLabel) end
---@param mainStoryTaskId int32
---@return FName
function UStoryDataUtility:MainStoryTaskIdToLabel(mainStoryTaskId) end
---@param MainStoryLabel FName
---@return int32
function UStoryDataUtility:MainStoryLabelToId(MainStoryLabel) end
---@param MainStoryId int32
---@return FName
function UStoryDataUtility:MainStoryIdToLabel(MainStoryId) end
---@param subStoryLabel FName
---@return boolean
function UStoryDataUtility:IsSubStoryDataExists(subStoryLabel) end
---@param storyState EStoryState
---@return boolean
function UStoryDataUtility:IsStorySealed(storyState) end
---@param storyState EStoryState
---@return boolean
function UStoryDataUtility:IsStoryCompleted(storyState) end
---@param subStoryLabel FName
---@return boolean
function UStoryDataUtility:IsMerchantSubStory(subStoryLabel) end
---@param mainStoryTaskLabel FName
---@return boolean
function UStoryDataUtility:IsMainStoryTaskDataExists(mainStoryTaskLabel) end
---@param MainStoryId int32
---@return boolean
function UStoryDataUtility:IsMainStoryPrologue(MainStoryId) end
---@param MainStoryId int32
---@return boolean
function UStoryDataUtility:IsMainStoryPlayableStateById(MainStoryId) end
---@param PlayerCharaId int32
---@return boolean
function UStoryDataUtility:IsCompletedMainStoryCharacterFinalChapter(PlayerCharaId) end
---@return boolean
function UStoryDataUtility:IsAnyCharacterPlayingMainStory() end
---@return TArray<FName>
function UStoryDataUtility:GetTutorailSubStoryLabels() end
---@param subStoryLabel FName
---@return FName
function UStoryDataUtility:GetSubStoryTitleTextLabel(subStoryLabel) end
---@param OutRowNames TArray<FName>
---@return boolean
function UStoryDataUtility:GetSubStoryRowNames(OutRowNames) end
---@return int32
function UStoryDataUtility:GetSubStoryNumInAllArea() end
---@param AreaID int32
---@return int32
function UStoryDataUtility:GetSubStoryNumByAreaId_WithoutMerchantSubStory(AreaID) end
---@param AreaID int32
---@return int32
function UStoryDataUtility:GetSubStoryNumByAreaId(AreaID) end
---@param subStoryLabel FName
---@return int32
function UStoryDataUtility:GetSubStoryMissionIndex(subStoryLabel) end
---@return TArray<FName>
function UStoryDataUtility:GetSubStoryLabelsInAllArea() end
---@param AreaID int32
---@return TArray<FName>
function UStoryDataUtility:GetSubStoryLabelsByAreaId(AreaID) end
---@param subStoryLabel FName
---@return int32
function UStoryDataUtility:GetSubStoryLabelsArrayIndex(subStoryLabel) end
---@param AreaID int32
---@param ArrayIndex int32
---@return FName
function UStoryDataUtility:GetSubStoryLabelByAreaIdAndArrayIndex(AreaID, ArrayIndex) end
---@param returnCode EBPFuncReturnCode::Type
---@param outStoryData FSubMissionData
---@param subStoryLabel FName
function UStoryDataUtility:GetSubStoryDataByRowName(returnCode, outStoryData, subStoryLabel) end
---@return TArray<FName>
function UStoryDataUtility:GetSubStoryCommonLabels() end
---@param subStoryLabel FName
---@return int32
function UStoryDataUtility:GetSubStoryAreaId(subStoryLabel) end
---@param mainStoryTaskLabel FName
---@return FName
function UStoryDataUtility:GetMainStoryTaskTitleTextLabel(mainStoryTaskLabel) end
---@param OutRowNames TArray<FName>
---@return boolean
function UStoryDataUtility:GetMainStoryTaskRowNames(OutRowNames) end
---@param mainStoryTaskLabel FName
---@return int32
function UStoryDataUtility:GetMainStoryTaskProgressValue(mainStoryTaskLabel) end
---@param returnCode EBPFuncReturnCode::Type
---@param outLabelList TArray<FName>
---@param PlayerCharaId int32
function UStoryDataUtility:GetMainStoryTaskLabelsByCharaIdWithBranch(returnCode, outLabelList, PlayerCharaId) end
---@param PlayerCharaId int32
---@return TArray<FName>
function UStoryDataUtility:GetMainStoryTaskLabelsByCharaId(PlayerCharaId) end
---@param outTaskLabelList TArray<FName>
---@param MainStoryId int32
---@param TaskType ESTORY_TASK_TYPE
function UStoryDataUtility:GetMainStoryTaskLabelList(outTaskLabelList, MainStoryId, TaskType) end
---@param returnCode EBPFuncReturnCode::Type
---@param outStoryData FMainMissionData
---@param mainStoryTaskLabel FName
function UStoryDataUtility:GetMainStoryTaskDataByRowName(returnCode, outStoryData, mainStoryTaskLabel) end
---@param mainStoryTaskLabel FName
---@return FName
function UStoryDataUtility:GetMainStoryNextTask(mainStoryTaskLabel) end
---@param mainStoryTaskLabel FName
---@return FName
function UStoryDataUtility:GetMainStoryLabelFromTask(mainStoryTaskLabel) end
---@param outMainStoryIdList TArray<int32>
---@param WorldMapLabel FName
function UStoryDataUtility:GetMainStoryIdListInWorldMap(outMainStoryIdList, WorldMapLabel) end
---@param CharacterID EPlayableCharacterID
---@return float
function UStoryDataUtility:GetMainStoryGaugeMaxValue(CharacterID) end
---@param MainStoryId int32
---@return int32
function UStoryDataUtility:GetMainStoryDifficultyPoint(MainStoryId) end
---@param MainStoryId int32
---@param OutData FMainStoryData
---@return boolean
function UStoryDataUtility:GetMainStoryDataById(MainStoryId, OutData) end
---@param returnCode EBPFuncReturnCode::Type
---@param outStoryData FMainMissionData
---@param PlayerCharaId int32
function UStoryDataUtility:GetMainStoryCurrentTaskData(returnCode, outStoryData, PlayerCharaId) end
---@param PlayerCharaId int32
---@return int32
function UStoryDataUtility:GetMainStoryCharacterPrologueId(PlayerCharaId) end
---@param PlayerCharaId int32
---@return int32
function UStoryDataUtility:GetMainStoryCharacterFinalChapterId(PlayerCharaId) end
---@param outPrologueId TArray<int32>
---@param PlayerCharaId int32
function UStoryDataUtility:GetMainStoryCharacterAllPrologueId(outPrologueId, PlayerCharaId) end
---@return TArray<FName>
function UStoryDataUtility:GetMainStoryAllLabels() end
---@param returnCode EBPFuncReturnCode::Type
---@param outUnavailableFastTravel boolean
---@param outAuthorizationFastTravel FName
---@param PlayerCharaId int32
function UStoryDataUtility:GetFastTravelPermissionByCharaId(returnCode, outUnavailableFastTravel, outAuthorizationFastTravel, PlayerCharaId) end
---@param outMainStoryId TArray<int32>
---@param exCategory EEXTRA_STORY_CATEGORY
---@return boolean
function UStoryDataUtility:GetExtraStoryIdByExCategory(outMainStoryId, exCategory) end
---@param extraStory EEXTRA_STORY_CATEGORY
---@return float
function UStoryDataUtility:GetExtraStoryGaugeMaxValue(extraStory) end
---@param outMainStoryId TArray<int32>
---@return boolean
function UStoryDataUtility:GetExtraStoryAllId(outMainStoryId) end
---@param outMainStoryId TArray<int32>
---@param PlayerCharaId int32
---@return boolean
function UStoryDataUtility:GetCharacterMainStoryIdForStoryRecord(outMainStoryId, PlayerCharaId) end
---@param outMainStoryId TArray<int32>
---@param PlayerCharaId int32
---@return boolean
function UStoryDataUtility:GetCharacterMainStoryAllId(outMainStoryId, PlayerCharaId) end
---@param MainStoryId int32
---@return FName
function UStoryDataUtility:GetChapterText(MainStoryId) end
---@param outIds TArray<int32>
---@return boolean
function UStoryDataUtility:GetAllSubStoryIds(outIds) end
---@param bRelease boolean
function UStoryDataUtility:Debug_SetReleaseAllStoryRecord(bRelease) end
---@return boolean
function UStoryDataUtility:Debug_IsReleasedAllStoryRecord() end
---@return boolean
function UStoryDataUtility:Debug_IsIgnoreMainStoryReleased() end
---@param bIgnore boolean
function UStoryDataUtility:Debug_IgnoreMainStoryReleased(bIgnore) end
---@param MainStoryId int32
---@return boolean
function UStoryDataUtility:CheckMainStoryReleaseConditionById(MainStoryId) end
---@param MainStoryData FMainStoryData
---@return boolean
function UStoryDataUtility:CheckMainStoryReleaseConditionByData(MainStoryData) end


---@class UStoryFunction : UBlueprintFunctionLibrary
local UStoryFunction = {}

---@param mainStoryTaskLabel FName
---@return boolean
function UStoryFunction:UpdateMainStoryProgressOnPlayEvent(mainStoryTaskLabel) end
---@param MainStoryLabel FName
---@param progressCount int32
function UStoryFunction:UpdateMainStoryProgressCount(MainStoryLabel, progressCount) end
---@param MainStoryTask FName
function UStoryFunction:UpdateFixedFieldBgmOnChangeLevel(MainStoryTask) end
---@param ExStoryCategory EEXTRA_STORY_CATEGORY
---@param progressCount int32
function UStoryFunction:UpdateExtraStoryProgressCount(ExStoryCategory, progressCount) end
---@param PlayerCharaId int32
---@param progressCount int32
function UStoryFunction:UpdateCharaMainStoryProgressCount(PlayerCharaId, progressCount) end
---@param subStoryLabel FName
---@return boolean
function UStoryFunction:StartSubStory(subStoryLabel) end
---@param bPlaying boolean
function UStoryFunction:SetPlayingEpilogue(bPlaying) end
---@param mainStoryTaskLabel FName
---@param playingFlag boolean
---@return boolean
function UStoryFunction:SetMainStoryTaskViewFlag(mainStoryTaskLabel, playingFlag) end
---@param MainStoryId int32
---@param bFlag boolean
function UStoryFunction:SetMainStoryEventFlags(MainStoryId, bFlag) end
---@param MainStoryId int32
---@param bCleared boolean
function UStoryFunction:SetMainStoryAllTaskCleared(MainStoryId, bCleared) end
---@param PlayerCharaId int32
---@return boolean
function UStoryFunction:ResumeMainStorySpecifiedChara(PlayerCharaId) end
---@param MainStoryId int32
---@return boolean
function UStoryFunction:ResumeMainStory(MainStoryId) end
---@param MainStoryId int32
function UStoryFunction:ResetMainStoryData(MainStoryId) end
---@param PlayerCharaId EPlayableCharacterID
function UStoryFunction:RecoveryConnectionOnPrologueTown(PlayerCharaId) end
---@param outDestData TArray<FWorldMapDestinationData>
function UStoryFunction:MakeWorldMapDestinationList(outDestData) end
---@param subStoryLabel FName
---@return FText
function UStoryFunction:MakeSubStoryStartConditionFailedText(subStoryLabel) end
---@param AreaID int32
---@return boolean
function UStoryFunction:IsSubStoryRecordAreaOpend(AreaID) end
---@return boolean
function UStoryFunction:IsReleasedMerchantShip() end
---@param PlayerCharaId int32
---@return boolean
function UStoryFunction:IsPlayingPrologue(PlayerCharaId) end
---@return boolean
function UStoryFunction:IsPlayingOverallFinalChapter() end
---@param characterScenarioType int32
---@return boolean
function UStoryFunction:IsPlayingMainScenarioInCurrentLevel(characterScenarioType) end
---@return boolean
function UStoryFunction:IsPlayingEpilogue() end
---@return boolean
function UStoryFunction:IsOverallFinalChapterInProgress() end
---@param levelName FName
---@param CharaID EPlayableCharacterID
---@return boolean
function UStoryFunction:IsMapRelatedCharaPrologue(levelName, CharaID) end
---@param subStoryLabel FName
---@return boolean
function UStoryFunction:IsCompletedSubStory(subStoryLabel) end
---@return boolean
function UStoryFunction:IsCompletedOverallFinalChapter() end
---@return boolean
function UStoryFunction:IsCompletedAllCouplingStory() end
---@return boolean
function UStoryFunction:IsAnyCharaPlayingPrologue() end
---@return boolean
function UStoryFunction:IsAnyCharaCompletedFinalChapter() end
---@return boolean
function UStoryFunction:IsAllCharaCompletedFinalChapter() end
---@return boolean
function UStoryFunction:Is1stSelectedCharaCompletedFinalChapter() end
---@param PlayerCharaId int32
---@return boolean
function UStoryFunction:InterruptMainStorySpecifiedChara(PlayerCharaId) end
function UStoryFunction:InterruptMainStoryForSubMembers() end
---@param MainStoryId int32
---@return boolean
function UStoryFunction:InterruptMainStory(MainStoryId) end
---@param subStoryLabel FName
---@return int32
function UStoryFunction:GetSubStoryState(subStoryLabel) end
---@return int32
function UStoryFunction:GetPlayingPrologueReminiscenceIndex() end
---@param outMainStoryIdList TArray<int32>
---@param levelName FName
function UStoryFunction:GetPlayingMainStoryInLevel(outMainStoryIdList, levelName) end
---@param PlayerCharaId int32
---@return int32
function UStoryFunction:GetPlayingMainStoryID(PlayerCharaId) end
---@param outPlayableCharaID TArray<int32>
---@return boolean
function UStoryFunction:GetPlayablePrologueList(outPlayableCharaID) end
---@param outMainStoryList TArray<FBarMenuStoryItem>
---@param WorldMapLabel FName
function UStoryFunction:GetPlayableMainStoryListInWorldMap(outMainStoryList, WorldMapLabel) end
---@param mainStoryTaskLabel FName
---@return int32
function UStoryFunction:GetMainStoryTaskTargetCharacterId(mainStoryTaskLabel) end
---@param MainStoryId int32
---@return EBARMENU_STORY_SELECT_ITEM_TYPE
function UStoryFunction:GetMainStoryStateInStorySelectMenu(MainStoryId) end
---@param PlayerCharaId int32
---@return float
function UStoryFunction:GetMainStoryRecordGaugeLength(PlayerCharaId) end
---@param MainStoryId int32
---@return int32
function UStoryFunction:GetMainStoryProgressCountFromStoryId(MainStoryId) end
---@param PlayerCharaId int32
---@return int32
function UStoryFunction:GetMainStoryProgressCount(PlayerCharaId) end
---@param levelName FName
---@return FName
function UStoryFunction:GetFixedFieldBgm(levelName) end
---@param exCategory EEXTRA_STORY_CATEGORY
---@return float
function UStoryFunction:GetExtraStoryRecordGaugeLength(exCategory) end
---@param ExStoryCategory EEXTRA_STORY_CATEGORY
---@return int32
function UStoryFunction:GetExtraStoryProgressCount(ExStoryCategory) end
---@param outCharaIdList TArray<int32>
---@param levelName FName
---@param includeInterruption boolean
function UStoryFunction:GetCharaIdListPlayingMainStoryInLevel(outCharaIdList, levelName, includeInterruption) end
---@param IDs TArray<int32>
function UStoryFunction:GetAllCompletedMainStoryIds(IDs) end
---@param PlayerCharaId int32
---@return int32
function UStoryFunction:GetActiveMainStoryID(PlayerCharaId) end
---@param bPartnerA boolean
function UStoryFunction:Debug_SetupJustBeforeFinalChapter(bPartnerA) end
---@param MainStoryId int32
---@param storyState EStoryState
---@param bPlayLastEvent boolean
function UStoryFunction:Debug_ModifyMainStoryState(MainStoryId, storyState, bPlayLastEvent) end
---@param PlayerCharaId int32
function UStoryFunction:Debug_CompleteMainStoryInProgress(PlayerCharaId) end
---@param outRecordData TArray<FMAINMENU_MISSION_RECORD_DATA>
---@param AreaID int32
function UStoryFunction:CreateSubStoryRecordDataListItem(outRecordData, AreaID) end
---@param outRecordData TArray<FMAINMENU_MISSION_RECORD_DATA>
function UStoryFunction:CreateSubStoryAllRecordDataListItem(outRecordData) end
---@param outTaskInfo TArray<FMAINMENU_MISSION_RECORD_DATA>
---@param outListItemData TArray<FMJListWidgetItemData>
---@param MainStoryId int32
---@param CategoryId int32
function UStoryFunction:CreateMainStoryRecordDataListItemByStoryId(outTaskInfo, outListItemData, MainStoryId, CategoryId) end
---@param MainStoryId int32
---@param bInterrupt boolean
function UStoryFunction:ControlMainStoryEventObjectOnInterruptFromBar(MainStoryId, bInterrupt) end
---@param MainStoryLabel FName
---@param bInterrupt boolean
---@param bRefreshObject boolean
function UStoryFunction:ControlMainStoryEventObjectOnInterrupt(MainStoryLabel, bInterrupt, bRefreshObject) end
---@param subStoryLabel FName
---@param ClearIndex int32
---@return boolean
function UStoryFunction:CompleteSubStory(subStoryLabel, ClearIndex) end
---@param subStoryLabel FName
---@return boolean
function UStoryFunction:CompleteFakeSubStory(subStoryLabel) end
---@param subStoryLabel FName
---@return boolean
function UStoryFunction:CheckSubStoryStartCondition(subStoryLabel) end
---@param MainStoryId int32
---@return boolean
function UStoryFunction:CanPlayMainStory(MainStoryId) end
---@param WorldMapLabel FName
---@return boolean
function UStoryFunction:CanOpenTutorialByMap(WorldMapLabel) end
---@param WorldMapLabel FName
---@return boolean
function UStoryFunction:CanOpenStorySelectByBar(WorldMapLabel) end
---@param WorldMapLabel FName
---@return boolean
function UStoryFunction:CanOpenMainStorySelectMenuByMap(WorldMapLabel) end
---@param TownID int32
---@return int32
function UStoryFunction:CalcRecoveryRelationshipCost(TownID) end
---@return float
function UStoryFunction:CalcMainStoryTotalProgress() end


---@class UStoryNotificationBase : UKSUserWidgetBase
local UStoryNotificationBase = {}

---@param TitleLabel FName
---@param FormatTextLabel FName
---@return boolean
function UStoryNotificationBase:OpenSubStory(TitleLabel, FormatTextLabel) end
---@param MainStoryLabel FName
---@param TitleLabel FName
---@param FormatTextLabel FName
---@return boolean
function UStoryNotificationBase:OpenMarchant(MainStoryLabel, TitleLabel, FormatTextLabel) end
---@param MainStoryLabel FName
---@param TitleLabel FName
---@param FormatTextLabel FName
---@return boolean
function UStoryNotificationBase:OpenCoupling(MainStoryLabel, TitleLabel, FormatTextLabel) end


---@class UStoryRecordBase : UKSUserWidgetBase
---@field PlayPartyChat boolean
local UStoryRecordBase = {}

---@param Flag boolean
function UStoryRecordBase:SetPartyChatPlay(Flag) end
---@return boolean
function UStoryRecordBase:PreCloseAction() end
---@return boolean
function UStoryRecordBase:PartyChatStart() end
---@return boolean
function UStoryRecordBase:PartyChatReady() end
---@return boolean
function UStoryRecordBase:PartyChatFinish() end
---@return boolean
function UStoryRecordBase:GetPartyChatPlay() end


---@class UStoryRecordPartyChatList : UAcqUserWidget
local UStoryRecordPartyChatList = {}


---@class UStoryRecordPartyChatListEntry : UAcqListViewEntryItemBase
---@field PartyChatData FPartyChat
local UStoryRecordPartyChatListEntry = {}



---@class UStorySaveDataUtil : USaveDataUtilBase
local UStorySaveDataUtil = {}

---@param PlayerCharaId int32
---@param MainStoryId int32
function UStorySaveDataUtil:SetPlayingMainStoryID(PlayerCharaId, MainStoryId) end
---@param mainStoryTaskId int32
---@param TimezoneType int32
---@param timeZonePosition int32
---@return boolean
function UStorySaveDataUtil:SetMainStoryTaskTimeZoneOnPlayed(mainStoryTaskId, TimezoneType, timeZonePosition) end
---@param mainStoryTaskId int32
---@param Index int32
---@param FlagID int32
---@param Val boolean
---@return boolean
function UStorySaveDataUtil:SetMainStoryTaskEventObjectFlag(mainStoryTaskId, Index, FlagID, Val) end
---@param mainStoryTaskId int32
---@param bCleared boolean
function UStorySaveDataUtil:SetMainStoryTaskCleared(mainStoryTaskId, bCleared) end
---@param MainStoryId int32
---@param State EStoryState
function UStorySaveDataUtil:SetMainStoryState(MainStoryId, State) end
---@param mainStoryTaskId int32
---@param bNew boolean
function UStorySaveDataUtil:SetMainStoryRecordNew(mainStoryTaskId, bNew) end
---@param MainStoryId int32
---@param CurrentTaskID int32
function UStorySaveDataUtil:SetMainStoryCurrentTaskID(MainStoryId, CurrentTaskID) end
---@param PlayerCharaId int32
---@param MainStoryId int32
function UStorySaveDataUtil:SetInterruptedMainStoryID(PlayerCharaId, MainStoryId) end
---@param MainStoryId int32
---@param Flag boolean
function UStorySaveDataUtil:SetConfirmedMainStory(MainStoryId, Flag) end
---@param MainStoryId int32
function UStorySaveDataUtil:SetAutoInterruptMainStoryId_ByPrologue(MainStoryId) end
---@param MainStoryId int32
function UStorySaveDataUtil:SetAutoInterruptMainStoryId(MainStoryId) end
---@param MainStoryId int32
---@return boolean
function UStorySaveDataUtil:IsUnPlayedMainStory(MainStoryId) end
---@param mainStoryTaskId int32
---@return boolean
function UStorySaveDataUtil:IsMainStoryTaskCleared(mainStoryTaskId) end
---@param MainStoryId int32
---@return boolean
function UStorySaveDataUtil:IsConfirmedMainStory(MainStoryId) end
---@param MainStoryId int32
---@return boolean
function UStorySaveDataUtil:IsCompletedMainStory(MainStoryId) end
---@param PlayerCharaId int32
---@return int32
function UStorySaveDataUtil:GetPlayingMainStoryID(PlayerCharaId) end
---@param mainStoryTaskId int32
---@return int32
function UStorySaveDataUtil:GetMainStoryTaskTimeZoneTypeOnPlayed(mainStoryTaskId) end
---@param mainStoryTaskId int32
---@return int32
function UStorySaveDataUtil:GetMainStoryTaskTimeZonePositionOnPlayed(mainStoryTaskId) end
---@param mainStoryTaskId int32
---@param outMainStoryTaskSaveData FMainStoryTaskSaveData
---@return boolean
function UStorySaveDataUtil:GetMainStoryTaskSaveData(mainStoryTaskId, outMainStoryTaskSaveData) end
---@param mainStoryTaskId int32
---@param Index int32
---@param FlagID int32
---@param Val boolean
function UStorySaveDataUtil:GetMainStoryTaskEventObjectFlag(mainStoryTaskId, Index, FlagID, Val) end
---@param MainStoryId int32
---@return EStoryState
function UStorySaveDataUtil:GetMainStoryState(MainStoryId) end
---@param MainStoryId int32
---@param outMainStorySaveData FMainStorySaveData
---@return boolean
function UStorySaveDataUtil:GetMainStorySaveData(MainStoryId, outMainStorySaveData) end
---@param mainStoryTaskId int32
---@return boolean
function UStorySaveDataUtil:GetMainStoryRecordNew(mainStoryTaskId) end
---@param MainStoryId int32
---@return int32
function UStorySaveDataUtil:GetMainStoryCurrentTaskID(MainStoryId) end
---@param PlayerCharaId int32
---@return int32
function UStorySaveDataUtil:GetInterruptedMainStoryID(PlayerCharaId) end
---@return int32
function UStorySaveDataUtil:GetAutoInterruptMainStoryId_ByPrologue() end
---@return int32
function UStorySaveDataUtil:GetAutoInterruptMainStoryId() end
---@param outMainStoryIds TArray<int32>
---@return boolean
function UStorySaveDataUtil:GetAllPlayingMainStoryIDs(outMainStoryIds) end
---@param PlayerCharaId int32
function UStorySaveDataUtil:ClearPlayingMainStoryID(PlayerCharaId) end
---@param PlayerCharaId int32
function UStorySaveDataUtil:ClearInterruptedMainStoryID(PlayerCharaId) end


---@class UStreamingLevels : UObject
---@field m_Field TArray<ULevelStreamingDynamic>
---@field m_Battle TArray<ULevelStreamingDynamic>
local UStreamingLevels = {}

---@param eLevelType ELEVEL_TYPE
---@param Stream ULevelStreamingDynamic
---@return boolean
function UStreamingLevels:SetStreamingLevel(eLevelType, Stream) end
---@param UnloadLevel ULevelStreamingDynamic
function UStreamingLevels:RemoveLevel(UnloadLevel) end
function UStreamingLevels:RemoveAllLevel() end
function UStreamingLevels:RemoveAllFieldLevel() end
function UStreamingLevels:RemoveAllBattleLevel() end
---@param nFieldArrayBuffer int32
---@param nBattleArrayBuffer int32
function UStreamingLevels:Init(nFieldArrayBuffer, nBattleArrayBuffer) end
---@param eLevelType ELEVEL_TYPE
---@param nIndex int32
---@return ULevelStreamingDynamic
function UStreamingLevels:GetStreamingLevel(eLevelType, nIndex) end
---@param eLevelType ELEVEL_TYPE
---@return TArray<ULevelStreamingDynamic>
function UStreamingLevels:GetLevels(eLevelType) end


---@class UStyleChangeComponent : UActorComponent
---@field m_cOwnerPlayer ABattleCharacterBase
---@field m_cPlayerStatusUI UUserWidget
---@field m_eUniqueStyle EBATTLE_STYLE_TYPE
---@field m_eCurrentStyle EBATTLE_STYLE_TYPE
---@field m_nStyleChangePoint int32
---@field m_nStyleChangePointMax int32
---@field m_nResumeBoostPoint int32
---@field m_bStyleChangeReady boolean
local UStyleChangeComponent = {}

---@param nNewStyleChangePoint int32
---@param outCurrentPoint int32
function UStyleChangeComponent:SetStyleChangePoint(nNewStyleChangePoint, outCurrentPoint) end
---@param cPlayerStatusUI UUserWidget
function UStyleChangeComponent:SetPlayerStatusUI(cPlayerStatusUI) end
---@param nValue int32
---@return boolean
function UStyleChangeComponent:RecoveryStyleChangePoint(nValue) end
---@return boolean
function UStyleChangeComponent:OnStyleChange() end
---@return boolean
function UStyleChangeComponent:OnBreakStyle() end
---@return boolean
function UStyleChangeComponent:OnBoostStyle() end
---@param bCancel boolean
---@return boolean
function UStyleChangeComponent:OffStyleChange(bCancel) end
---@param bCancel boolean
---@return boolean
function UStyleChangeComponent:OffBreakStyle(bCancel) end
---@param bCancel boolean
---@return boolean
function UStyleChangeComponent:OffBoostStyle(bCancel) end
---@return boolean
function UStyleChangeComponent:IsStyleChangeReady() end
---@return boolean
function UStyleChangeComponent:IsStyleChangePointMax() end
---@return boolean
function UStyleChangeComponent:IsStyleChangeExec() end
---@return boolean
function UStyleChangeComponent:IsStyleChangeAvailable() end
---@param eUniqueStyle EBATTLE_STYLE_TYPE
---@param nStyleChangePoint int32
---@param nStyleChangePointMax int32
function UStyleChangeComponent:InitStyleChange(eUniqueStyle, nStyleChangePoint, nStyleChangePointMax) end
---@return EBATTLE_STYLE_TYPE
function UStyleChangeComponent:GetUniqueStyle() end
---@param outStyleChangePoint int32
---@param outStyleChangePointMax int32
function UStyleChangeComponent:GetStyleChangePoint(outStyleChangePoint, outStyleChangePointMax) end
---@return EBATTLE_STYLE_TYPE
function UStyleChangeComponent:GetCurrentStyle() end
---@return boolean
function UStyleChangeComponent:FinishStyleChange() end
---@return boolean
function UStyleChangeComponent:DecisionStyleChange() end
---@param nValue int32
function UStyleChangeComponent:Debug_SetStyleChangePointMax(nValue) end
---@param nValue int32
function UStyleChangeComponent:Debug_SetStyleChangePoint(nValue) end
---@return boolean
function UStyleChangeComponent:CheckEnableBreakStyle() end


---@class USubTitleBase : UKSUserWidgetBase
---@field SubTitleData FSubTitleDataBase
---@field SubTitleLabel FName
---@field EventRequest boolean
---@field AfterEventLabel FName
---@field m_ChangeEventFlagOnBegin TMap<FName, boolean>
---@field m_ChangeEventFlagOnEnd TMap<FName, boolean>
---@field m_ChangeEventFlagOnPause TMap<FName, boolean>
local USubTitleBase = {}

---@param IsNext boolean
function USubTitleBase:Stop(IsNext) end
---@param Label FName
function USubTitleBase:SetSubTitleLabel(Label) end
---@param IsEventRequest boolean
function USubTitleBase:SetEventOpenRequest(IsEventRequest) end
---@param EventLabel FName
function USubTitleBase:SetAfterEventLabel(EventLabel) end
---@param eNoticeType ENOTICE_TYPE
---@param Args FNoticeArgs
function USubTitleBase:OnFieldChangeFinishCallback(eNoticeType, Args) end
---@return boolean
function USubTitleBase:IsActive() end
---@return int32
function USubTitleBase:GetCurrentBlock() end
---@return FName
function USubTitleBase:GetAfterEventLabel() end
function USubTitleBase:ForceClose() end


---@class USubTitleSaveDataUtil : USaveDataUtilBase
local USubTitleSaveDataUtil = {}

---@param SubTitleId int32
---@param Flag boolean
function USubTitleSaveDataUtil:SetViewFlag(SubTitleId, Flag) end
---@param SubTitleId int32
---@param Index int32
function USubTitleSaveDataUtil:SetStartIndex(SubTitleId, Index) end
---@param SubTitleId int32
---@return boolean
function USubTitleSaveDataUtil:GetViewFlag(SubTitleId) end
---@param SubTitleId int32
---@return int32
function USubTitleSaveDataUtil:GetStartIndex(SubTitleId) end


---@class USubTitleTableUtility : UDataTableUtilityBase
local USubTitleTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutData FSubTitleDataBase
---@param Label FName
function USubTitleTableUtility:GetSubTitleTable(returnCode, OutData, Label) end
---@param OutRowNames TArray<FName>
---@return boolean
function USubTitleTableUtility:GetSubTitleRowNames(OutRowNames) end


---@class USupportAbilityDataTableUtility : UDataTableUtilityBase
local USupportAbilityDataTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function USupportAbilityDataTableUtility:GetSupportAbilityRowNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FSupportAbilityDataBase
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function USupportAbilityDataTableUtility:GetSupportAbilityRowData(returnCode, OutData, TargetLabel, LogEnable) end


---@class USupportCharacterDataUtility : UDataTableUtilityBase
local USupportCharacterDataUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutData FSupportCharacterData
---@param Label FName
---@return boolean
function USupportCharacterDataUtility:GetSupportCharacterTableRowData(returnCode, OutData, Label) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function USupportCharacterDataUtility:GeSupportCharacterTableRowNames(returnCode, OutRowNames) end


---@class USupporterAndEnemyToNpcTableMaker : UObject
local USupporterAndEnemyToNpcTableMaker = {}

---@param outSupporterLabelToNpcLableTable TMap<FName, FName>
---@param outEnemyLabelToNpcLableTable TMap<FName, FName>
---@return boolean
function USupporterAndEnemyToNpcTableMaker:GetTable(outSupporterLabelToNpcLableTable, outEnemyLabelToNpcLableTable) end
---@param outEnemeyLabels TArray<FName>
---@param EnemyGroupLabel FName
---@return boolean
function USupporterAndEnemyToNpcTableMaker:GetEnemyLabelsByEnemyGroup(outEnemeyLabels, EnemyGroupLabel) end
function USupporterAndEnemyToNpcTableMaker:BeginMakeTable() end


---@class USwitchOverride_PointLightComponent : UPointLightComponent
---@field m_OverrideAttenuationRadius float
---@field m_OverrideLightFalloffExponent float
local USwitchOverride_PointLightComponent = {}



---@class UTextDataUtility : UDataTableUtilityBase
local UTextDataUtility = {}

---@param OutData FTalkVoice
---@param TargetLabel FName
---@return boolean
function UTextDataUtility:GetTalkVoiceTextTableRowData(OutData, TargetLabel) end
---@param outLabel FName
---@param TargetLabel FName
---@param WorldContextObject UObject
---@return boolean
function UTextDataUtility:GetTalkVoiceLabel(outLabel, TargetLabel, WorldContextObject) end
---@param OutData FTalkText
---@param TargetLabel FName
---@return boolean
function UTextDataUtility:GetTalkTextTableRowData(OutData, TargetLabel) end
---@param OutData FGameTextItemInfo
---@param TargetLabel FName
---@return boolean
function UTextDataUtility:GetItemTextTableRowData(OutData, TargetLabel) end
---@param OutData FGameTextInfoData
---@param TargetLabel FName
---@return boolean
function UTextDataUtility:GetGameTextTableRowData(OutData, TargetLabel) end
---@param Label FName
---@param OutText FString
function UTextDataUtility:GetGameTextString(Label, OutText) end
---@param lang EKSLanguage
---@return UDataTable
function UTextDataUtility:GetGameTextDB(lang) end
---@param OutText FText
---@param TargetLabel FName
function UTextDataUtility:GetGameText(OutText, TargetLabel) end
---@param DetailText FText
---@param ButtonTexts TArray<FText>
---@param TargetLabel FName
---@param DialogType EDIALOG_TEXT_TYPE
function UTextDataUtility:GetDialogText(DetailText, ButtonTexts, TargetLabel, DialogType) end
---@param OutData FGameTextCharaInfo
---@param TargetLabel FName
---@return boolean
function UTextDataUtility:GetCharaTextTableRowData(OutData, TargetLabel) end
---@param outLabel FName
---@param targetText FText
---@param lang EKSLanguage
---@return boolean
function UTextDataUtility:Debug_SeachTargetText(outLabel, targetText, lang) end
function UTextDataUtility:Debug_ResetText() end


---@class UTextOperationComponent : UActorComponent
---@field m_MacroData UMacroData
local UTextOperationComponent = {}

---@param InputText FString
---@return FString
function UTextOperationComponent:ExecMacroOperation(InputText) end


---@class UTimeChangeButton : UUserWidget
---@field m_pMainText UKSTextBlock
local UTimeChangeButton = {}

---@param ButtonLabel FName
---@param MainLabel FName
function UTimeChangeButton:SetText(ButtonLabel, MainLabel) end


---@class UTimeOperator : UObject
---@field m_eTimeZoneType ETimeZoneType
---@field m_eNextTimeZoneType ETimeZoneType
---@field m_eDarkAreaState ELEVEL_DARK_STATE
---@field m_eTempTimeZoneType ETimeZoneType
---@field m_pSequencer ALevelSequenceActor
local UTimeOperator = {}

---@param nNewValue int32
function UTimeOperator:SetTimeZoneChangeValueMax(nNewValue) end
---@param nNewValue int32
function UTimeOperator:SetTimeZoneChangeValue(nNewValue) end
---@param fNewValue float
function UTimeOperator:SetManualAccelerationTime(fNewValue) end
---@param fNewValue float
function UTimeOperator:SetAutoAccelerationTime(fNewValue) end
---@return ETimeZoneType
function UTimeOperator:IsNextTimeZoneCheck() end
---@return int32
function UTimeOperator:GetTimeZoneChangeValueMax() end
---@return int32
function UTimeOperator:GetTimeZoneChangeValue() end
---@return boolean
function UTimeOperator:GetReserveAutoChange() end
---@return float
function UTimeOperator:GetManualAccelerationTime() end
---@return ELEVEL_DARK_STATE
function UTimeOperator:GetDarkAreaState() end
---@return float
function UTimeOperator:GetCurrentSeaquencerNormalizedTime() end
---@return float
function UTimeOperator:GetAutoAccelerationTime() end


---@class UTimeZoneChangeUI : UKSUserWidgetBase
---@field m_pTimeChangeButton UTimeChangeButton
---@field m_pOpenAnimation UWidgetAnimation
---@field m_pForceCloseAnimation UWidgetAnimation
---@field m_fDeltaTime float
---@field m_fStartTime float
local UTimeZoneChangeUI = {}

function UTimeZoneChangeUI:StopAllAnimation() end
function UTimeZoneChangeUI:OnPlayerInput() end
function UTimeZoneChangeUI:ForceClose() end


---@class UTimeZoneComponentBase : UActorComponent
---@field m_nIndex int32
---@field m_eType ETimeZoneObjectType
local UTimeZoneComponentBase = {}



---@class UTimeZoneEmitterComponent : UTimeZoneComponentBase
---@field m_lstParticle TArray<UParticleSystemComponent>
---@field m_pcParam ATimeZoneEmitterParam
local UTimeZoneEmitterComponent = {}



---@class UTimeZoneLightComponent : UTimeZoneComponentBase
---@field m_apLightList TArray<ULightComponent>
---@field m_cParam ATimeZoneLightParam
local UTimeZoneLightComponent = {}



---@class UTimeZoneSoundComponent : UTimeZoneComponentBase
---@field m_apSoundCueList TArray<USoundAtomCue>
---@field m_apAtomSound UAtomComponent
---@field m_pcParam ATimeZoneSoundParam
---@field m_pcParentEmitterComp UTimeZoneEmitterComponent
---@field m_pcCurrentSoundAtomCue USoundAtomCue
local UTimeZoneSoundComponent = {}



---@class UTimeZoneUtility : UBlueprintFunctionLibrary
local UTimeZoneUtility = {}

---@return boolean
function UTimeZoneUtility:IsNightTime() end
---@return boolean
function UTimeZoneUtility:IsDayTime() end
---@return ETimeZoneType
function UTimeZoneUtility:GetTimeZoneTypeBeforeLostWay() end
---@return ETimeZoneType
function UTimeZoneUtility:GetCurrentTimeZoneType() end


---@class UTitleBackSceneBase : UAcqUserWidget
---@field m_State ETitleMovieState
local UTitleBackSceneBase = {}

---@param NewState ETitleMovieState
function UTitleBackSceneBase:SetState(NewState) end
---@param Text FString
function UTitleBackSceneBase:Debug_SetPrintCurrentTimeText(Text) end
---@return boolean
function UTitleBackSceneBase:Debug_GetIsPrintCurrentTime() end


---@class UTitleBase : UAcqUserWidget
local UTitleBase = {}

function UTitleBase:Start() end
---@param Scene EUITitleFlow
function UTitleBase:SetNextScene(Scene) end
---@param Scene EUITitleFlow
function UTitleBase:SetCurrentScene(Scene) end
function UTitleBase:OnFinishedFadeOut() end
function UTitleBase:OnFinishedFadeIn() end
---@return boolean
function UTitleBase:IsEnd() end
---@return EUITitleFlow
function UTitleBase:GetNextScene() end
---@return EUITitleFlow
function UTitleBase:GetCurrentScene() end
function UTitleBase:End() end
---@return boolean
function UTitleBase:AllowPushToUIManager() end


---@class UTownTableUtility : UDataTableUtilityBase
local UTownTableUtility = {}

---@param Label FName
---@return int32
function UTownTableUtility:TownLabelToID(Label) end
---@param ID int32
---@return FName
function UTownTableUtility:TownIDToLabel(ID) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UTownTableUtility:GetTownTableRowNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FTownInfoData
---@param TargetID int32
---@param LogEnable boolean
---@return boolean
function UTownTableUtility:GetTownTableRowDataByID(returnCode, OutData, TargetID, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FTownInfoData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UTownTableUtility:GetTownTableRowData(returnCode, OutData, TargetLabel, LogEnable) end


---@class UTutorialDataTableUtility : UDataTableUtilityBase
local UTutorialDataTableUtility = {}

---@param TutorialListLable FName
---@return int32
function UTutorialDataTableUtility:TutorialPageLabelToID(TutorialListLable) end
---@param TutorialListID int32
---@return FName
function UTutorialDataTableUtility:TutorialPageIDToLabel(TutorialListID) end
---@param TutorialListLable FName
---@return int32
function UTutorialDataTableUtility:TutorialListLabelToID(TutorialListLable) end
---@param TutorialListID int32
---@return FName
function UTutorialDataTableUtility:TutorialListIDToLabel(TutorialListID) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UTutorialDataTableUtility:GetTutorialPageRowNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FDataTableTutorialPageData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UTutorialDataTableUtility:GetTutorialPageRowDataByLabel_RC(returnCode, OutData, TargetLabel, LogEnable) end
---@param OutData FDataTableTutorialPageData
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UTutorialDataTableUtility:GetTutorialPageRowDataByLabel(OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FDataTableTutorialPageData
---@param TargetID int32
---@param LogEnable boolean
---@return boolean
function UTutorialDataTableUtility:GetTutorialPageRowDataByID(returnCode, OutData, TargetID, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UTutorialDataTableUtility:GetTutorialListRowNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FDataTableTutorialList
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UTutorialDataTableUtility:GetTutorialListRowDataByLabel_RC(returnCode, OutData, TargetLabel, LogEnable) end
---@param OutData FDataTableTutorialList
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UTutorialDataTableUtility:GetTutorialListRowDataByLabel(OutData, TargetLabel, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FDataTableTutorialList
---@param TargetID int32
---@param LogEnable boolean
---@return boolean
function UTutorialDataTableUtility:GetTutorialListRowDataByID(returnCode, OutData, TargetID, LogEnable) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UTutorialDataTableUtility:GetTutorialFlagPartRowNames(returnCode, OutRowNames) end
---@param OutData FTutorialFlagPart
---@param ID int32
---@return boolean
function UTutorialDataTableUtility:GetTutorialFlagPartByID(OutData, ID) end
---@param OutData FTutorialFlagPart
---@param Label FName
---@return boolean
function UTutorialDataTableUtility:GetTutorialFlagPart(OutData, Label) end
---@param OutNames TArray<FName>
---@param CheckCharaSort boolean
function UTutorialDataTableUtility:GetOpenedTutorialFlagPart(OutNames, CheckCharaSort) end
---@return boolean
function UTutorialDataTableUtility:Debug_GetShowAllList() end


---@class UTutorialSaveDataUtil : USaveDataUtilBase
local UTutorialSaveDataUtil = {}

---@param FlagPartLabel FName
---@param Flag boolean
function UTutorialSaveDataUtil:SetTutorialListFlagFromLabel(FlagPartLabel, Flag) end
---@param Type ETUTORIAL_TYPE
---@param Flag boolean
function UTutorialSaveDataUtil:SetTutorialListFlag(Type, Flag) end
---@param FlagPartLabel FName
---@param Flag boolean
function UTutorialSaveDataUtil:SetOpenedTutorialFromLabel(FlagPartLabel, Flag) end
---@param Type ETUTORIAL_TYPE
---@param Flag boolean
function UTutorialSaveDataUtil:SetOpenedTutorial(Type, Flag) end
---@param CharacterID int32
---@param bDisplay boolean
function UTutorialSaveDataUtil:SetCanDisplayBranchMainStory(CharacterID, bDisplay) end
---@param FlagPartLabel FName
---@return boolean
function UTutorialSaveDataUtil:IsViewTutorialListFromLabel(FlagPartLabel) end
---@param Type ETUTORIAL_TYPE
---@return boolean
function UTutorialSaveDataUtil:IsViewTutorialList(Type) end
---@param Type ETUTORIAL_TYPE
---@return boolean
function UTutorialSaveDataUtil:IsOpenedTutorial(Type) end
---@param CharacterID int32
---@return boolean
function UTutorialSaveDataUtil:CanDisplayBranchMainStory(CharacterID) end


---@class UTutorialStateData : UStateDataBase
local UTutorialStateData = {}


---@class UUFieldCommandWidgetFollowBase : UFieldCommandWidgetBase
local UUFieldCommandWidgetFollowBase = {}

---@return boolean
function UUFieldCommandWidgetFollowBase:OpenSwapDialog() end
---@return boolean
function UUFieldCommandWidgetFollowBase:OpenReleaseDialog() end
---@return boolean
function UUFieldCommandWidgetFollowBase:OpenFollowDialog() end
---@return boolean
function UUFieldCommandWidgetFollowBase:OpenFixedFollowNPCReleaseDialog() end
---@return boolean
function UUFieldCommandWidgetFollowBase:OpenFixedFollowNPCDialog() end
---@return boolean
function UUFieldCommandWidgetFollowBase:OpenFailedDialog() end
---@param DialogInput int32
function UUFieldCommandWidgetFollowBase:GetDialogInput(DialogInput) end
---@return boolean
function UUFieldCommandWidgetFollowBase:CloseDialog() end


---@class UUIEventBackgroundFadeBase : UKSUserWidgetBase
---@field InnerSeq EINNER_SEQUENCE
---@field EndTime float
---@field UpdateTime float
local UUIEventBackgroundFadeBase = {}

---@param DeltaTime float
---@return boolean
function UUIEventBackgroundFadeBase:TickInternal(DeltaTime) end
---@param ResourceLabel FName
---@param Time float
---@param BaseColor FLinearColor
---@return boolean
function UUIEventBackgroundFadeBase:StartFadeOut(ResourceLabel, Time, BaseColor) end
---@param Time float
---@return boolean
function UUIEventBackgroundFadeBase:StartFadeIn(Time) end
---@param Color FLinearColor
---@param ResourceLabel FName
function UUIEventBackgroundFadeBase:SetFadeMaterialParam(Color, ResourceLabel) end
function UUIEventBackgroundFadeBase:Reset() end
---@return boolean
function UUIEventBackgroundFadeBase:IsFadeOutFinish() end
---@return boolean
function UUIEventBackgroundFadeBase:IsFadeInFinish() end
---@return EINNER_SEQUENCE
function UUIEventBackgroundFadeBase:GetInnerSquence() end
---@return boolean
function UUIEventBackgroundFadeBase:EndFadeOut() end
---@return boolean
function UUIEventBackgroundFadeBase:EndFadeIn() end


---@class UUIFlashbackBase : UKSUserWidgetBase
---@field LabelList TArray<FName>
---@field SeqFlashback EFlashbackSequence
---@field EndTime float
---@field UpdateTime float
local UUIFlashbackBase = {}

---@param DeltaTime float
---@return boolean
function UUIFlashbackBase:TickInternal(DeltaTime) end
---@param strName FName
---@param Time float
---@return boolean
function UUIFlashbackBase:Start(strName, Time) end
function UUIFlashbackBase:ResetParam() end
function UUIFlashbackBase:Reset() end
---@return boolean
function UUIFlashbackBase:LoadStart() end
---@return boolean
function UUIFlashbackBase:IsInit() end
---@return boolean
function UUIFlashbackBase:IsAnimFinish() end
---@param Alpha float
---@param Texture UTexture2D
---@param BackColor FLinearColor
---@return boolean
function UUIFlashbackBase:InitFlashback(Alpha, Texture, BackColor) end
---@return EFlashbackSequence
function UUIFlashbackBase:GetFlashbackSeq() end
---@param Time float
---@return boolean
function UUIFlashbackBase:Finish(Time) end
---@param ResorceLabel FName
---@return boolean
function UUIFlashbackBase:CheckResourceData(ResorceLabel) end
---@param ResourceName FName
---@return boolean
function UUIFlashbackBase:AddImage(ResourceName) end


---@class UUIPartnerSelectBase : UKSUserWidgetBase
---@field m_PartnerID int32
local UUIPartnerSelectBase = {}

---@return int32
function UUIPartnerSelectBase:GetPartnerID() end


---@class UUITutorialBase : UKSUserWidgetBase
local UUITutorialBase = {}

---@param TopPageData TArray<FDataTableTutorialPageData>
---@param TutorialType ETUTORIAL_TYPE
---@param IsEndCard boolean
---@param IsEpilouge boolean
---@return boolean
function UUITutorialBase:OpenTutorial(TopPageData, TutorialType, IsEndCard, IsEpilouge) end
---@return boolean
function UUITutorialBase:ForceTutorialClose() end


---@class UUITutorialTemplateBase : UUserWidget
---@field FocusAnimation UWidgetAnimation
---@field OutFocusAnimation UWidgetAnimation
---@field PageImage TArray<UAcqImage>
---@field PageText TArray<UKSTextBlock>
---@field VisibleList TArray<UWidget>
local UUITutorialTemplateBase = {}

---@param Visible ESlateVisibility
---@param Index int32
function UUITutorialTemplateBase:SetVisibleList(Visible, Index) end
---@param Focus boolean
---@param Fast boolean
function UUITutorialTemplateBase:SetUIFocus(Focus, Fast) end
---@param TextLabel FName
---@param TextID int32
function UUITutorialTemplateBase:SetPageText(TextLabel, TextID) end
---@param SetTexture UTexture2D
---@param TextID int32
function UUITutorialTemplateBase:SetPageImage(SetTexture, TextID) end
function UUITutorialTemplateBase:RefreshImage() end
function UUITutorialTemplateBase:RefleshText() end
---@return boolean
function UUITutorialTemplateBase:GetUseBackGround() end
---@return int32
function UUITutorialTemplateBase:GetTemplateType() end
---@param PageData FDataTableTutorialPageData
function UUITutorialTemplateBase:CheckReplaceText(PageData) end


---@class UUIWidgetTableUtility : UBlueprintFunctionLibrary
local UUIWidgetTableUtility = {}

---@param returnCode EBPFuncReturnCode::Type
---@param OutWidgetData FUIWidgetReferenceData
---@param Label FName
function UUIWidgetTableUtility:GetWidgetDataFromName(returnCode, OutWidgetData, Label) end


---@class UVibrationDataTableUtil : UDataTableUtilityBase
local UVibrationDataTableUtil = {}

---@param OutRowNames TArray<FName>
---@return boolean
function UVibrationDataTableUtil:GetAllPs5VibrationDataRowNames(OutRowNames) end
---@param OutRowNames TArray<FName>
---@return boolean
function UVibrationDataTableUtil:GetAllFfeVibrationDataRowNames(OutRowNames) end


---@class UVibrationStatics : UBlueprintFunctionLibrary
local UVibrationStatics = {}

function UVibrationStatics:UnloadVibration() end
---@return boolean
function UVibrationStatics:StopVibration() end
---@param vibLabel FName
---@param Power float
---@param Loop boolean
---@param LoopInterval int32
---@return boolean
function UVibrationStatics:PlayVibrationByLabel(vibLabel, Power, Loop, LoopInterval) end
---@param vibLabel FName
---@param Power EVibrationPower
---@param Loop boolean
---@param LoopInterval int32
---@return boolean
function UVibrationStatics:PlayVibration2ByLabel(vibLabel, Power, Loop, LoopInterval) end
---@param PathName FString
---@return boolean
function UVibrationStatics:LoadVibration(PathName) end


---@class UWeakSystemComponent : UActorComponent
---@field m_cOwnerPlayer ABattleCharacterBase
local UWeakSystemComponent = {}



---@class UWeaponMasterEventDbUtil : UDataTableUtilityBase
local UWeaponMasterEventDbUtil = {}

---@param outEventLabel FName
---@param RowName FName
---@return boolean
function UWeaponMasterEventDbUtil:GetWeaponMasterEventLabel(outEventLabel, RowName) end
---@param OutData FWeaponMasterEventDataBase
---@param RowName FName
---@return boolean
function UWeaponMasterEventDbUtil:GetWeaponMasterEventDataByRowName(OutData, RowName) end
---@param outTextLabel FName
---@param RowName FName
---@return boolean
function UWeaponMasterEventDbUtil:GetWeaponMasterDialogTextLabel(outTextLabel, RowName) end


---@class UWidgetTemporaryHiddenComponent : UActorComponent
---@field m_UiManager AKSUIManager
local UWidgetTemporaryHiddenComponent = {}

---@param hideUser EWIDGET_TEMPORARY_HIDE_USER
function UWidgetTemporaryHiddenComponent:TurnOffTemporaryHiddenFlag(hideUser) end
---@param uiManager AKSUIManager
function UWidgetTemporaryHiddenComponent:Setup(uiManager) end
function UWidgetTemporaryHiddenComponent:ResetAllHiddenFlag() end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function UWidgetTemporaryHiddenComponent:OnStartBattle(eNoticeType, NoticeArgs) end
---@param eNoticeType ENOTICE_TYPE
---@param NoticeArgs FNoticeArgs
function UWidgetTemporaryHiddenComponent:OnEndBattle(eNoticeType, NoticeArgs) end
---@param isHide boolean
---@param hideUser EWIDGET_TEMPORARY_HIDE_USER
function UWidgetTemporaryHiddenComponent:HideWidgetTemporary(isHide, hideUser) end


---@class UWorldMapAreaLabelBase : UAcqUserWidget
---@field IsOpenning boolean
local UWorldMapAreaLabelBase = {}

---@return FVector2D
function UWorldMapAreaLabelBase:GetPosition() end
---@return FVector2D
function UWorldMapAreaLabelBase:GetOverlapArea() end
---@return boolean
function UWorldMapAreaLabelBase:GetIsOpenning() end


---@class UWorldMapCursorBase : UAcqUserWidget
---@field m_IsSnapping boolean
---@field CursorImage UImage
---@field m_CursorPositionLimit FVector2D
---@field m_FastRotaionLine FVector2D
---@field m_SnapTargetPos FVector2D
---@field m_SnapStartPos FVector2D
---@field m_SnapDurationTime float
---@field m_SnapElapseTime float
local UWorldMapCursorBase = {}

---@param DeltaTime float
---@param outCouldNotMoveValue FVector2D
---@return boolean
function UWorldMapCursorBase:UpdateSnap(DeltaTime, outCouldNotMoveValue) end
---@param SnapTargetPos FVector2D
---@param SnapDuration float
function UWorldMapCursorBase:StartSnap(SnapTargetPos, SnapDuration) end
---@param Start FVector2D
---@param End FVector2D
---@param Alpha float
---@return FVector2D
function UWorldMapCursorBase:SnapInterpolation(Start, End, Alpha) end
---@param newPos FVector2D
---@param keepDirection boolean
---@return FVector2D
function UWorldMapCursorBase:SetPosition(newPos, keepDirection) end
---@param FastRotaionLine FVector2D
function UWorldMapCursorBase:SetFastRotaionLinet(FastRotaionLine) end
---@param CursorPositionLimit FVector2D
function UWorldMapCursorBase:SetCursorPositionLimit(CursorPositionLimit) end
---@param newCursorPos FVector2D
---@param newTargetPos FVector2D
function UWorldMapCursorBase:OverrideSnapPosition(newCursorPos, newTargetPos) end
---@return FVector2D
function UWorldMapCursorBase:MoveSursorToCenter() end
---@return FVector2D
function UWorldMapCursorBase:GetPosition() end
function UWorldMapCursorBase:CancelSnap() end
---@param deltaPos FVector2D
---@return FVector2D
function UWorldMapCursorBase:AddCursorPosition(deltaPos) end


---@class UWorldMapDarkAreaEffectParamUtil : UDataTableUtilityBase
local UWorldMapDarkAreaEffectParamUtil = {}


---@class UWorldMapFunction : UBlueprintFunctionLibrary
local UWorldMapFunction = {}

---@param A float
---@param Digit int32
---@return float
function UWorldMapFunction:RoundByDigit(A, Digit) end
---@param rot FRotator
---@return FRotator
function UWorldMapFunction:RotatorTo360(rot) end
---@param Start FVector2D
---@param End FVector2D
---@param Alpha float
---@return FVector2D
function UWorldMapFunction:LerpVector2D(Start, End, Alpha) end
---@param Start FFrameTime
---@param End FFrameTime
---@param Alpha float
---@return FFrameTime
function UWorldMapFunction:LerpFrameTime(Start, End, Alpha) end
---@param WorldContextObject UObject
---@param WorldMapData FWorldMapTable
---@return boolean
function UWorldMapFunction:IsVisitedLocation(WorldContextObject, WorldMapData) end
---@param WorldMapData FWorldMapTable
---@return boolean
function UWorldMapFunction:IsCurrentLocation(WorldMapData) end
---@param MovieSceneSequence UMovieSceneSequence
---@param InLabel FString
---@param IsFound boolean
---@param AsSeconds float
---@return FFrameTime
function UWorldMapFunction:GetMarkedFrameNumberByLabel(MovieSceneSequence, InLabel, IsFound, AsSeconds) end
---@param Val boolean
function UWorldMapFunction:Debug_SetIsFlatEarthMode(Val) end
---@param Val boolean
function UWorldMapFunction:Debug_SetIsDrawDebugLine(Val) end
---@return boolean
function UWorldMapFunction:Debug_GetIsFlatEarthMode() end
---@return boolean
function UWorldMapFunction:Debug_GetIsDrawDebugLine() end
---@param WorldContextObject UObject
---@param WorldPos FVector
---@param outWidgetPos FVector2D
---@return boolean
function UWorldMapFunction:ConvertWorldPosToWidgetPosForZoom(WorldContextObject, WorldPos, outWidgetPos) end
---@param WorldContextObject UObject
---@param WorldPos FVector
---@param outWidgetPos FVector2D
---@return boolean
function UWorldMapFunction:ConvertWorldPosToWidgetPosForIcon(WorldContextObject, WorldPos, outWidgetPos) end
---@param WorldContextObject UObject
---@param WidgetPos FVector2D
---@param outWorldPos FVector
---@param IsDebugDraw boolean
---@return boolean
function UWorldMapFunction:ConvertWidgetPosToWorldPosOnWorldMapForZoom(WorldContextObject, WidgetPos, outWorldPos, IsDebugDraw) end
---@param WorldContextObject UObject
---@param WorldMapData FWorldMapTable
---@return boolean
function UWorldMapFunction:CanDisplayLocation(WorldContextObject, WorldMapData) end


---@class UWorldMapIconBase : UAcqUserWidget
---@field m_WorldMapData FWorldMapTable
---@field m_WorldMapDataLabel FName
---@field m_GuildIds TArray<int32>
---@field m_IsCurrentLocation boolean
---@field m_IsDestinationLocation boolean
---@field m_IsExistsGuild boolean
---@field m_OccurringStoryList TArray<FWorldMapDestinationData>
---@field m_IsSelecting boolean
---@field m_IsPlayingAnimation boolean
---@field m_StartOpacity float
---@field m_FinishOpacity float
---@field m_AnimDurationTime float
---@field m_AnimElapseTime float
---@field m_StoryInfoDisplays TArray<UWorldMapStoryInfoDisplayBase>
---@field m_StoryInfoVerticalBox UVerticalBox
local UWorldMapIconBase = {}

---@param IsInScreen boolean
---@return boolean
function UWorldMapIconBase:UpdateVisibility(IsInScreen) end
---@param DeltaTime float
function UWorldMapIconBase:UpdateAnimation(DeltaTime) end
---@param ZoomType EWorldMapZoomType
---@param isFast boolean
function UWorldMapIconBase:StartStoryInfoDisplayAnimIfNeeded(ZoomType, isFast) end
---@param ZoomType EWorldMapZoomType
function UWorldMapIconBase:StartIcconVisibilityTransitionByZoomType(ZoomType) end
---@param IsFocus boolean
---@param isFast boolean
---@return boolean
function UWorldMapIconBase:StartFocus(IsFocus, isFast) end
---@param isFast boolean
---@return boolean
function UWorldMapIconBase:StartEnable(isFast) end
---@param isFast boolean
---@return boolean
function UWorldMapIconBase:StartDisable(isFast) end
---@param Label FName
function UWorldMapIconBase:SetWorldMapData(Label) end
---@param StoryList TArray<FWorldMapDestinationData>
function UWorldMapIconBase:SetupStoryInfoDisplays(StoryList) end
function UWorldMapIconBase:SetupIconImage() end
function UWorldMapIconBase:SetupIconColor() end
function UWorldMapIconBase:SetupIcon() end
---@param newPos FVector2D
---@return FVector2D
function UWorldMapIconBase:SetPosition(newPos) end
---@param IsSelecting boolean
function UWorldMapIconBase:SetIsSelecting(IsSelecting) end
---@param IsDestinationLocation boolean
function UWorldMapIconBase:SetIsDestinationLocation(IsDestinationLocation) end
---@param ElapsedTime float
function UWorldMapIconBase:ScrubAnimation(ElapsedTime) end
---@return boolean
function UWorldMapIconBase:IsVisitedGuild() end
---@return boolean
function UWorldMapIconBase:IsVisited() end
---@param ZoomType EWorldMapZoomType
---@return boolean
function UWorldMapIconBase:IsDisplayableIcon(ZoomType) end
---@param ZoomType EWorldMapZoomType
---@return boolean
function UWorldMapIconBase:InitVisibility(ZoomType) end
---@param ZoomType EWorldMapZoomType
function UWorldMapIconBase:InitIsFocusOfStoryInfoDisplays(ZoomType) end
---@param Start float
---@param End float
---@param Alpha float
---@return float
function UWorldMapIconBase:IconAnimInterpolation(Start, End, Alpha) end
function UWorldMapIconBase:HideAllStoryInfoWidget() end
---@return FWorldMapIconData
function UWorldMapIconBase:GetWorldMapIconData() end
---@return FName
function UWorldMapIconBase:GetWorldMapDataLabel() end
---@return FWorldMapTable
function UWorldMapIconBase:GetWorldMapData() end
---@return TArray<UWorldMapStoryInfoDisplayBase>
function UWorldMapIconBase:GetVisibleStoryInfoWidget() end
---@return FVector2D
function UWorldMapIconBase:GetSnapPosition() end
---@return FVector2D
function UWorldMapIconBase:GetPosition() end
---@return FVector2D
function UWorldMapIconBase:GetOverlapArea() end
---@return boolean
function UWorldMapIconBase:GetIsSelecting() end
---@return boolean
function UWorldMapIconBase:GetIsPlayeingAnimation() end
---@return boolean
function UWorldMapIconBase:GetIsOnlyOccurringMerchantSubStory() end
---@param StoryCategory EMAIN_STORY_CATEGORY
---@return boolean
function UWorldMapIconBase:GetIsOccurringStoryByCategory(StoryCategory) end
---@return boolean
function UWorldMapIconBase:GetIsOccurringMainStory() end
---@return boolean
function UWorldMapIconBase:GetIsOccurringAnyStory() end
---@return boolean
function UWorldMapIconBase:GetIsDestinationLocation() end
---@return boolean
function UWorldMapIconBase:GetIsCurrentLocation() end


---@class UWorldMapIconDataUtility : UDataTableUtilityBase
local UWorldMapIconDataUtility = {}

---@param dbName FName
---@param notice EDBNoticeType
function UWorldMapIconDataUtility:NotifyWorldMapIconDb(dbName, notice) end
---@param icnoType EWorldMapIconType
---@return FName
function UWorldMapIconDataUtility:GetWorldMapIconTextureLabel(icnoType) end
---@param icnoType EWorldMapIconType
---@return FWorldMapIconData
function UWorldMapIconDataUtility:GetWorldMapIconDataByType(icnoType) end
---@param icnoType EWorldMapIconType
---@param ZoomType EWorldMapZoomType
---@return boolean
function UWorldMapIconDataUtility:GetIsWorldMapIconVisibe(icnoType, ZoomType) end


---@class UWorldMapPivotComponent : UWorldMapPivotComponentBase
local UWorldMapPivotComponent = {}


---@class UWorldMapPivotComponentBase : UArrowComponent
---@field PivotLength float
---@field PivotRadius float
---@field WorldMapLabel FName
---@field WorldMapMode EWorldMapMode
local UWorldMapPivotComponentBase = {}

---@param Mode EWorldMapMode
function UWorldMapPivotComponentBase:SetWorldMapMode(Mode) end
function UWorldMapPivotComponentBase:OnOpenWorldMap() end
---@return FName
function UWorldMapPivotComponentBase:GetWorldMapLabel() end
---@return FVector
function UWorldMapPivotComponentBase:CalcWorldPositionOnGlobe() end
---@param outScreenPos FVector2D
---@return boolean
function UWorldMapPivotComponentBase:CalcScreenPositionOnMap(outScreenPos) end


---@class UWorldMapPivotComponentV2 : UWorldMapPivotComponentBase
local UWorldMapPivotComponentV2 = {}


---@class UWorldMapShipPivotComponentV2 : UWorldMapPivotComponentV2
local UWorldMapShipPivotComponentV2 = {}

function UWorldMapShipPivotComponentV2:UpdateShipPosition() end


---@class UWorldMapStoryInfoDisplayBase : UAcqUserWidget
---@field m_IsFocus boolean
---@field m_IsForceHidden boolean
---@field m_StoryInfoTextWidget UWorldMapStoryInfoText
local UWorldMapStoryInfoDisplayBase = {}

---@param StoryInfo FWorldMapDestinationData
function UWorldMapStoryInfoDisplayBase:Setup(StoryInfo) end
---@param isHidden boolean
function UWorldMapStoryInfoDisplayBase:SetForceHidden(isHidden) end
---@param ElapsedTime float
function UWorldMapStoryInfoDisplayBase:ScrubAnimation(ElapsedTime) end
---@param ZoomType EWorldMapZoomType
function UWorldMapStoryInfoDisplayBase:InitIsFocus(ZoomType) end
---@return boolean
function UWorldMapStoryInfoDisplayBase:GetIsForceHidden() end
---@return boolean
function UWorldMapStoryInfoDisplayBase:GetIsFocus() end
---@param IsFocus boolean
---@param isFast boolean
function UWorldMapStoryInfoDisplayBase:ChangeUIFocus(IsFocus, isFast) end


---@class UWorldMapStoryInfoText : UAcqUserWidget
---@field m_IsPlayingTextLoopAnim boolean
---@field m_LoopAnim UWidgetAnimation
local UWorldMapStoryInfoText = {}

---@param Val boolean
function UWorldMapStoryInfoText:SetIsPlayingTextLoopAnim(Val) end
---@param ElapsedTime float
function UWorldMapStoryInfoText:ScrubAnimation(ElapsedTime) end


---@class UWorldMapTableUtility : UDataTableUtilityBase
local UWorldMapTableUtility = {}

---@param dbName FName
---@param notice EDBNoticeType
function UWorldMapTableUtility:NotifyWorldMapDb(dbName, notice) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutRowNames TArray<FName>
---@return boolean
function UWorldMapTableUtility:GetWorldMapTableRowNames(returnCode, OutRowNames) end
---@param returnCode EBPFuncReturnCode::Type
---@param OutData FWorldMapTable
---@param TargetLabel FName
---@param LogEnable boolean
---@return boolean
function UWorldMapTableUtility:GetWorldMapRowDataByLabel(returnCode, OutData, TargetLabel, LogEnable) end
---@param levelLabel FName
---@return FName
function UWorldMapTableUtility:GetWorldMapLabelByLevelLabel(levelLabel) end


---@class UWorldMapWidgetBase : UAcqUserWidget
---@field OnOpenBeginEvent FWorldMapWidgetBaseOnOpenBeginEvent
---@field OnOpenEndEvent FWorldMapWidgetBaseOnOpenEndEvent
---@field OnCloseBeginEvent FWorldMapWidgetBaseOnCloseBeginEvent
---@field OnCloseEndEvent FWorldMapWidgetBaseOnCloseEndEvent
---@field WorldMapMode EWorldMapMode
---@field m_WorldMapState EWorldMapState
---@field m_InitZoomType EWorldMapZoomType
---@field m_IconWidgets TMap<FName, UWorldMapIconBase>
---@field m_VectorsToIcon TMap<FName, FVectorsToIcon>
---@field m_WorldMapActor AWorldMapActorBase
---@field m_WorldMapFastTraveler AWorldMapFastTraveler
---@field m_IsBackGroundMode boolean
---@field m_ElapsedTime float
---@field m_CullingMargin FVector2D
---@field m_CursorWidget UWorldMapCursorBase
---@field m_AreaLabelWidget UWorldMapAreaLabelBase
---@field m_SelectedIcon UWorldMapIconBase
---@field m_LastActiveSelectedIcon UWorldMapIconBase
---@field m_CursorInputValue FVector2D
---@field m_PrevCursorInputValue FVector2D
---@field m_EasedCursorInputValue FVector2D
---@field m_CursorMoveTime float
---@field m_CursorStartMovingEaseDuration float
---@field m_CursorStartMovingEaseCurve UCurveFloat
---@field m_CursorStopTime float
---@field m_CursorStopMovingEaseDuration float
---@field m_CursorStopMovingEaseCurve UCurveFloat
---@field m_LastMoveCursorVector FVector2D
---@field m_FastRotateTime float
---@field m_StartFastRotationEaseDuration float
---@field m_StartFastRotationEaseCurve UCurveFloat
---@field m_NonFastRotateTime float
---@field m_StartNonFastRotationEaseDuration float
---@field m_StartNonFastRotationEaseCurve UCurveFloat
---@field m_AutoRotateEaseCurve UCurveFloat
local UWorldMapWidgetBase = {}

function UWorldMapWidgetBase:WorldMapEvent__DelegateSignature() end
function UWorldMapWidgetBase:UpdateVectorsToIcon() end
function UWorldMapWidgetBase:UpdateOverlapWidgetVisibility() end
function UWorldMapWidgetBase:UpdateMapIcon() end
function UWorldMapWidgetBase:UpdateAnimation() end
---@param NewState EWorldMapState
function UWorldMapWidgetBase:SetWorldMapState(NewState) end
function UWorldMapWidgetBase:SetupMapIconStoryInfo() end
---@param isFast boolean
function UWorldMapWidgetBase:OutFocusWorldMap(isFast) end
function UWorldMapWidgetBase:OpenWorldMapInternal() end
function UWorldMapWidgetBase:OpenWorldMap() end
function UWorldMapWidgetBase:OnOpened() end
function UWorldMapWidgetBase:OnClosed() end
---@return boolean
function UWorldMapWidgetBase:IsOpening() end
---@return boolean
function UWorldMapWidgetBase:IsClosing() end
---@return boolean
function UWorldMapWidgetBase:IsClosed() end
---@return FVector2D
function UWorldMapWidgetBase:GetCenterPosition() end
---@param isFast boolean
function UWorldMapWidgetBase:FocusWorldMap(isFast) end
---@param outIcon UWorldMapIconBase
---@param outLength float
---@return boolean
function UWorldMapWidgetBase:FindNearestIcon(outIcon, outLength) end
---@param WorldMapLabel FName
---@return boolean
function UWorldMapWidgetBase:FindCurrentLocationWorldMapLabel(WorldMapLabel) end
function UWorldMapWidgetBase:FastCloseWorldMap() end
function UWorldMapWidgetBase:CloseWorldMapInternal() end
function UWorldMapWidgetBase:CloseWorldMap() end
function UWorldMapWidgetBase:CheckOpenTutorial() end


