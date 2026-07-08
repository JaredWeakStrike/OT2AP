#ifndef UE4SS_SDK_Majesty_HPP
#define UE4SS_SDK_Majesty_HPP

#include "Majesty_enums.hpp"

struct FAISACCtrlParam
{
    FString AISACName;                                                                // 0x0000 (size: 0x10)
    float fVolume;                                                                    // 0x0010 (size: 0x4)

}; // Size: 0x18

struct FAbilityDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 AbilityID;                                                                  // 0x000C (size: 0x4)
    FName DisplayName;                                                                // 0x0010 (size: 0x8)
    FName Detail;                                                                     // 0x0018 (size: 0x8)
    TSoftClassPtr<AActionCommandBase> CommandActor;                                   // 0x0020 (size: 0x28)
    EABILITY_TYPE AbilityType;                                                        // 0x0048 (size: 0x1)
    EABILITY_USE_TYPE AbilityUseType;                                                 // 0x0049 (size: 0x1)
    bool AlwaysDisable;                                                               // 0x004A (size: 0x1)
    EATTRIBUTE_TYPE Attribute;                                                        // 0x004B (size: 0x1)
    bool DependWeapon;                                                                // 0x004C (size: 0x1)
    EWEAPON_CATEGORY RestrictWeapon;                                                  // 0x004D (size: 0x1)
    EBATTLE_TARGET_TYPE TargetType;                                                   // 0x004E (size: 0x1)
    bool ExceptEnforcer;                                                              // 0x004F (size: 0x1)
    EABILITY_COST_TYPE CostType;                                                      // 0x0050 (size: 0x1)
    int32 CostValue;                                                                  // 0x0054 (size: 0x4)
    int32 HitRatio;                                                                   // 0x0058 (size: 0x4)
    int32 CriticalRatio;                                                              // 0x005C (size: 0x4)
    int32 CriticalPower;                                                              // 0x0060 (size: 0x4)
    int32 AbilityRatio;                                                               // 0x0064 (size: 0x4)
    int32 BaseCount;                                                                  // 0x0068 (size: 0x4)
    int32 MinimumCount;                                                               // 0x006C (size: 0x4)
    int32 RandomCountMin;                                                             // 0x0070 (size: 0x4)
    int32 RandomCountMax;                                                             // 0x0074 (size: 0x4)
    EBATTLE_ACTION_ORDER_ESTIMATE_TYPE EstimateOrderType;                             // 0x0078 (size: 0x1)
    int32 EstimateOrderCount;                                                         // 0x007C (size: 0x4)
    TArray<FAilmentHandler> Ailment;                                                  // 0x0080 (size: 0x10)
    bool KeepBoostEffect;                                                             // 0x0090 (size: 0x1)
    bool EnableItemAll;                                                               // 0x0091 (size: 0x1)
    bool EnableSkillAll;                                                              // 0x0092 (size: 0x1)
    bool EnableConvergence;                                                           // 0x0093 (size: 0x1)
    bool EnableDiffusion;                                                             // 0x0094 (size: 0x1)
    bool EnableReflection;                                                            // 0x0095 (size: 0x1)
    bool EnableCounter;                                                               // 0x0096 (size: 0x1)
    bool EnableHideOut;                                                               // 0x0097 (size: 0x1)
    bool EnableRepeat;                                                                // 0x0098 (size: 0x1)
    bool EnableCover;                                                                 // 0x0099 (size: 0x1)
    bool EnableProvoke;                                                               // 0x009A (size: 0x1)
    bool EnableDisableMagic;                                                          // 0x009B (size: 0x1)
    bool EnableEnchant;                                                               // 0x009C (size: 0x1)
    bool EnableChaseAttack;                                                           // 0x009D (size: 0x1)
    bool EnableWeakCheckAll;                                                          // 0x009E (size: 0x1)
    bool EnableNormalAttackAll;                                                       // 0x009F (size: 0x1)
    bool EnableSession;                                                               // 0x00A0 (size: 0x1)
    bool EnableBusinessSupport;                                                       // 0x00A1 (size: 0x1)
    bool EnableForceWeakness;                                                         // 0x00A2 (size: 0x1)
    bool EnableNoUseMaterial;                                                         // 0x00A3 (size: 0x1)
    bool EnableSwitchWeapon;                                                          // 0x00A4 (size: 0x1)
    bool EnableCompensationMagic;                                                     // 0x00A5 (size: 0x1)
    bool EnableExcitement;                                                            // 0x00A6 (size: 0x1)
    bool SongAbilityFlag;                                                             // 0x00A7 (size: 0x1)
    bool DanceAbilityFlag;                                                            // 0x00A8 (size: 0x1)
    bool EnableAutoTameMonster;                                                       // 0x00A9 (size: 0x1)
    bool UseAbilityCamera;                                                            // 0x00AA (size: 0x1)
    TSoftObjectPtr<ULevelSequence> ActionCommandSequencer;                            // 0x00B0 (size: 0x28)
    TArray<FName> AbilitySE;                                                          // 0x00D8 (size: 0x10)
    int32 SlideFrame;                                                                 // 0x00E8 (size: 0x4)

}; // Size: 0xF0

struct FAbilitySetDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 AbilitySetID;                                                               // 0x000C (size: 0x4)
    FName NoBoost;                                                                    // 0x0010 (size: 0x8)
    FName BoostLv1;                                                                   // 0x0018 (size: 0x8)
    FName BoostLv2;                                                                   // 0x0020 (size: 0x8)
    FName BoostLv3;                                                                   // 0x0028 (size: 0x8)
    ECOMMAND_MENU_TYPE MenuType;                                                      // 0x0030 (size: 0x1)
    ECOMMAND_SUB_MENU_TYPE SubMenuType;                                               // 0x0031 (size: 0x1)
    EABILITY_ICON_TYPE MenuIconType;                                                  // 0x0032 (size: 0x1)
    int32 MenuInfoLv;                                                                 // 0x0034 (size: 0x4)
    FName SuperMagicLabel;                                                            // 0x0038 (size: 0x8)
    FName HyperMagicLabel;                                                            // 0x0040 (size: 0x8)
    FName RestrictWeaponLabel;                                                        // 0x0048 (size: 0x8)
    bool IsDivineAbility;                                                             // 0x0050 (size: 0x1)
    int32 InventorTurn;                                                               // 0x0054 (size: 0x4)
    TArray<bool> CommandSealingSwitch;                                                // 0x0058 (size: 0x10)

}; // Size: 0x68

struct FAchievementData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    EAchievementType AchievementType;                                                 // 0x000C (size: 0x1)
    int32 IntParam;                                                                   // 0x0010 (size: 0x4)
    FName NameParam;                                                                  // 0x0014 (size: 0x8)
    TArray<int32> IntParams;                                                          // 0x0020 (size: 0x10)
    TArray<FName> NameParams;                                                         // 0x0030 (size: 0x10)
    bool IsPlatinumAchievement;                                                       // 0x0040 (size: 0x1)
    FName Key_PS4;                                                                    // 0x0044 (size: 0x8)
    FName Key_PS5;                                                                    // 0x004C (size: 0x8)
    FName Key_Steam;                                                                  // 0x0054 (size: 0x8)

}; // Size: 0x60

struct FAchievementSaveData
{
    TMap<MJFieldCommandType, int32> FieldCommandSuccessCount;                         // 0x0000 (size: 0x50)
    TArray<int32> SwoonNpcUniqueIds;                                                  // 0x0050 (size: 0x10)
    int32 LinerShipCount;                                                             // 0x0060 (size: 0x4)
    TMap<EBOOST_LEVEL, int32> BosstAttackCount;                                       // 0x0068 (size: 0x50)
    int32 BreakCount;                                                                 // 0x00B8 (size: 0x4)
    int32 MaxDamageValue;                                                             // 0x00BC (size: 0x4)
    int32 AcquisitionAbilityCount;                                                    // 0x00C0 (size: 0x4)
    int32 AcquisitionAdvancedAbilityCount;                                            // 0x00C4 (size: 0x4)
    int32 AcquisitionDevineAbilityCount;                                              // 0x00C8 (size: 0x4)

}; // Size: 0xD0

struct FAchievementTypeData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    TArray<FName> ExcludeEnemyGroups;                                                 // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FAcqListViewWidgetEventPayload
{
    int32 SelectedIndex;                                                              // 0x0000 (size: 0x4)
    class UAcqListViewEntryItemBase* SelectedEntryItem;                               // 0x0008 (size: 0x8)

}; // Size: 0x10

struct FAcqManagerData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString BaseClassPath;                                                            // 0x0010 (size: 0x10)
    TSoftObjectPtr<UObject> InstancePath;                                             // 0x0020 (size: 0x28)
    EMANAGER_CREATE_PHASE CreatePhase;                                                // 0x0048 (size: 0x1)

}; // Size: 0x50

struct FAcquisitionAbilityData
{
    TArray<bool> AcquisitionFlag;                                                     // 0x0000 (size: 0x10)

}; // Size: 0x10

struct FActionDelaySEData
{
    int32 DelayFrame;                                                                 // 0x0000 (size: 0x4)
    FName PlaySEID;                                                                   // 0x0004 (size: 0x8)

}; // Size: 0xC

struct FActionOrderData
{
    EACTION_ORDER_TYPE m_eOrderType;                                                  // 0x0000 (size: 0x1)
    float m_fDelayRatio;                                                              // 0x0004 (size: 0x4)
    class UActionOrderIcon* m_cCurrentOrderIcon;                                      // 0x0008 (size: 0x8)
    class UActionOrderIcon* m_cNextOrderIcon_DEPLICATED;                              // 0x0010 (size: 0x8)
    class ABattleCharacterBase* m_cOrderCharacter;                                    // 0x0018 (size: 0x8)
    class ABattleCharacterBase* m_cSubOrderCharacter;                                 // 0x0020 (size: 0x8)
    bool m_bUseIcon;                                                                  // 0x0028 (size: 0x1)
    int32 m_nCurrentIndex;                                                            // 0x002C (size: 0x4)
    int32 m_nNextIndex;                                                               // 0x0030 (size: 0x4)
    int32 m_nOrderCount;                                                              // 0x0034 (size: 0x4)
    bool m_bIsOrderChange;                                                            // 0x0038 (size: 0x1)
    bool m_bIsOrderBuff;                                                              // 0x0039 (size: 0x1)
    bool m_bSaved_IsOrderChange;                                                      // 0x003A (size: 0x1)

}; // Size: 0x40

struct FActivityData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName TitleText;                                                                  // 0x000C (size: 0x8)

}; // Size: 0x18

struct FActivitySubTaskData
{
    FName SubTaskLabel;                                                               // 0x0000 (size: 0x8)
    FName MainStoryLabel;                                                             // 0x0008 (size: 0x8)

}; // Size: 0x10

struct FActivityTaskData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 ActivityLabelId;                                                            // 0x000C (size: 0x4)
    TArray<FActivitySubTaskData> SubTaskData;                                         // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FAddBalloonParam
{
    FTalkText Text;                                                                   // 0x0000 (size: 0x60)
    TArray<FName> VoiceLabel;                                                         // 0x0060 (size: 0x10)
    class AActor* TargetActor;                                                        // 0x0070 (size: 0x8)
    FVector2D Offset;                                                                 // 0x0078 (size: 0x8)
    bool EnableTail;                                                                  // 0x0080 (size: 0x1)
    FVector2D UnderOffset;                                                            // 0x0084 (size: 0x8)
    EEventBalloonDir BalloonDir;                                                      // 0x008C (size: 0x1)
    float BalloonOffsetScale;                                                         // 0x0090 (size: 0x4)
    EBALLOON_TEXT_POS TextPosition;                                                   // 0x0094 (size: 0x1)
    bool EnableCustomFadeTime;                                                        // 0x0095 (size: 0x1)
    float FadeOutTime;                                                                // 0x0098 (size: 0x4)

}; // Size: 0xA0

struct FAdvancedAbility
{
    FName AbilityID;                                                                  // 0x0000 (size: 0x8)
    FName HiddenText;                                                                 // 0x0008 (size: 0x8)

}; // Size: 0x10

struct FAilmentDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString AilmentType;                                                              // 0x0010 (size: 0x10)
    FString Target;                                                                   // 0x0020 (size: 0x10)
    FString CalcType;                                                                 // 0x0030 (size: 0x10)
    FString Attribute;                                                                // 0x0040 (size: 0x10)
    int32 DiseaseRatio;                                                               // 0x0050 (size: 0x4)
    FString TargetDiseaseType;                                                        // 0x0058 (size: 0x10)
    FString TargetDiseaseName;                                                        // 0x0068 (size: 0x10)
    FString FieldDiseaseType;                                                         // 0x0078 (size: 0x10)
    FString OrderChangeType;                                                          // 0x0088 (size: 0x10)
    int32 AdvValue1;                                                                  // 0x0098 (size: 0x4)
    int32 AdvValue2;                                                                  // 0x009C (size: 0x4)
    int32 AdvValue3;                                                                  // 0x00A0 (size: 0x4)
    int32 AdvValue4;                                                                  // 0x00A4 (size: 0x4)

}; // Size: 0xA8

struct FAilmentHandler
{
    FName AilmentName;                                                                // 0x0000 (size: 0x8)
    int32 InvocationValue;                                                            // 0x0008 (size: 0x4)
    int32 InvocationTurn;                                                             // 0x000C (size: 0x4)
    int32 DiseaseRate;                                                                // 0x0010 (size: 0x4)

}; // Size: 0x14

struct FAreaInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName MiddleTownIconID;                                                           // 0x000C (size: 0x8)
    FName AreaNameID;                                                                 // 0x0014 (size: 0x8)
    FName AreaNameID_ForMissionRecord;                                                // 0x001C (size: 0x8)
    FName AreaEmblemID;                                                               // 0x0024 (size: 0x8)

}; // Size: 0x30

struct FAsyncLoad
{
}; // Size: 0x20

struct FBackPackItemData
{
    FName ItemLabel;                                                                  // 0x0000 (size: 0x8)
    int32 Num;                                                                        // 0x0008 (size: 0x4)

}; // Size: 0xC

struct FBarMenuStoryItem
{
    int32 CharacterID;                                                                // 0x0000 (size: 0x4)
    TArray<EPlayableCharacterID> RelationCharaId;                                     // 0x0008 (size: 0x10)
    int32 Chapter;                                                                    // 0x0018 (size: 0x4)
    FText ChapterText;                                                                // 0x0020 (size: 0x18)
    FText SubTitleText;                                                               // 0x0038 (size: 0x18)
    FName DetailLabel;                                                                // 0x0050 (size: 0x8)
    bool IsEnable;                                                                    // 0x0058 (size: 0x1)
    EBARMENU_STORY_PROGRESSTYPE ProgressType;                                         // 0x0059 (size: 0x1)
    EBARMENU_STORY_SELECT_ITEM_TYPE ItemType;                                         // 0x005A (size: 0x1)
    FName StartEvent;                                                                 // 0x005C (size: 0x8)
    int32 RecommandationLV;                                                           // 0x0064 (size: 0x4)
    bool NewFlag;                                                                     // 0x0068 (size: 0x1)
    int32 MainStoryId;                                                                // 0x006C (size: 0x4)

}; // Size: 0x70

struct FBarTalkDefine : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    TArray<FName> ItemEventList;                                                      // 0x0010 (size: 0x10)
    TArray<FName> NormalEventList;                                                    // 0x0020 (size: 0x10)

}; // Size: 0x30

struct FBattleAICommandData : public FTableRowBase
{
    FName m_strCommandname;                                                           // 0x0008 (size: 0x8)
    int32 m_nRate;                                                                    // 0x0010 (size: 0x4)

}; // Size: 0x18

struct FBattleAdditiveOrderData
{
    EADDITIVE_ORDER_TYPE m_eOrderType;                                                // 0x0000 (size: 0x1)
    class ABattleCharacterBase* m_cOrderEnforcer;                                     // 0x0008 (size: 0x8)
    TArray<class ABattleCharacterBase*> m_acTarget;                                   // 0x0010 (size: 0x10)
    FName m_strExecAbilityName;                                                       // 0x0020 (size: 0x8)
    FName m_strExecAilmentName;                                                       // 0x0028 (size: 0x8)
    EATTRIBUTE_TYPE m_eAttributeType;                                                 // 0x0030 (size: 0x1)
    int32 m_nAddValue01;                                                              // 0x0034 (size: 0x4)

}; // Size: 0x38

struct FBattleCameraInitData : public FTableRowBase
{
    FVector DefaultPosition;                                                          // 0x0008 (size: 0xC)
    FRotator DafaultRotate;                                                           // 0x0014 (size: 0xC)
    FVector StartPosition;                                                            // 0x0020 (size: 0xC)
    FRotator StartRotate;                                                             // 0x002C (size: 0xC)
    float FieldOfView;                                                                // 0x0038 (size: 0x4)
    float ManualFocusDistance;                                                        // 0x003C (size: 0x4)
    float CurrentFocalLength;                                                         // 0x0040 (size: 0x4)
    float CurrentAperture;                                                            // 0x0044 (size: 0x4)

}; // Size: 0x48

struct FBattleEncountData : public FTableRowBase
{
    FName GroupID;                                                                    // 0x0008 (size: 0x8)
    int32 Appearance;                                                                 // 0x0010 (size: 0x4)

}; // Size: 0x18

struct FBattleEncounterBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 FirstEncount;                                                               // 0x000C (size: 0x4)
    TArray<FBattleEncountData> group;                                                 // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FBattlePlacementListBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FVector Placement;                                                                // 0x000C (size: 0xC)
    int32 Priority;                                                                   // 0x0018 (size: 0x4)

}; // Size: 0x20

struct FBattlePlacementTypeBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    EBATTLE_CAMERA_TYPE CameraType;                                                   // 0x000C (size: 0x1)
    TArray<FName> Placement;                                                          // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FBattleReplayData : public FTableRowBase
{
    bool Enable;                                                                      // 0x0008 (size: 0x1)
    TArray<int32> PlayerID;                                                           // 0x0010 (size: 0x10)
    TArray<int32> PlayerJob;                                                          // 0x0020 (size: 0x10)
    TArray<FVector> PlayerPos;                                                        // 0x0030 (size: 0x10)
    TArray<int32> PlayerDisease;                                                      // 0x0040 (size: 0x10)
    TArray<int32> PlayerStatus;                                                       // 0x0050 (size: 0x10)
    TArray<int32> PlayerWeapon;                                                       // 0x0060 (size: 0x10)
    int32 MasqueradeTargetID;                                                         // 0x0070 (size: 0x4)
    int32 MasqueradeJobID;                                                            // 0x0074 (size: 0x4)
    TArray<int32> EnemyID;                                                            // 0x0078 (size: 0x10)
    TArray<FVector> EnemyPos;                                                         // 0x0088 (size: 0x10)
    TArray<int32> EnemyDisease;                                                       // 0x0098 (size: 0x10)
    TArray<int32> EnemyDiseaseParam;                                                  // 0x00A8 (size: 0x10)
    TArray<int32> EnemyStatus;                                                        // 0x00B8 (size: 0x10)
    TArray<int32> EnemyActionMode;                                                    // 0x00C8 (size: 0x10)
    TArray<int32> SupportID;                                                          // 0x00D8 (size: 0x10)
    TArray<int32> SupportStatus;                                                      // 0x00E8 (size: 0x10)
    int32 ActionID;                                                                   // 0x00F8 (size: 0x4)
    int32 ActionEnforcer;                                                             // 0x00FC (size: 0x4)
    int32 PotentialityActionStatus;                                                   // 0x0100 (size: 0x4)
    int32 ActionTarget;                                                               // 0x0104 (size: 0x4)
    TArray<int32> ActionParam;                                                        // 0x0108 (size: 0x10)
    int32 FieldStatus;                                                                // 0x0118 (size: 0x4)
    int32 FinishType;                                                                 // 0x011C (size: 0x4)
    int32 CameraType;                                                                 // 0x0120 (size: 0x4)

}; // Size: 0x128

struct FBattleResultItemDropData : public FTableRowBase
{
    FName ItemId;                                                                     // 0x0008 (size: 0x8)
    int32 Num;                                                                        // 0x0010 (size: 0x4)

}; // Size: 0x18

struct FBattleSupportCharaInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 HP;                                                                         // 0x000C (size: 0x4)
    int32 PhysicalAttack;                                                             // 0x0010 (size: 0x4)
    int32 MagicalPower;                                                               // 0x0014 (size: 0x4)
    int32 PhysicalDefense;                                                            // 0x0018 (size: 0x4)
    int32 MagicDefense;                                                               // 0x001C (size: 0x4)
    int32 HitRate;                                                                    // 0x0020 (size: 0x4)
    int32 EvasionRate;                                                                // 0x0024 (size: 0x4)
    int32 ActionSpeed;                                                                // 0x0028 (size: 0x4)
    int32 AttackActionRate;                                                           // 0x002C (size: 0x4)
    int32 ProtectActionRate;                                                          // 0x0030 (size: 0x4)
    int32 SuccessRate;                                                                // 0x0034 (size: 0x4)
    int32 RelationDecrease;                                                           // 0x0038 (size: 0x4)

}; // Size: 0x40

struct FBattleVoiceDataList : public FTableRowBase
{
    EBATTLE_VOICE_TYPE m_eBattleVoiceType;                                            // 0x0008 (size: 0x1)
    TArray<FBattleVoiceSetData> m_acBattleVoiceData;                                  // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FBattleVoiceSetData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    EBATTLE_VOICE_TYPE BattleVoiceType;                                               // 0x000C (size: 0x1)
    bool TargetSelf;                                                                  // 0x000D (size: 0x1)
    FName TargetID;                                                                   // 0x0010 (size: 0x8)
    FName InvadeID;                                                                   // 0x0018 (size: 0x8)
    FName SupporterID;                                                                // 0x0020 (size: 0x8)
    FName EnemyID;                                                                    // 0x0028 (size: 0x8)
    FName EnemyGroupID;                                                               // 0x0030 (size: 0x8)
    EDISEASE_CATEGORY DiseaseCategory;                                                // 0x0038 (size: 0x1)
    FName AbilityID;                                                                  // 0x003C (size: 0x8)
    FName EventFlag;                                                                  // 0x0044 (size: 0x8)
    bool BossFlag;                                                                    // 0x004C (size: 0x1)
    bool FieldCommandFlag;                                                            // 0x004D (size: 0x1)
    bool PinchFlag;                                                                   // 0x004E (size: 0x1)
    bool JustBreakFlag;                                                               // 0x004F (size: 0x1)
    bool CounterFlag;                                                                 // 0x0050 (size: 0x1)
    bool SongFlag;                                                                    // 0x0051 (size: 0x1)
    bool DanceFlag;                                                                   // 0x0052 (size: 0x1)
    bool MeatFlag;                                                                    // 0x0053 (size: 0x1)
    int32 Border;                                                                     // 0x0054 (size: 0x4)
    bool PlayOnce;                                                                    // 0x0058 (size: 0x1)
    int32 VoiceRate;                                                                  // 0x005C (size: 0x4)
    int32 Priority;                                                                   // 0x0060 (size: 0x4)
    FName VoiceLabel;                                                                 // 0x0064 (size: 0x8)

}; // Size: 0x70

struct FBattleVoiceSetList : public FTableRowBase
{
    FName m_strCharacterID;                                                           // 0x0008 (size: 0x8)
    TArray<FName> m_astrBattleVoiceLabel;                                             // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FBgmInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString Label;                                                                    // 0x0010 (size: 0x10)
    FName CueSheetName;                                                               // 0x0020 (size: 0x8)
    TSoftObjectPtr<USoundAtomCue> Asset;                                              // 0x0028 (size: 0x28)

}; // Size: 0x50

struct FBitFlagDefine : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)

}; // Size: 0x10

struct FButtonTextData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString BaseText;                                                                 // 0x0010 (size: 0x10)
    FString ItalianText;                                                              // 0x0020 (size: 0x10)
    FString FrenchText;                                                               // 0x0030 (size: 0x10)
    FString SpanishText;                                                              // 0x0040 (size: 0x10)
    FString GermanText;                                                               // 0x0050 (size: 0x10)
    FString UKText;                                                                   // 0x0060 (size: 0x10)
    FString USText;                                                                   // 0x0070 (size: 0x10)
    FString DvorokText;                                                               // 0x0080 (size: 0x10)

}; // Size: 0x90

struct FCameraLockParams
{
    bool bLock;                                                                       // 0x0000 (size: 0x1)
    bool bLockEnableX;                                                                // 0x0001 (size: 0x1)
    bool bLockEnableY;                                                                // 0x0002 (size: 0x1)
    bool bLockEnableZ;                                                                // 0x0003 (size: 0x1)
    FVector LockOffset;                                                               // 0x0004 (size: 0xC)

}; // Size: 0x10

struct FCharResource_BattleReductionTable : public FTableRowBase
{
    TArray<FString> m_strBattleTextureNameList;                                       // 0x0008 (size: 0x10)
    TArray<FString> m_strBattleMaterialNameList;                                      // 0x0018 (size: 0x10)

}; // Size: 0x28

struct FCharacterActionResource : public FTableRowBase
{
    TArray<TSoftObjectPtr<UPaperFlipbook>> FrActionList;                              // 0x0008 (size: 0x10)
    TArray<TSoftObjectPtr<UPaperFlipbook>> ReActionList;                              // 0x0018 (size: 0x10)
    TArray<TSoftObjectPtr<UPaperFlipbook>> LeActionList;                              // 0x0028 (size: 0x10)
    TArray<TSoftObjectPtr<UPaperFlipbook>> RiActionList;                              // 0x0038 (size: 0x10)
    TArray<bool> Loop;                                                                // 0x0048 (size: 0x10)
    float Height;                                                                     // 0x0058 (size: 0x4)
    bool TemplateSocket;                                                              // 0x005C (size: 0x1)
    FName WalkFootstep;                                                               // 0x0060 (size: 0x8)
    float SpeedWalk;                                                                  // 0x0068 (size: 0x4)
    float SpeedRun;                                                                   // 0x006C (size: 0x4)
    TArray<FName> ActionFootStep;                                                     // 0x0070 (size: 0x10)
    TArray<float> ActionFootStepInterval;                                             // 0x0080 (size: 0x10)
    float LargeIconOffsetX;                                                           // 0x0090 (size: 0x4)
    float LargeIconOffsetY;                                                           // 0x0094 (size: 0x4)
    float LargeIconInvertOffsetX;                                                     // 0x0098 (size: 0x4)
    float SmallIconOffsetX;                                                           // 0x009C (size: 0x4)
    float SmallIconOffsetY;                                                           // 0x00A0 (size: 0x4)
    float SmallIconInvertOffsetX;                                                     // 0x00A4 (size: 0x4)
    float TabIconOffsetX;                                                             // 0x00A8 (size: 0x4)
    float TabIconOffsetY;                                                             // 0x00AC (size: 0x4)
    float InvadeListOffsetX;                                                          // 0x00B0 (size: 0x4)
    float InvadeListOffsetY;                                                          // 0x00B4 (size: 0x4)
    float InvadeListScale;                                                            // 0x00B8 (size: 0x4)

}; // Size: 0xC0

struct FCharacterCostumeInfo
{
    int32 EventFlag;                                                                  // 0x0000 (size: 0x4)
    FName ResourceLabel;                                                              // 0x0004 (size: 0x8)

}; // Size: 0xC

struct FCharacterFormData
{
    float BalloonOffsetX;                                                             // 0x0000 (size: 0x4)
    float BalloonOffsetY;                                                             // 0x0004 (size: 0x4)
    float CollisionOffsetX;                                                           // 0x0008 (size: 0x4)
    float CollisionOffsetY;                                                           // 0x000C (size: 0x4)
    float CollisionOffsetZ;                                                           // 0x0010 (size: 0x4)
    float CollisionExtentX;                                                           // 0x0014 (size: 0x4)
    float CollisionExtentY;                                                           // 0x0018 (size: 0x4)
    float CollisionExtentZ;                                                           // 0x001C (size: 0x4)

}; // Size: 0x20

struct FCharacterFormDataSet : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName CharaResourceLabel;                                                         // 0x000C (size: 0x8)
    EKSCharacterAction CharaActionLabel;                                              // 0x0014 (size: 0x1)
    TArray<FCharacterFormData> FormData;                                              // 0x0018 (size: 0x10)

}; // Size: 0x28

struct FCharacterGridPanelParam
{
    EPlayableCharacterID PlayerID;                                                    // 0x0000 (size: 0x1)
    bool IsGrayOut;                                                                   // 0x0001 (size: 0x1)

}; // Size: 0x2

struct FCharacterGrowData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 NextExp;                                                                    // 0x000C (size: 0x4)
    int32 TotalExp;                                                                   // 0x0010 (size: 0x4)
    FCharacterParam Parameter;                                                        // 0x0014 (size: 0x34)
    FFieldCommandParam FCParameter;                                                   // 0x0048 (size: 0x28)

}; // Size: 0x70

struct FCharacterParam
{
    int32 HP;                                                                         // 0x0000 (size: 0x4)
    int32 MP;                                                                         // 0x0004 (size: 0x4)
    int32 BP;                                                                         // 0x0008 (size: 0x4)
    int32 SP;                                                                         // 0x000C (size: 0x4)
    int32 POT;                                                                        // 0x0010 (size: 0x4)
    int32 ATK;                                                                        // 0x0014 (size: 0x4)
    int32 DEF;                                                                        // 0x0018 (size: 0x4)
    int32 MATK;                                                                       // 0x001C (size: 0x4)
    int32 MDEF;                                                                       // 0x0020 (size: 0x4)
    int32 ACC;                                                                        // 0x0024 (size: 0x4)
    int32 EVA;                                                                        // 0x0028 (size: 0x4)
    int32 CON;                                                                        // 0x002C (size: 0x4)
    int32 AGI;                                                                        // 0x0030 (size: 0x4)

}; // Size: 0x34

struct FCharacterParamBeforeAfterData
{
    FText ParamText;                                                                  // 0x0000 (size: 0x18)
    int32 BeforeParam;                                                                // 0x0018 (size: 0x4)
    int32 AfterParam;                                                                 // 0x001C (size: 0x4)

}; // Size: 0x20

struct FCharacterResourceData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName ActionLabel;                                                                // 0x000C (size: 0x8)
    TSoftObjectPtr<UTexture2D> ActionOrderIconL;                                      // 0x0018 (size: 0x28)
    TSoftObjectPtr<UTexture2D> ActionOrderIconS;                                      // 0x0040 (size: 0x28)
    TSoftObjectPtr<UTexture2D> FieldCommandIcon;                                      // 0x0068 (size: 0x28)
    FName BattleStartVoiceID;                                                         // 0x0090 (size: 0x8)
    FName BattleVoiceCharacterID;                                                     // 0x0098 (size: 0x8)
    int32 WaitEnemyActionFrame;                                                       // 0x00A0 (size: 0x4)
    TArray<FActionDelaySEData> ActionDelaySEData;                                     // 0x00A8 (size: 0x10)
    ESESSION_SE_TYPE BattleSessionSEID;                                               // 0x00B8 (size: 0x1)
    FVector BattleCursorOffset;                                                       // 0x00BC (size: 0xC)

}; // Size: 0xC8

struct FCommonControllerConfigData : public FTableRowBase
{
    TArray<FName> KeyList;                                                            // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FCommonNotificationParam
{
    FText MessageText;                                                                // 0x0000 (size: 0x18)
    FName MessageTextLabel;                                                           // 0x0018 (size: 0x8)
    FString MessageTextLabel_Param0;                                                  // 0x0020 (size: 0x10)
    ECommonNotificationType CommonNotificationType;                                   // 0x0030 (size: 0x1)

}; // Size: 0x38

struct FCustomMissionFlipbookJobData
{
    TArray<FName> LabelList;                                                          // 0x0000 (size: 0x10)

}; // Size: 0x10

struct FCustomMissionFlipbookList : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    TMap<int32, FName> PlayerSelectList;                                              // 0x0010 (size: 0x50)
    TMap<int32, FCustomMissionFlipbookJobData> PlayerJobList;                         // 0x0060 (size: 0x50)
    TMap<int32, FCustomMissionFlipbookJobData> PlayerJobList_01;                      // 0x00B0 (size: 0x50)
    TMap<int32, FName> PlayerCostumeList;                                             // 0x0100 (size: 0x50)

}; // Size: 0x150

struct FDarkAreaData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 ActiveFlag;                                                                 // 0x000C (size: 0x4)
    EHOLY_TORCH_TYPE HolyTorchType;                                                   // 0x0010 (size: 0x1)
    FName TorchLevel;                                                                 // 0x0014 (size: 0x8)

}; // Size: 0x20

struct FDataTableTutorialList : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName ListName;                                                                   // 0x000C (size: 0x8)
    TArray<FName> FlagPartLabel;                                                      // 0x0018 (size: 0x10)

}; // Size: 0x28

struct FDataTableTutorialPageData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 TemplateType;                                                               // 0x000C (size: 0x4)
    TArray<FName> PageImage;                                                          // 0x0010 (size: 0x10)
    FName TitleText;                                                                  // 0x0020 (size: 0x8)
    TArray<FName> PageText;                                                           // 0x0028 (size: 0x10)

}; // Size: 0x38

struct FDatabaseInfo : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    EDB_LOAD_TIMING LoadTiming;                                                       // 0x000C (size: 0x1)
    FSoftObjectPath DataTable;                                                        // 0x0010 (size: 0x18)
    FString DBClassPath;                                                              // 0x0028 (size: 0x10)

}; // Size: 0x38

struct FDebugBattleLog : public FTableRowBase
{
    int32 m_nIndex;                                                                   // 0x0008 (size: 0x4)
    EDEBUG_BATTLE_LOG_CATEGORY m_eCategory;                                           // 0x000C (size: 0x1)
    FText m_strTitle;                                                                 // 0x0010 (size: 0x18)
    FText m_strIssuer;                                                                // 0x0028 (size: 0x18)
    FText m_strComment;                                                               // 0x0040 (size: 0x18)
    FText m_strDetail;                                                                // 0x0058 (size: 0x18)
    FText m_astrTagList;                                                              // 0x0070 (size: 0x18)

}; // Size: 0x88

struct FDebugListMenuFilter
{
}; // Size: 0x28

struct FDebugListMenuItem
{
}; // Size: 0x40

struct FDebugParam
{
    FString DebugName;                                                                // 0x0000 (size: 0x10)
    EDEBUG_EDIT_TYPE EditType;                                                        // 0x0010 (size: 0x1)
    TArray<FText> ListLabel;                                                          // 0x0018 (size: 0x10)
    FString DebugInformation;                                                         // 0x0028 (size: 0x10)
    EDEBUG_INFORMATION_COLOR_TYPE InformationColorType;                               // 0x0038 (size: 0x1)
    bool DefaultToggle;                                                               // 0x0039 (size: 0x1)
    int32 DefaultIndex;                                                               // 0x003C (size: 0x4)
    int32 nDefaultValue;                                                              // 0x0040 (size: 0x4)
    int32 nDefaultMin;                                                                // 0x0044 (size: 0x4)
    int32 nDefaultMax;                                                                // 0x0048 (size: 0x4)
    int32 nDigit;                                                                     // 0x004C (size: 0x4)
    float fDefaultValue;                                                              // 0x0050 (size: 0x4)
    float fDefaultMin;                                                                // 0x0054 (size: 0x4)
    float fDefaultMax;                                                                // 0x0058 (size: 0x4)
    float fDigit;                                                                     // 0x005C (size: 0x4)
    int32 nItemCounter;                                                               // 0x0070 (size: 0x4)
    int32 nHierarchy;                                                                 // 0x0074 (size: 0x4)
    int32 nParentHierarchy;                                                           // 0x0078 (size: 0x4)
    int32 nChildHierarchy;                                                            // 0x007C (size: 0x4)

}; // Size: 0x130

struct FDebugPrimitiveData
{
    EDebugCanvasPrimType PrimitiveType;                                               // 0x0000 (size: 0x1)
    TArray<FVector2D> Position;                                                       // 0x0008 (size: 0x10)
    FLinearColor Color;                                                               // 0x0018 (size: 0x10)
    float LineThickness;                                                              // 0x0028 (size: 0x4)

}; // Size: 0x30

struct FDebugTextData
{
    FText Text;                                                                       // 0x0000 (size: 0x18)
    FVector2D Position;                                                               // 0x0018 (size: 0x8)
    FLinearColor Color;                                                               // 0x0020 (size: 0x10)
    int32 FontSize;                                                                   // 0x0030 (size: 0x4)

}; // Size: 0x50

struct FDestinationData
{
    ELevelTriggerID TriggerID;                                                        // 0x0000 (size: 0x1)
    TArray<int32> HideIconFlag;                                                       // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FDiseaseDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName DisplayName;                                                                // 0x000C (size: 0x8)
    FName Detail;                                                                     // 0x0014 (size: 0x8)
    int32 DisplayOrder;                                                               // 0x001C (size: 0x4)
    FString DiseaseType;                                                              // 0x0020 (size: 0x10)
    bool EnableResist;                                                                // 0x0030 (size: 0x1)
    FString ResistType;                                                               // 0x0038 (size: 0x10)
    bool EnableTurnCount;                                                             // 0x0048 (size: 0x1)
    FString DiseaseCategory;                                                          // 0x0050 (size: 0x10)
    FString StealthType;                                                              // 0x0060 (size: 0x10)
    bool BattleEndContinue;                                                           // 0x0070 (size: 0x1)
    bool EnableBuffExtension;                                                         // 0x0071 (size: 0x1)
    bool EnableDebuffExtension;                                                       // 0x0072 (size: 0x1)
    bool EnableDeconditionExtension;                                                  // 0x0073 (size: 0x1)
    bool EnableChangePermanent;                                                       // 0x0074 (size: 0x1)
    bool EnableDiseaseCopy;                                                           // 0x0075 (size: 0x1)
    int32 AdvValue1;                                                                  // 0x0078 (size: 0x4)
    int32 AdvValue2;                                                                  // 0x007C (size: 0x4)
    int32 AdvValue3;                                                                  // 0x0080 (size: 0x4)
    int32 AdvValue4;                                                                  // 0x0084 (size: 0x4)
    FString AdvLabel1;                                                                // 0x0088 (size: 0x10)
    FString ResorceLabel;                                                             // 0x0098 (size: 0x10)
    FString EffectLabel;                                                              // 0x00A8 (size: 0x10)
    bool AttachEffect;                                                                // 0x00B8 (size: 0x1)
    bool GroundEffect;                                                                // 0x00B9 (size: 0x1)
    FString AttachSocketName;                                                         // 0x00C0 (size: 0x10)

}; // Size: 0xD0

struct FDiseaseListItemData
{
    FName IconLabel;                                                                  // 0x0000 (size: 0x8)
    FName DetailTextLabel;                                                            // 0x0008 (size: 0x8)
    EDISEASE_CATEGORY DiseaseCategory;                                                // 0x0010 (size: 0x1)
    int32 DisplayOrder;                                                               // 0x0014 (size: 0x4)

}; // Size: 0x18

struct FDismantlingDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    TArray<FAilmentHandler> Ailment;                                                  // 0x0010 (size: 0x10)
    EDISMANTLING_EFFECT_TYPE EFFECT;                                                  // 0x0020 (size: 0x1)

}; // Size: 0x28

struct FEffectComponentList
{
    TArray<class UParticleSystemComponent*> EffectList;                               // 0x0000 (size: 0x10)
    int32 MaxNum;                                                                     // 0x0010 (size: 0x4)
    bool LoopEffect;                                                                  // 0x0014 (size: 0x1)
    FVector EffectOffset;                                                             // 0x0018 (size: 0xC)

}; // Size: 0x28

struct FEffectData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    TSoftObjectPtr<UParticleSystem> EffectAsset;                                      // 0x0010 (size: 0x28)
    int32 SpawnMax;                                                                   // 0x0038 (size: 0x4)
    bool LoopEffect;                                                                  // 0x003C (size: 0x1)
    bool Stationary;                                                                  // 0x003D (size: 0x1)
    FVector EffectOffset;                                                             // 0x0040 (size: 0xC)

}; // Size: 0x50

struct FEncountData : public FTableRowBase
{
    int32 ProgressBorder;                                                             // 0x0008 (size: 0x4)
    int32 DisplayLevel;                                                               // 0x000C (size: 0x4)
    int32 DangerLevel;                                                                // 0x0010 (size: 0x4)
    FName EncounterName;                                                              // 0x0014 (size: 0x8)

}; // Size: 0x20

struct FEncountFlagData
{
    FName EncountTriggerLabel;                                                        // 0x0000 (size: 0x8)
    int32 EventFlag;                                                                  // 0x0008 (size: 0x4)

}; // Size: 0xC

struct FEncountFlagStartEndData
{
    FName EncountTriggerLabel;                                                        // 0x0000 (size: 0x8)
    TArray<int32> StartFlag;                                                          // 0x0008 (size: 0x10)
    TArray<int32> EndFlag;                                                            // 0x0018 (size: 0x10)

}; // Size: 0x28

struct FEncountTriggerData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 StartFlag;                                                                  // 0x000C (size: 0x4)
    int32 StartFlag_2;                                                                // 0x0010 (size: 0x4)
    int32 StartFlag_3;                                                                // 0x0014 (size: 0x4)
    int32 EndFlag;                                                                    // 0x0018 (size: 0x4)
    int32 EndFlag_2;                                                                  // 0x001C (size: 0x4)
    int32 EndFlag_3;                                                                  // 0x0020 (size: 0x4)
    float DayTimeDecreaseValue;                                                       // 0x0024 (size: 0x4)
    FName DayTimeEncountVolumeName;                                                   // 0x0028 (size: 0x8)
    float NightDecreaseValue;                                                         // 0x0030 (size: 0x4)
    FName NightEncountVolumeName;                                                     // 0x0034 (size: 0x8)
    float LostWayDecreaseValue;                                                       // 0x003C (size: 0x4)
    FName LostWayEncountVolumeName;                                                   // 0x0040 (size: 0x8)
    float DarkAreaDecreaseValue;                                                      // 0x0048 (size: 0x4)
    FName DarkAreaEncountVolumeName;                                                  // 0x004C (size: 0x8)

}; // Size: 0x58

struct FEncountVolume : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 StartFlag;                                                                  // 0x000C (size: 0x4)
    int32 EndFlag;                                                                    // 0x0010 (size: 0x4)
    int32 UseMapIndex;                                                                // 0x0014 (size: 0x4)
    int32 EncountStepMin;                                                             // 0x0018 (size: 0x4)
    int32 RandomStepA;                                                                // 0x001C (size: 0x4)
    int32 RandomStepB;                                                                // 0x0020 (size: 0x4)
    bool WaterSide;                                                                   // 0x0024 (size: 0x1)
    EAreaID Area;                                                                     // 0x0025 (size: 0x1)
    FRareEnemyParam RareCatlinParam;                                                  // 0x0028 (size: 0x14)
    FRareEnemyParam RareOctlinParam;                                                  // 0x003C (size: 0x14)
    TArray<FEncountData> EncounterList;                                               // 0x0050 (size: 0x10)

}; // Size: 0x60

struct FEndRollSegmentData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName EventImageLabelPartnerA;                                                    // 0x000C (size: 0x8)
    FName EventImageLabelPartnerB;                                                    // 0x0014 (size: 0x8)
    bool BattleRevivalFlag;                                                           // 0x001C (size: 0x1)
    FName BattleEnemyGroupA;                                                          // 0x0020 (size: 0x8)
    FName BattleEnemyGroupB;                                                          // 0x0028 (size: 0x8)

}; // Size: 0x30

struct FEnemyDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString EnemyID;                                                                  // 0x0010 (size: 0x10)
    FString DisplayNameID;                                                            // 0x0020 (size: 0x10)
    FString ResourceLabel;                                                            // 0x0030 (size: 0x10)
    int32 DisplayRank;                                                                // 0x0040 (size: 0x4)
    int32 EnemyLevel;                                                                 // 0x0044 (size: 0x4)
    float DamageRatio;                                                                // 0x0048 (size: 0x4)
    FString Size;                                                                     // 0x0050 (size: 0x10)
    bool NPCFlag;                                                                     // 0x0060 (size: 0x1)
    FString WeaponStance;                                                             // 0x0068 (size: 0x10)
    FString WeaponItemLabel;                                                          // 0x0078 (size: 0x10)
    bool DeadEffectSlow;                                                              // 0x0088 (size: 0x1)
    bool MainEnemy;                                                                   // 0x0089 (size: 0x1)
    bool NonPartBattle;                                                               // 0x008A (size: 0x1)
    bool UseCatDamageType;                                                            // 0x008B (size: 0x1)
    bool DisableDeadKnockBack;                                                        // 0x008C (size: 0x1)
    bool DisableBreakSlow;                                                            // 0x008D (size: 0x1)
    bool LegendTameMonster;                                                           // 0x008E (size: 0x1)
    int32 Exp;                                                                        // 0x0090 (size: 0x4)
    int32 JobPoint;                                                                   // 0x0094 (size: 0x4)
    int32 Money;                                                                      // 0x0098 (size: 0x4)
    bool StealMoneyGuard;                                                             // 0x009C (size: 0x1)
    int32 StealMoney;                                                                 // 0x00A0 (size: 0x4)
    FString HaveItemID;                                                               // 0x00A8 (size: 0x10)
    int32 DropProbability;                                                            // 0x00B8 (size: 0x4)
    bool StealGuard;                                                                  // 0x00BC (size: 0x1)
    FString StealItemID;                                                              // 0x00C0 (size: 0x10)
    bool TameEnable;                                                                  // 0x00D0 (size: 0x1)
    float DefaultTameRate;                                                            // 0x00D4 (size: 0x4)
    FString InvadeMonsterID;                                                          // 0x00D8 (size: 0x10)
    int32 FirstBP;                                                                    // 0x00E8 (size: 0x4)
    FString DeadType;                                                                 // 0x00F0 (size: 0x10)
    bool BribeGuard;                                                                  // 0x0100 (size: 0x1)
    int32 BribeMoney;                                                                 // 0x0104 (size: 0x4)
    float AbilitySEDelay;                                                             // 0x0108 (size: 0x4)
    int32 RevealShieldPoint;                                                          // 0x010C (size: 0x4)
    FString TextInfoLabel;                                                            // 0x0110 (size: 0x10)
    FString DismantlingLabel;                                                         // 0x0120 (size: 0x10)
    int32 WaitEnemyActionFrame;                                                       // 0x0130 (size: 0x4)

}; // Size: 0x138

struct FEnemyGroupBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    bool BattleStartEnemyVoiceEnable;                                                 // 0x000C (size: 0x1)
    FName VoiceID;                                                                    // 0x0010 (size: 0x8)
    FName TalkPlayerID;                                                               // 0x0018 (size: 0x8)
    FName PlayerVoiceID;                                                              // 0x0020 (size: 0x8)
    FName BattleStartEvent;                                                           // 0x0028 (size: 0x8)
    bool BattleStartDashEnable;                                                       // 0x0030 (size: 0x1)
    FName BGMID;                                                                      // 0x0034 (size: 0x8)
    bool UseBattleBGM;                                                                // 0x003C (size: 0x1)
    bool UseVictoryBGM;                                                               // 0x003D (size: 0x1)
    bool ResumeBGM;                                                                   // 0x003E (size: 0x1)
    bool ViewResult;                                                                  // 0x003F (size: 0x1)
    bool UseVictoryAction;                                                            // 0x0040 (size: 0x1)
    bool ResultDashEnable;                                                            // 0x0041 (size: 0x1)
    bool BoostFinishResultEnable;                                                     // 0x0042 (size: 0x1)
    bool BossBattle;                                                                  // 0x0043 (size: 0x1)
    bool EscapeEnable;                                                                // 0x0044 (size: 0x1)
    bool ItemEnable;                                                                  // 0x0045 (size: 0x1)
    bool GuardEnable;                                                                 // 0x0046 (size: 0x1)
    bool BoostEnable;                                                                 // 0x0047 (size: 0x1)
    FName PlacementType;                                                              // 0x0048 (size: 0x8)
    TArray<FName> EnemyID;                                                            // 0x0050 (size: 0x10)
    FString SaveEndrollSegment;                                                       // 0x0060 (size: 0x10)

}; // Size: 0x70

struct FEnvSoundFadeData
{
    float FadeOutStartVolume;                                                         // 0x0000 (size: 0x4)
    float FadeOutTime;                                                                // 0x0004 (size: 0x4)
    float FadeInTime;                                                                 // 0x0008 (size: 0x4)
    float FadeInVolume;                                                               // 0x000C (size: 0x4)

}; // Size: 0x10

struct FEquipLanternData
{
    TArray<FLanternCheckData> EquipLanternDayTime;                                    // 0x0000 (size: 0x10)
    TArray<FLanternCheckData> EquipLanternNight;                                      // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FEquipParamBeforeAfter : public FTableRowBase
{
    TArray<int32> CharacterParam;                                                     // 0x0008 (size: 0x10)
    TArray<int32> EquipAllBefore;                                                     // 0x0018 (size: 0x10)
    TArray<int32> EquipTargetBefore;                                                  // 0x0028 (size: 0x10)
    TArray<int32> EquipTargetAfter;                                                   // 0x0038 (size: 0x10)
    TArray<int32> ParamAllBefore;                                                     // 0x0048 (size: 0x10)
    TArray<int32> ParamAllAfter;                                                      // 0x0058 (size: 0x10)
    TArray<bool> IsEffective;                                                         // 0x0068 (size: 0x10)

}; // Size: 0x78

struct FEquipmentCategoryBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName DisplayNameID;                                                              // 0x000C (size: 0x8)
    class UTexture2D* IconTexture;                                                    // 0x0018 (size: 0x8)
    FName IconLabel;                                                                  // 0x0020 (size: 0x8)
    bool TwoHanded;                                                                   // 0x0028 (size: 0x1)
    bool CounterEnable;                                                               // 0x0029 (size: 0x1)
    TArray<FName> EffectiveRace;                                                      // 0x0030 (size: 0x10)

}; // Size: 0x40

struct FEquipmentRecommendedCalcData
{
    int32 CharaID;                                                                    // 0x0000 (size: 0x4)
    FName ItemLabel;                                                                  // 0x0004 (size: 0x8)
    float EvalautionValue;                                                            // 0x000C (size: 0x4)
    bool SkipFlag;                                                                    // 0x0010 (size: 0x1)

}; // Size: 0x14

struct FEquipmentRecommendedData
{
    FName ItemLabel;                                                                  // 0x0000 (size: 0x8)
    int32 HP;                                                                         // 0x0008 (size: 0x4)
    int32 MP;                                                                         // 0x000C (size: 0x4)
    int32 PAtk;                                                                       // 0x0010 (size: 0x4)
    int32 PDef;                                                                       // 0x0014 (size: 0x4)
    int32 MATK;                                                                       // 0x0018 (size: 0x4)
    int32 MDEF;                                                                       // 0x001C (size: 0x4)
    int32 ACC;                                                                        // 0x0020 (size: 0x4)
    int32 EVA;                                                                        // 0x0024 (size: 0x4)
    int32 CON;                                                                        // 0x0028 (size: 0x4)
    int32 AGI;                                                                        // 0x002C (size: 0x4)
    int32 Count;                                                                      // 0x0030 (size: 0x4)

}; // Size: 0x34

struct FEquipmentTextureData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    TArray<FEquipmentTextureInfo> WeaponStanceTextures;                               // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FEquipmentTextureInfo
{
    FName PCResourceLabel;                                                            // 0x0000 (size: 0x8)
    FName NPCResourceLabel;                                                           // 0x0008 (size: 0x8)

}; // Size: 0x10

struct FEquippedItemData : public FTableRowBase
{
    int32 EquippedCount;                                                              // 0x0008 (size: 0x4)
    int32 EquipCHaracterIdMask;                                                       // 0x000C (size: 0x4)

}; // Size: 0x10

struct FEventAtomSoundData
{
    class USoundAtomCue* uAtomCue;                                                    // 0x0000 (size: 0x8)

}; // Size: 0x10

struct FEventCheckData : public FTableRowBase
{
    int32 Index;                                                                      // 0x0008 (size: 0x4)
    int32 CheckCount;                                                                 // 0x000C (size: 0x4)
    int32 LogicalType;                                                                // 0x0010 (size: 0x4)
    TArray<int32> FlagList;                                                           // 0x0018 (size: 0x10)
    TArray<bool> FlagEnableList;                                                      // 0x0028 (size: 0x10)

}; // Size: 0x38

struct FEventCommandData
{
}; // Size: 0xC

struct FEventData : public FTableRowBase
{
    int32 Command;                                                                    // 0x0008 (size: 0x4)
    int32 Target;                                                                     // 0x000C (size: 0x4)
    FVector Pos;                                                                      // 0x0010 (size: 0xC)
    int32 Dir;                                                                        // 0x001C (size: 0x4)
    FString Text;                                                                     // 0x0020 (size: 0x10)
    bool Async;                                                                       // 0x0030 (size: 0x1)
    TArray<FString> OptAry;                                                           // 0x0038 (size: 0x10)

}; // Size: 0x48

struct FEventEffect
{
    bool Loop;                                                                        // 0x0000 (size: 0x1)
    TWeakObjectPtr<class UParticleSystemComponent> EffectData;                        // 0x0004 (size: 0x8)
    float LifeTime;                                                                   // 0x000C (size: 0x4)
    FVector Position;                                                                 // 0x0010 (size: 0xC)
    TWeakObjectPtr<class AActor> Target;                                              // 0x001C (size: 0x8)

}; // Size: 0x24

struct FEventEmotion
{
    bool Loop;                                                                        // 0x0000 (size: 0x1)
    float LifeTime;                                                                   // 0x0004 (size: 0x4)
    TWeakObjectPtr<class AKSCharacterBase> Target;                                    // 0x0008 (size: 0x8)
    FName TargetTag;                                                                  // 0x0010 (size: 0x8)

}; // Size: 0x18

struct FEventFlagData
{
    int32 EventFlag;                                                                  // 0x0000 (size: 0x4)
    bool FlagStatus;                                                                  // 0x0004 (size: 0x1)

}; // Size: 0x8

struct FEventListData : public FTableRowBase
{
    int32 EventIndex;                                                                 // 0x0008 (size: 0x4)
    FName ExecCode;                                                                   // 0x000C (size: 0x8)
    FName CueSheetName;                                                               // 0x0014 (size: 0x8)
    FName RadarMapExitCode;                                                           // 0x001C (size: 0x8)
    FName MapID;                                                                      // 0x0024 (size: 0x8)
    EEventKind Kind;                                                                  // 0x002C (size: 0x1)
    FName EventSoundLabel;                                                            // 0x0030 (size: 0x8)
    FName MissionLabel;                                                               // 0x0038 (size: 0x8)
    int32 EventSkip;                                                                  // 0x0040 (size: 0x4)
    ELevelTriggerID LevelTriggerID;                                                   // 0x0044 (size: 0x1)
    int32 LanthanumFlag;                                                              // 0x0048 (size: 0x4)
    FName EncountTrigger;                                                             // 0x004C (size: 0x8)
    FName CameraLockTrigger1;                                                         // 0x0054 (size: 0x8)
    FName CameraLockTrigger2;                                                         // 0x005C (size: 0x8)
    FName CameraLockTrigger3;                                                         // 0x0064 (size: 0x8)
    int32 StartFadeOutFlag;                                                           // 0x006C (size: 0x4)
    FName ChengeTimeSequencer;                                                        // 0x0070 (size: 0x8)
    FName ChengeFinishTimeSequencer;                                                  // 0x0078 (size: 0x8)
    int32 TargetChara;                                                                // 0x0080 (size: 0x4)
    bool EncountReset;                                                                // 0x0084 (size: 0x1)
    TArray<FString> Args;                                                             // 0x0088 (size: 0x10)

}; // Size: 0x98

struct FEventPlayData
{
    class AKSCharacterBase* TargetCharacter;                                          // 0x0000 (size: 0x8)
    bool TheaterMode;                                                                 // 0x0010 (size: 0x1)
    FName OverrideMapID;                                                              // 0x0014 (size: 0x8)
    bool ForcePlayEvent;                                                              // 0x001C (size: 0x1)
    bool PartyChat;                                                                   // 0x001D (size: 0x1)

}; // Size: 0x20

struct FEventSaveData
{
    TArray<int32> EventCheckCount;                                                    // 0x0000 (size: 0x10)
    TArray<bool> EventFlag;                                                           // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FEventSoundData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 BgmPlayTypeOnStart;                                                         // 0x000C (size: 0x4)
    FName BgmLabelOnStart;                                                            // 0x0010 (size: 0x8)
    int32 BgmPlayTypeOnEnd;                                                           // 0x0018 (size: 0x4)
    FName BgmLabelOnEnd;                                                              // 0x001C (size: 0x8)
    FName FixedFieldBgmLabel;                                                         // 0x0024 (size: 0x8)
    TArray<FName> FixedFieldBgmLevels;                                                // 0x0030 (size: 0x10)

}; // Size: 0x40

struct FFShopInfoDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName ShopName;                                                                   // 0x000C (size: 0x8)
    FString ShopType;                                                                 // 0x0018 (size: 0x10)
    FName ShopBGM;                                                                    // 0x0028 (size: 0x8)
    int32 InnBasePrice;                                                               // 0x0030 (size: 0x4)
    FName InnDiscountItem;                                                            // 0x0034 (size: 0x8)
    int32 InnDiscountBasePrice;                                                       // 0x003C (size: 0x4)

}; // Size: 0x40

struct FFadeDataBase : public FTableRowBase
{
    EEVENT_FADE_TYPE EventFadeType;                                                   // 0x0008 (size: 0x1)
    float FadeTime;                                                                   // 0x000C (size: 0x4)

}; // Size: 0x10

struct FFastTravelChangeDestination : public FTableRowBase
{
    FName From;                                                                       // 0x0008 (size: 0x8)
    FName To;                                                                         // 0x0010 (size: 0x8)
    int32 BeginEventFlag;                                                             // 0x0018 (size: 0x4)
    int32 EndEventFlag;                                                               // 0x001C (size: 0x4)

}; // Size: 0x20

struct FFieldCommandAssistItem
{
    FName ItemLabel;                                                                  // 0x0000 (size: 0x8)
    float BenefitValue;                                                               // 0x0008 (size: 0x4)

}; // Size: 0xC

struct FFieldCommandData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    MJFieldCommandType FieldCommandType;                                              // 0x000C (size: 0x1)
    EFieldCommandCategory FieldCommandCategory;                                       // 0x000D (size: 0x1)
    FName NameTextLabel;                                                              // 0x0010 (size: 0x8)
    FName DetailTextLabel;                                                            // 0x0018 (size: 0x8)
    FName DetailTextLabel_PlayerSelect;                                               // 0x0020 (size: 0x8)
    FName HelpTextLabel;                                                              // 0x0028 (size: 0x8)
    FName HelpTextLabel_NoNpc;                                                        // 0x0030 (size: 0x8)
    FName HelpTextLabel_Special;                                                      // 0x0038 (size: 0x8)
    FName HeaderTextLabel;                                                            // 0x0040 (size: 0x8)
    FName HeaderTextLabel_Special;                                                    // 0x0048 (size: 0x8)
    FName FooterTextLabel;                                                            // 0x0050 (size: 0x8)
    FName UnavailableTextLabel;                                                       // 0x0058 (size: 0x8)
    FName SELabel;                                                                    // 0x0060 (size: 0x8)
    FName IconLabel;                                                                  // 0x0068 (size: 0x8)
    FName IconLabel_Large;                                                            // 0x0070 (size: 0x8)
    FName StatusMenuIconLabel;                                                        // 0x0078 (size: 0x8)
    float ActionWaitTime;                                                             // 0x0080 (size: 0x4)
    TArray<float> BranchEventWeight;                                                  // 0x0088 (size: 0x10)
    TArray<FName> BeforeEventLabel;                                                   // 0x0098 (size: 0x10)
    TArray<FName> SuccessEventLabel;                                                  // 0x00A8 (size: 0x10)
    TArray<FName> FailedEventLabel;                                                   // 0x00B8 (size: 0x10)
    TArray<FName> BadConnectionEventLabel;                                            // 0x00C8 (size: 0x10)
    TSoftClassPtr<AFieldCommandFlowBase> FlowClass;                                   // 0x00D8 (size: 0x28)
    TSoftClassPtr<AFieldCommandFlowBase> FlowClassV2;                                 // 0x0100 (size: 0x28)
    TSoftClassPtr<AFieldCommandFlowBase> SubFlowClassV2;                              // 0x0128 (size: 0x28)

}; // Size: 0x150

struct FFieldCommandInfo : public FTableRowBase
{
    MJFieldCommandType DayTimeFC;                                                     // 0x0008 (size: 0x1)
    int32 DayTimeFCImpossibleFlag;                                                    // 0x000C (size: 0x4)
    MJFieldCommandType NightFC;                                                       // 0x0010 (size: 0x1)
    int32 NightFCImpossibleFlag;                                                      // 0x0014 (size: 0x4)

}; // Size: 0x18

struct FFieldCommandParam : public FTableRowBase
{
    float RefundSuccess;                                                              // 0x0008 (size: 0x4)
    float RefundRate;                                                                 // 0x000C (size: 0x4)
    float TameRate;                                                                   // 0x0010 (size: 0x4)
    int32 TameCount;                                                                  // 0x0014 (size: 0x4)
    int32 TameMonsterRank;                                                            // 0x0018 (size: 0x4)
    float TameMonsterParamRatio;                                                      // 0x001C (size: 0x4)
    float LureRate;                                                                   // 0x0020 (size: 0x4)
    float SearchRate;                                                                 // 0x0024 (size: 0x4)

}; // Size: 0x28

struct FFieldCommandResult
{
    MJFieldCommandType Type;                                                          // 0x0000 (size: 0x1)
    FieldCommandStatus Status;                                                        // 0x0001 (size: 0x1)

}; // Size: 0x2

struct FFieldPathInfoData : public FTableRowBase
{
    int32 nID;                                                                        // 0x0008 (size: 0x4)
    FString Name;                                                                     // 0x0010 (size: 0x10)
    EPATH_TYPE UniqueId;                                                              // 0x0020 (size: 0x1)
    int32 StartIndex;                                                                 // 0x0024 (size: 0x4)
    int32 FinishIndex;                                                                // 0x0028 (size: 0x4)
    bool LoopFlg;                                                                     // 0x002C (size: 0x1)
    bool TurnFlg;                                                                     // 0x002D (size: 0x1)
    bool MoveStartFlg;                                                                // 0x002E (size: 0x1)
    int32 StartLoopIndex;                                                             // 0x0030 (size: 0x4)
    float StartWaitTime;                                                              // 0x0034 (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE StartTimeZoneType;                                         // 0x0038 (size: 0x1)
    float WaitTime1;                                                                  // 0x003C (size: 0x4)
    EKSCharacterDir WaitDir1;                                                         // 0x0040 (size: 0x1)
    EKSCharacterAction WaitMotion1;                                                   // 0x0041 (size: 0x1)
    float WaitTime2;                                                                  // 0x0044 (size: 0x4)
    EKSCharacterDir WaitDir2;                                                         // 0x0048 (size: 0x1)
    EKSCharacterAction WaitMotion2;                                                   // 0x0049 (size: 0x1)
    float WaitTime3;                                                                  // 0x004C (size: 0x4)
    EKSCharacterDir WaitDir3;                                                         // 0x0050 (size: 0x1)
    EKSCharacterAction WaitMotion3;                                                   // 0x0051 (size: 0x1)
    float WaitTime4;                                                                  // 0x0054 (size: 0x4)
    EKSCharacterDir WaitDir4;                                                         // 0x0058 (size: 0x1)
    EKSCharacterAction WaitMotion4;                                                   // 0x0059 (size: 0x1)
    float WaitTime5;                                                                  // 0x005C (size: 0x4)
    EKSCharacterDir WaitDir5;                                                         // 0x0060 (size: 0x1)
    EKSCharacterAction WaitMotion5;                                                   // 0x0061 (size: 0x1)
    float WaitTime6;                                                                  // 0x0064 (size: 0x4)
    EKSCharacterDir WaitDir6;                                                         // 0x0068 (size: 0x1)
    EKSCharacterAction WaitMotion6;                                                   // 0x0069 (size: 0x1)
    float WaitTime7;                                                                  // 0x006C (size: 0x4)
    EKSCharacterDir WaitDir7;                                                         // 0x0070 (size: 0x1)
    EKSCharacterAction WaitMotion7;                                                   // 0x0071 (size: 0x1)
    EKSCharacterMoveMode MoveMotion1;                                                 // 0x0072 (size: 0x1)
    float MoveSpeed1;                                                                 // 0x0074 (size: 0x4)
    EKSCharacterMoveMode MoveMotion2;                                                 // 0x0078 (size: 0x1)
    float MoveSpeed2;                                                                 // 0x007C (size: 0x4)
    EKSCharacterMoveMode MoveMotion3;                                                 // 0x0080 (size: 0x1)
    float MoveSpeed3;                                                                 // 0x0084 (size: 0x4)
    EKSCharacterMoveMode MoveMotion4;                                                 // 0x0088 (size: 0x1)
    float MoveSpeed4;                                                                 // 0x008C (size: 0x4)
    EKSCharacterMoveMode MoveMotion5;                                                 // 0x0090 (size: 0x1)
    float MoveSpeed5;                                                                 // 0x0094 (size: 0x4)
    EKSCharacterMoveMode MoveMotion6;                                                 // 0x0098 (size: 0x1)
    float MoveSpeed6;                                                                 // 0x009C (size: 0x4)

}; // Size: 0xA0

struct FFlagOverrideData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    TArray<int32> TargetEventFlags;                                                   // 0x0010 (size: 0x10)
    bool PeriodPlayingEvent;                                                          // 0x0020 (size: 0x1)
    bool PeriodPlayingTheater;                                                        // 0x0021 (size: 0x1)
    bool PeriodReminiPrologue;                                                        // 0x0022 (size: 0x1)
    bool PeriodReminiPast;                                                            // 0x0023 (size: 0x1)
    bool OverrideValue;                                                               // 0x0024 (size: 0x1)

}; // Size: 0x28

struct FFlagRandomControlCandidate
{
    int32 Flag;                                                                       // 0x0000 (size: 0x4)
    int32 Rate;                                                                       // 0x0004 (size: 0x4)

}; // Size: 0x8

struct FFlagRandomControlGroup : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 ControlBeginFlag;                                                           // 0x000C (size: 0x4)
    int32 ControlEndFlag;                                                             // 0x0010 (size: 0x4)
    EFlagRandomControlTrigger ControlTrigger;                                         // 0x0014 (size: 0x1)
    bool ApplyValue;                                                                  // 0x0015 (size: 0x1)
    TArray<FFlagRandomControlCandidate> ControlCandidate;                             // 0x0018 (size: 0x10)

}; // Size: 0x28

struct FFlipbookCalcData
{
    FVector2D MaxSpriteSize;                                                          // 0x0000 (size: 0x8)
    float RightMaxOffset;                                                             // 0x0008 (size: 0x4)
    float LeftMaxOffset;                                                              // 0x000C (size: 0x4)
    float TopMaxOffset;                                                               // 0x0010 (size: 0x4)
    float BottomMaxOffset;                                                            // 0x0014 (size: 0x4)
    FVector2D CustomPivot;                                                            // 0x0018 (size: 0x8)

}; // Size: 0x20

struct FFlipbookPlayParam : public FTableRowBase
{
    FName CharacterName;                                                              // 0x0008 (size: 0x8)
    EKSCharacterAction ActionType;                                                    // 0x0010 (size: 0x1)
    EKSCharacterDir Dir;                                                              // 0x0011 (size: 0x1)
    bool IsLoop;                                                                      // 0x0012 (size: 0x1)

}; // Size: 0x18

struct FFollowNpcObjectData
{
    MJFieldCommandType FieldCommandType;                                              // 0x0000 (size: 0x1)
    class AKSCharacterBase* FollowCharacter;                                          // 0x0008 (size: 0x8)

}; // Size: 0x10

struct FFontItemData
{
    TArray<class UObject*> FontObjList;                                               // 0x0000 (size: 0x10)
    bool Loaded;                                                                      // 0x0010 (size: 0x1)

}; // Size: 0x18

struct FFootStepData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName WalkSELabel;                                                                // 0x000C (size: 0x8)
    FName DashSELabel;                                                                // 0x0014 (size: 0x8)

}; // Size: 0x20

struct FForceFeedbackEffectVibrationData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    class UForceFeedbackEffect* VibrationAsset;                                       // 0x0010 (size: 0x8)

}; // Size: 0x18

struct FGameColorData : public FTableRowBase
{
    FLinearColor ColorValue;                                                          // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FGameConditionInfo
{
    FName PlayerLabel;                                                                // 0x0000 (size: 0x8)
    FName TargetLabel;                                                                // 0x0008 (size: 0x8)
    FName ItemLabel;                                                                  // 0x0010 (size: 0x8)
    int32 ItemCount;                                                                  // 0x0018 (size: 0x4)
    bool IsSolo;                                                                      // 0x001C (size: 0x1)

}; // Size: 0x20

struct FGameParamInfo : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString VarType;                                                                  // 0x0010 (size: 0x10)
    FString Min;                                                                      // 0x0020 (size: 0x10)
    FString Max;                                                                      // 0x0030 (size: 0x10)
    FString Init;                                                                     // 0x0040 (size: 0x10)
    FString Param;                                                                    // 0x0050 (size: 0x10)

}; // Size: 0x60

struct FGameTextCharaInfo : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName Name;                                                                       // 0x000C (size: 0x8)
    EGENDER_TYPE Type;                                                                // 0x0014 (size: 0x1)
    FName Singular;                                                                   // 0x0018 (size: 0x8)
    FName SingularIndefinite;                                                         // 0x0020 (size: 0x8)
    FName SingularName;                                                               // 0x0028 (size: 0x8)
    FName Plural;                                                                     // 0x0030 (size: 0x8)
    FName PluralIndefinite;                                                           // 0x0038 (size: 0x8)
    FName PluralName;                                                                 // 0x0040 (size: 0x8)

}; // Size: 0x48

struct FGameTextInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FText Text;                                                                       // 0x0010 (size: 0x18)

}; // Size: 0x28

struct FGameTextItemInfo : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName Name;                                                                       // 0x000C (size: 0x8)
    FName Singular;                                                                   // 0x0014 (size: 0x8)
    FName SingularIndefinite;                                                         // 0x001C (size: 0x8)
    FName SingularName;                                                               // 0x0024 (size: 0x8)
    FName Plural;                                                                     // 0x002C (size: 0x8)
    FName PluralIndefinite;                                                           // 0x0034 (size: 0x8)
    FName PluralName;                                                                 // 0x003C (size: 0x8)

}; // Size: 0x48

struct FGiftData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName GiftTitle;                                                                  // 0x000C (size: 0x8)
    EGiftType GiftType;                                                               // 0x0014 (size: 0x1)
    int32 ReceivedFlag;                                                               // 0x0018 (size: 0x4)
    TArray<FGiftItemDataSet> ItemDataSets;                                            // 0x0020 (size: 0x10)

}; // Size: 0x30

struct FGiftItemDataSet
{
    FName ItemLabel;                                                                  // 0x0000 (size: 0x8)
    int32 ItemNum;                                                                    // 0x0008 (size: 0x4)

}; // Size: 0xC

struct FGuideData
{
    ECONTROL_GUIDE_BUTTON_TYPE m_eButtonType;                                         // 0x0000 (size: 0x1)
    FName m_Name;                                                                     // 0x0004 (size: 0x8)
    bool m_IsForceDisplay;                                                            // 0x000C (size: 0x1)

}; // Size: 0x10

struct FGuildData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName GuildName;                                                                  // 0x000C (size: 0x8)
    FName GuildNpcLabel;                                                              // 0x0014 (size: 0x8)
    FName WorldMapLocation;                                                           // 0x001C (size: 0x8)
    FName LicenseItem;                                                                // 0x0024 (size: 0x8)
    FName GuildStampLabel;                                                            // 0x002C (size: 0x8)
    FName JobIconLabel;                                                               // 0x0034 (size: 0x8)
    FName FistTaskEvent;                                                              // 0x003C (size: 0x8)
    FName FirstReconfirm;                                                             // 0x0044 (size: 0x8)
    TArray<FJobLicenseData> JobLicenseData;                                           // 0x0050 (size: 0x10)
    TArray<FGuildTalkData> GuildTalkData;                                             // 0x0060 (size: 0x10)
    TArray<FName> CompleteEvent;                                                      // 0x0070 (size: 0x10)
    bool OpenGuildMenu;                                                               // 0x0080 (size: 0x1)
    bool UnVisitedShowRadarIcon;                                                      // 0x0081 (size: 0x1)
    int32 OverrideEmotion;                                                            // 0x0084 (size: 0x4)

}; // Size: 0x88

struct FGuildTalkData
{
    FName Title;                                                                      // 0x0000 (size: 0x8)
    FName TalkEvent;                                                                  // 0x0008 (size: 0x8)

}; // Size: 0x10

struct FInvadeData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 InvadeID;                                                                   // 0x000C (size: 0x4)
    FName DisplayName;                                                                // 0x0010 (size: 0x8)
    FName DetailText;                                                                 // 0x0018 (size: 0x8)
    FName ResourceLabel;                                                              // 0x0020 (size: 0x8)
    bool InverseFlipBook;                                                             // 0x0028 (size: 0x1)
    FName Voice;                                                                      // 0x002C (size: 0x8)
    int32 DisplayLevel;                                                               // 0x0034 (size: 0x4)
    int32 CountMin;                                                                   // 0x0038 (size: 0x4)
    int32 CountMax;                                                                   // 0x003C (size: 0x4)
    bool UnlimitedFlag;                                                               // 0x0040 (size: 0x1)
    ECHARACTER_SIZE Size;                                                             // 0x0041 (size: 0x1)
    bool PartnerFlag;                                                                 // 0x0042 (size: 0x1)
    bool NPCFlag;                                                                     // 0x0043 (size: 0x1)
    bool LegendFlag;                                                                  // 0x0044 (size: 0x1)
    bool JuvenileFlg;                                                                 // 0x0045 (size: 0x1)
    bool LSizeFlag;                                                                   // 0x0046 (size: 0x1)
    bool InventorItemFlag;                                                            // 0x0047 (size: 0x1)
    EWEAPON_STANCE WeaponStance;                                                      // 0x0048 (size: 0x1)
    FName WeaponLabel;                                                                // 0x004C (size: 0x8)
    FCharacterParam Parameter;                                                        // 0x0054 (size: 0x34)
    FVector EffectOffset;                                                             // 0x0088 (size: 0xC)
    TArray<FName> AbilityList;                                                        // 0x0098 (size: 0x10)
    EWEAPON_CATEGORY WeaponType;                                                      // 0x00A8 (size: 0x1)
    TSoftClassPtr<UBattleAIBase> BattleAIPartner;                                     // 0x00B0 (size: 0x28)
    FVector2D MonsterUIOffset;                                                        // 0x00D8 (size: 0x8)
    FVector2D MonsterUISize;                                                          // 0x00E0 (size: 0x8)
    bool EnableProcess;                                                               // 0x00E8 (size: 0x1)
    FName ProcessedItem;                                                              // 0x00EC (size: 0x8)
    int32 ProcessNumID;                                                               // 0x00F4 (size: 0x4)
    int32 WaitEnemyActionFrame;                                                       // 0x00F8 (size: 0x4)
    FName InvadeAwakingLabel;                                                         // 0x00FC (size: 0x8)
    bool AwakingBoost0;                                                               // 0x0104 (size: 0x1)
    bool AwakingBoost1;                                                               // 0x0105 (size: 0x1)
    bool AwakingBoost2;                                                               // 0x0106 (size: 0x1)
    bool AwakingBoost3;                                                               // 0x0107 (size: 0x1)
    bool DisableAttackCommand;                                                        // 0x0108 (size: 0x1)
    bool DisableRecoveryCommand;                                                      // 0x0109 (size: 0x1)
    bool DisableReviveCommand;                                                        // 0x010A (size: 0x1)
    FProcessEnemyEventData ProcessEnemyEventData;                                     // 0x010C (size: 0x18)

}; // Size: 0x128

struct FInventionData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName InventionItemlabel;                                                         // 0x000C (size: 0x8)
    FName LearnAbilitylabel;                                                          // 0x0014 (size: 0x8)
    TArray<FInventionMaterial> Materials;                                             // 0x0020 (size: 0x10)

}; // Size: 0x30

struct FInventionMaterial
{
    FName ItemLabel;                                                                  // 0x0000 (size: 0x8)
    int32 RequiredCount;                                                              // 0x0008 (size: 0x4)

}; // Size: 0xC

struct FInventorItemData : public FTableRowBase
{
    bool m_bInventorItemReady;                                                        // 0x0008 (size: 0x1)
    bool m_bExecCreate;                                                               // 0x0009 (size: 0x1)
    int32 m_nInventorTurn;                                                            // 0x000C (size: 0x4)
    int32 m_nInventorTurnMax;                                                         // 0x0010 (size: 0x4)

}; // Size: 0x18

struct FItemAcquisitionHistory
{
    TArray<int32> History;                                                            // 0x0000 (size: 0x10)

}; // Size: 0x10

struct FItemCategory : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString DisplayNameID;                                                            // 0x0010 (size: 0x10)
    class UTexture2D* IconTexture;                                                    // 0x0020 (size: 0x8)

}; // Size: 0x28

struct FItemData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName ItemNameID;                                                                 // 0x000C (size: 0x8)
    FName DetailTextID;                                                               // 0x0014 (size: 0x8)
    FName IconLabel;                                                                  // 0x001C (size: 0x8)
    EItemCategoryData ItemCategory;                                                   // 0x0024 (size: 0x1)
    int32 SortCategory;                                                               // 0x0028 (size: 0x4)
    int32 BackpackPriority;                                                           // 0x002C (size: 0x4)
    EITEM_DISPLAY_TYPE DisplayType;                                                   // 0x0030 (size: 0x1)
    EITEM_USE_TYPE UseType;                                                           // 0x0031 (size: 0x1)
    int32 MaxNum;                                                                     // 0x0034 (size: 0x4)
    FName SpecialItemLabel;                                                           // 0x0038 (size: 0x8)
    EBATTLE_TARGET_TYPE TargetType;                                                   // 0x0040 (size: 0x1)
    EATTRIBUTE_TYPE Attribute;                                                        // 0x0041 (size: 0x1)
    TArray<FAilmentHandler> Ailment;                                                  // 0x0048 (size: 0x10)
    bool ValuableFlag;                                                                // 0x0058 (size: 0x1)
    int32 BuyPrice;                                                                   // 0x005C (size: 0x4)
    int32 SellPrice;                                                                  // 0x0060 (size: 0x4)
    int32 BuyMeetCount;                                                               // 0x0064 (size: 0x4)
    int32 SellMeetCount;                                                              // 0x0068 (size: 0x4)
    EEquipmentCategory EquipmentCategory;                                             // 0x006C (size: 0x1)
    FName EquipmentTextureLabel;                                                      // 0x0070 (size: 0x8)
    FCharacterParam EquipmentRevision;                                                // 0x0078 (size: 0x34)
    TArray<EATTRIBUTE_RESIST> AttributeResist;                                        // 0x00B0 (size: 0x10)
    TArray<bool> DiseaseResist;                                                       // 0x00C0 (size: 0x10)
    class UDataTable* CommandEffecter;                                                // 0x00D0 (size: 0x8)
    TSoftObjectPtr<ULevelSequence> ActionCommandSequencer;                            // 0x00D8 (size: 0x28)
    FString TextInfoLabel;                                                            // 0x0100 (size: 0x10)
    bool DisableAttackCommand;                                                        // 0x0110 (size: 0x1)
    bool DisableRecoveryCommand;                                                      // 0x0111 (size: 0x1)
    bool DisableReviveCommand;                                                        // 0x0112 (size: 0x1)
    FName AbilityLabel;                                                               // 0x0114 (size: 0x8)
    int32 DebugRecommendLv;                                                           // 0x011C (size: 0x4)

}; // Size: 0x120

struct FItemDataForMenu : public FTableRowBase
{
    class UTexture2D* IconTexture;                                                    // 0x0008 (size: 0x8)
    FName IconLabel;                                                                  // 0x0010 (size: 0x8)

}; // Size: 0x18

struct FItemIconText : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FText IconText;                                                                   // 0x0010 (size: 0x18)

}; // Size: 0x28

struct FItemInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString Label;                                                                    // 0x0010 (size: 0x10)
    int32 DisplayName;                                                                // 0x0020 (size: 0x4)
    class UTexture2D* IconTexture;                                                    // 0x0028 (size: 0x8)
    int32 Detail;                                                                     // 0x0030 (size: 0x4)
    int32 Category;                                                                   // 0x0034 (size: 0x4)
    int32 UsePoint;                                                                   // 0x0038 (size: 0x4)
    int32 EffectRange;                                                                // 0x003C (size: 0x4)
    int32 Attribute;                                                                  // 0x0040 (size: 0x4)
    TArray<int32> EffectValue;                                                        // 0x0048 (size: 0x10)
    int32 SpecialEffect;                                                              // 0x0058 (size: 0x4)
    int32 SaleMoney;                                                                  // 0x005C (size: 0x4)
    int32 SellHitDetail;                                                              // 0x0060 (size: 0x4)
    TArray<int32> CalcSellHitValue;                                                   // 0x0068 (size: 0x10)

}; // Size: 0x78

struct FJobCalcData
{
    FName ItemLabel;                                                                  // 0x0000 (size: 0x8)
    bool ReleaseFlag;                                                                 // 0x0008 (size: 0x1)
    TArray<int32> EquipCharaIDs;                                                      // 0x0010 (size: 0x10)
    int32 Num;                                                                        // 0x0020 (size: 0x4)
    int32 MaxNum;                                                                     // 0x0024 (size: 0x4)

}; // Size: 0x28

struct FJobData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 JobID;                                                                      // 0x000C (size: 0x4)
    FName DisplayName;                                                                // 0x0010 (size: 0x8)
    FName Detail;                                                                     // 0x0018 (size: 0x8)
    int32 DisplayOrder;                                                               // 0x0020 (size: 0x4)
    FName MenuJobIcon;                                                                // 0x0024 (size: 0x8)
    FName AbilityJobIcon;                                                             // 0x002C (size: 0x8)
    int32 PermissionFlag;                                                             // 0x0034 (size: 0x4)
    FName EquipJobItem;                                                               // 0x0038 (size: 0x8)
    TArray<bool> ProperEquipment;                                                     // 0x0040 (size: 0x10)
    FCharacterParam ParameterRevision;                                                // 0x0050 (size: 0x34)
    FName JobCommandName;                                                             // 0x0084 (size: 0x8)
    FName JobCommandDetail;                                                           // 0x008C (size: 0x8)
    TArray<FJobLearnAbility> JobCommandAbility;                                       // 0x0098 (size: 0x10)
    TArray<FJobLearnAbility> JobSupportAbility;                                       // 0x00A8 (size: 0x10)
    TArray<int32> JPCost;                                                             // 0x00B8 (size: 0x10)

}; // Size: 0xC8

struct FJobEvalautionValueData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    float HP;                                                                         // 0x000C (size: 0x4)
    float MP;                                                                         // 0x0010 (size: 0x4)
    float ATK;                                                                        // 0x0014 (size: 0x4)
    float DEF;                                                                        // 0x0018 (size: 0x4)
    float MATK;                                                                       // 0x001C (size: 0x4)
    float MDEF;                                                                       // 0x0020 (size: 0x4)
    float ACC;                                                                        // 0x0024 (size: 0x4)
    float EVA;                                                                        // 0x0028 (size: 0x4)
    float CON;                                                                        // 0x002C (size: 0x4)
    float AGI;                                                                        // 0x0030 (size: 0x4)

}; // Size: 0x38

struct FJobLearnAbility : public FTableRowBase
{
    FName AbilityName;                                                                // 0x0008 (size: 0x8)
    int32 GetParam;                                                                   // 0x0010 (size: 0x4)

}; // Size: 0x18

struct FJobLicenseData
{
    FName TaskTitle;                                                                  // 0x0000 (size: 0x8)
    FName NeedItemLabel;                                                              // 0x0008 (size: 0x8)
    int32 NeedItemNum;                                                                // 0x0010 (size: 0x4)
    int32 NeedMoney;                                                                  // 0x0014 (size: 0x4)
    FName NeedAbility;                                                                // 0x0018 (size: 0x8)
    int32 LearnedCount;                                                               // 0x0020 (size: 0x4)
    FName TaskDescription;                                                            // 0x0024 (size: 0x8)

}; // Size: 0x2C

struct FJumpFrameSet
{
    int32 KEN;                                                                        // 0x0000 (size: 0x4)
    int32 KAR;                                                                        // 0x0004 (size: 0x4)
    int32 KUS;                                                                        // 0x0008 (size: 0x4)
    int32 Sin;                                                                        // 0x000C (size: 0x4)
    int32 SHO;                                                                        // 0x0010 (size: 0x4)
    int32 GAK;                                                                        // 0x0014 (size: 0x4)
    int32 TOU;                                                                        // 0x0018 (size: 0x4)
    int32 ODO;                                                                        // 0x001C (size: 0x4)

}; // Size: 0x20

struct FKSCategoryVolumeData
{
}; // Size: 0x28

struct FKSCharaFlipbook : public FTableRowBase
{
    TArray<FName> FlipbookNames;                                                      // 0x0008 (size: 0x10)
    TArray<bool> Loop;                                                                // 0x0018 (size: 0x10)
    float Height;                                                                     // 0x0028 (size: 0x4)
    FName WalkFootstep;                                                               // 0x002C (size: 0x8)
    TArray<TSoftObjectPtr<UTexture2D>> Textures;                                      // 0x0038 (size: 0x10)
    TArray<TSoftObjectPtr<UMaterialInterface>> Materials;                             // 0x0048 (size: 0x10)

}; // Size: 0x58

struct FKSCueSheetData : public FTableRowBase
{
    FName AssetPath;                                                                  // 0x0008 (size: 0x8)

}; // Size: 0x10

struct FKSFlipbookData : public FTableRowBase
{
    float Fps;                                                                        // 0x0008 (size: 0x4)
    TArray<FKSFlipbookKeyFrame> KeyFrames;                                            // 0x0010 (size: 0x10)
    TSoftObjectPtr<UMaterialInterface> Material;                                      // 0x0020 (size: 0x28)

}; // Size: 0x48

struct FKSFlipbookKeyFrame
{
    FName SpriteName;                                                                 // 0x0000 (size: 0x8)
    int32 FrameRun;                                                                   // 0x0008 (size: 0x4)

}; // Size: 0xC

struct FKSKeyConfigMappingDatum
{
    FName Name;                                                                       // 0x0000 (size: 0x8)
    float Scale;                                                                      // 0x0008 (size: 0x4)
    bool Axis;                                                                        // 0x000C (size: 0x1)
    FName Category;                                                                   // 0x0010 (size: 0x8)

}; // Size: 0x18

struct FKSLevelPostProcessData
{
    TWeakObjectPtr<class APostProcessVolume> Volume;                                  // 0x0000 (size: 0x8)
    float VignetteWeak;                                                               // 0x0008 (size: 0x4)
    float VignetteNormal;                                                             // 0x000C (size: 0x4)
    float FocalRegionWide;                                                            // 0x0010 (size: 0x4)
    float FocalRegionNormal;                                                          // 0x0014 (size: 0x4)
    float DofScaleWeak;                                                               // 0x0018 (size: 0x4)
    float DofScaleNormal;                                                             // 0x001C (size: 0x4)
    float ColorGradingGainNormal;                                                     // 0x0020 (size: 0x4)
    float ColorGradingGainMin;                                                        // 0x0024 (size: 0x4)
    float ColorGradingGainMax;                                                        // 0x0028 (size: 0x4)

}; // Size: 0x2C

struct FKSObjectData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    uint8 ObjectType;                                                                 // 0x000C (size: 0x1)
    FName ObjResLabel;                                                                // 0x0010 (size: 0x8)
    bool IsCollision;                                                                 // 0x0018 (size: 0x1)
    bool IsPutOnGround;                                                               // 0x0019 (size: 0x1)
    bool IsMoney;                                                                     // 0x001A (size: 0x1)
    FName HaveItemLabel;                                                              // 0x001C (size: 0x8)
    int32 HaveItemCnt;                                                                // 0x0024 (size: 0x4)
    bool HideDialog;                                                                  // 0x0028 (size: 0x1)
    bool IsRevivalByLevelChange;                                                      // 0x0029 (size: 0x1)
    TArray<FRandomItemData> RandomItemCandidates;                                     // 0x0030 (size: 0x10)

}; // Size: 0x40

struct FKSSaveSlotData
{
    int32 PlayTime;                                                                   // 0x0000 (size: 0x4)
    int32 SaveDate_Year;                                                              // 0x0004 (size: 0x4)
    int32 SaveDate_Month;                                                             // 0x0008 (size: 0x4)
    int32 SaveDate_Day;                                                               // 0x000C (size: 0x4)
    int32 SaveDate_Hour;                                                              // 0x0010 (size: 0x4)
    int32 SaveDate_Minute;                                                            // 0x0014 (size: 0x4)
    int32 SaveDate_Second;                                                            // 0x0018 (size: 0x4)
    int32 levelId;                                                                    // 0x001C (size: 0x4)
    int32 LevelAreaID;                                                                // 0x0020 (size: 0x4)
    int32 ClearFlag;                                                                  // 0x0024 (size: 0x4)
    int32 LeaderCharaLevel;                                                           // 0x0028 (size: 0x4)
    TArray<int32> MainMemberCharacterID;                                              // 0x0030 (size: 0x10)
    TArray<int32> MainMemberJobID;                                                    // 0x0040 (size: 0x10)
    TArray<uint8> CharaForm;                                                          // 0x0050 (size: 0x10)
    bool IsEnabled;                                                                   // 0x0060 (size: 0x1)
    bool IsAutoSaveLine;                                                              // 0x0061 (size: 0x1)
    bool IsForcusAnimImmideate;                                                       // 0x0062 (size: 0x1)
    bool IsInReminiscence;                                                            // 0x0063 (size: 0x1)
    int32 ReminiscenceStoryIndex;                                                     // 0x0064 (size: 0x4)

}; // Size: 0x68

struct FKSSpriteData : public FTableRowBase
{
    TSoftObjectPtr<UTexture2D> SrcTexture;                                            // 0x0008 (size: 0x28)
    FVector2D SrcUV;                                                                  // 0x0030 (size: 0x8)
    FVector2D SrcSize;                                                                // 0x0038 (size: 0x8)
    TArray<TSoftObjectPtr<UTexture2D>> AddTexArray;                                   // 0x0040 (size: 0x10)
    TArray<FVector4> VertArray;                                                       // 0x0050 (size: 0x10)
    TArray<FName> SocketNameArray;                                                    // 0x0060 (size: 0x10)
    TArray<FVector> SocketPosArray;                                                   // 0x0070 (size: 0x10)
    FVector2D CharaFootPivot;                                                         // 0x0080 (size: 0x8)
    bool HasAdditionalTexture;                                                        // 0x0088 (size: 0x1)
    float CustomPixelsPerUnrealUnit;                                                  // 0x008C (size: 0x4)

}; // Size: 0x90

struct FKSSysSaveData
{
    TArray<int32> BitFlags;                                                           // 0x0000 (size: 0x10)
    TArray<int32> Params;                                                             // 0x0010 (size: 0x10)
    TArray<int32> KeyConfigParam;                                                     // 0x0020 (size: 0x10)
    int32 KeyConfigKeyboardLayoutType;                                                // 0x0030 (size: 0x4)

}; // Size: 0x38

struct FKSUICommonDialogParam
{
    FText CaptionText;                                                                // 0x0000 (size: 0x18)
    bool UseCaption;                                                                  // 0x0018 (size: 0x1)
    FText DetailText;                                                                 // 0x0020 (size: 0x18)
    bool UseDetail;                                                                   // 0x0038 (size: 0x1)
    TArray<FText> ButtonText;                                                         // 0x0040 (size: 0x10)
    int32 DefaultButton;                                                              // 0x0050 (size: 0x4)
    bool EnableCancelKey;                                                             // 0x0054 (size: 0x1)
    int32 CancelKeyValue;                                                             // 0x0058 (size: 0x4)
    bool AutoSelectClose;                                                             // 0x005C (size: 0x1)
    bool AutoClosePop;                                                                // 0x005D (size: 0x1)

}; // Size: 0x60

struct FKSUIFlipbookData : public FTableRowBase
{
    float Fps;                                                                        // 0x0008 (size: 0x4)
    TArray<FKSFlipbookKeyFrame> KeyFrames;                                            // 0x0010 (size: 0x10)
    TSoftObjectPtr<UMaterialInterface> Material;                                      // 0x0020 (size: 0x28)
    class UPaperFlipbook* flipbook;                                                   // 0x0048 (size: 0x8)

}; // Size: 0x50

struct FLabelListData : public FTableRowBase
{
    TArray<FName> LabelList;                                                          // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FLanternCheckData
{
    int32 EventFlag;                                                                  // 0x0000 (size: 0x4)
    bool Equip;                                                                       // 0x0004 (size: 0x1)

}; // Size: 0x8

struct FLevelInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    uint8 LevelKind;                                                                  // 0x000C (size: 0x1)
    uint8 AreaID;                                                                     // 0x000D (size: 0x1)
    int32 TownLabel;                                                                  // 0x0010 (size: 0x4)
    int32 SubTownLabel;                                                               // 0x0014 (size: 0x4)
    int32 MapChangeType;                                                              // 0x0018 (size: 0x4)
    uint8 TransportationType;                                                         // 0x001C (size: 0x1)
    int32 EncountStepMin;                                                             // 0x0020 (size: 0x4)
    int32 RandomStepA;                                                                // 0x0024 (size: 0x4)
    int32 RandomStepB;                                                                // 0x0028 (size: 0x4)
    float FirstEncountStepRatio;                                                      // 0x002C (size: 0x4)
    FName BgmLabelDayTime;                                                            // 0x0030 (size: 0x8)
    FName BgmLabelNight;                                                              // 0x0038 (size: 0x8)
    FName BgmLabelDarkness;                                                           // 0x0040 (size: 0x8)
    FName Bgm2Label;                                                                  // 0x0048 (size: 0x8)
    int32 Bgm2EnableFlag;                                                             // 0x0050 (size: 0x4)
    FName Bgm3Label;                                                                  // 0x0054 (size: 0x8)
    int32 Bgm3EnableFlag;                                                             // 0x005C (size: 0x4)
    FName Bgm4Label;                                                                  // 0x0060 (size: 0x8)
    int32 Bgm4EnableFlag;                                                             // 0x0068 (size: 0x4)
    FName Bgm5Label;                                                                  // 0x006C (size: 0x8)
    int32 Bgm5EnableFlag;                                                             // 0x0074 (size: 0x4)
    FName TimeZoneChangeSeLabel;                                                      // 0x0078 (size: 0x8)
    FName TimeZoneChangeSe2Label;                                                     // 0x0080 (size: 0x8)
    int32 TimeZoneChangeSe2EnableFlag;                                                // 0x0088 (size: 0x4)
    int32 ScreenFadeInTime;                                                           // 0x008C (size: 0x4)
    int32 ScreenFadeOutTime;                                                          // 0x0090 (size: 0x4)
    int32 EncountOffset;                                                              // 0x0094 (size: 0x4)
    TArray<FName> BattleMapNameList;                                                  // 0x0098 (size: 0x10)
    TArray<FName> EncountVolumeNameList;                                              // 0x00A8 (size: 0x10)
    FName DarkAreaEncountVolumeName;                                                  // 0x00B8 (size: 0x8)
    float Intencity;                                                                  // 0x00C0 (size: 0x4)
    float AttenuationRadius;                                                          // 0x00C4 (size: 0x4)
    FLinearColor LightColor;                                                          // 0x00C8 (size: 0x10)
    float SourceRadius;                                                               // 0x00D8 (size: 0x4)
    bool TorchFlag;                                                                   // 0x00DC (size: 0x1)
    bool ImpossibleTimeZoneChangeFlag;                                                // 0x00DD (size: 0x1)
    int32 TimeZoneSeqChangeFlag;                                                      // 0x00E0 (size: 0x4)
    FName ReplaceTimeZoneSeqLabel;                                                    // 0x00E4 (size: 0x8)
    bool ReverbFlag;                                                                  // 0x00EC (size: 0x1)
    bool ImpossibleFCFlag;                                                            // 0x00ED (size: 0x1)
    TArray<bool> BarPlacementChara;                                                   // 0x00F0 (size: 0x10)
    TArray<float> BarPCPos1;                                                          // 0x0100 (size: 0x10)
    uint8 BarPCDir1;                                                                  // 0x0110 (size: 0x1)
    TArray<float> BarPCPos2;                                                          // 0x0118 (size: 0x10)
    uint8 BarPCDir2;                                                                  // 0x0128 (size: 0x1)
    FName BarItemLabel1;                                                              // 0x012C (size: 0x8)
    int32 BarItemCnt1;                                                                // 0x0134 (size: 0x4)
    FName BarItemLabel2;                                                              // 0x0138 (size: 0x8)
    int32 BarItemCnt2;                                                                // 0x0140 (size: 0x4)
    FName BarItemLabel3;                                                              // 0x0144 (size: 0x8)
    int32 BarItemCnt3;                                                                // 0x014C (size: 0x4)
    FName BarEventLabel;                                                              // 0x0150 (size: 0x8)
    bool BanLostWay;                                                                  // 0x0158 (size: 0x1)
    bool BanMainMenuPartyMemberChange;                                                // 0x0159 (size: 0x1)

}; // Size: 0x160

struct FLevelLoaderRequest
{
}; // Size: 0x20

struct FLevelResolutioData : public FTableRowBase
{
    float SwitchHandheldScreenPercentage;                                             // 0x0008 (size: 0x4)
    float SwitchHandheldSeparateTranslucencyScreenPercentage;                         // 0x000C (size: 0x4)
    float SwitchTVScreenPercentage;                                                   // 0x0010 (size: 0x4)
    float SwitchTVSeparateTranslucencyScreenPercentage;                               // 0x0014 (size: 0x4)
    float PS4ScreenPercentage;                                                        // 0x0018 (size: 0x4)
    float PS4SeparateTranslucencyScreenPercentage;                                    // 0x001C (size: 0x4)

}; // Size: 0x20

struct FLevelTransitionData
{
    int32 EnableFlag;                                                                 // 0x0000 (size: 0x4)
    FName NextMapName;                                                                // 0x0004 (size: 0x8)
    ELevelTriggerID NextLevelTriggerID;                                               // 0x000C (size: 0x1)
    EKSCharacterDir MapInCharaDir;                                                    // 0x000D (size: 0x1)
    ECharacterMoveModeForDB MapInCharaMoveMode;                                       // 0x000E (size: 0x1)
    FName NextMapNoticeText;                                                          // 0x0010 (size: 0x8)
    bool EnableAutoSave;                                                              // 0x0018 (size: 0x1)

}; // Size: 0x1C

struct FLevelTriggerParams : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName NextMapName;                                                                // 0x000C (size: 0x8)
    ELevelTriggerID NextLevelTriggerID;                                               // 0x0014 (size: 0x1)
    EKSCharacterDir MapInCharaDir;                                                    // 0x0015 (size: 0x1)
    ECharacterMoveModeForDB MapInCharaMoveMode;                                       // 0x0016 (size: 0x1)
    FName NextMapNoticeText;                                                          // 0x0018 (size: 0x8)
    bool EnableAutoSave;                                                              // 0x0020 (size: 0x1)
    TArray<FLevelTransitionData> ConditionalTransitionData;                           // 0x0028 (size: 0x10)
    TArray<int32> FlagList;                                                           // 0x0038 (size: 0x10)

}; // Size: 0x48

struct FLinerShipRouteData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName ContinentA;                                                                 // 0x000C (size: 0x8)
    FName ContinentB;                                                                 // 0x0014 (size: 0x8)
    FName LevelA;                                                                     // 0x001C (size: 0x8)
    FName LevelB;                                                                     // 0x0024 (size: 0x8)
    FName LevelTriggerA;                                                              // 0x002C (size: 0x8)
    FName LevelTriggerB;                                                              // 0x0034 (size: 0x8)
    int32 Price;                                                                      // 0x003C (size: 0x4)
    FName EventRouteAtoB;                                                             // 0x0040 (size: 0x8)
    FName EventRouteBtoA;                                                             // 0x0048 (size: 0x8)

}; // Size: 0x50

struct FListWidgetCategory : public FTableRowBase
{
    class UTexture2D* TabIcon;                                                        // 0x0008 (size: 0x8)
    class UTexture2D* TitleIcon;                                                      // 0x0010 (size: 0x8)
    bool UseCaptionFormat;                                                            // 0x0018 (size: 0x1)
    FName ListCaptionFormat;                                                          // 0x001C (size: 0x8)
    FName ListCaption;                                                                // 0x0024 (size: 0x8)
    FName Column1_Title;                                                              // 0x002C (size: 0x8)
    FName Column2_Title;                                                              // 0x0034 (size: 0x8)
    bool Column2_Visible;                                                             // 0x003C (size: 0x1)
    FName Column3_Title;                                                              // 0x0040 (size: 0x8)
    bool Column3_Visible;                                                             // 0x0048 (size: 0x1)
    int32 CategoryId;                                                                 // 0x004C (size: 0x4)
    bool ShowAllItem;                                                                 // 0x0050 (size: 0x1)
    bool ShowAlways;                                                                  // 0x0051 (size: 0x1)
    bool ShowNewItems;                                                                // 0x0052 (size: 0x1)
    bool HolyTorchFlag;                                                               // 0x0053 (size: 0x1)
    bool EnableCategoryUpdate;                                                        // 0x0054 (size: 0x1)

}; // Size: 0x58

struct FLoadedObject
{
    TArray<class UObject*> LoadedObject;                                              // 0x0000 (size: 0x10)

}; // Size: 0x10

struct FLoopSeData : public FTableRowBase
{
    class UAtomComponent* Component;                                                  // 0x0008 (size: 0x8)
    bool IsUsed;                                                                      // 0x0010 (size: 0x1)

}; // Size: 0x18

struct FMAINMENU_MISSION_RECORD_DATA
{
    FName MissionLabel;                                                               // 0x0000 (size: 0x8)
    int32 State;                                                                      // 0x0008 (size: 0x4)
    int32 ClearIdx;                                                                   // 0x000C (size: 0x4)
    int32 SaveDataIndex;                                                              // 0x0010 (size: 0x4)
    bool bNewFlag;                                                                    // 0x0014 (size: 0x1)
    bool bIsReminiscence;                                                             // 0x0015 (size: 0x1)
    FName DetailTextLabel;                                                            // 0x0018 (size: 0x8)
    FName WorldMapIconLabel;                                                          // 0x0020 (size: 0x8)

}; // Size: 0x28

struct FMJActivitySaveData
{
    TMap<int32, int32> SubTaskStatus;                                                 // 0x0000 (size: 0x50)

}; // Size: 0x50

struct FMJGameTextMap
{
    TMap<class FString, class FName> TextMap;                                         // 0x0000 (size: 0x50)
    bool IsReady;                                                                     // 0x0050 (size: 0x1)

}; // Size: 0x58

struct FMJListWidgetItemData : public FTableRowBase
{
    FText ItemName;                                                                   // 0x0008 (size: 0x18)
    FName ItemNameLabel;                                                              // 0x0020 (size: 0x8)
    FText ItemData_0;                                                                 // 0x0028 (size: 0x18)
    FText ItemData_1;                                                                 // 0x0040 (size: 0x18)
    class UTexture2D* ItemIcon;                                                       // 0x0058 (size: 0x8)
    class UTexture2D* ItemIcon_0;                                                     // 0x0060 (size: 0x8)
    FText DetailText;                                                                 // 0x0068 (size: 0x18)
    FName DetailTextLabel;                                                            // 0x0080 (size: 0x8)
    ELIST_ITEM_STATUS Status;                                                         // 0x0088 (size: 0x1)
    int32 CategoryId;                                                                 // 0x008C (size: 0x4)
    bool StrikeThrough;                                                               // 0x0090 (size: 0x1)
    int32 ItemNum_0;                                                                  // 0x0094 (size: 0x4)
    int32 ItemNum_1;                                                                  // 0x0098 (size: 0x4)
    ELIST_ITEM_NEXT_SPACE NextSpace;                                                  // 0x009C (size: 0x1)
    int32 Option_0;                                                                   // 0x00A0 (size: 0x4)
    bool NotShowAllCategory;                                                          // 0x00A4 (size: 0x1)
    bool DontSelectable;                                                              // 0x00A5 (size: 0x1)
    bool NoHelp;                                                                      // 0x00A6 (size: 0x1)
    bool ItemData_1_Dark;                                                             // 0x00A7 (size: 0x1)
    class UTexture2D* FixedEquipIcon;                                                 // 0x00A8 (size: 0x8)
    bool HolyTorchFlag;                                                               // 0x00B0 (size: 0x1)
    bool IsItemDetailText;                                                            // 0x00B1 (size: 0x1)
    bool IsUseSubItem;                                                                // 0x00B2 (size: 0x1)
    bool IsSoldOutItem;                                                               // 0x00B3 (size: 0x1)

}; // Size: 0xB8

struct FMJSpriteSocketData
{
    TArray<FPaperSpriteSocket> SocketList;                                            // 0x0000 (size: 0x10)

}; // Size: 0x10

struct FMJUICommonDialogParam
{
    FText CaptionText;                                                                // 0x0000 (size: 0x18)
    FText DetailText;                                                                 // 0x0018 (size: 0x18)
    TArray<FText> ButtonText;                                                         // 0x0030 (size: 0x10)
    int32 DefaultButton;                                                              // 0x0040 (size: 0x4)
    bool EnableCancelKey;                                                             // 0x0044 (size: 0x1)
    int32 CancelKeyValue;                                                             // 0x0048 (size: 0x4)
    bool AutoSelectClose;                                                             // 0x004C (size: 0x1)
    FMJUICommonDialogParamOnSelectCallback OnSelectCallback;                          // 0x0050 (size: 0x10)
    void SelectCallback(int32 SelectIndex);
    FMJUICommonDialogParamOnCloseFinishCallback OnCloseFinishCallback;                // 0x0060 (size: 0x10)
    void CloseFinishCallback(int32 SelectIndex);
    class UUserWidget* AttachDetailWidget;                                            // 0x0070 (size: 0x8)
    bool DetailOnTop;                                                                 // 0x0078 (size: 0x1)
    class UUserWidget* AttachCaptionWidget;                                           // 0x0080 (size: 0x8)
    bool CaptionOnTop;                                                                // 0x0088 (size: 0x1)
    bool UseCaptionSeparation;                                                        // 0x0089 (size: 0x1)
    bool RequestFlag;                                                                 // 0x008A (size: 0x1)
    bool DuplicationFlag;                                                             // 0x008B (size: 0x1)
    bool InputReceptionFlag;                                                          // 0x008C (size: 0x1)
    bool UseSelectWidget;                                                             // 0x008D (size: 0x1)
    bool SelectWidgetOnTop;                                                           // 0x008E (size: 0x1)
    TArray<class UUserWidget*> SelectWidgetList;                                      // 0x0090 (size: 0x10)
    bool BloodFlag;                                                                   // 0x00A0 (size: 0x1)
    TArray<bool> BloodList;                                                           // 0x00A8 (size: 0x10)
    bool EnableOpenSe;                                                                // 0x00B8 (size: 0x1)
    FName OpenSeLabel;                                                                // 0x00BC (size: 0x8)

}; // Size: 0xC8

struct FMainMissionData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName MainStoryLabel;                                                             // 0x000C (size: 0x8)
    ESTORY_TASK_TYPE TaskType;                                                        // 0x0014 (size: 0x1)
    EPlayableCharacterID TargetPCIndex;                                               // 0x0015 (size: 0x1)
    bool IsMissionList;                                                               // 0x0016 (size: 0x1)
    int32 ViewEventFlag;                                                              // 0x0018 (size: 0x4)
    float AddAchive;                                                                  // 0x001C (size: 0x4)
    FName MemoryEventLabel;                                                           // 0x0020 (size: 0x8)
    FName TitleTextLabel;                                                             // 0x0028 (size: 0x8)
    FName DetailTextLabel;                                                            // 0x0030 (size: 0x8)
    FName WorldMapIcon;                                                               // 0x0038 (size: 0x8)
    int32 ProgressValue;                                                              // 0x0040 (size: 0x4)
    bool UnavailableFastTravel;                                                       // 0x0044 (size: 0x1)
    FName AuthorizationFastTravel;                                                    // 0x0048 (size: 0x8)
    FName EventSoundLabel;                                                            // 0x0050 (size: 0x8)
    EEndRollSegmentSet EndRollSegment;                                                // 0x0058 (size: 0x1)
    int32 EventObjectFlag1;                                                           // 0x005C (size: 0x4)
    int32 EventObjectFlag2;                                                           // 0x0060 (size: 0x4)
    int32 EventObjectFlag3;                                                           // 0x0064 (size: 0x4)
    int32 EventObjectFlag4;                                                           // 0x0068 (size: 0x4)
    int32 EventObjectFlag5;                                                           // 0x006C (size: 0x4)
    int32 EventObjectFlag6;                                                           // 0x0070 (size: 0x4)
    int32 EventObjectFlag7;                                                           // 0x0074 (size: 0x4)
    int32 EventObjectFlag8;                                                           // 0x0078 (size: 0x4)

}; // Size: 0x80

struct FMainSequenceStateParam
{
    class UObject* Object;                                                            // 0x0000 (size: 0x8)
    int32 Param0;                                                                     // 0x0008 (size: 0x4)

}; // Size: 0x10

struct FMainSequneceRequestParam
{
    FMainSequneceRequestParamDelegate Delegate;                                       // 0x0000 (size: 0x10)
    void RequestDelegate(EREQUEST_RESULT Result);
    FMainSequenceStateParam StateParam;                                               // 0x0020 (size: 0x10)
    bool IsHold;                                                                      // 0x0030 (size: 0x1)
    EREQUEST_TYPE Type;                                                               // 0x0031 (size: 0x1)

}; // Size: 0x38

struct FMainStoryData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    EPlayableCharacterID PlayerCharaId;                                               // 0x000C (size: 0x1)
    FName StartWMapLocation;                                                          // 0x0010 (size: 0x8)
    TArray<FStartWorldMapData> SwitchWMapLocation;                                    // 0x0018 (size: 0x10)
    TArray<EPlayableCharacterID> RelationCharaId;                                     // 0x0028 (size: 0x10)
    TArray<int32> ReleaseFlag;                                                        // 0x0038 (size: 0x10)
    bool ReleaseNoticeFlag;                                                           // 0x0048 (size: 0x1)
    int32 SealFlag;                                                                   // 0x004C (size: 0x4)
    EMAIN_STORY_CATEGORY StoryCategory;                                               // 0x0050 (size: 0x1)
    EEXTRA_STORY_CATEGORY ExStoryCategory;                                            // 0x0051 (size: 0x1)
    int32 ChapterIndex;                                                               // 0x0054 (size: 0x4)
    FName ChapterText;                                                                // 0x0058 (size: 0x8)
    FName SubTitleText;                                                               // 0x0060 (size: 0x8)
    FName StoryDetailText;                                                            // 0x0068 (size: 0x8)
    FName OpeningEvent;                                                               // 0x0070 (size: 0x8)
    TArray<int32> RecommendationPoint;                                                // 0x0078 (size: 0x10)
    int32 ClearDifficultyPoint;                                                       // 0x0088 (size: 0x4)
    bool RecoverSwoonOnClear;                                                         // 0x008C (size: 0x1)
    TArray<FName> RelationLevel;                                                      // 0x0090 (size: 0x10)
    TArray<int32> EventFlagRange;                                                     // 0x00A0 (size: 0x10)
    TArray<int32> OffEventFlagRange;                                                  // 0x00B0 (size: 0x10)
    TArray<FName> NotVisitedOnClear;                                                  // 0x00C0 (size: 0x10)
    TArray<FName> VisitedOnClear;                                                     // 0x00D0 (size: 0x10)

}; // Size: 0xE0

struct FMainStoryEventObjectData
{
}; // Size: 0x18

struct FMainStorySaveData
{
    int32 StoryID;                                                                    // 0x0000 (size: 0x4)
    int32 CurrentTaskID;                                                              // 0x0004 (size: 0x4)
    int32 State;                                                                      // 0x0008 (size: 0x4)
    bool ConfirmedFlag;                                                               // 0x000C (size: 0x1)

}; // Size: 0x10

struct FMainStoryTaskSaveData
{
    int32 PlayedTimeZone;                                                             // 0x0000 (size: 0x4)
    int32 State;                                                                      // 0x0004 (size: 0x4)
    int32 Flag;                                                                       // 0x0008 (size: 0x4)
    TArray<int32> EventFlagList;                                                      // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FMapChipBlockPosition
{
    int32 m_nPosX;                                                                    // 0x0000 (size: 0x4)
    int32 m_nPosY;                                                                    // 0x0004 (size: 0x4)
    int32 m_nPosZ;                                                                    // 0x0008 (size: 0x4)

}; // Size: 0xC

struct FMapData
{
    TArray<uint8> TreasureStateArray;                                                 // 0x0000 (size: 0x10)

}; // Size: 0x10

struct FMapInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString Label;                                                                    // 0x0010 (size: 0x10)
    int32 MapNameID;                                                                  // 0x0020 (size: 0x4)
    FString levelName;                                                                // 0x0028 (size: 0x10)
    class UTexture2D* MiniMapAsset;                                                   // 0x0038 (size: 0x8)
    int32 RecommendMinLevel;                                                          // 0x0040 (size: 0x4)
    int32 RecommendMaxLevel;                                                          // 0x0044 (size: 0x4)
    int32 BGMID;                                                                      // 0x0048 (size: 0x4)
    int32 ScreenFadeInTime;                                                           // 0x004C (size: 0x4)
    int32 ScreenFadeOutTime;                                                          // 0x0050 (size: 0x4)
    int32 EncountOffset;                                                              // 0x0054 (size: 0x4)
    TArray<FString> BattleMapNameList;                                                // 0x0058 (size: 0x10)

}; // Size: 0x68

struct FMateriaTextureLabel
{
    FName Acq_LabelForRuntime_AutoFill;                                               // 0x0000 (size: 0x8)
    FName Acq_LabelForRuntime;                                                        // 0x0008 (size: 0x8)

}; // Size: 0x10

struct FMenuData
{
    int32 MissionRecord_MainStartSelect;                                              // 0x0000 (size: 0x4)
    int32 MissionRecord_ExtraStartSelect;                                             // 0x0004 (size: 0x4)
    int32 MissionRecord_SubStartSelect;                                               // 0x0008 (size: 0x4)

}; // Size: 0xC

struct FMillionaireModeData : public FTableRowBase
{
    FName ActiveEventFlag;                                                            // 0x0008 (size: 0x8)
    int64 Price;                                                                      // 0x0010 (size: 0x8)

}; // Size: 0x18

struct FMissionLabelList : public FTableRowBase
{
    TArray<FName> LabelArray;                                                         // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FMonsterListData : public FTableRowBase
{
    FName MonsterLabel;                                                               // 0x0008 (size: 0x8)
    int32 MonsterCount;                                                               // 0x0010 (size: 0x4)
    bool IsUnlimited;                                                                 // 0x0014 (size: 0x1)
    bool IsPartner;                                                                   // 0x0015 (size: 0x1)

}; // Size: 0x18

struct FMyShipFlipbookData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    EMYSHIP_CUSTOM_TYPE ColorType;                                                    // 0x000C (size: 0x1)
    EMYSHIP_CUSTOM_TYPE SailType;                                                     // 0x000D (size: 0x1)
    FName FlipbookName;                                                               // 0x0010 (size: 0x8)
    FName MeshResourceLabel;                                                          // 0x0018 (size: 0x8)
    FName OpenSailMeshResourceLabel;                                                  // 0x0020 (size: 0x8)

}; // Size: 0x28

struct FNPCBattleData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 CommandEnable;                                                              // 0x000C (size: 0x4)
    FName EnemyGroupID;                                                               // 0x0010 (size: 0x8)
    TArray<int32> WinEventFlag;                                                       // 0x0018 (size: 0x10)
    TArray<int32> LoseEventFlag;                                                      // 0x0028 (size: 0x10)
    bool CanSwoon;                                                                    // 0x0038 (size: 0x1)
    FName SwoonTalkID;                                                                // 0x003C (size: 0x8)
    FName SleepTalkID;                                                                // 0x0044 (size: 0x8)
    TArray<FName> SwoonRecLevel;                                                      // 0x0050 (size: 0x10)
    bool SwoonRecTimeZoneChange;                                                      // 0x0060 (size: 0x1)
    TArray<int32> SwooningFlags;                                                      // 0x0068 (size: 0x10)
    int32 BattleNeedLevel;                                                            // 0x0078 (size: 0x4)
    int32 BattlePCTalk;                                                               // 0x007C (size: 0x4)
    FName PreBattleTalkID;                                                            // 0x0080 (size: 0x8)
    FName PreBattleEventID;                                                           // 0x0088 (size: 0x8)
    FName LoseBattleTalkID;                                                           // 0x0090 (size: 0x8)
    FName LearnAbility;                                                               // 0x0098 (size: 0x8)
    bool IsDeathMatch;                                                                // 0x00A0 (size: 0x1)
    bool IsGameOverWhenLoose;                                                         // 0x00A1 (size: 0x1)
    TArray<FName> AdditionalTargetNpc;                                                // 0x00A8 (size: 0x10)
    bool IsIgnoreLeanAbility;                                                         // 0x00B8 (size: 0x1)
    FName BeforeMonsterEventID;                                                       // 0x00BC (size: 0x8)
    FName PreMonsterTalkID;                                                           // 0x00C4 (size: 0x8)
    FName LooseMonsterTalkID;                                                         // 0x00CC (size: 0x8)
    int32 AssassinateNeedLevel;                                                       // 0x00D4 (size: 0x4)
    FName DoseItemID;                                                                 // 0x00D8 (size: 0x8)
    int32 DoseItemNum;                                                                // 0x00E0 (size: 0x4)

}; // Size: 0xE8

struct FNPCBattleInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 BattleFlag;                                                                 // 0x000C (size: 0x4)
    int32 SubRelation;                                                                // 0x0010 (size: 0x4)
    TArray<FName> EnemyID;                                                            // 0x0018 (size: 0x10)
    TArray<int32> PositionID;                                                         // 0x0028 (size: 0x10)
    int32 NeedLevel;                                                                  // 0x0038 (size: 0x4)
    bool CanSwoon;                                                                    // 0x003C (size: 0x1)
    float SwoonOffsetPosX;                                                            // 0x0040 (size: 0x4)
    float SwoonOffsetPosY;                                                            // 0x0044 (size: 0x4)
    float SwoonOffsetPosZ;                                                            // 0x0048 (size: 0x4)
    TArray<bool> FlagList;                                                            // 0x0050 (size: 0x10)
    TArray<FString> NotBattleTalkList;                                                // 0x0060 (size: 0x10)
    int32 NotBattleBalloonType;                                                       // 0x0070 (size: 0x4)
    TArray<FString> ShortageLevelTalkList;                                            // 0x0078 (size: 0x10)
    int32 ShortageLevelBalloonType;                                                   // 0x0088 (size: 0x4)
    TArray<FString> PreBattleTalkList;                                                // 0x0090 (size: 0x10)
    int32 PreBattleBalloonType;                                                       // 0x00A0 (size: 0x4)
    TArray<FString> LoseTalkList;                                                     // 0x00A8 (size: 0x10)
    int32 LoseBalloonType;                                                            // 0x00B8 (size: 0x4)
    TArray<FString> WinTalkList;                                                      // 0x00C0 (size: 0x10)
    int32 WinBalloonType;                                                             // 0x00D0 (size: 0x4)
    TArray<FString> PreMonsterTalkList;                                               // 0x00D8 (size: 0x10)
    int32 PreMonsterBalloonType;                                                      // 0x00E8 (size: 0x4)
    TArray<FString> WinAMonsterTalkList;                                              // 0x00F0 (size: 0x10)
    int32 WinAMonsterBalloonType;                                                     // 0x0100 (size: 0x4)
    TArray<FString> SwoontTalkList;                                                   // 0x0108 (size: 0x10)
    int32 SwoontBalloonType;                                                          // 0x0118 (size: 0x4)
    bool IsSwoonPlayerTalk;                                                           // 0x011C (size: 0x1)
    int32 EventFlagIndex;                                                             // 0x0120 (size: 0x4)
    bool EventFlagSwitch;                                                             // 0x0124 (size: 0x1)

}; // Size: 0x128

struct FNPCCheckData : public FTableRowBase
{
    int32 LogicalType;                                                                // 0x0008 (size: 0x4)
    TArray<int32> FlagList;                                                           // 0x0010 (size: 0x10)
    TArray<bool> FlagEnableList;                                                      // 0x0020 (size: 0x10)

}; // Size: 0x30

struct FNPCData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName TextLabel;                                                                  // 0x000C (size: 0x8)
    int32 NPC_UnqIndex;                                                               // 0x0014 (size: 0x4)
    FName ActionID;                                                                   // 0x0018 (size: 0x8)
    int32 FaintAction;                                                                // 0x0020 (size: 0x4)
    FString UsePathLabel;                                                             // 0x0028 (size: 0x10)
    bool IgnoreRelation;                                                              // 0x0038 (size: 0x1)
    FName WorseRelationTextLabel;                                                     // 0x003C (size: 0x8)
    FName FCmd_Purchase_ID;                                                           // 0x0044 (size: 0x8)
    FName FCmd_Lure_ID;                                                               // 0x004C (size: 0x8)
    FName FCmd_Battle_ID;                                                             // 0x0054 (size: 0x8)
    FName FCmd_Search_ID;                                                             // 0x005C (size: 0x8)
    int32 FCmd_RecoverArea;                                                           // 0x0064 (size: 0x4)
    FName FCmd_EnemyGroup;                                                            // 0x0068 (size: 0x8)
    int32 FCmd_UseBattleMapIndex;                                                     // 0x0070 (size: 0x4)
    FName TextInfoLabel;                                                              // 0x0074 (size: 0x8)
    bool IsNotWorsenRelation;                                                         // 0x007C (size: 0x1)
    EFieldCommandSpecialPopupType FcSpecialPopupType;                                 // 0x007D (size: 0x1)

}; // Size: 0x80

struct FNPCDiagramData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 VisibleLevel;                                                               // 0x000C (size: 0x4)
    int32 PlaceID;                                                                    // 0x0010 (size: 0x4)
    int32 NPCID;                                                                      // 0x0014 (size: 0x4)
    TArray<int32> TargetNPCID;                                                        // 0x0018 (size: 0x10)
    TArray<int32> RelationType;                                                       // 0x0028 (size: 0x10)
    TArray<int32> Detail;                                                             // 0x0038 (size: 0x10)

}; // Size: 0x48

struct FNPCHearDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 CommandEnable;                                                              // 0x000C (size: 0x4)
    TArray<FName> HearInfoIDs;                                                        // 0x0010 (size: 0x10)
    int32 Age;                                                                        // 0x0020 (size: 0x4)
    FName HistoryTextID;                                                              // 0x0024 (size: 0x8)
    int32 HearNeedLevel;                                                              // 0x002C (size: 0x4)
    bool SpecialFlag;                                                                 // 0x0030 (size: 0x1)
    float SearchBaseProbability;                                                      // 0x0034 (size: 0x4)
    int32 SearchLockLevel;                                                            // 0x0038 (size: 0x4)
    FName SearchFailedTalkID;                                                         // 0x003C (size: 0x8)
    int32 BriberyBuyPrice;                                                            // 0x0044 (size: 0x4)
    FName RevealBeforeEventID;                                                        // 0x0048 (size: 0x8)
    FName RevealEnemyGroupID;                                                         // 0x0050 (size: 0x8)
    TArray<int32> RevealWinEventFlag;                                                 // 0x0058 (size: 0x10)
    TArray<int32> RevealLoseEventFlag;                                                // 0x0068 (size: 0x10)
    FName RevealSwapTargetPlacementLabel;                                             // 0x0078 (size: 0x8)
    bool SetHiddenAfterReveal;                                                        // 0x0080 (size: 0x1)
    FName SpecialHearDay_01;                                                          // 0x0084 (size: 0x8)
    FName SpecialHearDay_02;                                                          // 0x008C (size: 0x8)
    FName SpecialHearEvening_01;                                                      // 0x0094 (size: 0x8)
    FName SpecialHearEvening_02;                                                      // 0x009C (size: 0x8)

}; // Size: 0xA8

struct FNPCHearInfoDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName ItemId;                                                                     // 0x000C (size: 0x8)
    int32 EventFlag;                                                                  // 0x0014 (size: 0x4)
    FName NotificationID;                                                             // 0x0018 (size: 0x8)

}; // Size: 0x20

struct FNPCInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 CharacterID;                                                                // 0x000C (size: 0x4)
    FString Name;                                                                     // 0x0010 (size: 0x10)
    class UTexture2D* FaceIconTexture;                                                // 0x0020 (size: 0x8)
    int32 ActionID;                                                                   // 0x0028 (size: 0x4)
    int32 TownID;                                                                     // 0x002C (size: 0x4)
    bool IgnoreConnection;                                                            // 0x0030 (size: 0x1)
    TArray<FString> ConnectionTalkList;                                               // 0x0038 (size: 0x10)
    int32 ConnectionBalloonType;                                                      // 0x0048 (size: 0x4)
    int32 PurchaseID;                                                                 // 0x004C (size: 0x4)
    int32 BattleID;                                                                   // 0x0050 (size: 0x4)
    int32 SearchID;                                                                   // 0x0054 (size: 0x4)
    int32 LureID;                                                                     // 0x0058 (size: 0x4)

}; // Size: 0x60

struct FNPCLeadDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 CommandEnable;                                                              // 0x000C (size: 0x4)
    FName SupporterID;                                                                // 0x0010 (size: 0x8)
    bool BanFastTravelInFollowing;                                                    // 0x0018 (size: 0x1)
    TArray<int32> UnFollowingFlags;                                                   // 0x0020 (size: 0x10)
    TArray<int32> FollowingFlags;                                                     // 0x0030 (size: 0x10)
    bool IgnoreFollowProcess;                                                         // 0x0040 (size: 0x1)
    bool StoryNpc;                                                                    // 0x0041 (size: 0x1)
    int32 LeadNeedLevel;                                                              // 0x0044 (size: 0x4)
    FName LeadSuccessTalkID;                                                          // 0x0048 (size: 0x8)
    FName LeadReleaseTalkID;                                                          // 0x0050 (size: 0x8)
    float LureBaseProbability;                                                        // 0x0058 (size: 0x4)
    FName LureSuccesTalkID;                                                           // 0x005C (size: 0x8)
    FName LureFailedTalkID;                                                           // 0x0064 (size: 0x8)
    FName LureReleaseTalkID;                                                          // 0x006C (size: 0x8)
    int32 HirePrice;                                                                  // 0x0074 (size: 0x4)
    FName HireSuccesTalkID;                                                           // 0x0078 (size: 0x8)
    FName HireReleaseTalkID;                                                          // 0x0080 (size: 0x8)
    TArray<FPlacateNeedItem> PlacateNeedItems;                                        // 0x0088 (size: 0x10)
    FName PlacateSuccesTalkID;                                                        // 0x0098 (size: 0x8)
    FName PlacateReleaseTalkID;                                                       // 0x00A0 (size: 0x8)
    FName SpActionMerchant;                                                           // 0x00A8 (size: 0x8)

}; // Size: 0xB0

struct FNPCLureInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 FollowFlag;                                                                 // 0x000C (size: 0x4)
    int32 LeadNeedLevel;                                                              // 0x0010 (size: 0x4)
    float LureBaseProbability;                                                        // 0x0014 (size: 0x4)
    int32 SubRelation;                                                                // 0x0018 (size: 0x4)
    TArray<FString> LeadSuccessTalkList;                                              // 0x0020 (size: 0x10)
    int32 LeadSuccessBalloonType;                                                     // 0x0030 (size: 0x4)
    TArray<FString> LeadReleaseTalkList;                                              // 0x0038 (size: 0x10)
    int32 LeadReleaseTalkBalloonType;                                                 // 0x0048 (size: 0x4)
    TArray<FString> SuccessTalkList;                                                  // 0x0050 (size: 0x10)
    int32 SuccessBalloonType;                                                         // 0x0060 (size: 0x4)
    TArray<FString> FailedTalkList;                                                   // 0x0068 (size: 0x10)
    int32 FailedTalkBalloonType;                                                      // 0x0078 (size: 0x4)
    TArray<FString> ReleaseTalkList;                                                  // 0x0080 (size: 0x10)
    int32 ReleaseTalkBalloonType;                                                     // 0x0090 (size: 0x4)
    FString BattleDataID;                                                             // 0x0098 (size: 0x10)

}; // Size: 0xA8

struct FNPCPersonalData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 VisibleLevel;                                                               // 0x000C (size: 0x4)
    int32 Sex;                                                                        // 0x0010 (size: 0x4)
    int32 Age;                                                                        // 0x0014 (size: 0x4)
    int32 CategoryTopName;                                                            // 0x0018 (size: 0x4)
    TArray<int32> CategoryTopDetailList;                                              // 0x0020 (size: 0x10)
    int32 CategoryBottomName;                                                         // 0x0030 (size: 0x4)
    TArray<int32> CategoryBottomDetailList;                                           // 0x0038 (size: 0x10)

}; // Size: 0x48

struct FNPCPurchaseDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 CommandEnable;                                                              // 0x000C (size: 0x4)
    FName ShopID;                                                                     // 0x0010 (size: 0x8)
    FName PurchaseBuyTalkID;                                                          // 0x0018 (size: 0x8)
    FName StealSuccessTalkID;                                                         // 0x0020 (size: 0x8)
    FName StealFailedTalkID;                                                          // 0x0028 (size: 0x8)
    FName BegSuccessTalkID;                                                           // 0x0030 (size: 0x8)
    FName RobEnemyGroupID;                                                            // 0x0038 (size: 0x8)
    FName RobBeforeTalkID;                                                            // 0x0040 (size: 0x8)
    FName RobBeforeEventID;                                                           // 0x0048 (size: 0x8)

}; // Size: 0x50

struct FNPCPurchaseInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    TArray<int32> PurchaseItemList;                                                   // 0x0010 (size: 0x10)
    int32 SubRelation;                                                                // 0x0020 (size: 0x4)
    TArray<FString> BuyTalkList;                                                      // 0x0028 (size: 0x10)
    int32 BuyBalloonType;                                                             // 0x0038 (size: 0x4)
    TArray<FString> StealSuccessTalkList;                                             // 0x0040 (size: 0x10)
    int32 StealSuccessBalloonType;                                                    // 0x0050 (size: 0x4)
    TArray<FString> StealFailedTalkList;                                              // 0x0058 (size: 0x10)
    int32 StealFailedBalloonType;                                                     // 0x0068 (size: 0x4)

}; // Size: 0x70

struct FNPCSearchInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 InfoFlag;                                                                   // 0x000C (size: 0x4)
    int32 HearNeedLevel;                                                              // 0x0010 (size: 0x4)
    float SearchBase;                                                                 // 0x0014 (size: 0x4)
    int32 SubRelation;                                                                // 0x0018 (size: 0x4)
    int32 SearchLock;                                                                 // 0x001C (size: 0x4)
    TArray<int32> InfoDataList;                                                       // 0x0020 (size: 0x10)
    TArray<FString> SearchFailedTalkList;                                             // 0x0030 (size: 0x10)
    int32 SearchFailedBalloonType;                                                    // 0x0040 (size: 0x4)

}; // Size: 0x48

struct FNPCSpawnData : public FTableRowBase
{
    TArray<FNPCSpawnEventFlag> EventFlag;                                             // 0x0008 (size: 0x10)
    bool CheckOR;                                                                     // 0x0018 (size: 0x1)
    bool IsDelete;                                                                    // 0x0019 (size: 0x1)
    FVector Offset;                                                                   // 0x001C (size: 0xC)
    int32 EventID;                                                                    // 0x0028 (size: 0x4)
    FName EventName;                                                                  // 0x002C (size: 0x8)

}; // Size: 0x38

struct FNPCSpawnEventFlag
{
    int32 Index;                                                                      // 0x0000 (size: 0x4)
    bool Flag;                                                                        // 0x0004 (size: 0x1)

}; // Size: 0x8

struct FNarrationDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName NarrationSet;                                                               // 0x000C (size: 0x8)
    bool HeightCentering;                                                             // 0x0014 (size: 0x1)
    bool ShowFrame;                                                                   // 0x0015 (size: 0x1)
    bool ShowBackground;                                                              // 0x0016 (size: 0x1)
    FName FlashbackLabel;                                                             // 0x0018 (size: 0x8)
    int32 FlashbackColor;                                                             // 0x0020 (size: 0x4)
    TArray<FNarrationTextGroup> TextGroup;                                            // 0x0028 (size: 0x10)
    float AutoNextTime;                                                               // 0x0038 (size: 0x4)

}; // Size: 0x40

struct FNarrationTextGroup
{
    int32 GroupID;                                                                    // 0x0000 (size: 0x4)
    FName Text;                                                                       // 0x0004 (size: 0x8)
    int32 Justification;                                                              // 0x000C (size: 0x4)
    bool DisableFadeAnimation;                                                        // 0x0010 (size: 0x1)

}; // Size: 0x14

struct FNextMapInfo
{
    FName MapName;                                                                    // 0x0000 (size: 0x8)
    ELevelTriggerID ReqTrigger;                                                       // 0x0008 (size: 0x1)
    int32 MapIndex;                                                                   // 0x000C (size: 0x4)
    bool UseFadeUI;                                                                   // 0x0010 (size: 0x1)
    ELEVEL_TYPE levelType;                                                            // 0x0011 (size: 0x1)
    bool ChangeBGM;                                                                   // 0x0012 (size: 0x1)
    bool IsSwichActive;                                                               // 0x0013 (size: 0x1)

}; // Size: 0x14

struct FNextPurposeData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName BelongMainStory;                                                            // 0x000C (size: 0x8)
    int32 ShowStartFlag;                                                              // 0x0014 (size: 0x4)
    int32 ShowEndFlag;                                                                // 0x0018 (size: 0x4)
    FName TextLabel;                                                                  // 0x001C (size: 0x8)
    bool ShowMessage;                                                                 // 0x0024 (size: 0x1)
    int32 ShowFlag;                                                                   // 0x0028 (size: 0x4)

}; // Size: 0x30

struct FNoticeArgs
{
    int32 IntParam0;                                                                  // 0x0000 (size: 0x4)
    FName NameParam0;                                                                 // 0x0004 (size: 0x8)
    TArray<int32> IntParams;                                                          // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FNoticeDelegateBP_Data
{
}; // Size: 0x10

struct FNpcEventData
{
    bool IsSwoon;                                                                     // 0x0000 (size: 0x1)
    ENpcSwoonType SwoonType;                                                          // 0x0001 (size: 0x1)
    TArray<bool> IsPurchasedItem;                                                     // 0x0008 (size: 0x10)
    int32 PurchaseRestock;                                                            // 0x0018 (size: 0x4)
    bool HearFlag;                                                                    // 0x001C (size: 0x1)
    ETimeZoneType SwoonTimeZone;                                                      // 0x001D (size: 0x1)

}; // Size: 0x20

struct FObjectVisibilityData
{
}; // Size: 0x20

struct FOnClosedPartySplitParam
{
    TMap<class EPlayableCharacterID, class EPARTY_SPLIT_PLACEMENT_POSITION> PlacementResult; // 0x0000 (size: 0x50)
    EPARTY_SPLIT_CLOSE_REASON CloseReason;                                            // 0x0050 (size: 0x1)

}; // Size: 0x58

struct FOptionGroupData : public FTableRowBase
{
    FName GroupTitle;                                                                 // 0x0008 (size: 0x8)
    TArray<FOptionItemData> ItemData;                                                 // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FOptionItemData : public FTableRowBase
{
    EOPTION_ITEM_KIND OptionKind;                                                     // 0x0008 (size: 0x1)
    bool OnlyPC;                                                                      // 0x0009 (size: 0x1)
    FName ItemText1;                                                                  // 0x000C (size: 0x8)
    FName ItemText2;                                                                  // 0x0014 (size: 0x8)
    FName DescriptionText;                                                            // 0x001C (size: 0x8)
    EOPTION_WIDGET_KIND WidgetKind;                                                   // 0x0024 (size: 0x1)
    int32 DefaultValue;                                                               // 0x0028 (size: 0x4)
    FName Icon;                                                                       // 0x002C (size: 0x8)
    TArray<FName> ItemTextList;                                                       // 0x0038 (size: 0x10)

}; // Size: 0x48

struct FOptionItemLabelSet : public FTableRowBase
{
    FName ItemText1;                                                                  // 0x0008 (size: 0x8)
    FName ItemText2;                                                                  // 0x0010 (size: 0x8)

}; // Size: 0x18

struct FOptionalParts
{
    class UStaticMesh* m_cOptionalParts;                                              // 0x0000 (size: 0x8)
    class UStaticMesh* m_cOptionalPartsLeft;                                          // 0x0008 (size: 0x8)
    class UStaticMesh* m_cOptionalPartsRight;                                         // 0x0010 (size: 0x8)
    FVector m_vPosition;                                                              // 0x0018 (size: 0xC)
    bool m_bIsSnapGrid;                                                               // 0x0024 (size: 0x1)
    FVector m_vOffset;                                                                // 0x0028 (size: 0xC)
    FRotator m_qRotate;                                                               // 0x0034 (size: 0xC)
    bool m_bIsPatternX;                                                               // 0x0040 (size: 0x1)
    bool m_bIsPatternY;                                                               // 0x0041 (size: 0x1)
    bool m_bIsPatternAround;                                                          // 0x0042 (size: 0x1)
    bool m_bIsPatternBack;                                                            // 0x0043 (size: 0x1)
    FVector m_vInterval;                                                              // 0x0044 (size: 0xC)
    bool m_bIsOverlapPost;                                                            // 0x0050 (size: 0x1)

}; // Size: 0x58

struct FPS5VibrationData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    class USoundWave* VibrationAsset;                                                 // 0x0010 (size: 0x8)

}; // Size: 0x18

struct FPartyChat : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName EventLabel;                                                                 // 0x000C (size: 0x8)
    EPARTY_CHAT_TYPE PartyChatType;                                                   // 0x0014 (size: 0x1)
    FName MainStoryTaskBegin;                                                         // 0x0018 (size: 0x8)
    FName MainStoryTaskEnd;                                                           // 0x0020 (size: 0x8)
    TArray<FName> OccurLevelLabels;                                                   // 0x0028 (size: 0x10)
    FName TitleTextLabel;                                                             // 0x0038 (size: 0x8)
    FName RelatedMainStory;                                                           // 0x0040 (size: 0x8)
    TArray<EPlayableCharacterID> RequiredCharacter;                                   // 0x0048 (size: 0x10)
    bool IgnoreRequiredCharacter;                                                     // 0x0058 (size: 0x1)
    int32 NeedLevelChangeCount;                                                       // 0x005C (size: 0x4)
    int32 BurnTorchCountLimit;                                                        // 0x0060 (size: 0x4)
    bool IsIgnoreFixedPartyMode;                                                      // 0x0064 (size: 0x1)

}; // Size: 0x68

struct FPartyChatSaveData
{
    int32 PartyChatFlg;                                                               // 0x0000 (size: 0x4)
    int32 State;                                                                      // 0x0004 (size: 0x4)
    bool Flag;                                                                        // 0x0008 (size: 0x1)
    int32 PlayedTimeZone;                                                             // 0x000C (size: 0x4)
    int32 PlayedLevelId;                                                              // 0x0010 (size: 0x4)

}; // Size: 0x14

struct FPartyFollowData
{
}; // Size: 0x94

struct FPlacateNeedItem
{
    FName ItemLabel;                                                                  // 0x0000 (size: 0x8)
    int32 ItemNum;                                                                    // 0x0008 (size: 0x4)

}; // Size: 0xC

struct FPlacementData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    uint8 PlacementType;                                                              // 0x000C (size: 0x1)
    int32 MainScenarioType;                                                           // 0x0010 (size: 0x4)
    int32 MainScenarioID;                                                             // 0x0014 (size: 0x4)
    FName ResourceLabel;                                                              // 0x0018 (size: 0x8)
    bool InvalidRadarIcon;                                                            // 0x0020 (size: 0x1)
    bool IgnoreGravity;                                                               // 0x0021 (size: 0x1)
    bool IndoorFlag;                                                                  // 0x0022 (size: 0x1)
    int32 HouseInFloor;                                                               // 0x0024 (size: 0x4)
    float TriggerScaleX;                                                              // 0x0028 (size: 0x4)
    float TriggerScaleY;                                                              // 0x002C (size: 0x4)
    float TriggerScaleZ;                                                              // 0x0030 (size: 0x4)
    int32 SpawnStartFlag;                                                             // 0x0034 (size: 0x4)
    int32 SpawnEndFlag;                                                               // 0x0038 (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE TimeZoneSpawnType;                                         // 0x003C (size: 0x1)
    int32 SpawnStartDelayCount;                                                       // 0x0040 (size: 0x4)
    int32 SpawnEndDelayCount;                                                         // 0x0044 (size: 0x4)
    EPlayableCharacterID CompProloguePlayerID;                                        // 0x0048 (size: 0x1)
    bool NorSpawnPrologue;                                                            // 0x0049 (size: 0x1)
    bool NotSpawnFinal;                                                               // 0x004A (size: 0x1)
    TArray<FName> NotCoexistencePlacementLabel;                                       // 0x0050 (size: 0x10)
    FString SpawnDir;                                                                 // 0x0060 (size: 0x10)
    float SpawnPosX;                                                                  // 0x0070 (size: 0x4)
    float SpawnPosY;                                                                  // 0x0074 (size: 0x4)
    float SpawnPosZ;                                                                  // 0x0078 (size: 0x4)
    float FaintSpawnPosX;                                                             // 0x007C (size: 0x4)
    float FaintSpawnPosY;                                                             // 0x0080 (size: 0x4)
    float FaintSpawnPosZ;                                                             // 0x0084 (size: 0x4)
    float EmotionOffsetX;                                                             // 0x0088 (size: 0x4)
    float EmotionOffsetY;                                                             // 0x008C (size: 0x4)
    float EmotionOffsetZ;                                                             // 0x0090 (size: 0x4)
    FName CaptionTextLabel;                                                           // 0x0094 (size: 0x8)
    uint8 SinglePlayMotion;                                                           // 0x009C (size: 0x1)
    FString Emotion;                                                                  // 0x00A0 (size: 0x10)
    uint8 Permission_FCmd;                                                            // 0x00B0 (size: 0x1)
    int32 AllowBanFlag_FCmd;                                                          // 0x00B4 (size: 0x4)
    bool FixDirInFieldCommand;                                                        // 0x00B8 (size: 0x1)
    FString EventType_A;                                                              // 0x00C0 (size: 0x10)
    int32 EventStartFlag_A;                                                           // 0x00D0 (size: 0x4)
    int32 EventEndFlag_A;                                                             // 0x00D4 (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE TimeZoneTriggerType_A;                                     // 0x00D8 (size: 0x1)
    FName EventParam_A_1_ID;                                                          // 0x00DC (size: 0x8)
    FName EventParam_A_1;                                                             // 0x00E4 (size: 0x8)
    FName EventParam_A_2_ID;                                                          // 0x00EC (size: 0x8)
    FName EventParam_A_2;                                                             // 0x00F4 (size: 0x8)
    FName EventParam_A_3_ID;                                                          // 0x00FC (size: 0x8)
    FName EventParam_A_3;                                                             // 0x0104 (size: 0x8)
    FName EventParam_A_4_ID;                                                          // 0x010C (size: 0x8)
    FName EventParam_A_4;                                                             // 0x0114 (size: 0x8)
    FName EventParam_A_5_ID;                                                          // 0x011C (size: 0x8)
    FName EventParam_A_5;                                                             // 0x0124 (size: 0x8)
    FName EventParam_A_6_ID;                                                          // 0x012C (size: 0x8)
    FName EventParam_A_6;                                                             // 0x0134 (size: 0x8)
    FName EventParam_A_7_ID;                                                          // 0x013C (size: 0x8)
    FName EventParam_A_7;                                                             // 0x0144 (size: 0x8)
    FName EventParam_A_8_ID;                                                          // 0x014C (size: 0x8)
    FName EventParam_A_8;                                                             // 0x0154 (size: 0x8)
    FName EventParam_A_9_ID;                                                          // 0x015C (size: 0x8)
    FName EventParam_A_9;                                                             // 0x0164 (size: 0x8)
    FName EventParam_A_10_ID;                                                         // 0x016C (size: 0x8)
    FName EventParam_A_10;                                                            // 0x0174 (size: 0x8)
    FName EventLabel_A;                                                               // 0x017C (size: 0x8)
    FString EventType_B;                                                              // 0x0188 (size: 0x10)
    int32 EventStartFlag_B;                                                           // 0x0198 (size: 0x4)
    int32 EventEndFlag_B;                                                             // 0x019C (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE TimeZoneTriggerType_B;                                     // 0x01A0 (size: 0x1)
    FName EventParam_B_1_ID;                                                          // 0x01A4 (size: 0x8)
    FName EventParam_B_1;                                                             // 0x01AC (size: 0x8)
    FName EventParam_B_2_ID;                                                          // 0x01B4 (size: 0x8)
    FName EventParam_B_2;                                                             // 0x01BC (size: 0x8)
    FName EventParam_B_3_ID;                                                          // 0x01C4 (size: 0x8)
    FName EventParam_B_3;                                                             // 0x01CC (size: 0x8)
    FName EventParam_B_4_ID;                                                          // 0x01D4 (size: 0x8)
    FName EventParam_B_4;                                                             // 0x01DC (size: 0x8)
    FName EventParam_B_5_ID;                                                          // 0x01E4 (size: 0x8)
    FName EventParam_B_5;                                                             // 0x01EC (size: 0x8)
    FName EventParam_B_6_ID;                                                          // 0x01F4 (size: 0x8)
    FName EventParam_B_6;                                                             // 0x01FC (size: 0x8)
    FName EventParam_B_7_ID;                                                          // 0x0204 (size: 0x8)
    FName EventParam_B_7;                                                             // 0x020C (size: 0x8)
    FName EventParam_B_8_ID;                                                          // 0x0214 (size: 0x8)
    FName EventParam_B_8;                                                             // 0x021C (size: 0x8)
    FName EventParam_B_9_ID;                                                          // 0x0224 (size: 0x8)
    FName EventParam_B_9;                                                             // 0x022C (size: 0x8)
    FName EventParam_B_10_ID;                                                         // 0x0234 (size: 0x8)
    FName EventParam_B_10;                                                            // 0x023C (size: 0x8)
    FName EventLabel_B;                                                               // 0x0244 (size: 0x8)
    FString EventType_C;                                                              // 0x0250 (size: 0x10)
    int32 EventStartFlag_C;                                                           // 0x0260 (size: 0x4)
    int32 EventEndFlag_C;                                                             // 0x0264 (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE TimeZoneTriggerType_C;                                     // 0x0268 (size: 0x1)
    FName EventParam_C_1_ID;                                                          // 0x026C (size: 0x8)
    FName EventParam_C_1;                                                             // 0x0274 (size: 0x8)
    FName EventParam_C_2_ID;                                                          // 0x027C (size: 0x8)
    FName EventParam_C_2;                                                             // 0x0284 (size: 0x8)
    FName EventParam_C_3_ID;                                                          // 0x028C (size: 0x8)
    FName EventParam_C_3;                                                             // 0x0294 (size: 0x8)
    FName EventParam_C_4_ID;                                                          // 0x029C (size: 0x8)
    FName EventParam_C_4;                                                             // 0x02A4 (size: 0x8)
    FName EventParam_C_5_ID;                                                          // 0x02AC (size: 0x8)
    FName EventParam_C_5;                                                             // 0x02B4 (size: 0x8)
    FName EventParam_C_6_ID;                                                          // 0x02BC (size: 0x8)
    FName EventParam_C_6;                                                             // 0x02C4 (size: 0x8)
    FName EventParam_C_7_ID;                                                          // 0x02CC (size: 0x8)
    FName EventParam_C_7;                                                             // 0x02D4 (size: 0x8)
    FName EventParam_C_8_ID;                                                          // 0x02DC (size: 0x8)
    FName EventParam_C_8;                                                             // 0x02E4 (size: 0x8)
    FName EventParam_C_9_ID;                                                          // 0x02EC (size: 0x8)
    FName EventParam_C_9;                                                             // 0x02F4 (size: 0x8)
    FName EventParam_C_10_ID;                                                         // 0x02FC (size: 0x8)
    FName EventParam_C_10;                                                            // 0x0304 (size: 0x8)
    FName EventLabel_C;                                                               // 0x030C (size: 0x8)
    FString EventType_D;                                                              // 0x0318 (size: 0x10)
    int32 EventStartFlag_D;                                                           // 0x0328 (size: 0x4)
    int32 EventEndFlag_D;                                                             // 0x032C (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE TimeZoneTriggerType_D;                                     // 0x0330 (size: 0x1)
    FName EventParam_D_1_ID;                                                          // 0x0334 (size: 0x8)
    FName EventParam_D_1;                                                             // 0x033C (size: 0x8)
    FName EventParam_D_2_ID;                                                          // 0x0344 (size: 0x8)
    FName EventParam_D_2;                                                             // 0x034C (size: 0x8)
    FName EventParam_D_3_ID;                                                          // 0x0354 (size: 0x8)
    FName EventParam_D_3;                                                             // 0x035C (size: 0x8)
    FName EventParam_D_4_ID;                                                          // 0x0364 (size: 0x8)
    FName EventParam_D_4;                                                             // 0x036C (size: 0x8)
    FName EventParam_D_5_ID;                                                          // 0x0374 (size: 0x8)
    FName EventParam_D_5;                                                             // 0x037C (size: 0x8)
    FName EventParam_D_6_ID;                                                          // 0x0384 (size: 0x8)
    FName EventParam_D_6;                                                             // 0x038C (size: 0x8)
    FName EventParam_D_7_ID;                                                          // 0x0394 (size: 0x8)
    FName EventParam_D_7;                                                             // 0x039C (size: 0x8)
    FName EventParam_D_8_ID;                                                          // 0x03A4 (size: 0x8)
    FName EventParam_D_8;                                                             // 0x03AC (size: 0x8)
    FName EventParam_D_9_ID;                                                          // 0x03B4 (size: 0x8)
    FName EventParam_D_9;                                                             // 0x03BC (size: 0x8)
    FName EventParam_D_10_ID;                                                         // 0x03C4 (size: 0x8)
    FName EventParam_D_10;                                                            // 0x03CC (size: 0x8)
    FName EventLabel_D;                                                               // 0x03D4 (size: 0x8)
    FString EventType_E;                                                              // 0x03E0 (size: 0x10)
    int32 EventStartFlag_E;                                                           // 0x03F0 (size: 0x4)
    int32 EventEndFlag_E;                                                             // 0x03F4 (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE TimeZoneTriggerType_E;                                     // 0x03F8 (size: 0x1)
    FName EventParam_E_1_ID;                                                          // 0x03FC (size: 0x8)
    FName EventParam_E_1;                                                             // 0x0404 (size: 0x8)
    FName EventParam_E_2_ID;                                                          // 0x040C (size: 0x8)
    FName EventParam_E_2;                                                             // 0x0414 (size: 0x8)
    FName EventParam_E_3_ID;                                                          // 0x041C (size: 0x8)
    FName EventParam_E_3;                                                             // 0x0424 (size: 0x8)
    FName EventParam_E_4_ID;                                                          // 0x042C (size: 0x8)
    FName EventParam_E_4;                                                             // 0x0434 (size: 0x8)
    FName EventParam_E_5_ID;                                                          // 0x043C (size: 0x8)
    FName EventParam_E_5;                                                             // 0x0444 (size: 0x8)
    FName EventParam_E_6_ID;                                                          // 0x044C (size: 0x8)
    FName EventParam_E_6;                                                             // 0x0454 (size: 0x8)
    FName EventParam_E_7_ID;                                                          // 0x045C (size: 0x8)
    FName EventParam_E_7;                                                             // 0x0464 (size: 0x8)
    FName EventParam_E_8_ID;                                                          // 0x046C (size: 0x8)
    FName EventParam_E_8;                                                             // 0x0474 (size: 0x8)
    FName EventParam_E_9_ID;                                                          // 0x047C (size: 0x8)
    FName EventParam_E_9;                                                             // 0x0484 (size: 0x8)
    FName EventParam_E_10_ID;                                                         // 0x048C (size: 0x8)
    FName EventParam_E_10;                                                            // 0x0494 (size: 0x8)
    FName EventLabel_E;                                                               // 0x049C (size: 0x8)
    FString EventType_F;                                                              // 0x04A8 (size: 0x10)
    int32 EventStartFlag_F;                                                           // 0x04B8 (size: 0x4)
    int32 EventEndFlag_F;                                                             // 0x04BC (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE TimeZoneTriggerType_F;                                     // 0x04C0 (size: 0x1)
    FName EventParam_F_1;                                                             // 0x04C4 (size: 0x8)
    FName EventParam_F_2;                                                             // 0x04CC (size: 0x8)
    FName EventParam_F_3;                                                             // 0x04D4 (size: 0x8)
    FName EventParam_F_4;                                                             // 0x04DC (size: 0x8)
    FName EventParam_F_5;                                                             // 0x04E4 (size: 0x8)
    FName EventParam_F_6;                                                             // 0x04EC (size: 0x8)
    FName EventParam_F_7;                                                             // 0x04F4 (size: 0x8)
    FName EventParam_F_8;                                                             // 0x04FC (size: 0x8)
    FName EventParam_F_9;                                                             // 0x0504 (size: 0x8)
    FName EventParam_F_10;                                                            // 0x050C (size: 0x8)
    FName EventLabel_F;                                                               // 0x0514 (size: 0x8)
    FString EventType_G;                                                              // 0x0520 (size: 0x10)
    int32 EventStartFlag_G;                                                           // 0x0530 (size: 0x4)
    int32 EventEndFlag_G;                                                             // 0x0534 (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE TimeZoneTriggerType_G;                                     // 0x0538 (size: 0x1)
    FName EventParam_G_1;                                                             // 0x053C (size: 0x8)
    FName EventParam_G_2;                                                             // 0x0544 (size: 0x8)
    FName EventParam_G_3;                                                             // 0x054C (size: 0x8)
    FName EventParam_G_4;                                                             // 0x0554 (size: 0x8)
    FName EventParam_G_5;                                                             // 0x055C (size: 0x8)
    FName EventParam_G_6;                                                             // 0x0564 (size: 0x8)
    FName EventParam_G_7;                                                             // 0x056C (size: 0x8)
    FName EventParam_G_8;                                                             // 0x0574 (size: 0x8)
    FName EventParam_G_9;                                                             // 0x057C (size: 0x8)
    FName EventParam_G_10;                                                            // 0x0584 (size: 0x8)
    FName EventLabel_G;                                                               // 0x058C (size: 0x8)
    FString EventType_H;                                                              // 0x0598 (size: 0x10)
    int32 EventStartFlag_H;                                                           // 0x05A8 (size: 0x4)
    int32 EventEndFlag_H;                                                             // 0x05AC (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE TimeZoneTriggerType_H;                                     // 0x05B0 (size: 0x1)
    FName EventParam_H_1;                                                             // 0x05B4 (size: 0x8)
    FName EventParam_H_2;                                                             // 0x05BC (size: 0x8)
    FName EventParam_H_3;                                                             // 0x05C4 (size: 0x8)
    FName EventParam_H_4;                                                             // 0x05CC (size: 0x8)
    FName EventParam_H_5;                                                             // 0x05D4 (size: 0x8)
    FName EventParam_H_6;                                                             // 0x05DC (size: 0x8)
    FName EventParam_H_7;                                                             // 0x05E4 (size: 0x8)
    FName EventParam_H_8;                                                             // 0x05EC (size: 0x8)
    FName EventParam_H_9;                                                             // 0x05F4 (size: 0x8)
    FName EventParam_H_10;                                                            // 0x05FC (size: 0x8)
    FName EventLabel_H;                                                               // 0x0604 (size: 0x8)
    FString EventType_I;                                                              // 0x0610 (size: 0x10)
    int32 EventStartFlag_I;                                                           // 0x0620 (size: 0x4)
    int32 EventEndFlag_I;                                                             // 0x0624 (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE TimeZoneTriggerType_I;                                     // 0x0628 (size: 0x1)
    FName EventParam_I_1;                                                             // 0x062C (size: 0x8)
    FName EventParam_I_2;                                                             // 0x0634 (size: 0x8)
    FName EventParam_I_3;                                                             // 0x063C (size: 0x8)
    FName EventParam_I_4;                                                             // 0x0644 (size: 0x8)
    FName EventParam_I_5;                                                             // 0x064C (size: 0x8)
    FName EventParam_I_6;                                                             // 0x0654 (size: 0x8)
    FName EventParam_I_7;                                                             // 0x065C (size: 0x8)
    FName EventParam_I_8;                                                             // 0x0664 (size: 0x8)
    FName EventParam_I_9;                                                             // 0x066C (size: 0x8)
    FName EventParam_I_10;                                                            // 0x0674 (size: 0x8)
    FName EventLabel_I;                                                               // 0x067C (size: 0x8)
    FString EventType_J;                                                              // 0x0688 (size: 0x10)
    int32 EventStartFlag_J;                                                           // 0x0698 (size: 0x4)
    int32 EventEndFlag_J;                                                             // 0x069C (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE TimeZoneTriggerType_J;                                     // 0x06A0 (size: 0x1)
    FName EventParam_J_1;                                                             // 0x06A4 (size: 0x8)
    FName EventParam_J_2;                                                             // 0x06AC (size: 0x8)
    FName EventParam_J_3;                                                             // 0x06B4 (size: 0x8)
    FName EventParam_J_4;                                                             // 0x06BC (size: 0x8)
    FName EventParam_J_5;                                                             // 0x06C4 (size: 0x8)
    FName EventParam_J_6;                                                             // 0x06CC (size: 0x8)
    FName EventParam_J_7;                                                             // 0x06D4 (size: 0x8)
    FName EventParam_J_8;                                                             // 0x06DC (size: 0x8)
    FName EventParam_J_9;                                                             // 0x06E4 (size: 0x8)
    FName EventParam_J_10;                                                            // 0x06EC (size: 0x8)
    FName EventLabel_J;                                                               // 0x06F4 (size: 0x8)

}; // Size: 0x700

struct FPlacementEventParamSet
{
    int32 ParamSetIndex;                                                              // 0x0000 (size: 0x4)
    FString EventType;                                                                // 0x0008 (size: 0x10)
    int32 EventStartFlag;                                                             // 0x0018 (size: 0x4)
    int32 EventEndFlag;                                                               // 0x001C (size: 0x4)
    ETIMEZONE_TRIGGER_TYPE TimeZoneTriggerType;                                       // 0x0020 (size: 0x1)
    FName EventParam_1;                                                               // 0x0024 (size: 0x8)
    FName EventParam_2;                                                               // 0x002C (size: 0x8)
    FName EventParam_3;                                                               // 0x0034 (size: 0x8)
    FName EventParam_4;                                                               // 0x003C (size: 0x8)
    FName EventParam_5;                                                               // 0x0044 (size: 0x8)
    FName EventParam_6;                                                               // 0x004C (size: 0x8)
    FName EventParam_7;                                                               // 0x0054 (size: 0x8)
    FName EventParam_8;                                                               // 0x005C (size: 0x8)
    FName EventParam_9;                                                               // 0x0064 (size: 0x8)
    FName EventParam_10;                                                              // 0x006C (size: 0x8)
    FName EventLabel;                                                                 // 0x0074 (size: 0x8)

}; // Size: 0x80

struct FPlacementLabelInfo : public FTableRowBase
{
    TArray<FName> PlaceLabelArray;                                                    // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FPlantResourceData
{
    class UStaticMesh* m_Mesh;                                                        // 0x0000 (size: 0x8)
    int32 m_Ratio;                                                                    // 0x0008 (size: 0x4)
    int32 m_GenerateNum;                                                              // 0x000C (size: 0x4)

}; // Size: 0x10

struct FPlayAction
{
    EKSCharacterAction ActionID;                                                      // 0x0000 (size: 0x1)
    int32 StartFrame;                                                                 // 0x0004 (size: 0x4)
    bool Force;                                                                       // 0x0008 (size: 0x1)
    EKSCharacterAnimationLoop ManualLoop;                                             // 0x0009 (size: 0x1)

}; // Size: 0xC

struct FPlayRequest
{
    int32 PlayIndex;                                                                  // 0x0000 (size: 0x4)
    FName Label;                                                                      // 0x0004 (size: 0x8)
    bool Loop;                                                                        // 0x000C (size: 0x1)
    int32 LoopInterval;                                                               // 0x0010 (size: 0x4)
    float Power;                                                                      // 0x0014 (size: 0x4)

}; // Size: 0x18

struct FPlayableCharacterData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName DisplayName;                                                                // 0x000C (size: 0x8)
    ECharacterRole CharacterRole;                                                     // 0x0014 (size: 0x1)
    TArray<FName> ResourceLabel;                                                      // 0x0018 (size: 0x10)
    FName GuestResourceLabel;                                                         // 0x0028 (size: 0x8)
    TArray<FName> VoiceCueSheet_ja;                                                   // 0x0030 (size: 0x10)
    TArray<FName> VoiceCueSheet_en;                                                   // 0x0040 (size: 0x10)
    FName VoiceSet;                                                                   // 0x0050 (size: 0x8)
    TArray<ESpecialActionType> SpecialActionList;                                     // 0x0058 (size: 0x10)
    FName PotentialityActionLabel;                                                    // 0x0068 (size: 0x8)
    FName SecondPotentialityActionLabel;                                              // 0x0070 (size: 0x8)
    int32 SecondPotentialityActionFlag;                                               // 0x0078 (size: 0x4)
    EBATTLE_STYLE_TYPE UniqueStyle;                                                   // 0x007C (size: 0x1)
    int32 ReleaseStyleFlag;                                                           // 0x0080 (size: 0x4)
    int32 StyleAvailableCount;                                                        // 0x0084 (size: 0x4)
    int32 InitLevel;                                                                  // 0x0088 (size: 0x4)
    FCharacterParam ParameterRevision;                                                // 0x008C (size: 0x34)
    EWEAPON_STANCE WeaponStance;                                                      // 0x00C0 (size: 0x1)
    EWEAPON_CATEGORY MainWeapon;                                                      // 0x00C1 (size: 0x1)
    FSaveEquipmentData FirstEquipment;                                                // 0x00C8 (size: 0x60)
    EJOB_TYPE FirstJob;                                                               // 0x0128 (size: 0x1)
    FFieldCommandInfo FieldCommandInfo;                                               // 0x0130 (size: 0x18)
    int32 MainMissionPlayingFlag;                                                     // 0x0148 (size: 0x4)
    FName SymbolLabel;                                                                // 0x014C (size: 0x8)
    FName SymbolWhLabel;                                                              // 0x0154 (size: 0x8)
    FName DayPortraitLabel;                                                           // 0x015C (size: 0x8)
    FName DayPortraitBgLabel;                                                         // 0x0164 (size: 0x8)
    FName NightPortraitLabel;                                                         // 0x016C (size: 0x8)
    FName NightPortraitBgLabel;                                                       // 0x0174 (size: 0x8)
    FName PortraitNameLabel;                                                          // 0x017C (size: 0x8)
    TArray<FAdvancedAbility> AdvancedAbility;                                         // 0x0188 (size: 0x10)
    FName TextInfoLabel;                                                              // 0x0198 (size: 0x8)
    TArray<FCharacterCostumeInfo> CostumeList;                                        // 0x01A0 (size: 0x10)
    FName CharmEnemyLabel;                                                            // 0x01B0 (size: 0x8)

}; // Size: 0x1B8

struct FPlayerBackpack
{
    int32 Money;                                                                      // 0x0000 (size: 0x4)
    TArray<FSaveBackPackItem> ItemList;                                               // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FPlayerLocation
{
    FName levelName;                                                                  // 0x0000 (size: 0x8)
    FVector Position;                                                                 // 0x0008 (size: 0xC)
    int32 levelId;                                                                    // 0x0014 (size: 0x4)
    uint8 RecentLevelTriggerId;                                                       // 0x0018 (size: 0x1)
    EKSCharacterDir Dir;                                                              // 0x0019 (size: 0x1)

}; // Size: 0x1C

struct FPlayerMoveHistory
{
    FVector vLocation;                                                                // 0x0000 (size: 0xC)
    uint8 nDir;                                                                       // 0x000C (size: 0x1)
    EKSCharacterMoveMode eMoveMode;                                                   // 0x0016 (size: 0x1)

}; // Size: 0x18

struct FPlayerParty
{
    TArray<int32> MainMemberID;                                                       // 0x0000 (size: 0x10)
    TArray<int32> SubMemberID;                                                        // 0x0010 (size: 0x10)
    FVector CameraLockPos;                                                            // 0x0020 (size: 0xC)
    int32 LastBgmID;                                                                  // 0x002C (size: 0x4)
    int32 levelId;                                                                    // 0x0030 (size: 0x4)
    FVector Position;                                                                 // 0x0034 (size: 0xC)
    uint8 Dir;                                                                        // 0x0040 (size: 0x1)

}; // Size: 0x48

struct FPlayerVoiceList : public FTableRowBase
{
    TArray<FName> VoiceLabel;                                                         // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FPlayerVoiceSet : public FTableRowBase
{
    TArray<FPlayerVoiceList> VoiceList;                                               // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FPotentialityActionData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 ReleaseFlag;                                                                // 0x000C (size: 0x4)
    FName NameTextInMenu;                                                             // 0x0010 (size: 0x8)
    FName DetailTextInMenu;                                                           // 0x0018 (size: 0x8)
    FName NameTextinBattle;                                                           // 0x0020 (size: 0x8)
    FName DetailTextInBattle;                                                         // 0x0028 (size: 0x8)
    FName DetailTextInPlayerSelect;                                                   // 0x0030 (size: 0x8)
    EPOTENTIALITY_ACTION_TYPE ActionType;                                             // 0x0038 (size: 0x1)
    int32 ActionPointInit;                                                            // 0x003C (size: 0x4)
    int32 ActionPointMax;                                                             // 0x0040 (size: 0x4)
    TArray<FName> AddAbilityList;                                                     // 0x0048 (size: 0x10)
    FLinearColor EffectColor;                                                         // 0x0058 (size: 0x10)
    FName GageIconLabel;                                                              // 0x0068 (size: 0x8)
    FName GageEffectTexLabel;                                                         // 0x0070 (size: 0x8)
    FName AuraEffectLabel;                                                            // 0x0078 (size: 0x8)

}; // Size: 0x80

struct FPreparationData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 PreparationID;                                                              // 0x000C (size: 0x4)
    FName DisplayName;                                                                // 0x0010 (size: 0x8)
    FName BuildUpDisplayName;                                                         // 0x0018 (size: 0x8)
    FName Detail;                                                                     // 0x0020 (size: 0x8)
    FName Material;                                                                   // 0x0028 (size: 0x8)
    EATTRIBUTE_TYPE Attribute;                                                        // 0x0030 (size: 0x1)
    int32 BaseCount;                                                                  // 0x0034 (size: 0x4)
    EBATTLE_ACTION_ORDER_ESTIMATE_TYPE EstimateOrderType;                             // 0x0038 (size: 0x1)
    EBATTLE_ACTION_ORDER_ESTIMATE_TYPE BuildUpEstimateOrderType;                      // 0x0039 (size: 0x1)
    int32 EstimateOrderCount;                                                         // 0x003C (size: 0x4)
    TArray<FAilmentHandler> Ailment;                                                  // 0x0040 (size: 0x10)
    TArray<FAilmentHandler> BuildUpAilment;                                           // 0x0050 (size: 0x10)
    TSoftObjectPtr<ULevelSequence> ActionCommandSequencer;                            // 0x0060 (size: 0x28)
    TSoftObjectPtr<ULevelSequence> BuildUpSequencer;                                  // 0x0088 (size: 0x28)
    bool IsBuildUp;                                                                   // 0x00B0 (size: 0x1)
    bool IsSpread;                                                                    // 0x00B1 (size: 0x1)
    bool IsRandom;                                                                    // 0x00B2 (size: 0x1)
    TArray<FName> AbilitySE;                                                          // 0x00B8 (size: 0x10)
    ETIMEZONE_TRIGGER_TYPE TimeZoneTrigger;                                           // 0x00C8 (size: 0x1)

}; // Size: 0xD0

struct FProceduralBuildingMeshDataSet
{
    class UStaticMesh* m_cGroundPost;                                                 // 0x0000 (size: 0x8)
    class UStaticMesh* m_cGroundLoopX;                                                // 0x0008 (size: 0x8)
    class UStaticMesh* m_cGroundLoopY;                                                // 0x0010 (size: 0x8)
    class UStaticMesh* m_cWallPost;                                                   // 0x0018 (size: 0x8)
    class UStaticMesh* m_cWallLoopX;                                                  // 0x0020 (size: 0x8)
    class UStaticMesh* m_cWallLoopY;                                                  // 0x0028 (size: 0x8)
    class UStaticMesh* m_cRoofEdgeStart;                                              // 0x0030 (size: 0x8)
    class UStaticMesh* m_cRoofEdgeLoop;                                               // 0x0038 (size: 0x8)
    class UStaticMesh* m_cRoofEdgeLoop2;                                              // 0x0040 (size: 0x8)
    class UStaticMesh* m_cRoofEdgeEnd;                                                // 0x0048 (size: 0x8)
    class UStaticMesh* m_cRoofCenterStart;                                            // 0x0050 (size: 0x8)
    class UStaticMesh* m_cRoofCenterLoop;                                             // 0x0058 (size: 0x8)
    class UStaticMesh* m_cRoofCenterLoop2;                                            // 0x0060 (size: 0x8)
    class UStaticMesh* m_cRoofCenterEnd;                                              // 0x0068 (size: 0x8)
    class UStaticMesh* m_cRoofTopEventStart;                                          // 0x0070 (size: 0x8)
    class UStaticMesh* m_cRoofTopEventLoop;                                           // 0x0078 (size: 0x8)
    class UStaticMesh* m_cRoofTopEventLoop2;                                          // 0x0080 (size: 0x8)
    class UStaticMesh* m_cRoofTopEventEnd;                                            // 0x0088 (size: 0x8)
    class UStaticMesh* m_cRoofTopOddStart;                                            // 0x0090 (size: 0x8)
    class UStaticMesh* m_cRoofTopOddLoop;                                             // 0x0098 (size: 0x8)
    class UStaticMesh* m_cRoofTopOddLoop2;                                            // 0x00A0 (size: 0x8)
    class UStaticMesh* m_cRoofTopOddEnd;                                              // 0x00A8 (size: 0x8)
    class UStaticMesh* m_cRoofSideLeft;                                               // 0x00B0 (size: 0x8)
    class UStaticMesh* m_cRoofSideLoop;                                               // 0x00B8 (size: 0x8)
    class UStaticMesh* m_cRoofSideRight;                                              // 0x00C0 (size: 0x8)
    class UStaticMesh* m_cRoofSidePost;                                               // 0x00C8 (size: 0x8)
    class UStaticMesh* m_cRoofSideTop;                                                // 0x00D0 (size: 0x8)
    class UStaticMesh* m_cRoofSideLoopRight;                                          // 0x00D8 (size: 0x8)
    class UStaticMesh* m_cRoofSideLoopLeft;                                           // 0x00E0 (size: 0x8)

}; // Size: 0xE8

struct FProcessEnemyEventData
{
    FName EventLabel;                                                                 // 0x0000 (size: 0x8)
    int32 EventFlagBegin;                                                             // 0x0008 (size: 0x4)
    int32 EventFlagEnd;                                                               // 0x000C (size: 0x4)
    FName PlayingMainStoryLabel;                                                      // 0x0010 (size: 0x8)

}; // Size: 0x18

struct FProcessItemNum : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    TArray<int32> NumTable;                                                           // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FPurchaseItemInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName ItemLabel;                                                                  // 0x000C (size: 0x8)
    int32 FCPrice;                                                                    // 0x0014 (size: 0x4)
    FName PossibleItemLabel;                                                          // 0x0018 (size: 0x8)
    int32 ObtainFlag;                                                                 // 0x0020 (size: 0x4)
    int32 ProperSteal;                                                                // 0x0024 (size: 0x4)
    int32 ProperBeg;                                                                  // 0x0028 (size: 0x4)
    ELineupTime LineupTime;                                                           // 0x002C (size: 0x1)
    TArray<int32> VisibleFlags;                                                       // 0x0030 (size: 0x10)
    TArray<int32> HiddenFlags;                                                        // 0x0040 (size: 0x10)
    FName MillionaireModeLavel;                                                       // 0x0050 (size: 0x8)
    bool IsUnlimited;                                                                 // 0x0058 (size: 0x1)
    bool BeSoldOut;                                                                   // 0x0059 (size: 0x1)

}; // Size: 0x60

struct FPurchaseListItem : public FTableRowBase
{
    int32 PurchaseIndex;                                                              // 0x0008 (size: 0x4)
    class UTexture2D* ItemIcon;                                                       // 0x0010 (size: 0x8)
    FText ItemListNameText;                                                           // 0x0018 (size: 0x18)
    FText ItemDialogNameText;                                                         // 0x0030 (size: 0x18)
    FText PriceText;                                                                  // 0x0048 (size: 0x18)
    FText InHandText;                                                                 // 0x0060 (size: 0x18)
    FLinearColor PriceTextColor;                                                      // 0x0078 (size: 0x10)
    bool ShowPriceUnit;                                                               // 0x0088 (size: 0x1)
    int32 Price;                                                                      // 0x008C (size: 0x4)
    bool IsSelect;                                                                    // 0x0090 (size: 0x1)
    int32 StealProbability;                                                           // 0x0094 (size: 0x4)
    bool IsBonusLottery;                                                              // 0x0098 (size: 0x1)
    FName ItemLabel;                                                                  // 0x009C (size: 0x8)

}; // Size: 0xA8

struct FRadarMapDestinationData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName MainStoryTask;                                                              // 0x000C (size: 0x8)
    FName levelName;                                                                  // 0x0014 (size: 0x8)
    LEVEL_AREA_TYPE LevelAreaType;                                                    // 0x001C (size: 0x1)
    TArray<FDestinationData> DestinationList;                                         // 0x0020 (size: 0x10)

}; // Size: 0x30

struct FRadarMapDisplayData
{
    FName PlacementLabel;                                                             // 0x0000 (size: 0x8)
    EOBJ_TYPE ObjectType;                                                             // 0x0008 (size: 0x1)
    FVector Location;                                                                 // 0x000C (size: 0xC)
    ETIMEZONE_TRIGGER_TYPE TimezoneType;                                              // 0x0018 (size: 0x1)
    int32 IconIndex;                                                                  // 0x001C (size: 0x4)
    FName EventLabel;                                                                 // 0x0020 (size: 0x8)
    EEventKind EventKind;                                                             // 0x0028 (size: 0x1)

}; // Size: 0x2C

struct FRadarMapIconParam
{
    uint8 IconType;                                                                   // 0x0000 (size: 0x1)
    ERADARMAP_ICON_OBJ_TYPE ObjType;                                                  // 0x0001 (size: 0x1)
    FName IconName;                                                                   // 0x0004 (size: 0x8)
    FName NextFieldName;                                                              // 0x000C (size: 0x8)
    FName RegistObjectName;                                                           // 0x0014 (size: 0x8)
    uint8 LevelTriggerID;                                                             // 0x001C (size: 0x1)
    FVector Position;                                                                 // 0x0020 (size: 0xC)
    EGameColor GameColorType;                                                         // 0x002C (size: 0x1)
    EGameColor RippleColorType;                                                       // 0x002D (size: 0x1)
    int32 TargetFrameIndex;                                                           // 0x0030 (size: 0x4)
    int32 TreasureBoxIndex;                                                           // 0x0034 (size: 0x4)
    bool IsVisibility;                                                                // 0x0038 (size: 0x1)
    int32 TargetCharaID;                                                              // 0x003C (size: 0x4)
    FName DestinationLabel;                                                           // 0x0040 (size: 0x8)

}; // Size: 0x48

struct FRadarMapNextTargetData
{
    bool IsFirstTrigger;                                                              // 0x0000 (size: 0x1)
    uint8 NextTriggerID;                                                              // 0x0001 (size: 0x1)
    FName ProgressLabel;                                                              // 0x0004 (size: 0x8)

}; // Size: 0xC

struct FRadarMapSubStoryData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 StartEventFlag;                                                             // 0x000C (size: 0x4)
    int32 EndEventFlag;                                                               // 0x0010 (size: 0x4)
    FName TargetLevelLabel;                                                           // 0x0014 (size: 0x8)
    ESUB_STORY_RADAR_ICON_TYPE RadarMapIconType;                                      // 0x001C (size: 0x1)
    TArray<ELevelTriggerID> TriggerID;                                                // 0x0020 (size: 0x10)

}; // Size: 0x30

struct FRandomItemData
{
    FName ItemLabel;                                                                  // 0x0000 (size: 0x8)
    int32 ItemNum;                                                                    // 0x0008 (size: 0x4)
    int32 Rate;                                                                       // 0x000C (size: 0x4)

}; // Size: 0x10

struct FRareEnemyParam
{
    bool RareEnemyFlag;                                                               // 0x0000 (size: 0x1)
    int32 RareEnemyRate;                                                              // 0x0004 (size: 0x4)
    int32 RareEnemyCnt_Low;                                                           // 0x0008 (size: 0x4)
    int32 RareEnemyCnt_Middle;                                                        // 0x000C (size: 0x4)
    int32 RareEnemyCnt_High;                                                          // 0x0010 (size: 0x4)

}; // Size: 0x14

struct FRefereshFlagChangeParam
{
    FName FlagLabel;                                                                  // 0x0000 (size: 0x8)
    bool FlagStaus;                                                                   // 0x0008 (size: 0x1)

}; // Size: 0xC

struct FRelatedFlagSection
{
    int32 Begin;                                                                      // 0x0000 (size: 0x4)
    int32 End;                                                                        // 0x0004 (size: 0x4)

}; // Size: 0x8

struct FReminiscenceBuf_EquipAbility
{
    TArray<int32> Support;                                                            // 0x0000 (size: 0x10)
    TArray<FAcquisitionAbilityData> AbilityList;                                      // 0x0010 (size: 0x10)
    FAcquisitionAbilityData AdvancedAbility;                                          // 0x0020 (size: 0x10)

}; // Size: 0x30

struct FReminiscenceBufferAbility : public FReminiscenceBufferBase
{
    TArray<FReminiscenceBuf_EquipAbility> Org_EquipAbility;                           // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FReminiscenceBufferBase
{
}; // Size: 0x8

struct FReminiscenceBufferDopingParam : public FReminiscenceBufferBase
{
    TArray<FCharacterParam> Org_DopingParam;                                          // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FReminiscenceBufferEquipment : public FReminiscenceBufferBase
{
    TArray<FSaveEquipmentDataID> Org_Equipment;                                       // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FReminiscenceBufferExp : public FReminiscenceBufferBase
{
    TArray<int32> Org_Exp;                                                            // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FReminiscenceBufferFollowNpc : public FReminiscenceBufferBase
{
    TArray<FSaveFollowNpcData> Org_FollowNpc;                                         // 0x0008 (size: 0x10)
    TArray<FSaveFollowNpcData> Org_FollowWaitingNpc;                                  // 0x0018 (size: 0x10)

}; // Size: 0x28

struct FReminiscenceBufferItem : public FReminiscenceBufferBase
{
    TArray<int32> Org_ItemID;                                                         // 0x0008 (size: 0x10)
    TArray<int32> Org_ItemNum;                                                        // 0x0018 (size: 0x10)

}; // Size: 0x28

struct FReminiscenceBufferJP : public FReminiscenceBufferBase
{
    TArray<int32> Org_JP;                                                             // 0x0008 (size: 0x10)
    TArray<int32> Start_JP;                                                           // 0x0018 (size: 0x10)

}; // Size: 0x28

struct FReminiscenceBufferJob : public FReminiscenceBufferBase
{
    TArray<int32> Org_SecondJobId;                                                    // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FReminiscenceBufferLearnAbility : public FReminiscenceBufferBase
{
    TArray<int32> Org_LearnAbility;                                                   // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FReminiscenceBufferMoney : public FReminiscenceBufferBase
{
    int32 Org_Money;                                                                  // 0x0008 (size: 0x4)

}; // Size: 0x10

struct FReminiscenceBufferPOT : public FReminiscenceBufferBase
{
    TArray<int32> Org_POT;                                                            // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FReminiscenceBufferTameMonster : public FReminiscenceBufferBase
{
    TArray<FTameMonsterData> Org_TameMonster;                                         // 0x0008 (size: 0x10)
    TArray<FTameMonsterData> Org_LegendTameMonster;                                   // 0x0018 (size: 0x10)

}; // Size: 0x28

struct FReminiscenceBufferTimeZone : public FReminiscenceBufferBase
{
    ETimeZoneType Org_TimeZoneType;                                                   // 0x0008 (size: 0x1)
    int32 Org_TimeZonePos;                                                            // 0x000C (size: 0x4)
    ELEVEL_DARK_STATE Org_LevelDarkState;                                             // 0x0010 (size: 0x1)

}; // Size: 0x18

struct FReminiscenceCharaData
{
    EPlayableCharacterID StartCharaID;                                                // 0x0000 (size: 0x1)
    EPlayableCharacterID MergeCharaID;                                                // 0x0001 (size: 0x1)
    int32 Level;                                                                      // 0x0004 (size: 0x4)

}; // Size: 0x8

struct FReminiscenceMergeSetting : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    TArray<EREMINISCENCE_MERGE_TYPE> MergeType;                                       // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FReminiscenceRestorePlacement
{
    EKSCharacterMoveMode MoveMode;                                                    // 0x0000 (size: 0x1)
    FVector LadderUpEndPos;                                                           // 0x0004 (size: 0xC)
    FVector LadderDownEndPos;                                                         // 0x0010 (size: 0xC)
    FVector MoveLadderPosition;                                                       // 0x001C (size: 0xC)
    FVector PlayerLocation;                                                           // 0x0028 (size: 0xC)
    int32 EncountTriggerId;                                                           // 0x0034 (size: 0x4)
    FEquipLanternData EquipLantern;                                                   // 0x0038 (size: 0x20)
    TArray<int32> EnableSwitchIndoorTrigger;                                          // 0x0058 (size: 0x10)

}; // Size: 0x68

struct FReminiscenceSetting : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    bool IsPrologue;                                                                  // 0x000C (size: 0x1)
    TArray<FReminiscenceCharaData> CharacterData;                                     // 0x0010 (size: 0x10)
    int32 FirstMoney;                                                                 // 0x0020 (size: 0x4)
    TArray<FName> FirstBackpackItemLabel;                                             // 0x0028 (size: 0x10)
    TArray<int32> FirstBackpackItemNum;                                               // 0x0038 (size: 0x10)
    TArray<FName> ItemOnSkipReminiscence;                                             // 0x0048 (size: 0x10)
    FName MergeSettingLabel;                                                          // 0x0058 (size: 0x8)

}; // Size: 0x60

struct FRequestActionOrderData
{
    EACTION_ORDER_TYPE m_eOrderType;                                                  // 0x0000 (size: 0x1)
    float m_fDelayRatio;                                                              // 0x0004 (size: 0x4)
    bool m_bUseIcon;                                                                  // 0x0008 (size: 0x1)

}; // Size: 0xC

struct FRevivalObjectSaveData
{
    int32 ObjectId;                                                                   // 0x0000 (size: 0x4)
    int32 CurrentLevelChangeCount;                                                    // 0x0004 (size: 0x4)

}; // Size: 0x8

struct FRowNameIdSet
{
    TMap<int32, FName> IdToRowName;                                                   // 0x0000 (size: 0x50)
    TMap<FName, int32> RowNameToId;                                                   // 0x0050 (size: 0x50)

}; // Size: 0xA0

struct FSaveBackPackItem
{
    int32 ItemId;                                                                     // 0x0000 (size: 0x4)
    int32 Num;                                                                        // 0x0004 (size: 0x4)

}; // Size: 0x8

struct FSaveDataGuild
{
    int32 GuildId;                                                                    // 0x0000 (size: 0x4)
    int32 AcquiredLicense;                                                            // 0x0004 (size: 0x4)
    bool Visited;                                                                     // 0x0008 (size: 0x1)

}; // Size: 0xC

struct FSaveDataSubTitle
{
    int32 SubTitleId;                                                                 // 0x0000 (size: 0x4)
    int32 StartIndex;                                                                 // 0x0004 (size: 0x4)
    bool ViewFlag;                                                                    // 0x0008 (size: 0x1)

}; // Size: 0xC

struct FSaveEnemyData
{
    bool IsAnalyse;                                                                   // 0x0000 (size: 0x1)
    int32 WeaknessOpen;                                                               // 0x0004 (size: 0x4)
    bool IsPreparation;                                                               // 0x0008 (size: 0x1)

}; // Size: 0xC

struct FSaveEquipmentData : public FTableRowBase
{
    FName Sword;                                                                      // 0x0008 (size: 0x8)
    FName Lance;                                                                      // 0x0010 (size: 0x8)
    FName Dagger;                                                                     // 0x0018 (size: 0x8)
    FName Axe;                                                                        // 0x0020 (size: 0x8)
    FName Bow;                                                                        // 0x0028 (size: 0x8)
    FName Rod;                                                                        // 0x0030 (size: 0x8)
    FName Shield;                                                                     // 0x0038 (size: 0x8)
    FName Head;                                                                       // 0x0040 (size: 0x8)
    FName Body;                                                                       // 0x0048 (size: 0x8)
    FName Accessory_00;                                                               // 0x0050 (size: 0x8)
    FName Accessory_01;                                                               // 0x0058 (size: 0x8)

}; // Size: 0x60

struct FSaveEquipmentDataID
{
    int32 Sword;                                                                      // 0x0000 (size: 0x4)
    bool SwordFixed;                                                                  // 0x0004 (size: 0x1)
    int32 Lance;                                                                      // 0x0008 (size: 0x4)
    bool LanceFixed;                                                                  // 0x000C (size: 0x1)
    int32 Dagger;                                                                     // 0x0010 (size: 0x4)
    bool DaggerFixed;                                                                 // 0x0014 (size: 0x1)
    int32 Axe;                                                                        // 0x0018 (size: 0x4)
    bool AxeFixed;                                                                    // 0x001C (size: 0x1)
    int32 Bow;                                                                        // 0x0020 (size: 0x4)
    bool BowFixed;                                                                    // 0x0024 (size: 0x1)
    int32 Rod;                                                                        // 0x0028 (size: 0x4)
    bool RodFixed;                                                                    // 0x002C (size: 0x1)
    int32 Shield;                                                                     // 0x0030 (size: 0x4)
    bool ShieldFixed;                                                                 // 0x0034 (size: 0x1)
    int32 Head;                                                                       // 0x0038 (size: 0x4)
    bool HeadFixed;                                                                   // 0x003C (size: 0x1)
    int32 Body;                                                                       // 0x0040 (size: 0x4)
    bool BodyFixed;                                                                   // 0x0044 (size: 0x1)
    int32 Accessory_00;                                                               // 0x0048 (size: 0x4)
    bool Accessory_00_Fixed;                                                          // 0x004C (size: 0x1)
    int32 Accessory_01;                                                               // 0x0050 (size: 0x4)
    bool Accessory_01_Fixed;                                                          // 0x0054 (size: 0x1)

}; // Size: 0x58

struct FSaveFollowNpcData
{
    int32 NpcUniqueID;                                                                // 0x0000 (size: 0x4)
    int32 SupportLimit;                                                               // 0x0004 (size: 0x4)
    int32 FieldCommandType;                                                           // 0x0008 (size: 0x4)
    int32 MasterCharacterID;                                                          // 0x000C (size: 0x4)

}; // Size: 0x10

struct FSaveMissionData
{
    TArray<int32> MissionState;                                                       // 0x0000 (size: 0x10)
    TArray<int32> ClearIndex;                                                         // 0x0010 (size: 0x10)
    TArray<bool> SubMissionNewFlag;                                                   // 0x0020 (size: 0x10)
    TArray<FSubMissionMarkerData> SubMissionMaker;                                    // 0x0030 (size: 0x10)

}; // Size: 0x40

struct FSavePlayerCharacterData
{
    int32 CharacterID;                                                                // 0x0000 (size: 0x4)
    int32 Level;                                                                      // 0x0004 (size: 0x4)
    int32 Exp;                                                                        // 0x0008 (size: 0x4)
    int32 RawHP;                                                                      // 0x000C (size: 0x4)
    int32 RawMP;                                                                      // 0x0010 (size: 0x4)
    int32 RawPOT;                                                                     // 0x0014 (size: 0x4)
    int32 FirstJobID;                                                                 // 0x0018 (size: 0x4)
    int32 SecondJobID;                                                                // 0x001C (size: 0x4)
    int32 JobPoint;                                                                   // 0x0020 (size: 0x4)
    FSaveEquipmentDataID Equipment;                                                   // 0x0024 (size: 0x58)
    TArray<int32> EquipSupportSkill;                                                  // 0x0080 (size: 0x10)
    TArray<FAcquisitionAbilityData> AcquisitionAbilityList;                           // 0x0090 (size: 0x10)
    FAcquisitionAbilityData AcquisitionAdvancedAbility;                               // 0x00A0 (size: 0x10)
    FCharacterParam DopingParam;                                                      // 0x00B0 (size: 0x34)
    int32 PlayingMainStoryID;                                                         // 0x00E4 (size: 0x4)
    int32 InterruptedMainStoryID;                                                     // 0x00E8 (size: 0x4)
    int32 MainMissionProgressCnt;                                                     // 0x00EC (size: 0x4)

}; // Size: 0xF0

struct FSeVibrationData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)

}; // Size: 0x10

struct FSearchInfomationData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString InfoText;                                                                 // 0x0010 (size: 0x10)
    int32 AccessPoint;                                                                // 0x0020 (size: 0x4)
    bool IsEffective;                                                                 // 0x0024 (size: 0x1)
    FString NotificationText;                                                         // 0x0028 (size: 0x10)

}; // Size: 0x38

struct FSearchRelationInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    TArray<int32> PersonalInfoList;                                                   // 0x0010 (size: 0x10)
    TArray<int32> DiagramList;                                                        // 0x0020 (size: 0x10)

}; // Size: 0x30

struct FSequencerResourceData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    TSoftObjectPtr<UObject> ResourcePath;                                             // 0x0010 (size: 0x28)

}; // Size: 0x38

struct FShieldChangeData : public FTableRowBase
{
    int32 m_nShieldPointMax;                                                          // 0x0008 (size: 0x4)
    FName m_strInfomationText;                                                        // 0x000C (size: 0x8)

}; // Size: 0x18

struct FShopInfoData : public FTableRowBase
{
    FName ShopName;                                                                   // 0x0008 (size: 0x8)
    ESHOP_TYPE ShopType;                                                              // 0x0010 (size: 0x1)
    FName ShopBGM;                                                                    // 0x0014 (size: 0x8)
    int32 InnBasePrice;                                                               // 0x001C (size: 0x4)
    FName InnDiscountItem;                                                            // 0x0020 (size: 0x8)
    int32 InnDiscountBasePrice;                                                       // 0x0028 (size: 0x4)
    int32 ID;                                                                         // 0x002C (size: 0x4)

}; // Size: 0x30

struct FSimpleActionLoad
{
    FName CharaResLabel;                                                              // 0x0000 (size: 0x8)
    TArray<EKSCharacterAction> ActionLabels;                                          // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FSkillInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 Name;                                                                       // 0x000C (size: 0x4)
    int32 Detail;                                                                     // 0x0010 (size: 0x4)
    int32 InvokeType;                                                                 // 0x0014 (size: 0x4)
    TArray<float> Values;                                                             // 0x0018 (size: 0x10)

}; // Size: 0x28

struct FSoldOutShopItemData
{
    bool IsSoldOut;                                                                   // 0x0000 (size: 0x1)

}; // Size: 0x1

struct FSoundData : public FTableRowBase
{
    class USoundAtomCue* SoundCri;                                                    // 0x0008 (size: 0x8)
    FName BgmLabel;                                                                   // 0x0010 (size: 0x8)
    int32 BGMID;                                                                      // 0x0018 (size: 0x4)
    int32 Priority;                                                                   // 0x001C (size: 0x4)
    float FadeIn;                                                                     // 0x0020 (size: 0x4)
    float FadeOut;                                                                    // 0x0024 (size: 0x4)
    float Volume;                                                                     // 0x0028 (size: 0x4)
    float Time;                                                                       // 0x002C (size: 0x4)
    int32 StateChangeBgm;                                                             // 0x0030 (size: 0x4)
    class UAtomComponent* TargetSoundComponent;                                       // 0x0038 (size: 0x8)
    bool IsInterupt;                                                                  // 0x0040 (size: 0x1)
    bool IsPlayedMusicRecord;                                                         // 0x0041 (size: 0x1)

}; // Size: 0x48

struct FSoundSEData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString Label;                                                                    // 0x0010 (size: 0x10)
    FName CueSheetName;                                                               // 0x0020 (size: 0x8)
    TSoftObjectPtr<USoundAtomCue> Resource;                                           // 0x0028 (size: 0x28)

}; // Size: 0x50

struct FSoundVoiceData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString Label;                                                                    // 0x0010 (size: 0x10)
    FName CueSheetName;                                                               // 0x0020 (size: 0x8)
    TSoftObjectPtr<USoundAtomCue> Resource;                                           // 0x0028 (size: 0x28)

}; // Size: 0x50

struct FSpActMerchantResult
{
    ESPACT_MER_RESULT_TYPE Result;                                                    // 0x0000 (size: 0x1)
    FName ResultTextLabel;                                                            // 0x0004 (size: 0x8)
    FString ResultTextLabel_Param0;                                                   // 0x0010 (size: 0x10)
    int32 PriceBefore;                                                                // 0x0020 (size: 0x4)
    int32 PriceAfter;                                                                 // 0x0024 (size: 0x4)
    TArray<FName> AcquiredItemLabel;                                                  // 0x0028 (size: 0x10)
    TArray<int32> AcquiredItemNum;                                                    // 0x0038 (size: 0x10)
    int32 NPCID;                                                                      // 0x0048 (size: 0x4)

}; // Size: 0x50

struct FSpActionMerchant_Data : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    ESPACT_MERCHANT_TYPE SPEffectType;                                                // 0x000C (size: 0x1)
    FName SPEffectName;                                                               // 0x0010 (size: 0x8)
    FName SPEffectOverView;                                                           // 0x0018 (size: 0x8)
    FName ResultTextSuccess;                                                          // 0x0020 (size: 0x8)
    FName ResultTextFailure;                                                          // 0x0028 (size: 0x8)
    TArray<int32> EffectIntParam;                                                     // 0x0030 (size: 0x10)
    TArray<FName> EffectItemLabel;                                                    // 0x0040 (size: 0x10)

}; // Size: 0x50

struct FSpActionMerchant_MenuData
{
    int32 SPActionID;                                                                 // 0x0000 (size: 0x4)
    FText SPActionName;                                                               // 0x0008 (size: 0x18)
    ESPACT_MERCHANT_TYPE EffectType;                                                  // 0x0020 (size: 0x1)
    FText EffectOverview;                                                             // 0x0028 (size: 0x18)

}; // Size: 0x40

struct FSpActionMerchant_Type : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 ResultParamType;                                                            // 0x000C (size: 0x4)
    TArray<bool> ExecTrigger;                                                         // 0x0010 (size: 0x10)
    FName EffectDescription;                                                          // 0x0020 (size: 0x8)
    TArray<ESPACT_MER_DESC_PARAM_TYPE> DescTextParam;                                 // 0x0028 (size: 0x10)

}; // Size: 0x38

struct FSpecialAbilityInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 DesplayName;                                                                // 0x000C (size: 0x4)
    int32 Detail;                                                                     // 0x0010 (size: 0x4)

}; // Size: 0x18

struct FSpecialActionData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName MenuName;                                                                   // 0x000C (size: 0x8)
    FName MenuDetail;                                                                 // 0x0014 (size: 0x8)
    FName BattleCommandName;                                                          // 0x001C (size: 0x8)
    FName BattleCommandDetail;                                                        // 0x0024 (size: 0x8)
    FName PlayerSelectDetail;                                                         // 0x002C (size: 0x8)
    FString SpecialActionType;                                                        // 0x0038 (size: 0x10)
    TArray<FName> AbilityID;                                                          // 0x0048 (size: 0x10)
    bool UniqueCommandFlag;                                                           // 0x0058 (size: 0x1)
    int32 BanFlag;                                                                    // 0x005C (size: 0x4)

}; // Size: 0x60

struct FSpecialItemData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    ESPECIAL_ITEM_TYPE SpecialType;                                                   // 0x000C (size: 0x1)
    bool UsableSpItem;                                                                // 0x000D (size: 0x1)
    int32 ShowInItemListFlag;                                                         // 0x0010 (size: 0x4)
    int32 HideInItemListFlag;                                                         // 0x0014 (size: 0x4)
    EPlayableCharacterID RelativeCharacterId;                                         // 0x0018 (size: 0x1)
    FName RelativeItemLabel;                                                          // 0x001C (size: 0x8)
    FName BgmLabel;                                                                   // 0x0024 (size: 0x8)
    TArray<FName> CommonText;                                                         // 0x0030 (size: 0x10)

}; // Size: 0x40

struct FStaffCreditPartsTable : public FTableRowBase
{
    ECreditAlignment Alignment;                                                       // 0x0008 (size: 0x1)
    ECreditFontColor FontColor;                                                       // 0x0009 (size: 0x1)
    ECreditFontType FontType;                                                         // 0x000A (size: 0x1)
    ECreditFontSize FontSize;                                                         // 0x000B (size: 0x1)

}; // Size: 0x10

struct FStaffCreditStyleTable : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    ECreditAlignment Alignment;                                                       // 0x000C (size: 0x1)
    ECreditFontColor FontColor;                                                       // 0x000D (size: 0x1)
    ECreditFontType FontType;                                                         // 0x000E (size: 0x1)
    ECreditFontSize FontSize;                                                         // 0x000F (size: 0x1)

}; // Size: 0x10

struct FStaffCreditTable : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    ECreditWidgetType PartsType;                                                      // 0x000C (size: 0x1)
    FName Style;                                                                      // 0x0010 (size: 0x8)
    TArray<FString> Resource;                                                         // 0x0018 (size: 0x10)

}; // Size: 0x28

struct FStartWorldMapData
{
    FName WMapLocation;                                                               // 0x0000 (size: 0x8)
    TArray<FName> RelationLevel;                                                      // 0x0008 (size: 0x10)
    int32 StartFlag;                                                                  // 0x0018 (size: 0x4)
    int32 EndFlag;                                                                    // 0x001C (size: 0x4)

}; // Size: 0x20

struct FStoryRecordTaskInfo
{
    TArray<FMAINMENU_MISSION_RECORD_DATA> StoryRecordList;                            // 0x0000 (size: 0x10)

}; // Size: 0x10

struct FSubMissionData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 AreaIndex;                                                                  // 0x000C (size: 0x4)
    ESUB_STORY_CATEGORY StoryCategory;                                                // 0x0010 (size: 0x1)
    int32 MissionIndex;                                                               // 0x0014 (size: 0x4)
    FName WorldMapIcon;                                                               // 0x0018 (size: 0x8)
    TArray<EPlayableCharacterID> StartConditionParty;                                 // 0x0020 (size: 0x10)
    FName TitleTextLabel;                                                             // 0x0030 (size: 0x8)
    FName DetailTextLabel;                                                            // 0x0038 (size: 0x8)
    TArray<FName> ClearTextLabel;                                                     // 0x0040 (size: 0x10)
    FName NPCName;                                                                    // 0x0050 (size: 0x8)
    FName NPCLabel;                                                                   // 0x0058 (size: 0x8)
    int32 RewardMoney;                                                                // 0x0060 (size: 0x4)
    TArray<FName> RewardParam;                                                        // 0x0068 (size: 0x10)
    FName RelatedMainStoryTask;                                                       // 0x0078 (size: 0x8)
    TArray<FRelatedFlagSection> RelatedFlagSections;                                  // 0x0080 (size: 0x10)

}; // Size: 0x90

struct FSubMissionMarkerData
{
    int32 MapID;                                                                      // 0x0000 (size: 0x4)
    FVector MarkerPos;                                                                // 0x0004 (size: 0xC)

}; // Size: 0x10

struct FSubSeqData
{
    class ALevelSequenceActor* Sequence;                                              // 0x0018 (size: 0x8)

}; // Size: 0x20

struct FSubTitleBlockData
{
    FName TalkLabel;                                                                  // 0x0000 (size: 0x8)
    float ViewTime;                                                                   // 0x0008 (size: 0x4)
    float WaitTime;                                                                   // 0x000C (size: 0x4)
    int32 BlockIndex;                                                                 // 0x0010 (size: 0x4)

}; // Size: 0x14

struct FSubTitleDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    float MapInWaitTime;                                                              // 0x000C (size: 0x4)
    float FadeInTime;                                                                 // 0x0010 (size: 0x4)
    float FadeOutTime;                                                                // 0x0014 (size: 0x4)
    FName BeginMainStoryTaskLabel;                                                    // 0x0018 (size: 0x8)
    FName EndMainStoryTaskLabel;                                                      // 0x0020 (size: 0x8)
    bool UseBackground;                                                               // 0x0028 (size: 0x1)
    TArray<FSubTitleBlockData> BlockData;                                             // 0x0030 (size: 0x10)

}; // Size: 0x40

struct FSupportAbilityDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 SupportAbilityID;                                                           // 0x000C (size: 0x4)
    FName DisplayName;                                                                // 0x0010 (size: 0x8)
    FName Detail;                                                                     // 0x0018 (size: 0x8)
    ESUPPORT_AILMENT_TYPE SupportAilmentType;                                         // 0x0020 (size: 0x1)
    int32 InvocationValue;                                                            // 0x0024 (size: 0x4)
    int32 AddtionalInVocationValue00;                                                 // 0x0028 (size: 0x4)
    int32 AddtionalInVocationValue01;                                                 // 0x002C (size: 0x4)
    int32 AddtionalInVocationValue02;                                                 // 0x0030 (size: 0x4)
    FName ExecAbilityLabel;                                                           // 0x0034 (size: 0x8)

}; // Size: 0x40

struct FSupportCharacterData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    int32 SupporterID;                                                                // 0x000C (size: 0x4)
    FName DisplayNameID;                                                              // 0x0010 (size: 0x8)
    int32 DisplayRank;                                                                // 0x0018 (size: 0x4)
    FName ActionLabel;                                                                // 0x001C (size: 0x8)
    int32 SupportPoint;                                                               // 0x0024 (size: 0x4)
    bool IsUnlimitedSupporter;                                                        // 0x0028 (size: 0x1)
    int32 SupportLimit;                                                               // 0x002C (size: 0x4)
    FCharacterParam Parameter;                                                        // 0x0030 (size: 0x34)
    EWEAPON_CATEGORY WeaponType;                                                      // 0x0064 (size: 0x1)
    EWEAPON_STANCE WeaponStance;                                                      // 0x0065 (size: 0x1)
    FName WeaponItemLabel;                                                            // 0x0068 (size: 0x8)
    int32 CoverRate;                                                                  // 0x0070 (size: 0x4)
    TSoftClassPtr<UBattleAIBase> SupporterAI;                                         // 0x0078 (size: 0x28)
    TArray<FSupporterCommandData> CommandTable;                                       // 0x00A0 (size: 0x10)
    FName SessionAbility;                                                             // 0x00B0 (size: 0x8)

}; // Size: 0xB8

struct FSupporterCommandData
{
    FName CommandName;                                                                // 0x0000 (size: 0x8)
    int32 Rate;                                                                       // 0x0008 (size: 0x4)
    int32 Cost;                                                                       // 0x000C (size: 0x4)

}; // Size: 0x10

struct FSwitchIndoorTriggerParam : public FTableRowBase
{
    float fCameraDistanceIndoor;                                                      // 0x0008 (size: 0x4)
    float fManualFocusDistanceIndoor;                                                 // 0x000C (size: 0x4)
    float fManualFocusDistanceOutdoor;                                                // 0x0010 (size: 0x4)
    float fCharacterScaleIndoor;                                                      // 0x0014 (size: 0x4)
    float fCharacterScaleOutdoor;                                                     // 0x0018 (size: 0x4)
    float fCharacterHeightIndoor;                                                     // 0x001C (size: 0x4)
    float fCharacterHeightOutdoor;                                                    // 0x0020 (size: 0x4)
    int32 nIndoorFloorNum;                                                            // 0x0024 (size: 0x4)
    int32 nOutdoorFloorNum;                                                           // 0x0028 (size: 0x4)
    bool bForceOutdoor;                                                               // 0x002C (size: 0x1)
    int32 nProcessOrder;                                                              // 0x0030 (size: 0x4)

}; // Size: 0x38

struct FTalkText : public FTableRowBase
{
    EBalloonType Type;                                                                // 0x0008 (size: 0x1)
    TArray<bool> Reset;                                                               // 0x0010 (size: 0x10)
    TArray<int32> Height;                                                             // 0x0020 (size: 0x10)
    TArray<int32> Width;                                                              // 0x0030 (size: 0x10)
    TArray<FName> Names;                                                              // 0x0040 (size: 0x10)
    TArray<FString> Text;                                                             // 0x0050 (size: 0x10)

}; // Size: 0x60

struct FTalkVoice : public FTableRowBase
{
    TArray<FName> Voice;                                                              // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FTameMonsterData
{
    int32 EnemyID;                                                                    // 0x0000 (size: 0x4)
    int32 Count;                                                                      // 0x0004 (size: 0x4)
    bool Used;                                                                        // 0x0008 (size: 0x1)

}; // Size: 0xC

struct FTimeZoneSaveData
{
    ETimeZoneType m_eTimeZoneType;                                                    // 0x0000 (size: 0x1)
    int32 m_nTimeZoneChangeValue;                                                     // 0x0004 (size: 0x4)

}; // Size: 0x8

struct FTownData
{
    int32 ConnectionValue;                                                            // 0x0000 (size: 0x4)

}; // Size: 0x4

struct FTownInfoData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName TownLabel;                                                                  // 0x000C (size: 0x8)
    FName TownName;                                                                   // 0x0014 (size: 0x8)
    int32 ConnectionInit;                                                             // 0x001C (size: 0x4)
    int32 ConnectionMax;                                                              // 0x0020 (size: 0x4)
    int32 ConnectionPrice;                                                            // 0x0024 (size: 0x4)
    TArray<float> ConnectionRate;                                                     // 0x0028 (size: 0x10)
    FFieldCommandAssistItem StealFcAssistItem;                                        // 0x0038 (size: 0xC)
    FFieldCommandAssistItem BattleFcAssistItem;                                       // 0x0044 (size: 0xC)
    FFieldCommandAssistItem MonsterFcAssistItem;                                      // 0x0050 (size: 0xC)
    FFieldCommandAssistItem LeadFcAssistItem;                                         // 0x005C (size: 0xC)
    FFieldCommandAssistItem LureFcAssistItem;                                         // 0x0068 (size: 0xC)
    FFieldCommandAssistItem HearFcAssistItem;                                         // 0x0074 (size: 0xC)
    FFieldCommandAssistItem HireFcAssistItem;                                         // 0x0080 (size: 0xC)
    FFieldCommandAssistItem RobFcAssistItem;                                          // 0x008C (size: 0xC)

}; // Size: 0x98

struct FTransitionData
{
    TArray<EMAINSEQ_TYPE> NextFlowData;                                               // 0x0000 (size: 0x10)

}; // Size: 0x10

struct FTransportCameraParam
{
    FVector CameraLocationOffset;                                                     // 0x0000 (size: 0xC)
    FRotator CameraRotation;                                                          // 0x000C (size: 0xC)
    FVector CharacterScale;                                                           // 0x0018 (size: 0xC)
    FCameraFilmbackSettings Filmback;                                                 // 0x0024 (size: 0xC)
    FCameraLensSettings LensSettings;                                                 // 0x0030 (size: 0x18)
    FCameraFocusSettings FocusSettings;                                               // 0x0048 (size: 0x58)
    float CurrentFocalLength;                                                         // 0x00A0 (size: 0x4)
    float CurrentAperture;                                                            // 0x00A4 (size: 0x4)

}; // Size: 0xA8

struct FTutorialFlagPart : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    ETUTORIAL_TYPE TutorialType;                                                      // 0x000C (size: 0x1)
    int32 TutorialListFlag;                                                           // 0x0010 (size: 0x4)
    int32 TutorialOpenedFlag;                                                         // 0x0014 (size: 0x4)
    TArray<FName> PageDataLabel;                                                      // 0x0018 (size: 0x10)

}; // Size: 0x28

struct FUIButtonData : public FTableRowBase
{
    class UImage* Image_Active;                                                       // 0x0008 (size: 0x8)
    class UImage* Image_DeActive;                                                     // 0x0010 (size: 0x8)
    class UButton* Button;                                                            // 0x0018 (size: 0x8)

}; // Size: 0x20

struct FUIResourceData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    EUIResType ResType;                                                               // 0x000C (size: 0x1)
    EUIResCategory Category;                                                          // 0x000D (size: 0x1)
    TArray<TSoftObjectPtr<UObject>> ResList;                                          // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FUIResourceReferenceData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    EUIResType ResType;                                                               // 0x000C (size: 0x1)
    EUIResCategory Category;                                                          // 0x000D (size: 0x1)
    TArray<int32> ResMap;                                                             // 0x0010 (size: 0x10)
    TArray<int32> LangMap;                                                            // 0x0020 (size: 0x10)
    TMap<int32, TSoftObjectPtr<UObject>> AssetMap;                                    // 0x0030 (size: 0x50)

}; // Size: 0x80

struct FUIWidgetReferenceData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FString BaseClassPath;                                                            // 0x0010 (size: 0x10)
    TSoftObjectPtr<UObject> InstancePath;                                             // 0x0020 (size: 0x28)
    int32 ZOrder;                                                                     // 0x0048 (size: 0x4)
    EWIDGET_CREATE_PHASE CreatePhase;                                                 // 0x004C (size: 0x1)
    bool IsAddViewport;                                                               // 0x004D (size: 0x1)

}; // Size: 0x50

struct FVectorsToIcon
{
    FVector2D BetweenIconAndCursor;                                                   // 0x0000 (size: 0x8)
    FVector2D BetweenIconAndAreaLabel;                                                // 0x0008 (size: 0x8)

}; // Size: 0x10

struct FWeakChangeData : public FTableRowBase
{
    int32 m_eWeakAttributeType;                                                       // 0x0008 (size: 0x4)
    FName m_strInfomationText;                                                        // 0x000C (size: 0x8)

}; // Size: 0x18

struct FWeakLockData : public FTableRowBase
{
    int32 m_eWeakLockType;                                                            // 0x0008 (size: 0x4)
    FName m_strInfomationText;                                                        // 0x000C (size: 0x8)

}; // Size: 0x18

struct FWeaponMasterEventDataBase : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    FName EventLabel;                                                                 // 0x000C (size: 0x8)
    FName DialogText;                                                                 // 0x0014 (size: 0x8)

}; // Size: 0x20

struct FWeaponTexutreUnloadManage
{
    TArray<FName> m_strLoadWeaponLabel;                                               // 0x0000 (size: 0x10)
    TArray<FName> m_strUnLoadWaitWeaponLabel;                                         // 0x0010 (size: 0x10)
    EWEAPON_UNLOAD_GC_TYPE m_eUnlaodGCType;                                           // 0x0020 (size: 0x1)
    uint8 m_uUnloadWeaponCnt;                                                         // 0x0021 (size: 0x1)
    uint8 m_uUnloadWeaponCntMax;                                                      // 0x0022 (size: 0x1)

}; // Size: 0x28

struct FWidgetAnimationGroupData
{
    TArray<class UWidgetAnimation*> Animations;                                       // 0x0000 (size: 0x10)

}; // Size: 0x10

struct FWidgetFlipbookAnimeInfo : public FTableRowBase
{
    EKSCharacterAction Action;                                                        // 0x0008 (size: 0x1)
    EKSCharacterDir Dir;                                                              // 0x0009 (size: 0x1)
    FVector2D DrawSize;                                                               // 0x000C (size: 0x8)

}; // Size: 0x18

struct FWidgetTemporaryHiddenData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    EWIDGET_TEMPORARY_HIDE_USER HiddenUser;                                           // 0x000C (size: 0x1)
    TArray<EKSUIKind> UiList;                                                         // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FWorldMapDarkAreaEffectParam : public FTableRowBase
{
    FName WorldMapLabel;                                                              // 0x0008 (size: 0x8)
    FName DarkAreaLabel;                                                              // 0x0010 (size: 0x8)
    EWorldMapEffectType EffectType;                                                   // 0x0018 (size: 0x1)
    FVector LocationOffset;                                                           // 0x001C (size: 0xC)
    FRotator RotationOffset;                                                          // 0x0028 (size: 0xC)
    FVector ScaleOffset;                                                              // 0x0034 (size: 0xC)

}; // Size: 0x40

struct FWorldMapDestinationData
{
    FName WorldMapLocation;                                                           // 0x0000 (size: 0x8)
    FName WorldMapDestination;                                                        // 0x0008 (size: 0x8)
    EMAIN_STORY_CATEGORY StoryCategory;                                               // 0x0010 (size: 0x1)
    int32 ChapterNumber;                                                              // 0x0014 (size: 0x4)
    FName ChapterText;                                                                // 0x0018 (size: 0x8)
    EPlayableCharacterID PlayerCharaId;                                               // 0x0020 (size: 0x1)
    TArray<EPlayableCharacterID> RelationCharaId;                                     // 0x0028 (size: 0x10)
    int32 RecommendationLevel;                                                        // 0x0038 (size: 0x4)

}; // Size: 0x40

struct FWorldMapIconData : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    bool NearVisibility;                                                              // 0x000C (size: 0x1)
    bool MiddleVisibility;                                                            // 0x000D (size: 0x1)
    bool FarVisibility;                                                               // 0x000E (size: 0x1)
    bool IsDisplayOnlyCurrentLocation;                                                // 0x000F (size: 0x1)
    FName IconTexLabel;                                                               // 0x0010 (size: 0x8)
    bool IsGuildIcon;                                                                 // 0x0018 (size: 0x1)
    bool IsShipIcon;                                                                  // 0x0019 (size: 0x1)

}; // Size: 0x20

struct FWorldMapNameOverride
{
    FName NameLabel;                                                                  // 0x0000 (size: 0x8)
    int32 ActiveFlag;                                                                 // 0x0008 (size: 0x4)
    FName EncounterLevelLabel;                                                        // 0x000C (size: 0x8)

}; // Size: 0x14

struct FWorldMapTable : public FTableRowBase
{
    int32 ID;                                                                         // 0x0008 (size: 0x4)
    EWorldMapIconType MapIconType;                                                    // 0x000C (size: 0x1)
    TArray<FName> RefLevelName;                                                       // 0x0010 (size: 0x10)
    FName RegionName;                                                                 // 0x0020 (size: 0x8)
    FName MapName;                                                                    // 0x0028 (size: 0x8)
    TArray<FWorldMapNameOverride> MapNameOverrides;                                   // 0x0030 (size: 0x10)
    FName EmblemLabel;                                                                // 0x0040 (size: 0x8)
    EWorldMapMaskArea WorldMapMaskArea;                                               // 0x0048 (size: 0x1)
    EWorldMapIslandLayerArea WorldMapIslandLayerArea;                                 // 0x0049 (size: 0x1)
    EWorldMapPrologueMaskArea WorldMapPrologueMaskArea;                               // 0x004A (size: 0x1)
    FName DarkAreaLabel;                                                              // 0x004C (size: 0x8)
    bool IsAllowLostWay;                                                              // 0x0054 (size: 0x1)
    int32 VisibleFlag;                                                                // 0x0058 (size: 0x4)
    bool CanFastTravel;                                                               // 0x005C (size: 0x1)
    int32 TemporaryBanFastTravelFlag;                                                 // 0x0060 (size: 0x4)
    FName BanFastTravelInterruptMainStory;                                            // 0x0064 (size: 0x8)
    FName MoveLevelName;                                                              // 0x006C (size: 0x8)
    int32 TriggerID;                                                                  // 0x0074 (size: 0x4)
    int32 PlayerDir;                                                                  // 0x0078 (size: 0x4)
    EPlayableCharacterID PlayerCharaId;                                               // 0x007C (size: 0x1)
    int32 PlayerSwitchOrder;                                                          // 0x0080 (size: 0x4)
    FVector2D PlayerChraraPosOffset;                                                  // 0x0084 (size: 0x8)

}; // Size: 0x90

class AAchievementManager : public AAcqManagerBase
{
    class UServiceConnecter* m_Service;                                               // 0x0230 (size: 0x8)

    void OnWorldMapOpen(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnUnLockAchievement();
    void OnTitleScene(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnSwoonNpcByFc(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnSubStoryRecordOpen(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnSubStoryClear(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnStoryRecordReOpen(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnStoryRecordOpen(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnStartFieldMainSequenceAfterExBoss(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnRefreshFollowCharacter(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnPartyMemberChangeMenuOpen(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnOpenEndCardEpilogue(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnOpenEndCard(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnMusicRecordOpen(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnMainStoryTaskClear(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnMainStoryClear(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnJoinedCharacter(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnJobMenuOpen(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnItemMenuOpen(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnInformationFieldCommandOpen(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnGetItem(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnFinishFieldCommand(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnEquipMenuOpen(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnCreatedPlayerController(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnChangeVisitedLevel(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnBreak(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnBoostAttack(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnBeginLinerShip(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnAttack(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnAcquisitionAdvancedAbility(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnAcquisitionAbility(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnAbilityMenuOpen(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    class AAchievementManager* GetInstance();
    EAchievementStatus GetAchievementStatus(FName achiveLabel);
    void DelayOnEpilogueEndCardUnlockAchievement(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void DelayOnEndCardUnlockAchievement(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void Debug_ShowDebugInfo(bool bEnable);
    void Debug_SetFieldCommandSuccessCount(MJFieldCommandType FCType, int32 Count);
    bool Debug_ResetAllAchievement();
    bool Debug_ForceUnlockAchievement(FName AchieveLabel);
    bool Debug_ForceLockAchievement(FName AchieveLabel);
}; // Size: 0x238

class AAcqManagerBase : public AActor
{

    void UpdateManager(float DeltaSeconds);
    void StartManager();
    bool ResetManagerFromTitle();
    bool ResetManager();
    bool PrepareManager();
    void PostInitManager();
    void OnBeginPlay();
    bool IsAvailable();
    bool DestroyManager();
}; // Size: 0x230

class AAcqManagerFactory : public AActor
{
    class UDataTable* m_ManagerList;                                                  // 0x0238 (size: 0x8)
    TMap<class FName, class UClass*> m_NameToClass;                                   // 0x02E0 (size: 0x50)
    TMap<class FName, class UClass*> m_NameToBaseClass;                               // 0x0330 (size: 0x50)
    TMap<class UClass*, class FName> m_BaseClassToName;                               // 0x0380 (size: 0x50)
    TMap<class FName, class TWeakObjectPtr<AAcqManagerBase>> m_apManagerTable;        // 0x03D0 (size: 0x50)

    void StartManagers(EMANAGER_CREATE_PHASE CreatePhase);
    void SetInitAfterSpawn(FName managerName, const FSetInitAfterSpawnInitAfterSpawn& initAfterSpawn);
    void ResetTables();
    void ResetManagersFromTitle();
    void ResetManagersAll();
    void ResetManagers(EMANAGER_CREATE_PHASE CreatePhase);
    void PostInitManagers(EMANAGER_CREATE_PHASE CreatePhase);
    void OnLoadedClassObject(TArray<class UObject*>& objList);
    bool IsExist(FName managerName);
    bool IsAvailableByCategory(EMANAGER_CREATE_PHASE CreatePhase);
    void Initialize(TSoftObjectPtr<UDataTable> managerTable);
    class AAcqManagerBase* GetManagerInstance(UClass* managerClass);
    class AAcqManagerBase* GetManager(FName managerName);
    class AAcqManagerFactory* GetInstance();
    void DestroyManagers(EMANAGER_CREATE_PHASE CreatePhase);
    void DestroyManager(FName managerName);
    void Debug_ShowManagerInfo(bool bShow);
    void Debug_GetManagerInfo(FString& outDebugInfo);
    bool CreateManagersSequentially(EMANAGER_CREATE_PHASE CreatePhase);
    void CreateManagers(EMANAGER_CREATE_PHASE CreatePhase);
    bool CreateManagerClassesSequentially(EMANAGER_CREATE_PHASE CreatePhase);
}; // Size: 0x510

class AActionCommandBase : public AActor
{
    FName m_strActionLabel;                                                           // 0x0220 (size: 0x8)
    class ABattleCharacterBase* m_cEnforcer;                                          // 0x0228 (size: 0x8)
    TArray<class ABattleCharacterBase*> m_acSubEnforcerList;                          // 0x0230 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acTarget;                                   // 0x0240 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acSubTargetList;                            // 0x0250 (size: 0x10)
    int32 m_nOptionIndex;                                                             // 0x0260 (size: 0x4)
    FName m_strOptionData;                                                            // 0x0264 (size: 0x8)
    TArray<FName> m_astrOptionDataList;                                               // 0x0270 (size: 0x10)
    bool m_bEnableRandomTarget;                                                       // 0x0280 (size: 0x1)
    bool m_bEnableSkillALL;                                                           // 0x0281 (size: 0x1)
    bool m_bEnableDamageUpWithFullHP;                                                 // 0x0282 (size: 0x1)
    bool m_bSettledPlayOnce_OnRecovered;                                              // 0x0283 (size: 0x1)
    bool m_bAblityHit;                                                                // 0x0284 (size: 0x1)
    bool m_bAttackHitFailed;                                                          // 0x0285 (size: 0x1)
    bool m_bIsLastHit;                                                                // 0x0286 (size: 0x1)
    bool m_bEnableRandomCover;                                                        // 0x0287 (size: 0x1)
    bool m_bExecRandomCover;                                                          // 0x0288 (size: 0x1)
    class ABattleCharacterBase* m_cRandomCoverEnforcer;                               // 0x0290 (size: 0x8)
    bool m_bExecutedCounterTrap;                                                      // 0x0298 (size: 0x1)
    bool m_bIsForceWeakness;                                                          // 0x0299 (size: 0x1)
    int32 m_nAdditiveBreakDamage;                                                     // 0x029C (size: 0x4)
    class AActionCommandBase* m_cSummonOwnerAbility;                                  // 0x02A0 (size: 0x8)
    bool m_bIsSummonAbility;                                                          // 0x02A8 (size: 0x1)
    bool m_bIsSummonLastHit;                                                          // 0x02A9 (size: 0x1)
    bool m_bIsSettledAutoTameMonster;                                                 // 0x02AA (size: 0x1)
    class ULevelSequencePlayer* m_cActionCommandSequencePlayer;                       // 0x02B0 (size: 0x8)
    class ABattleAbilitySequenceActor* m_cActionCommandSequenceActor;                 // 0x02B8 (size: 0x8)
    class ULevelSequence* m_cCommandSequence;                                         // 0x02C0 (size: 0x8)
    bool m_bEnableCommandSequence;                                                    // 0x02C8 (size: 0x1)
    bool m_bReadyCommandSequence;                                                     // 0x02C9 (size: 0x1)
    int32 m_nTotalSlideFrame;                                                         // 0x02CC (size: 0x4)
    bool m_bExecCommandSequence;                                                      // 0x02D0 (size: 0x1)
    bool m_bIsInfomation;                                                             // 0x02D1 (size: 0x1)
    bool m_bIsOnHitSE;                                                                // 0x02D2 (size: 0x1)
    FName m_strOnHitSEID;                                                             // 0x02D4 (size: 0x8)
    bool m_bIsSessionSupport;                                                         // 0x02DC (size: 0x1)
    bool m_bIsBusinessSupport;                                                        // 0x02DD (size: 0x1)
    FText m_strBusinessSupportInfo;                                                   // 0x02E0 (size: 0x18)

    bool WeaponChangeCommand(EWEAPON_CATEGORY WeaponType);
    bool WaitSummonAbilityCommand();
    void WaitSummonAbility();
    bool WaitSessionSupporterCommand();
    bool WaitSessionAbilityCommand();
    void WaitLoadCommandSequence();
    bool WaitEnemyActionCommand();
    void WaitCaptureMainPartyCommand();
    void WaitCallSubPartyCommand();
    bool WaitBusinessSupporterCommand();
    void SuspendActionCommand();
    void StartCommandSequence();
    bool ShowInfomationCommand(FName TextID);
    bool ShowBusinessSupportInfomationCommand();
    bool SetupRandomAbilityEffect();
    void SetTargetList(TArray<class ABattleCharacterBase*>& acTargetList);
    bool SetSummonAbility(bool bEnable, bool bLastHit, FName strActionLabel, class AActionCommandBase* cOwnerAbility);
    void SetSubTargetList(TArray<class ABattleCharacterBase*>& acSubTargetList);
    void SetSubEnforcerList(TArray<class ABattleCharacterBase*>& acSubEnforcerList);
    void SetSettledPlayOnce_OnRecovered(bool bEnable);
    void SetSettledAutoTameMonster(bool bExec);
    void SetOptionDataList(TArray<FName>& astrOptionDataList, FName strActionLabel, int32 nOptionIndex, bool bUseGrowMagicBuff);
    void SetOptionData(FName strOptionData, int32 nOptionIndex);
    void SetExecutedCounterTrap(bool bExec);
    void SetEnforcer(class ABattleCharacterBase* cEnforcer);
    void SetBusinessSupportInfomationText(const FText& strInfoText);
    void SetAttackHitFailed(bool bFailed);
    void SetAdditiveBreakDamage(int32 nBreakDamage);
    void SetActionCommandSequenceActor(class ABattleAbilitySequenceActor* cSequenceActor);
    bool ReturnSummonCharacterCommand();
    bool ReturnSessionSupporterCommand();
    bool ReturnBusinessSupporterCommand();
    void ResumeActionCommandSequencer();
    void RequestLoadCommandSequence(const TSoftObjectPtr<ULevelSequence>& cCommandSequence);
    bool RegisterOnHitSECommand(FName SEID);
    bool PlayWeaponAttackCommand(class ABattleCharacterBase* ActionCharacter);
    bool PlayVoiceCommand(EBATTLE_VOICE_TYPE VoiceID, EPlayableCharacterID UniqueCharaID, EBATTLE_VOICE_TYPE UniqueVoiceID);
    bool PlayVibrationCommand(FName VibrationID, EVibrationPower Power);
    bool PlaySessionActionCommand(EKSCharacterAction BattleActionID);
    bool PlaySECommand(FName SEID);
    bool PlayBusinessSupportActionCommand(EKSCharacterAction BattleActionID);
    bool PlayActionForSelfOnlyCommand(class ABattleCharacterBase* ActionCharacter, EKSCharacterAction BattleSelfActionID, EKSCharacterAction BattleOtherActionID, bool bExceptEnforcer);
    bool PlayActionCommand(class ABattleCharacterBase* ActionCharacter, EKSCharacterAction BattleActionID, EPlayableCharacterID UniqueCharaID, EKSCharacterAction UniqueActionID, bool bExceptEnforcer);
    bool PlayAbilitySECommand(int32 Index);
    void PauseActionCommandSequencer();
    bool OnAttackDamageSP(class ABattleCharacterBase* cEnforcer);
    bool OnAttackDamageHP(class ABattleCharacterBase* cEnforcer);
    void IsUseItemCommand(bool& bIsUseItemCommand, bool& bIsMeatItem);
    bool IsSettledAutoTameMonster();
    bool IsSessionSupportCommand();
    bool IsPlayOnHitDamageVoice();
    void IsMusicalCommand(bool& bIsSong, bool& bIsDance);
    bool IsForceWeakness();
    bool IsBusinessSupportCommand();
    bool HideInfomationCommand();
    TArray<class ABattleCharacterBase*> GetTargetList();
    TArray<class ABattleCharacterBase*> GetSubTargetList();
    TArray<class ABattleCharacterBase*> GetSubEnforcerList();
    bool GetSettledPlayOnce_OnRecovered();
    void GetInvadeMonsterSize(ECHARACTER_SIZE& outCharacterSize);
    bool GetExecutedCounterTrap();
    class ABattleCharacterBase* GetEnforcer();
    void GetCriticalPower(bool bCritical, float& outRatio);
    bool GetAttackHitFailed();
    FName GetActionLabel();
    FName GetAbilityEffect(int32 nIndex);
    void FinishCommandSequence();
    bool ExecSummonCharacterCommand(int32 nSummonIndex, bool bRandom);
    bool ExecSummonAbilityCommand(int32 nSummonIndex);
    bool ExecStepCounter();
    bool ExecStartCharacterWarpCommand(FVector cCommandOffset);
    bool ExecSpecialAilmentCommand();
    bool ExecSessionAbilityCommand();
    bool ExecPlayDiseaseMissUI();
    bool ExecEndCharacterWarpCommand();
    void ExecCaptureMainPartyCommand();
    void ExecCallSubPartyCommand();
    bool ExecAilmentCommand(int32 Index, bool AllAilment, bool LastHit);
    float ConvertFrameToSecondByFrameRate(int32 nFrameNumber, FFrameRate cFrameRate);
    bool CheckStealMoney(class ABattleCharacterBase* cStealTarget, int32 nStealRateMin);
    bool CheckStealItem(class ABattleCharacterBase* cStealTarget, int32 nStealRateMin);
    EBATTLE_SEQUENCE_PATTERN_TYPE CheckSequencePattern();
    bool CheckLastHit(class ABattleCharacterBase* cTarget);
    bool CheckEnableExcitementBuff();
    bool CheckEnableAutoTameMonster();
    bool CheckBoostLevelLess(int32 nBorderLevel, bool bContainEqual);
    bool CheckBoostLevelGreater(int32 nBorderLevel, bool bContainEqual);
    bool CheckAttackCounter();
    bool CheckAbilityHit();
    bool CallSessionSupporterCommand();
    bool CallBusinessSupporterCommand();
    void CalcBreakDamage(EATTRIBUTE_RESIST eAttributeWeak, EATTRIBUTE_RESIST eWeaponWeak, int32& outBreakDamage);
}; // Size: 0x2F8

class AActivityManager : public AAcqManagerBase
{
    class UKSSaveSystem* m_CacheSaveDataForMerge;                                     // 0x0230 (size: 0x8)

    void SetSystemSaveDataForMerge(class UKSSaveSystem* saveDataOther);
    void MergeActivitySaveDataOnPostLoadSlot();
    void MergeActivitySaveData(const class UKSSaveSystem* saveDataOther);
    void ClearSystemSaveDataForMerge();
}; // Size: 0x238

class ABattleAbilitySequenceActor : public ALevelSequenceActor
{
    TArray<class ABattleSequenceEmitter*> m_acAbilityHitEffectList;                   // 0x02A8 (size: 0x10)
    TArray<class ABattleSequenceEmitter*> m_acSupportRotationEffectList;              // 0x02B8 (size: 0x10)
    bool m_bPauseAbilitySequenceUpdate;                                               // 0x02C8 (size: 0x1)

    void SetSupportRotationEffectList(TArray<class ABattleSequenceEmitter*>& acEffectList);
    void SetAbilitySequencePause(bool bPauseEnable);
    void SetAbilityHitEffectList(TArray<class ABattleSequenceEmitter*>& acEffectList);
    bool GetAbilitySequencePause();
}; // Size: 0x2D0

class ABattleActionOrder : public AActor
{
    TArray<FActionOrderData> m_acActionOrderPool;                                     // 0x0220 (size: 0x10)
    TArray<FActionOrderData> m_acCurrentOrder;                                        // 0x0230 (size: 0x10)
    TArray<FActionOrderData> m_acReserveCurrentOrder;                                 // 0x0240 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acCurrentCharacter;                         // 0x0250 (size: 0x10)
    TArray<FActionOrderData> m_acEstimateCurrentOrder;                                // 0x0260 (size: 0x10)
    TArray<FActionOrderData> m_acNextOrder;                                           // 0x0270 (size: 0x10)
    TArray<FActionOrderData> m_acReserveNextOrder;                                    // 0x0280 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acNextCharacter;                            // 0x0290 (size: 0x10)
    TArray<FActionOrderData> m_acEstimateNextOrder;                                   // 0x02A0 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acCurrentCharacterForSubParty;              // 0x02B0 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acNextCharacterForSubParty;                 // 0x02C0 (size: 0x10)
    TArray<FActionOrderData> m_acCurrentOrderForSubParty;                             // 0x02D0 (size: 0x10)
    TArray<FActionOrderData> m_acNextOrderForSubParty;                                // 0x02E0 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acSubPartyPlayerList;                       // 0x02F0 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acSubEnemyList;                             // 0x0300 (size: 0x10)
    int32 m_nActionCharacterCount;                                                    // 0x0310 (size: 0x4)

    bool UpdateNextOrderIndex();
    bool UpdateNextOrder();
    bool UpdateCurrentOrderIndex();
    bool SubActionCharacterCount();
    bool SortPredicateByWaitTime(const FActionOrderData& cElementA, const FActionOrderData& cElementB);
    bool SortPredicateByNextTime(const FActionOrderData& cElementA, const FActionOrderData& cElementB);
    bool SortActionOrderByWaitTime(TArray<FActionOrderData>& acTargetOrder);
    bool SortActionOrderByNextTime(TArray<FActionOrderData>& acTargetOrder);
    bool ShuffleActionOrder(TArray<FActionOrderData>& acTargetOrder);
    bool SetupSubPartyPlayer(TArray<class ABattleCharacterBase*>& acSubPartyPlayer);
    bool SetupFirstTurnPlayer();
    bool SetNextOrderChange(class ABattleCharacterBase* cTargetCharacter);
    void SetEstimateActionOrderChange(TArray<FActionOrderData>& acTargetOrder, class ABattleCharacterBase* cTargetCharacter, EACTION_ORDER_TYPE eOrderType, bool bBuffOrder, bool& FindCharacter);
    bool SetCurrentOrderChange(class ABattleCharacterBase* cTargetCharacter);
    bool SetBattleFirstActionTurn(TArray<class ABattleCharacterBase*>& acFirstActionCharacter);
    bool SetActionOrderChange(TArray<FActionOrderData>& acTargetOrder, class ABattleCharacterBase* cTargetCharacter);
    bool SealActionOrder(class ABattleCharacterBase* cTarget, FActionOrderData& cTargetOrder, bool& bSealNextOrder);
    bool ResetNextOrderForIsOrderChange();
    bool ResetEstimateNextOrder();
    bool ResetEstimateCurrentOrder();
    bool ResetCurrentOrderForIsOrderChange();
    bool ResetCurrentCharacterWaitTime();
    bool ResetActionOrderForIsOrderChange(TArray<FActionOrderData>& acTargetOrder);
    bool ReplaceActionOrder(TArray<FActionOrderData>& acTargetOrder, TArray<FActionOrderData>& acReserveList, EACTION_ORDER_TYPE eType, class ABattleCharacterBase* cReplaceCharacter, int32 nReplaceIndex, bool bReturnOrderToReserve, FActionOrderData& cReplaceOrder);
    bool RemoveNextOrderForSubParty(class ABattleCharacterBase* cTargetCharacter);
    bool RemoveNextOrder(class ABattleCharacterBase* cTargetCharacter, bool bEverSince);
    bool RemoveCurrentOrderForSubParty(class ABattleCharacterBase* cTargetCharacter);
    bool RemoveCurrentOrder(class ABattleCharacterBase* cTargetCharacter);
    bool RemoveBreakStyleOrder(TArray<FActionOrderData>& acTargetOrder, TArray<FActionOrderData>& acReserveList);
    bool RemoveBreakStyle();
    bool RemoveActionOrderForEstimate(TArray<FActionOrderData>& acTargetOrder, class ABattleCharacterBase* cTargetCharacter);
    bool RemoveActionOrderByIndex(TArray<FActionOrderData>& acTargetOrder, TArray<FActionOrderData>& acReserveList, int32 nRemoveIndex);
    bool RemoveActionOrder(TArray<FActionOrderData>& acTargetOrder, TArray<FActionOrderData>& acReserveList, class ABattleCharacterBase* cTargetCharacter);
    void PopOrder(class ABattleCharacterBase*& cNextCharacter, FActionOrderData& cNextOrderData);
    bool PlaySubIconOpenAnim(TArray<FActionOrderData>& OrderData);
    bool PlaySubIconCloseAnim(TArray<FActionOrderData>& OrderData);
    bool MoveActionOrderByIndex(TArray<FActionOrderData>& acTargetOrder, int32 nTargetIndex, int32 nToIndex);
    bool MoveActionOrder(TArray<FActionOrderData>& acTargetOrder, EACTION_ORDER_TYPE eType, int32 nMoveCount, bool bIsNextOrder);
    bool IsSettledOrderForEightBattle();
    bool IsNextCharacterCross();
    bool IsNextCharacterContinue(class ABattleCharacterBase* cCheckCharacter);
    bool IsCurrentOrderComplete();
    bool InsertNextOrderForSubParty(int32& nInsetIndex, class ABattleCharacterBase* cTargetCharacter);
    bool InsertNextOrder(int32& nInsetIndex, class ABattleCharacterBase* cTargetCharacter, EACTION_ORDER_TYPE eType, float fDelay, bool bUseIcon);
    bool InsertCurrentOrderForSubParty(int32& nInsetIndex, class ABattleCharacterBase* cTargetCharacter);
    bool InsertCurrentOrder(int32& nInsetIndex, class ABattleCharacterBase* cTargetCharacter, EACTION_ORDER_TYPE eType, float fDelay, bool bUseIcon);
    bool InsertActionOrder(TArray<FActionOrderData>& acTargetOrder, FActionOrderData& cInsertOrder, int32& nInsetIndex);
    bool InitializeActionOrder(TArray<class ABattleCharacterBase*>& acBattlePlayer, TArray<class ABattleCharacterBase*>& acBattleEnemy, EBATTLE_START_TYPE eStartType);
    bool GetOrderIconFromCharaRef(TArray<FActionOrderData>& searchArray, class ABattleCharacterBase* targetRef, FActionOrderData& Data);
    void GetOrder(class ABattleCharacterBase*& cNextCharacter, FActionOrderData& cNextOrderData);
    void GetEstimateActionOrderList(TArray<FActionOrderData>& acCurrentOrder, TArray<FActionOrderData>& acNextOrder);
    void GetActionOrderList(TArray<FActionOrderData>& acCurrentOrder, TArray<FActionOrderData>& acNextOrder);
    bool FindNextOrderByCharacter(class ABattleCharacterBase* cTargetCharacter, TArray<FActionOrderData>& acFindOrderList);
    bool FindCurrentOrderByCharacter(class ABattleCharacterBase* cTargetCharacter, TArray<FActionOrderData>& acFindOrderList);
    bool ExecMoveNextOrder(EACTION_ORDER_TYPE eType, int32 nMoveCount);
    bool ExecMoveCurrentOrder(EACTION_ORDER_TYPE eType, int32 nMoveCount);
    bool ExecEstimateNextOrder(TArray<class ABattleCharacterBase*>& acTargetCharacter, EACTION_ORDER_TYPE eOrderType, int32 nMoveCount);
    bool ExecEstimateCurrentOrder(TArray<class ABattleCharacterBase*>& acTargetCharacter, EACTION_ORDER_TYPE eOrderType, int32 nMoveCount);
    bool ExecEstimateActionOrder(TArray<class ABattleCharacterBase*>& acTargetCharacter, EACTION_ORDER_TYPE eOrderType, int32 nMoveCount, bool bContainCurrentOrder, bool bContinueEstimate);
    bool EndCharacterOrderForEightBattle();
    bool Debug_OutputOrderLogFromBodyList(FString Title, TArray<FString> BodyList);
    bool Debug_OutputOrderLog(FString Title, FString Body);
    bool Debug_OutputOrderIconLog(const class UActionOrderIcon* cIcon, FString Title);
    bool Debug_GetCommonOrderDataLog(const FActionOrderData cTarget, bool IsCurrent, FString& OutBody);
    bool CreateSubPartyOrder(TArray<class ABattleCharacterBase*>& acSubPartyCharacter, TArray<FActionOrderData>& acOriginalOrder, TArray<FActionOrderData>& acOrderResult, TArray<FActionOrderData>& acReserveList, TArray<FActionOrderData>& acBribeOrderList, bool IsNextOrder);
    bool CreateSubPartyCharacterList(TArray<class ABattleCharacterBase*>& acSubPartyCharacter, TArray<FActionOrderData>& acOrderResult, bool IsNextOrder);
    bool CreateMainPartyCharacterList(TArray<FActionOrderData>& acOriginalOrder, TArray<FActionOrderData>& acOrderResult);
    bool CreateActionOrder(TArray<class ABattleCharacterBase*>& acBattleCharacter, TArray<FActionOrderData>& acOrderResult, TArray<FActionOrderData>& acReserveList);
    bool ClearCurrentOrder();
    bool CheckSpecialOrderAllAGIUp(int32 AbilityID);
    bool CheckSpecialOrderAGIUpSelfDown(int32 AbilityID);
    bool CheckShuffleEnable(FActionOrderData cTargetOrder);
    bool CheckEnablePartyChangeOrder(EACTION_ORDER_TYPE eOrderType);
    bool ChangeBattleTurn();
    bool ChangeBattleSubParty(class ABattleCharacterBase* cActiveCharacter, bool DefeatChange);
    bool ChangeBattlePartyMember(TArray<class ABattleCharacterBase*>& acChangePlayerList);
    bool BribeActionOrder(class ABattleCharacterBase* cEnforcer, class ABattleCharacterBase* cTarget, FActionOrderData& cReplaceOrder, FActionOrderData& cTargetOrder, bool& bReplaceNextOrder);
    bool BreakActionOrder(class ABattleCharacterBase* cTargetCharacter);
    void AssignNextOrderIndex();
    void AssignCurrentOrderIndex();
    bool AddNextOrderCharacter(class ABattleCharacterBase* cAddCharacter);
    bool AddLastActionOrder(TArray<FActionOrderData>& acTargetOrder, FActionOrderData& cInsertOrder, int32& nInsetIndex);
}; // Size: 0x318

class ABattleCamera : public ACineCameraActor
{
    FBattleCameraInitData m_cCameraInitData;                                          // 0x0830 (size: 0x48)
    EBATTLE_CAMERA_TYPE m_eCameraType;                                                // 0x0878 (size: 0x1)
    FTransform m_cResumeTransform;                                                    // 0x0880 (size: 0x30)
    FTransform m_cStartTransformForTargetFocus;                                       // 0x08B0 (size: 0x30)
    FTransform m_cGoalTransformForTargetFocus;                                        // 0x08E0 (size: 0x30)
    FTransform m_sBaseTransform;                                                      // 0x0910 (size: 0x30)
    FTransform CameraTransform;                                                       // 0x0940 (size: 0x30)
    bool bCameraWaitMove;                                                             // 0x0970 (size: 0x1)

    void StartResulttCamera(EBATTLE_RESULT_TYPE eResultType, bool bIsFront);
    void StartEnemyDeadCamera(EBREAK_CAMERA_TYPE eBreakType);
    void StartEncountCamera();
    void StartBreakCamera(EBREAK_CAMERA_TYPE eBreakType);
    void StartAbilityCamera(int32 nBoostLevel, EBATTLE_TARGET_TYPE eTargetType, int32 nSlideFrame, class AActionCommandBase* cActionCommand, bool bEnemySide, bool bIsFront, FName strAbilityName);
    void SetupBaseTransform();
    void SetTargetFocusCamera(EBATTLE_TARGET_TYPE eTargetType, class ABattleCharacterBase* cTarget);
    void SetInterpolationCurveForAbilityCamera(class UCurveFloat* cInterpolationCurve);
    void SetCameraWaitMove(bool bEnable);
    void SetCameraTransform(FTransform cTransform);
    void ResumeWaitMove();
    void ResetTargetFocusCamera();
    void ResetCameraTransform();
    void PostCameraTick(float DeltaTime);
    void InterpolationResultCamera(float fRatio, class ACineCameraActor* cTargetCamera);
    void InterpolationBattleCamera(class UCurveFloat* cInterpolationCurve, float fRatio, class ACineCameraActor* cTargetCamera);
    void InterpolationAbilityCamera(float fRatio, class ACineCameraActor* cTargetCamera);
    FRotator GetLastLookatTrackingRotation(class ACineCameraActor* cTargetCamera);
    FVector GetLastLookatTrackingPosition(class ACineCameraActor* cTargetCamera);
    void GetCameraInitParameterForAbilityCamera(FPostProcessSettings& outPostSetting, FCameraFocusSettings& outFocusSetting, FCameraFilmbackSettings& outFilmbackSetting, FCameraLensSettings& outLensSetting, float& outCurrentAperture, float& outFOV);
    void GetAudioListenerPosition(FVector& OutLocation, FVector& outFrontDir, FVector& outRightDir);
    void FixBattleCamera();
    void FinishResultCamera();
    void FinishEncountCamera();
    void FinishBreakCamera();
    void FinishAbilityCamera();
    bool CheckZeroRotator(FRotator cRotator);
}; // Size: 0x980

class ABattleCharacterBase : public AActor
{
    int32 m_nCharacterID;                                                             // 0x0220 (size: 0x4)
    class AKSCharacterBase* m_cAnimationCharacter;                                    // 0x0228 (size: 0x8)
    TArray<class AKSCharacterBase*> m_acSubAnimationCharacter;                        // 0x0230 (size: 0x10)
    FCharacterParam m_cMasterParameter;                                               // 0x0240 (size: 0x34)
    int32 m_nCurrentHP;                                                               // 0x0274 (size: 0x4)
    int32 m_nDecreaseHPMax;                                                           // 0x0278 (size: 0x4)
    bool m_bIsChangedHPMax;                                                           // 0x027C (size: 0x1)
    int32 m_nCurrentMP;                                                               // 0x0280 (size: 0x4)
    int32 m_nCurrentBP;                                                               // 0x0284 (size: 0x4)
    int32 m_nCurrentBPMax;                                                            // 0x0288 (size: 0x4)
    int32 m_nCurrentShieldPoint;                                                      // 0x028C (size: 0x4)
    int32 m_nShieldPointMax;                                                          // 0x0290 (size: 0x4)
    class ABattleCharacterBase* m_cOwnerPlayer;                                       // 0x0298 (size: 0x8)
    int32 m_nUseBPInCurrentOrder;                                                     // 0x02A0 (size: 0x4)
    bool m_bUseBoost;                                                                 // 0x02A4 (size: 0x1)
    bool m_bBreakEnemyInCurrentOrder;                                                 // 0x02A5 (size: 0x1)
    bool m_bExecBreakAct;                                                             // 0x02A6 (size: 0x1)
    bool m_bCharacterReady;                                                           // 0x02A7 (size: 0x1)
    bool m_bAbilityHitFlag;                                                           // 0x02A8 (size: 0x1)
    bool m_bAbilityHitInvisible;                                                      // 0x02A9 (size: 0x1)
    bool m_bUseDamageCutShield;                                                       // 0x02AA (size: 0x1)
    bool m_bJustKillInAilment;                                                        // 0x02AB (size: 0x1)
    bool m_bReflectionEnforcer;                                                       // 0x02AC (size: 0x1)
    TMap<class EDISEASE_TYPE, class EATTRIBUTE_RESIST> m_aeDiseaseResist;             // 0x02B0 (size: 0x50)
    bool m_bHitDiseaseInAction;                                                       // 0x0300 (size: 0x1)
    bool m_bIsExceptField;                                                            // 0x0301 (size: 0x1)
    int32 m_nDragInIndex;                                                             // 0x0304 (size: 0x4)
    int32 m_nDragInIndexTest;                                                         // 0x0308 (size: 0x4)
    FVector m_vForceMovementStart;                                                    // 0x030C (size: 0xC)
    FVector m_vForceMovementGoal;                                                     // 0x0318 (size: 0xC)
    bool m_bIsExecForceMovement;                                                      // 0x0324 (size: 0x1)
    bool m_bResumeIdleAction;                                                         // 0x0325 (size: 0x1)
    bool m_bResumeIdleActionFixed;                                                    // 0x0326 (size: 0x1)
    EBATTLE_ACTION_TYPE m_eResumeIdleActionType;                                      // 0x0327 (size: 0x1)
    bool m_bIsAutoTameMonster;                                                        // 0x0328 (size: 0x1)
    bool m_bEnableBlind;                                                              // 0x0329 (size: 0x1)
    class UActionOrderComponent* m_cActionOrderComponent;                             // 0x0330 (size: 0x8)
    int32 m_nOrderCountMax;                                                           // 0x0338 (size: 0x4)
    int32 m_nCurrentOrderCountMax;                                                    // 0x033C (size: 0x4)
    int32 m_nCurrentOrderCounter;                                                     // 0x0340 (size: 0x4)
    int32 m_nCurrentActionTimeBase;                                                   // 0x0344 (size: 0x4)
    int32 m_nNextActionTimeBase;                                                      // 0x0348 (size: 0x4)
    TArray<FActionOrderData> m_acNextActionOrderData;                                 // 0x0350 (size: 0x10)
    class UBattleVoiceComponent* m_cBattleVoiceComponent;                             // 0x0360 (size: 0x8)
    bool m_bPlayOnRecoveredVoice;                                                     // 0x0368 (size: 0x1)
    bool m_bSettledPlayOnce_OnRecovered;                                              // 0x0369 (size: 0x1)
    class USceneComponent* m_cDefaultEffectSocket;                                    // 0x0370 (size: 0x8)
    class USceneComponent* m_cGroundEffectSocket;                                     // 0x0378 (size: 0x8)
    class USceneComponent* m_cChargeActionEffectSocket;                               // 0x0380 (size: 0x8)
    FTransform m_sBaseTransform;                                                      // 0x0390 (size: 0x30)
    bool m_bIsCharacterWarpMode;                                                      // 0x03C0 (size: 0x1)
    bool m_bEnableDeadCharacterControl;                                               // 0x03C1 (size: 0x1)
    FTransform CharaTransform;                                                        // 0x03D0 (size: 0x30)
    FTransform CanoeTransform;                                                        // 0x0400 (size: 0x30)
    bool VisibleCanoe;                                                                // 0x0430 (size: 0x1)
    bool EnableCanoeTrace;                                                            // 0x0431 (size: 0x1)
    float CharacterOpacity;                                                           // 0x0434 (size: 0x4)
    bool DisableBattleCameraOpacity;                                                  // 0x0438 (size: 0x1)
    FLinearColor PotentialityAction_BodyColor;                                        // 0x043C (size: 0x10)
    float PotentialityAction_EyesColor;                                               // 0x044C (size: 0x4)
    TArray<ESUPPORT_AILMENT_TYPE> m_aeSupportAilment;                                 // 0x0450 (size: 0x10)
    TMap<class ESUPPORT_AILMENT_TYPE, class FSupportAbilityDataBase> m_acSupportAbilityData; // 0x0460 (size: 0x50)
    EWEAPON_STANCE m_eWeaponStance;                                                   // 0x04B0 (size: 0x1)
    TArray<EWEAPON_CATEGORY> m_aeEquipmentWeaponList;                                 // 0x04B8 (size: 0x10)
    EWEAPON_CATEGORY m_eMainWeapon;                                                   // 0x04C8 (size: 0x1)
    int32 m_nMainWeaponIndex;                                                         // 0x04CC (size: 0x4)
    EWEAPON_CATEGORY m_eNormalAttackWeapon;                                           // 0x04D0 (size: 0x1)
    int32 m_nNormalAttackWeaponIndex;                                                 // 0x04D4 (size: 0x4)
    int32 m_nSwitchWeaponIndex;                                                       // 0x04D8 (size: 0x4)
    EWEAPON_CATEGORY m_eForteWeapon;                                                  // 0x04DC (size: 0x1)
    FName m_strForteWeaponID;                                                         // 0x04E0 (size: 0x8)
    class UPotentialityActionComponent* m_cPotentialityActionComponent;               // 0x04E8 (size: 0x8)
    bool m_bPotentialityActionEnable;                                                 // 0x04F0 (size: 0x1)
    int32 m_nExcitementPoint;                                                         // 0x04F4 (size: 0x4)
    bool m_bMasqueradeEnable;                                                         // 0x04F8 (size: 0x1)
    class UMasqueradeComponent* m_cMasqueradeComponent;                               // 0x0500 (size: 0x8)
    bool m_bInventorEnable;                                                           // 0x0508 (size: 0x1)
    class UInventorComponent* m_cInventorComponent;                                   // 0x0510 (size: 0x8)
    bool m_bChargeActionEnable;                                                       // 0x0518 (size: 0x1)
    TArray<FBattleAdditiveOrderData> m_acChargeActionDataList;                        // 0x0520 (size: 0x10)
    class UBattleAIBase* m_cBattleAIComponent;                                        // 0x0530 (size: 0x8)
    bool m_bBattleAIReady;                                                            // 0x0538 (size: 0x1)
    bool m_bIsPreparation;                                                            // 0x0539 (size: 0x1)
    bool m_bIsWeakIconFullOpen;                                                       // 0x053A (size: 0x1)
    FWeakLockData m_cCurrentWeakLockData;                                             // 0x0540 (size: 0x18)
    FWeakLockData m_cRequestWeakLockData;                                             // 0x0558 (size: 0x18)
    bool m_bIsUpdateWeakLockData;                                                     // 0x0570 (size: 0x1)
    FWeakChangeData m_cCurrentWeakChangeData;                                         // 0x0578 (size: 0x18)
    FWeakChangeData m_cRequestWeakChangeData;                                         // 0x0590 (size: 0x18)
    bool m_bIsUpdateWeakChangeData;                                                   // 0x05A8 (size: 0x1)
    FShieldChangeData m_cCurrentShieldChangeData;                                     // 0x05B0 (size: 0x18)
    FShieldChangeData m_cRequestShieldChangeData;                                     // 0x05C8 (size: 0x18)
    bool m_bIsUpdateShieldChangeData;                                                 // 0x05E0 (size: 0x1)
    bool m_bIsUpdateShieldChangeDataTest;                                             // 0x05E1 (size: 0x1)
    TArray<EATTRIBUTE_TYPE> m_aeOpenedAttributeList;                                  // 0x05E8 (size: 0x10)
    int32 m_nBribeCounter;                                                            // 0x05F8 (size: 0x4)
    float m_fBribeRatio;                                                              // 0x05FC (size: 0x4)
    bool m_bRequestSettingNextOrder;                                                  // 0x0600 (size: 0x1)
    TArray<FRequestActionOrderData> m_RequestSettingNextOrderData;                    // 0x0608 (size: 0x10)
    bool m_bRequestSettingNextTurnOnly;                                               // 0x0618 (size: 0x1)

    TArray<bool> WeakTypeToWeaponType(int32 eWeakLockType);
    TArray<bool> WeakTypeToMagicType(int32 eWeakLockType);
    bool UpdateWeakLock_PostOrder();
    bool UpdateWeakChange_PostOrder();
    bool UpdateSubStatusParam(bool UpdateBoost, bool UpdatePotential);
    bool UpdateStatusParam(bool UpdateBoost, bool UpdatePotential);
    bool UpdateShieldChange_PostOrder();
    bool UpdateRequestSettingNextOrder_PostOrder();
    bool UpdateChargeActionCount();
    bool TurnONStatusUI();
    bool TurnOffStatusUI();
    bool SwitchNormalAttackWeapon(bool bDirNext, int32& nWeaponIndex);
    bool SwitchMainWeapon(bool bDirNext, int32& nWeaponIndex);
    bool SwitchCatapultWeapon(bool bDirNext, int32& nWeaponIndex);
    bool SurveyOpenedWeakPoint(int32& nOpenedNum, int32& nWeakPointMax);
    void StopForceMovementTimeline();
    void StartForceMovementTimeline();
    void SetWeaponStance(EWEAPON_STANCE eStance);
    bool SetWeakIconFullOpen(bool bIsFullOpen);
    void SetVisibleCanoe(bool bVisible);
    void SetUseDamageCutShield(bool bUseShield);
    bool SetupSubAnimationCharacter(TArray<class ABattleCharacterBase*>& acTarget, FVector cCommandOffset);
    void SetupBaseTransform(EBATTLE_CHARA_POSITION_RESET_TYPE eResetType, bool bEnableDeadCharacterControl);
    bool SetupActionOrderSealAction(bool bEnable);
    bool SetupActionOrderBribe(bool bEnable);
    bool SetupActionOrderBlindFast(bool bEnable);
    bool SetupActionOrderBlind(bool bEnable);
    bool SetSupportAilment(FSupportAbilityDataBase cSupportAbilityData);
    bool SetShieldPointMax(int32 nShieldMax);
    void SetReflactionEnforcer(bool bEnable);
    void SetPotentialityAction_EyesColor(float fAlpha);
    void SetPotentialityAction_BodyColor(FLinearColor cColor);
    void SetGetBackBoostPoint(int32 nGetBackBoostPoint);
    void SetForceMovementTimelineCurve(class UCurveFloat* cMovementRatio, class UCurveVector* cMovementOffset, class UCurveFloat* cOpacityCurve, float fTimelineLength);
    void SetForceMovementParameter(FVector vStartPoint, FVector vGoalPoint, bool bResumeIdle, EBATTLE_ACTION_TYPE eResumeIdleType, bool bResumeIdleFixed);
    void SetExcitementPoint(class ABattleCharacterBase* cEnforcer, int32 nBoostLevel);
    bool SetEnableWeakLockData();
    bool SetEnableWeakChangeData();
    bool SetEnableShieldChangeData();
    void SetEnablePlayOnRecoveredVoice(bool bEnable);
    void SetEnableCanoeTrace(bool bEnable);
    void SetDisableBattleCameraOpacity(bool bDisable);
    void SetDefaultLocation(bool bInMainParty);
    void SetDecreaseHPMax(int32 DecreaseValue);
    void SetDebugSwitch(EBATTLE_DEBUG_SWITCH eType, bool bValue);
    void SetDeadFlagForReplay(bool bDeadFlag);
    void SetCharaTransform(FTransform cTransform);
    void SetCharacterOpacityForActionCommand(float fOpacity);
    void SetCharacterOpacity(float fOpacity);
    void SetCharacterName(FName strCharacterNameLabel);
    void SetCanoeTransform(FTransform cTransform);
    bool SetBoostPointMax(int32 nBoostMax);
    void SetAbilityHitFlag(bool bAbilityHit, bool bAbilityHitInvisible);
    bool SearchDiseaseForAI(EDISEASE_TYPE DiseaseType);
    bool SearchDiseaseByCategoryForAI(EDISEASE_CATEGORY DiseaseCategory);
    bool SaveCharacterParameter();
    void ReturnCaptureMove();
    bool RestoreGroggy();
    bool RestoreBreak();
    void ResetVoiceFlagForPreAction();
    bool ResetSelectWeaponForMasquerade(EWEAPON_CATEGORY eTargetWeapon);
    void ResetHitDiseaseForPreAction();
    void ResetExcitementPoint();
    void ResetCanoeTransform();
    void ResetBattleCharacterForReplay();
    bool RequestWeakLock(FWeakLockData cNewWeakLockData);
    bool RequestWeakChange(FWeakChangeData cNewWeakChangeData);
    bool RequestShieldChange(FShieldChangeData cNewShieldChangeData);
    bool RemoveDiseaseForSequencer(FName DiseaseName);
    bool RemoveDiseaseForAI(EDISEASE_TYPE DiseaseType);
    void ReleasePotentialityAction();
    void RecoveryPotentialityActionPoint(class ABattleCharacterBase* cEnforcer, int32 nValue, bool bUseRecoveryUI, bool bIsMeatItem);
    void RecoveryMP(class ABattleCharacterBase* cEnforcer, int32 nValue, bool bOverHeal, bool bUseRecoveryUI, bool bIsMeatItem);
    void RecoveryHP(class ABattleCharacterBase* cEnforcer, int32 nValue, bool bOverHeal, bool bUseRecoveryUI, bool bIsMeatItem);
    void RecoveryBP(class ABattleCharacterBase* cEnforcer, int32 nValue, bool bUseRecoveryUI, bool bIsMeatItem);
    FBattleAdditiveOrderData PopChargeActionData();
    void PlayCaptureMove();
    bool PlayBattleVoiceForDamage(int32 nDamageValue, class AActionCommandBase* cActionCommand);
    bool PlayBattleVoice(EBATTLE_VOICE_TYPE eBattleVoiceType, FBattleVoiceSetData cPlayCondition, bool bIsSkipDiseaseCheck);
    bool OpenWeakIcon(int32 nIndex, bool bRandom, bool bPreparation, bool bPlay2nd, int32& bOpenIndex);
    bool OnTakeNewDisease(EDISEASE_TYPE eDiseaseType);
    bool OnTakeDisease(class ABattleCharacterBase* cEnforcer, EDISEASE_TYPE eDiseaseType, EDISEASE_CATEGORY eDiseaseCategory, int32 nInvocationValue, int32 nBoostLevel, bool bIsNewDisease);
    bool OnPotentialityAction();
    bool OnHitDamageSP(bool bIsBreakAttack);
    bool OnHitDamageHP(bool bIsBreakAttack, bool bIsBreakTarget, EATTRIBUTE_RESIST eTotalResist, EATTRIBUTE_RESIST eWeaponResist);
    void OnFinish_CreateBattleAI();
    bool OffPotentialityAction(bool bCancel);
    void MoveLastNextOrder();
    bool IsWeakIconFullOpen();
    bool IsSupporterComplete();
    bool IsSelecterEffectVisibleSealAction();
    bool IsSelecterEffectVisibleNormal();
    bool IsSelecterEffectVisibleBribe();
    bool IsPotentialityActionEnable();
    bool IsMasqueradeEnable();
    void IsJustKillInAilment(bool& bJustKill);
    bool IsInventorEnable();
    bool IsHitDiseaseInAction();
    bool IsGarderaAbility(FName AbilityName);
    bool IsExecForceMovement();
    bool IsExecBreakAct();
    bool IsExceptField();
    bool IsCharacterTameMonster();
    bool IsCharacterSupporter();
    bool IsCharacterReady();
    bool IsCharacterPinch();
    bool IsCharacterNPC();
    bool IsCharacterNonPartsBattle();
    void IsCharacterGroggy(bool& bIsGroggy, bool& bEnableCurrentAction, bool& bEnableNextAction);
    bool IsCharacterEnemy();
    bool IsCharacterDisableAction();
    bool IsCharacterDecondition();
    bool IsCharacterDeadlySense();
    bool IsCharacterDead();
    bool IsCharacterBreak();
    bool IsAutoTameMonster();
    void InterruptCurrentOrder(FRequestActionOrderData cActionOrderData);
    void InitUseDamageCutShield();
    bool InitializeBattleVoiceDataData(FName strVoiceCharacterID);
    bool InitializeActionOrderData();
    EWEAPON_STANCE GetWeaponStance();
    void GetWeaponResist(EWEAPON_CATEGORY eAttackWeapon, bool bCheckWeakLock, EATTRIBUTE_RESIST& eResistResult);
    void GetWaitEnemyActionFrame(int32& nWaitFrame);
    void GetTameMonsterData(bool& bTameEnable, float& fTameRateBase);
    int32 GetSwitchWeaponIndex();
    ESESSION_SE_TYPE GetSessionSEType();
    void GetReplayStatus(bool bIsSelfTurn, EBATTLE_REPLAY_CHARA_STATUS& eReplayStatus);
    void GetReplayDiseaseMask(int32& nDiseaseMask);
    class UPotentialityActionComponent* GetPotentialityActionComponent();
    void GetPlayableCharacterID(EPlayableCharacterID& eCharaID);
    class ABattleCharacterBase* GetOwnerPlayer();
    bool GetOpenedAttribute(int32 nIndex, EATTRIBUTE_TYPE& eResult);
    int32 GetNormalAttackWeaponIndex();
    EWEAPON_CATEGORY GetNormalAttackWeaponCategory();
    FActionOrderData GetNextActionOrderData(int32 nOrderIndex);
    class UMasqueradeComponent* GetMasqueradeComponent();
    EWEAPON_CATEGORY GetMainWeaponCategory();
    class UInventorComponent* GetInventorComponent();
    FName GetForteWeaponID();
    int32 GetExcitementPoint();
    TArray<EWEAPON_CATEGORY> GetEquipmentWeaponCategory();
    TArray<FItemData> GetEquipmentList();
    TArray<FName> GetEquipmentLabelList();
    bool GetEnchantAttribute(EWEAPON_CATEGORY eCheckWeapon, EATTRIBUTE_TYPE& eEnchantAttribute);
    bool GetEnablePlayOnRecoveredVoice();
    bool GetEnableBlind();
    void GetDiseaseResist(EDISEASE_TYPE eDiseaseType, EATTRIBUTE_RESIST& eResistResult);
    void GetDelayEnemyActionSE(TArray<FActionDelaySEData>& acActionDelaySEData, bool& bEnable);
    FVector GetDefaultWarpPosition();
    int32 GetDecreaseHPMax();
    class UDebugBattleCharaComponent* GetDebugComponent();
    FVector GetCursorPosition();
    FVector GetCurrentPosition();
    FName GetCharmEnemyLabel();
    void GetCharacterVoice_BattleStart(FName& strVoiceID, bool& bFindVoiceID);
    void GetCharacterName(FText& strCharacterName);
    void GetCharacterJobByRowID(int32& nFirstJob, int32& nSecondJob);
    void GetCharacterJob(EJOB_TYPE& eFirstJob, EJOB_TYPE& eSecondJob, bool& bEnableSecondJob);
    void GetCharacterID(int32& nCharaID);
    void GetCharacterEvation(int32& Result, float& Ratio);
    void GetCharacterDefence(EAILMENT_CALC_TYPE CalcType, int32& Result, float& Ratio);
    void GetCharacterConcentrate(int32& Result, float& Ratio);
    void GetCharacterAttack(EAILMENT_CALC_TYPE CalcType, class ABattleCharacterBase* DamageTarget, int32& Result, float& Ratio);
    void GetCharacterAgility(int32& Result, float& Ratio);
    void GetCharacterAccuracy(int32& Result, float& Ratio);
    bool GetBribeData(bool& BribeEnable, int32& BribeMoney);
    class UBattleVoiceComponent* GetBattleVoiceComponent();
    class USceneComponent* GetBattleEffectSocket(bool bGround);
    class UBattleAIBase* GetBattleAIComponent();
    void GetAttributeResist(EATTRIBUTE_TYPE eAttackAttribute, bool bCheckWeakLock, EATTRIBUTE_RESIST& eResistResult);
    class AKSCharacterBase* GetAnimationCharacter();
    class AActor* GetAnimationActorForAttach();
    int32 GetActionTimeForNextTurn(EACTION_ORDER_TYPE eType, float fDelayRatio);
    int32 GetActionTimeForCurrentTurn(EACTION_ORDER_TYPE eType, float fDelayRatio);
    class UActionOrderComponent* GetActionOrderComponent();
    FName GetAbilityData(int32 nIndex);
    bool FinishPotentialityAction(bool bCheckResume);
    void FinishChangePartySequence();
    void ExecSwitchSlidePartySubToMain();
    void ExecSwitchSlidePartyMainToSub();
    bool ExecStartCharacterWarp();
    void ExecSettingNextOrder(TArray<FRequestActionOrderData>& acActionOrderData, bool bNextTurnOnly, bool bRequest);
    void ExecRevive(class ABattleCharacterBase* cEnforcer, int32 nReviveHP, bool bOverHeal, bool bUseRecoveryUI, bool bUseReviveVoice);
    void ExecReturnSupporterAction(bool bWithReturnText);
    void ExecReturnCharmAction();
    bool ExecEndCharacterWarp();
    void ExecDragInAction(class ABattleCharacterBase* Enforcer, int32 nInvocationTurn, EBATTLE_DRAG_IN_TYPE eDragInType);
    void ExecCharmAction(class ABattleCharacterBase* Enforcer);
    void ExecBlowAwayAction(class ABattleCharacterBase* Enforcer, int32 nInvocationTurn);
    bool EndCharacterOrder(float& fWaitTime);
    bool EndBattleTurnForSubParty(float& fWaitTime);
    bool DecideActionForSubParty(float& fWaitTime);
    bool Debug_SetActionDelaySEData(TArray<FActionDelaySEData>& cSEData);
    bool Debug_GetActionDelaySEData(TArray<FActionDelaySEData>& cSEData);
    void CreateSubAnimationCharacter(int32 nCreateNum);
    bool CreateOpenedAttributeList(int32& nAttributeNum, int32& nAttributeMax);
    void CreateBattleEffectSocket(FVector vEffectOffset);
    void CreateBattleAI(const TSoftClassPtr<UBattleAIBase>& cBattleAIClass, bool bAutoInitialize);
    bool CheckWrapAroundEnable(FActionOrderData cTargetOrderData, EACTION_ORDER_TYPE eRequestType, bool bIsNextTurn, bool bMoveForward);
    void CheckWeaponWeakOpen(EWEAPON_CATEGORY eWeaponCategory, bool& bOpened);
    void CheckUseDamageCutShield(bool& bUseShield);
    bool CheckSupportAilment(ESUPPORT_AILMENT_TYPE eSupportAilment, FSupportAbilityDataBase& cSupportAbilityData);
    bool CheckShuffleEnable();
    bool CheckReflactionEnforcer();
    bool CheckPreparationSealing(ECOMMAND_SUB_MENU_TYPE eSubMenuType);
    bool CheckPotentialityActionExec(EPOTENTIALITY_ACTION_TYPE eActionType);
    bool CheckOverTakeEnable(FActionOrderData cTargetOrderData, EACTION_ORDER_TYPE eRequestType, bool bIsNextTurn);
    bool CheckLastOrderInTurn();
    bool CheckFirstOrderInTurn();
    bool CheckExecedPreparation();
    void CheckExecDiseaseForPostOrder(bool& bEnable);
    bool CheckEquipmentWeapon(EWEAPON_CATEGORY eCheckWeapon);
    bool CheckEnableStealthTarget();
    bool CheckEnableStealthCursor();
    bool CheckEnableStealthActionOrder();
    bool CheckDebugSwitch(EBATTLE_DEBUG_SWITCH eType);
    bool CheckCharacterReviveEnable(bool bReviveAndRecovery);
    bool CheckBoostPointMax();
    void CheckAttributeWeakOpen(EATTRIBUTE_TYPE eAttributeType, bool& bOpened);
    void CheckAbilityHitFlag(bool& bAbilityHitFlag, bool& bAbilityHitInvisible);
    bool ChangeMainWeapon(EWEAPON_CATEGORY eTargetWeapon, bool bUseWeaponTexture);
    bool ChangeActionModeForGaldera();
    bool ChangeActionMode(bool bIsSpecial, int32 nModeIndex, bool bUseTransition);
    bool BeginCharacterOrder(float& fWaitTime);
    bool ApplyChangeActionMode();
    bool AddPotentialityActionPoint(int32 nAddPoint, bool bIgnore);
    bool AddMaxHP(int32 nAdditiveMaxHP);
    bool AddDiseaseForSequencer(FName DiseaseName, int32 InvocationValue, int32 InvocationTurn);
    bool AddDiseaseForAI(FName DiseaseName, int32 InvocationValue, int32 InvocationTurn, class ABattleCharacterBase* Enforcer);
    bool AddChargeActionData(FName strAbilityName, TArray<class ABattleCharacterBase*>& acTargetList);
    bool AddBribeCounter();
    class UActorComponent* AddActorComponent(UClass* cActorComponentClass);
}; // Size: 0x630

class ABattleCommandMenuActor : public AActor
{
    bool m_bIsTargetEnemySide;                                                        // 0x0220 (size: 0x1)
    TArray<FName> m_astrOptionDataList;                                               // 0x0228 (size: 0x10)
    FName m_strUseActionLabel;                                                        // 0x0238 (size: 0x8)
    TArray<bool> m_acCommandSealingList;                                              // 0x0240 (size: 0x10)

    void SetupCommandSealingList();
    void SetCommandSealing(ECOMMAND_SEALING_TYPE eType, bool bSealing);
    bool OnStyleChange();
    bool OnPotentialityAction();
    bool OnBreakStyle();
    bool OnBoostStyle();
    bool OffPotentialityAction();
    bool OffBreakStyle();
    bool OffBoostStyle();
    bool IsCommandSealing(ECOMMAND_SEALING_TYPE eType);
    void GetOptionDataList(TArray<FName>& astrOptionDataList, FName& strUseActionLabel);
    void GetEventFlag(FName FlagName, bool& Value);
    bool ExecPotentialityAction();
    void ClearCommandSealing();
    void CheckCommandSealingListForItem(class ABattleCharacterBase* cEnforceer, FItemData cItemData, EACTION_COMMAND_USEABLE& eCommandUseable);
    void CheckCommandSealingListForInvade(class ABattleCharacterBase* cEnforceer, FInvadeData cInvadeData, EACTION_COMMAND_USEABLE& eCommandUseable);
    void CheckCommandSealingList(class ABattleCharacterBase* cEnforceer, FAbilitySetDataBase cAbilitySet, EACTION_COMMAND_USEABLE& eCommandUseable);
}; // Size: 0x250

class ABattleManager : public AAcqManagerBase
{
    EBATTLE_ENCOUNT_TYPE m_eBattleMode;                                               // 0x0230 (size: 0x1)
    bool m_bIsViewerMode;                                                             // 0x0231 (size: 0x1)
    int32 m_nBattleTurnCount;                                                         // 0x0234 (size: 0x4)
    int32 m_nEnemyBreakCount;                                                         // 0x0238 (size: 0x4)
    bool m_bUsedRepeatAbility;                                                        // 0x023C (size: 0x1)
    FRareEnemyParam m_cRareCatlinParam;                                               // 0x0240 (size: 0x14)
    FRareEnemyParam m_cRareOctlinParam;                                               // 0x0254 (size: 0x14)
    bool m_bIsWaterSideMode;                                                          // 0x0268 (size: 0x1)
    int32 m_nBattleOrderCount;                                                        // 0x026C (size: 0x4)
    int32 m_nBattleOrderCountMax;                                                     // 0x0270 (size: 0x4)
    bool m_bUseSubPartyBattle;                                                        // 0x0274 (size: 0x1)
    TArray<class ABattleCharacterBase*> m_acBattleCharacter;                          // 0x0278 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acBattlePlayer;                             // 0x0288 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acBattleEnemy;                              // 0x0298 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acBattleSupporter;                          // 0x02A8 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acSubBattlePlayer;                          // 0x02B8 (size: 0x10)
    TArray<class ABattleCharacterBase*> m_acSubBattleSupporter;                       // 0x02C8 (size: 0x10)
    bool m_bEnableSyncAnimationCharacter;                                             // 0x02D8 (size: 0x1)
    class ABattleCharacterBase* m_cSyncAnimationCharacter_Parent;                     // 0x02E0 (size: 0x8)
    TArray<class ABattleCharacterBase*> m_acSyncAnimationCharacter_Childs;            // 0x02E8 (size: 0x10)
    class ABattleCharacterBase* m_cPrevNoticeCharacter_Pinch;                         // 0x02F8 (size: 0x8)
    class ABattleCharacterBase* m_cPrevNoticeCharacter_JustBreak;                     // 0x0300 (size: 0x8)
    TArray<class ABattleCharacterBase*> m_acReflectionEnforcerList;                   // 0x0308 (size: 0x10)
    class ABattleCamera* m_cBattleCamera;                                             // 0x0318 (size: 0x8)
    class ABattleSequenceDirector* m_cBattleDirector;                                 // 0x0320 (size: 0x8)
    bool m_bExecutedReturnDragInEffect_Sea;                                           // 0x0328 (size: 0x1)
    TArray<bool> m_abDragInIndex;                                                     // 0x0330 (size: 0x10)
    TMap<int32, UTexture2D*> m_acPlayerIconTexture;                                   // 0x0340 (size: 0x50)
    TMap<class FName, class FBattleVoiceSetList> m_acBattleVoiceSetList;              // 0x0390 (size: 0x50)
    FBattleAdditiveOrderData m_cCurrentAdditiveOrderData;                             // 0x03E0 (size: 0x38)
    bool m_bExecSessionAbility;                                                       // 0x0418 (size: 0x1)
    class AActionCommandBase* m_cCurrentActionCommand;                                // 0x0420 (size: 0x8)
    class ULevelSequence* m_cBattleEventSequence;                                     // 0x0428 (size: 0x8)
    bool m_bIsBattleEvent;                                                            // 0x0430 (size: 0x1)
    bool m_bReadyBattleEvent;                                                         // 0x0431 (size: 0x1)
    bool m_bExecBattleEvent;                                                          // 0x0432 (size: 0x1)
    bool m_bExecBattleStartDash;                                                      // 0x0433 (size: 0x1)
    class ABattleCommandMenuActor* m_cBattleCommandMenuActor;                         // 0x0438 (size: 0x8)
    TArray<FName> m_acUsedOnceMonsterList;                                            // 0x0440 (size: 0x10)
    TArray<FName> m_acUsedAwakingMonsterList;                                         // 0x0450 (size: 0x10)
    bool m_bIsAutoTameMonster;                                                        // 0x0460 (size: 0x1)
    class ABattleCharacterBase* m_cAutoTameTarget;                                    // 0x0468 (size: 0x8)
    class ABattleActionOrder* m_cBattleActionOrder;                                   // 0x0470 (size: 0x8)
    TArray<class ABattleCharacterBase*> m_acFirstActionCharacter;                     // 0x0478 (size: 0x10)
    bool m_bIsFirstActionCharacter;                                                   // 0x0488 (size: 0x1)
    bool m_bExecFirstActionTurn;                                                      // 0x0489 (size: 0x1)
    class ABattleCharacterBase* m_cActiveCharacter;                                   // 0x0490 (size: 0x8)
    class ABattleCharacterBase* m_cActionCharacter;                                   // 0x0498 (size: 0x8)
    class ABattleCharacterBase* m_cAdditiveCharacter;                                 // 0x04A0 (size: 0x8)
    FActionOrderData m_cCurrentOrderData;                                             // 0x04A8 (size: 0x40)
    int32 m_nTotalRewardMoney;                                                        // 0x04E8 (size: 0x4)
    int32 m_nTotalRewardExp;                                                          // 0x04EC (size: 0x4)
    int32 m_nTotalRewardJP;                                                           // 0x04F0 (size: 0x4)
    int32 m_nRewardLuckyMoney;                                                        // 0x04F4 (size: 0x4)
    int32 m_nRewardLuckyExp;                                                          // 0x04F8 (size: 0x4)
    int32 m_nRewardLuckyJP;                                                           // 0x04FC (size: 0x4)
    float m_fMoneyRatioByAbility;                                                     // 0x0500 (size: 0x4)
    float m_fExpRatioByAbility;                                                       // 0x0504 (size: 0x4)
    float m_fJPRatioByAbility;                                                        // 0x0508 (size: 0x4)
    float m_fMoneyRatioByEquipment;                                                   // 0x050C (size: 0x4)
    float m_fExpRatioByEquipment;                                                     // 0x0510 (size: 0x4)
    float m_fJPRatioByEquipment;                                                      // 0x0514 (size: 0x4)
    float m_fMoneyRatioBySupport;                                                     // 0x0518 (size: 0x4)
    float m_fExpRatioBySupport;                                                       // 0x051C (size: 0x4)
    float m_fJPRatioBySupport;                                                        // 0x0520 (size: 0x4)
    float m_fExpRatioBySupportInNight;                                                // 0x0524 (size: 0x4)
    float m_fJPRatioBySupportInNight;                                                 // 0x0528 (size: 0x4)
    bool m_bOverrideBattleSpeed;                                                      // 0x052C (size: 0x1)
    bool m_bAllowChangeBattleSpeed;                                                   // 0x052D (size: 0x1)
    bool m_bMainPartyIsFrontMember;                                                   // 0x052E (size: 0x1)
    bool m_bOnePartyDead;                                                             // 0x052F (size: 0x1)
    bool m_bExecChangePartySequencer;                                                 // 0x0530 (size: 0x1)
    int32 m_nSettledPlayerNum;                                                        // 0x0534 (size: 0x4)
    FWeaponTexutreUnloadManage m_WeaponUnloadManage;                                  // 0x0538 (size: 0x28)
    bool m_bDebugRelaseWeaponTexture;                                                 // 0x0570 (size: 0x1)

    void UpdateBattleNumberUI();
    bool UpdateBattleFieldDisease();
    bool SwapBattlePlayerForEightBattle();
    void StartBattleRequest();
    void SetUsedRepeatAbility(bool bEnable);
    bool SetupAutoTameMonster(class ABattleCharacterBase* cTarget);
    void SetUnloadWeaponGCType(EWEAPON_UNLOAD_GC_TYPE eType);
    void SetUnloadWeaponCntMax(uint8 uMax);
    void SetSyncAnimationCharacterParent(class ABattleCharacterBase* cCharacter);
    void SetPrevNoticeCharacter_Pinch(class ABattleCharacterBase* cPinchCharacter);
    void SetPrevNoticeCharacter_JustBreak(class ABattleCharacterBase* cJustBreakCharacter);
    bool SetMoneyRatioBySupport(float fRatio);
    bool SetMoneyRatioByEquipment(float fRatio);
    bool SetMoneyRatioByAbility(float fRatio);
    bool SetJPRatioBySupportInNight(float fRatio);
    bool SetJPRatioBySupport(float fRatio);
    bool SetJPRatioByEquipment(float fRatio);
    bool SetJPRatioByAbility(float fRatio);
    bool SetExpRatioBySupportInNight(float fRatio);
    bool SetExpRatioBySupport(float fRatio);
    bool SetExpRatioByEquipment(float fRatio);
    bool SetExpRatioByAbility(float fRatio);
    void SetExecSessionAbilityForTutorial(bool bEnable);
    void SetEnableRelaseWeaponTexture(bool bRelease);
    void SetDebugSwitch(EBATTLE_DEBUG_SWITCH eType, bool bValue);
    void SetDebugParameter(EBATTLE_DEBUG_SWITCH eType, int32 nValue);
    bool SetBattleStartType(EBATTLE_START_TYPE StartType, bool WaterSide);
    void SearchPlayerCharacter(EPlayableCharacterID eCharaID, class ABattleCharacterBase*& PlayerCharacter, bool& bFindCharacter, bool& bCharacterAlive);
    void SearchEnemyCharacter(FName strEnemyID, class ABattleCharacterBase*& EnemyCharacter, bool& bFindCharacter, bool& bCharacterAlive);
    bool SearchBattleFieldDisease(EFIELD_DISEASE_TYPE DiseaseType);
    void ReturnDragInIndex(int32 nIndex);
    void ResetDragInIndex();
    bool RequestPlayActionWaitTime(float fWaitTime);
    void RequestLoadForEndroll(EEndRollSegmentSet eSegment);
    void RequestLoadBattleEvent(const TSoftObjectPtr<ULevelSequence>& cEventSequence);
    bool RequestChangeBattleParty();
    void RequestBattleEvent(const TSoftObjectPtr<ULevelSequence>& EventSequence, class ABattleCharacterBase* MainActor, class ABattleCharacterBase* EventEnforcer);
    bool RemoveBattleFieldDisease(EFIELD_DISEASE_TYPE DiseaseType);
    void ReleasePotentialityAction();
    void PlayReturnDragInEffect(class ABattleCharacterBase* cReturnCharacter, EBATTLE_DRAG_IN_TYPE eDragInType);
    void OpenMultiLineInfomation(const FText& strFirstText, const FText& strSecondText);
    void OpenChainInfomation(TArray<FText>& astrInfomationText, float fShowTime);
    void OpenActionInfomation(const FText& strInfomationText);
    bool IsItemCommandSeal();
    bool IsItemCommandEnable();
    bool IsGuardCommandEnable();
    bool IsFirstActionTurn();
    bool IsExecBattleStartDash();
    bool IsEscapeCommandEnable();
    bool IsEndrollReplayMode();
    bool IsEnableRelaseWeaponTexture();
    bool IsEightBattleMode();
    void IsChangeBattlePartyEnable(bool& bEnable, bool& bExecutable);
    bool IsBoostCommandEnable();
    bool IsBattleSpeedOverride();
    bool IsAutoTameMonster();
    bool IsAllowChangeBattleSpeed();
    bool InitUsedInvadeMonster();
    void InitSyncAnimationCharacter();
    void InitPrevNoticeCharacter();
    void InitializeResultValue();
    void InitBattleOrderCount();
    bool InitBattleFirstActionCharacter();
    bool GetWaterSideMode();
    bool GetUsedRepeatAbility();
    bool GetSyncAnimationCharacter(class ABattleCharacterBase*& cParent, TArray<class ABattleCharacterBase*>& acChilds);
    TArray<class ABattleCharacterBase*> GetSubBattlePlayerList();
    int32 GetSettledPlayerNum();
    float GetResultMoneyRatio();
    float GetResultJPRatio();
    float GetResultExpRatio();
    TArray<class ABattleCharacterBase*> GetRespawnableEnemyList(bool& bFindEnemy);
    void GetRespawnableEnemy(int32 nIndex, class ABattleCharacterBase*& cRespawnableEnemy, bool& bFindEnemy);
    bool GetPrevNoticeCharacter_Pinch(class ABattleCharacterBase*& cPinchCharacter);
    bool GetPrevNoticeCharacter_JustBreak(class ABattleCharacterBase*& cJustBreakCharacter);
    bool GetOnePartyDead();
    void GetMapObjectRoot(class AActor*& cMapObjectRoot);
    bool GetMainPartyIsFrontMember();
    class ABattleManager* GetInstance();
    void GetEventFlag(FName FlagName, bool& Value);
    FName GetEnemyGroupID();
    int32 GetEnemyBreakCount();
    int32 GetDebugParameter(EBATTLE_DEBUG_SWITCH eType);
    class UDebugBattleLogComponent* GetDebugLogComponent();
    class UDebugBattleManagerComponent* GetDebugComponent();
    bool GetCurrentAdditiveOrderData(FBattleAdditiveOrderData& cAdditiveOrderData);
    void GetCurrentActionOrderData(FActionOrderData& cActionData);
    bool GetCurrentActionCommand(class AActionCommandBase*& cActionCommand);
    class ABattleCommandMenuActor* GetCommandMenuActor();
    bool GetBattleVoiceSetList(FName strCharacterID, TArray<FName>& astrBattleVoiceLabel);
    bool GetBattleViewerMode();
    int32 GetBattleTurnCount();
    TArray<class ABattleCharacterBase*> GetBattleSupporterList();
    EBATTLE_START_TYPE GetBattleStartType();
    void GetBattleSequencerObject_SteamEffect(class AEmitter*& cSteamAuraA, class AEmitter*& cSteamFieldA);
    void GetBattleSequencerObject_AntlionSand(class AStaticMeshActor*& cAntlionSandA, class AStaticMeshActor*& cAntlionSandB);
    class ABattleSequenceDirector* GetBattleSequenceDirector();
    void GetBattlePlayerListForSequencer(TArray<class ABattleCharacterBase*>& acFrontParty, TArray<class ABattleCharacterBase*>& acBackParty);
    TArray<class ABattleCharacterBase*> GetBattlePlayerListForEightBattle();
    TArray<class ABattleCharacterBase*> GetBattlePlayerList();
    void GetBattleOrderCount(int32& nOrderCount, int32& nOrderCountMax);
    EBATTLE_ENCOUNT_TYPE GetBattleMode();
    bool GetBattleInfomation(FName& strEnemyGroupID, bool& bBossBattle, bool& bFieldCommandBattle);
    TArray<class ABattleCharacterBase*> GetBattleEnemyList();
    TArray<class ABattleCharacterBase*> GetBattleCharacterList();
    class ABattleCamera* GetBattleCamera();
    void GetBattleBoostMode(bool& bBoostMode);
    void GetBattleActiveCharacter(class ABattleCharacterBase*& cActiveCharacter);
    class ABattleActionOrder* GetBattleActionOrder();
    bool GetAutoTameTarget(class ABattleCharacterBase*& cAutoTameTarget);
    int32 GetAddDragInIndex();
    void FinishChangePartySequencer();
    void FinishBattleStartDash();
    void FinishBattleEvent();
    bool ExecInitializeEnemyResourceList();
    void ExecDebugPlayBattleEvent(const TSoftObjectPtr<ULevelSequence>& cEventSequence, class ABattleCharacterBase* cMainActor, class ABattleCharacterBase* cEventEnforcer);
    bool ExecDebugPlayAbility(FName strAbilityLabel, int32 nBoostLevel, bool bPlayerSide);
    bool ExecChangeBattleSpeed();
    void ExecBattleSuspend();
    bool ExecBattleFieldDisease(EFIELD_DISEASE_TYPE DiseaseType);
    bool ExecActionOrderBlind(bool bEnable, bool bPlayerOnly);
    bool Debug_IsReadyBattleSuspend();
    bool CreateStationaryBattleUI();
    void CloseActionInfomation();
    bool CheckUsedOnceMonster(FName strCheckMonsterLabel);
    bool CheckUsedAwakingMonster(FName strCheckMonsterLabel);
    bool CheckSupportAilmentInParty(ESUPPORT_AILMENT_TYPE eAilmentType, FSupportAbilityDataBase& cAbilityData);
    bool CheckDebugSwitch(EBATTLE_DEBUG_SWITCH eType);
    bool CheckBattleVictory();
    bool CheckBattleTutorial_OpenCommandMenu();
    bool CheckBattlePlayerInMainParty(class ABattleCharacterBase* cTargetPlayer);
    void CheckBattleDefeat(bool& bBattleDefeat, bool& bEightBattleChange);
    void ChangeBattlePartyForAbility();
    void ApplyAllDebugSwitch();
    bool AddUsedOnceMonster(FName strUsedMonsterLabel);
    bool AddUsedAwakingMonster(FName strUsedMonsterLabel);
    void AddUnloadWeaponTextureLabel(TArray<FName>& weaponList);
    void AddSyncAnimationCharacterChilds(class ABattleCharacterBase* cCharacter);
    bool AddRewardLuckyMoney(int32 nValue);
    bool AddRewardLuckyJP(int32 nValue);
    bool AddRewardLuckyExp(int32 nValue);
    void AddReflectionEnforcerList(class ABattleCharacterBase* cCharacter);
    void AddloadWeaponTextureLabel(TArray<FName>& weaponList);
    void AddEnemyBreakCount();
    void AddBattleTurnCount();
    void AddBattleOrderCount();
    void AddBattleLogForOneLine(FString strBattleLog);
    void AddBattleLog(FDebugBattleLog cBattleLog);
    bool AddBattleFirstActionCharacter(class ABattleCharacterBase* cActionCharacter);
    bool AddBattleFieldDisease(EFIELD_DISEASE_TYPE DiseaseType, int32 InvocationValue, int32 InvocationTurn, int32 DiseaseLevel, class ABattleCharacterBase* Enforcer);
    bool AddAdditiveOrderForSong(class ABattleCharacterBase* Enforcer, FName AbilityName);
    bool AddAdditiveOrderForSignOfBoost(class ABattleCharacterBase* Enforcer, FName AbilityName);
    bool AddAdditiveOrderForReraise(class ABattleCharacterBase* Enforcer);
    bool AddAdditiveOrderForRepeat(class ABattleCharacterBase* Enforcer, FName AbilityName, TArray<class ABattleCharacterBase*>& acTargetList);
    bool AddAdditiveOrderForReflection(class ABattleCharacterBase* Enforcer, FName strAbilityName, FName strAilmentName, int32 nInvocationValue, EATTRIBUTE_TYPE eAttribute, class ABattleCharacterBase* cTargetList);
    bool AddAdditiveOrderForLastAttack(class ABattleCharacterBase* Enforcer, FName AbilityName, TArray<class ABattleCharacterBase*>& acTargetList);
    bool AddAdditiveOrderForFirstAttack(class ABattleCharacterBase* Enforcer, FName AbilityName, TArray<class ABattleCharacterBase*>& acTargetList);
    bool AddAdditiveOrderForEnchant(class ABattleCharacterBase* Enforcer, FName AbilityName, TArray<class ABattleCharacterBase*>& acTargetList);
    bool AddAdditiveOrderForCounter(class ABattleCharacterBase* Enforcer, FName AbilityName, bool bOnDead, bool bCounterOnce, class ABattleCharacterBase* cTargetList);
    bool AddAdditiveOrderForChaseAttack(class ABattleCharacterBase* Enforcer, FName AbilityName, TArray<class ABattleCharacterBase*>& acTargetList);
    bool AddAdditiveOrderForAutoTameMonster(class ABattleCharacterBase* cEnforcer, class ABattleCharacterBase* cTarget);
}; // Size: 0x578

class ABattleSequenceDirector : public AActor
{
    TArray<class ALevelSequenceActor*> m_acManualUpdateSequencerList;                 // 0x0220 (size: 0x10)
    class ALevelSequenceActor* m_cBoostSequenceActor;                                 // 0x0230 (size: 0x8)
    class ALevelSequenceActor* m_cAbilityCameraSequenceActor;                         // 0x0238 (size: 0x8)
    class ALevelSequenceActor* m_cWeatherSequenceActor;                               // 0x0240 (size: 0x8)
    class ALevelSequenceActor* m_cEncountSequenceActor;                               // 0x0248 (size: 0x8)
    class ALevelSequenceActor* m_cBreakSequenceActor;                                 // 0x0250 (size: 0x8)
    class ABattleAbilitySequenceActor* m_cActionCommandSequenceActor;                 // 0x0258 (size: 0x8)
    TArray<class ABattleAbilitySequenceActor*> m_acSubActionCommandSequenceActor;     // 0x0260 (size: 0x10)
    class ALevelSequenceActor* m_cBattleEventSequenceActor;                           // 0x0270 (size: 0x8)
    class ALevelSequenceActor* m_cBattleDashSequenceActor;                            // 0x0278 (size: 0x8)
    class ALevelSequenceActor* m_cBattleResultSequenceActor;                          // 0x0280 (size: 0x8)
    class ALevelSequenceActor* m_cBattlePartyChangeSequenceActor;                     // 0x0288 (size: 0x8)
    class ABattleCamera* m_cBattleCamera;                                             // 0x0290 (size: 0x8)
    class APostProcessVolume* m_cPostProcessVolume;                                   // 0x0298 (size: 0x8)
    int32 m_nBoostLevel;                                                              // 0x02A0 (size: 0x4)
    class AActor* m_cBattleDustEffectActor;                                           // 0x02A8 (size: 0x8)
    class ABattleSequenceEmitter* m_cBoostEffectLv1Actor;                             // 0x02B0 (size: 0x8)
    class ABattleSequenceEmitter* m_cBoostEffectLv2Actor;                             // 0x02B8 (size: 0x8)
    class ABattleSequenceEmitter* m_cBoostEffectLv3Actor;                             // 0x02C0 (size: 0x8)
    class ABattleSequencePointLight* m_cPointLightActor;                              // 0x02C8 (size: 0x8)
    EBATTLE_CAMERA_SEQUENCE m_eAbilityCameraSlideSequence;                            // 0x02E8 (size: 0x1)
    FFrameTime m_cAbilityCameraSlideStartFrame;                                       // 0x02EC (size: 0x8)
    FFrameTime m_cAbilityCameraSlideEndFrame;                                         // 0x02F4 (size: 0x8)
    EBATTLE_CAMERA_SEQUENCE m_eAbilityCameraBackSequence;                             // 0x02FC (size: 0x1)
    FFrameTime m_cAbilityCameraBackStartFrame;                                        // 0x0300 (size: 0x8)
    FFrameTime m_cAbilityCameraBackEndFrame;                                          // 0x0308 (size: 0x8)
    class AActionCommandBase* m_cActionCommand;                                       // 0x0310 (size: 0x8)
    int32 SUB_ACTION_COMMAND_MAX;                                                     // 0x0318 (size: 0x4)
    int32 m_nSubActionCommandCounter;                                                 // 0x031C (size: 0x4)
    TArray<class AActionCommandBase*> m_acSubActionCommand;                           // 0x0320 (size: 0x10)
    int32 ABILITY_POINT_LIGHT_MAX;                                                    // 0x0330 (size: 0x4)
    TArray<class ABattleSequencePointLight*> m_acAbilityPointLightActor;              // 0x0338 (size: 0x10)
    class AActor* m_cPartyAreaMounter;                                                // 0x0348 (size: 0x8)
    class AActor* m_cEnemyAreaMounter;                                                // 0x0350 (size: 0x8)
    TArray<class ABattleSequenceEmitter*> m_acAbilityEffectList;                      // 0x0358 (size: 0x10)
    TArray<class ABattleSequenceEmitter*> m_acAbilityHitEffectList;                   // 0x0368 (size: 0x10)
    TArray<class ABattleSequenceEmitter*> m_acSupportRotationEffectList;              // 0x0378 (size: 0x10)
    class UBalloonBase* m_cEventBalloon;                                              // 0x0388 (size: 0x8)

    void WaitTutorialFinish();
    void WaitTalkBalloonFinish();
    void WaitReturnCaptureCommand();
    void WaitResultUIFinishCommand();
    void WaitResultUIFinish();
    void WaitActionCommandDirector();
    void UpdateAbilityCameraSlideSegment(class ULevelSequencePlayer* cPlayer, float fSlideRate);
    void UpdateAbilityCameraBackSegment(class ULevelSequencePlayer* cPlayer, float fBackRate);
    void UnRegisterSequenceUpdated(class ULevelSequencePlayer* cPlayer);
    void UnRegisterAbilitySequenceUpdated(class ABattleAbilitySequenceActor* cAbilitySequence);
    void TickManualSequencerUpdate(float fDeltaSeconds);
    bool SuspendBoostSequencer(int32 nBoostLevel);
    void SuspendActionCommand();
    void StartBattleFade();
    class UParticleSystemComponent* SpawnBoostEffect(int32 nBoostLevel);
    void SetWeatherSequencerRestoreFlag(bool bRestoreState);
    bool SetSequenceTrackDisable(class ALevelSequenceActor* cSequenceActor, FMovieSceneObjectBindingID cTrackID, bool bDisable);
    void SetBattleWipeWhiteOutFlag(bool bEnable);
    void SetBattleEnemyVisibility(bool bVisible);
    void SetAdvancedAbility(EPlayableCharacterID CharacterID, int32 nIndex, bool bEnable);
    void ReturnCaptureCommand();
    void ResumeActionCommandDirector();
    bool ResetActionCommandDirector(class ABattleAbilitySequenceActor* cSequenceActor, bool bIsSubCommand);
    void RemoveBoostEffect();
    void ReleasePotentialityAction(EPlayableCharacterID CharacterID);
    void RegisterSequenceUpdated(class ULevelSequencePlayer* cPlayer, FRegisterSequenceUpdatedCDelegate cDelegate);
    void RegisterAbilitySequenceUpdated(class ABattleAbilitySequenceActor* cAbilitySequence);
    void PlayVibrationCommand(FName VibrationID, EVibrationPower Power);
    void PlaySECommand(FName SEID);
    void PlayActionCommand(class ABattleCharacterBase* ActionCharacter, EKSCharacterAction BattleActionID);
    void OpenTutorialCommand(ETUTORIAL_TYPE eTutorialType, bool bForcedDisplay);
    void OpenTalkCommand(FName TalkTextID, FVector2D Offset, bool WaitFinish);
    void OpenResultUICommand();
    void OpenActionInfoFromAdvancedAbility(FName TextID, EPlayableCharacterID CharaID, int32 AbilityIndex);
    void OpenActionInfoForEightBattle(FName TextID);
    void OpenActionInfo(FName TextID);
    void NotifyCameraCut(class ACineCameraActor* cTargetCamera);
    void InterpolationResultCamera(float fRatio);
    void InterpolationAbilityCamera(float fRatio);
    void InstantDeath_EnemyAll();
    class ULevelSequence* GetWeatherSequence(ETimeZoneType eTimeZone, EBATTLE_SEQUENCER_CHANGE_TYPE eChangeType);
    FName GetPlayerLabelByIntID(int32 nPlayerID);
    class ULevelSequence* GetPartyChangeSequence(bool bFrontToBack);
    class ULevelSequenceDirector* GetLevelSequenceDirector(class ULevelSequencePlayer* cPlayer);
    class ULevelSequence* GetEscapeDashSequence(bool bSuccess);
    class ULevelSequence* GetEncountSequence(EBATTLE_CAMERA_TYPE eCameraType);
    class ULevelSequence* GetBreakSequence(EBREAK_CAMERA_TYPE eBreakType, EBATTLE_CAMERA_TYPE eCameraType);
    class ULevelSequence* GetBoostSequence(int32 nBoostLevel, EBATTLE_SEQUENCER_CHANGE_TYPE eChangeType);
    class ULevelSequence* GetBattleStartDashSequence(EBATTLE_START_DASH_TYPE eStartDashType);
    class ULevelSequence* GetBattleResultSequence(EBATTLE_RESULT_TYPE eResultType, EBATTLE_CAMERA_TYPE eCameraType, bool bIsFront);
    bool GetAbilityCameraSlideSegment(class ULevelSequencePlayer* cPlayer, float& fLength);
    class ULevelSequence* GetAbilityCameraSequence(int32 nBoostLevel, EBATTLE_TARGET_TYPE eTargetType, EBATTLE_CAMERA_TYPE eCameraType, bool bEnemySide, bool bIsFront, FName strAbilityName);
    bool GetAbilityCameraBackSegment(class ULevelSequencePlayer* cPlayer, float& fLength);
    void FixBattleCameraCommand();
    void FinishSubActionCommandDirector();
    void FinishResultDash();
    void FinishPartyChange();
    void FinishEscapeDash();
    void FinishEncountCamera();
    void FinishBreaktCamera();
    void FinishBoostShutDown();
    void FinishBattleStartDash();
    void FinishBattleResult();
    void FinishBattleEvent();
    void FinishActionCommandDirector();
    void FinishAbilityCamera();
    bool FindTrackAttachInfoByTag(class ALevelSequenceActor* cSequenceActor, FName strTag, EBATTLE_EFFECT_ATTACH_TYPE& eAttachType);
    bool FindEventActorTrackByTag(class ALevelSequenceActor* cSequenceActor, FName strTag);
    bool FindEmitterTemplateByTag(class ALevelSequenceActor* cSequenceActor, FName strTag, TArray<class UParticleSystem*>& acEmitterTemplate, TArray<FMovieSceneObjectBindingID>& acBindingID);
    bool ExecWeatherSequencer(ETimeZoneType eTimeZone, EBATTLE_SEQUENCER_CHANGE_TYPE eChangeType);
    void ExecWeatherLoop();
    void ExecSubActionCommandDirector(class AActionCommandBase* cActionCommand, class ULevelSequence* cExecSequence);
    bool ExecResultDashSequencer();
    void ExecResultDash();
    void ExecPotentialityAction(class ABattleCharacterBase* ActionCharacter);
    bool ExecPartyChangeSequencer(bool bFrontToBack);
    void ExecPartyChange(bool bFrontToBack);
    void ExecNextBoostEvent();
    void ExecForceTickForRigRail(class ACameraRig_Rail* cTargetCameraRig);
    void ExecForceTickForCineCamera(class ACineCameraActor* cTargetCamera);
    bool ExecEscapeDashSequencer(bool bSuccess);
    void ExecEscapeDash(bool bSuccess);
    bool ExecEncountCameraSequencer(EBATTLE_CAMERA_TYPE eCameraType);
    void ExecEncountCamera(EBATTLE_CAMERA_TYPE eCameraType);
    bool ExecBreakCameraSequencer(EBREAK_CAMERA_TYPE eBreakType, EBATTLE_CAMERA_TYPE eCameraType);
    void ExecBreakCamera(EBREAK_CAMERA_TYPE eBreakType, EBATTLE_CAMERA_TYPE eCameraType);
    void ExecBoostStart(int32 nBoostLevel);
    void ExecBoostShutDown(bool bWithWeather);
    bool ExecBoostSequencer(int32 nBoostLevel, EBATTLE_SEQUENCER_CHANGE_TYPE eChangeType);
    void ExecBoostLoop();
    void ExecBattleSuspendCommand();
    bool ExecBattleStartDashSequencer(EBATTLE_START_DASH_TYPE eStartDashType);
    void ExecBattleStartDash(EBATTLE_START_DASH_TYPE eStartDashType);
    bool ExecBattleResultSequencer(EBATTLE_RESULT_TYPE eResultType, EBATTLE_CAMERA_TYPE eCameraType, bool bIsFront);
    void ExecBattleResult(EBATTLE_RESULT_TYPE eResultType, EBATTLE_CAMERA_TYPE eCameraType, bool bIsFront);
    bool ExecBattleEventSequencer(class ULevelSequence* cExecSequence, class ABattleCharacterBase* cEventActor, EBATTLE_CHARA_POSITION_RESET_TYPE ePositionType);
    void ExecBattleEvent(class ULevelSequence* cExecSequence, class ABattleCharacterBase* cEventActor, EBATTLE_CHARA_POSITION_RESET_TYPE ePositionType);
    bool ExecActionCommandSequencer(class AActionCommandBase* cActionCommand, class ULevelSequence* cExecSequence, class ABattleAbilitySequenceActor* cSequenceActor, bool bIsSubCommand);
    void ExecActionCommandDirector(class AActionCommandBase* cActionCommand, class ULevelSequence* cExecSequence);
    bool ExecAbilityCameraSequencer(int32 nBoostLevel, EBATTLE_TARGET_TYPE eTargetType, EBATTLE_CAMERA_TYPE eCameraType, int32 nSlideFrame, class AActionCommandBase* cActionCommand, bool bEnemySide, bool bIsFront, FName strAbilityName);
    void ExecAbilityCamera(int32 nBoostLevel, EBATTLE_TARGET_TYPE eTargetType, EBATTLE_CAMERA_TYPE eCameraType, int32 nSlideFrame, class AActionCommandBase* cActionCommand, bool bEnemySide, bool bIsFront, FName strAbilityName);
    void EnableAbilityHitEffect();
    class ULevelSequencePlayer* CreateAbilitySequencePlayer(class UObject* WorldContextObject, class ULevelSequence* cLevelSequence, FMovieSceneSequencePlaybackSettings cSettings, class ABattleAbilitySequenceActor*& OutActor);
    TArray<class ABattleSequenceEmitter*> CreateAbilityEffect(class UParticleSystem* cTemplate, EBATTLE_EFFECT_ATTACH_TYPE eAttachType, class AActionCommandBase* cActionCommand, bool bGroundEffect, bool bReviveEffect, bool bAttachSocket);
    void CloseTalkCommand();
    void CloseActionInfo();
    bool CheckTrackHaveSpecifiedTag(class ALevelSequenceActor* cSequenceActor, FMovieSceneObjectBindingID cTrackID, FName strCheckTag);
    bool CheckSequencerHaveSpecifiedTag(class ALevelSequenceActor* cSequenceActor, FName strCheckTag);
    void ChangeBoostLevelCommand(class ABattleCharacterBase* ActionCharacter, int32 BoostLevel);
    void ChangeBoostLevel(int32 nBoostLevel, bool bAddLevel);
}; // Size: 0x390

class ABattleSequenceEmitter : public AEmitter
{
    class UParticleSystemComponent* m_cOriginalEffect;                                // 0x0270 (size: 0x8)
    bool m_bEmitterTrigger;                                                           // 0x0278 (size: 0x1)
    bool m_bEnableAttachTarget;                                                       // 0x0279 (size: 0x1)
    class UEnforcerOffsetComponent* m_cEnforcerOffsetComponent;                       // 0x0280 (size: 0x8)
    class ABattleCharacterBase* m_cAttachBattleCharacter;                             // 0x0288 (size: 0x8)

    void UpdateBattleEmitterVisibility(bool bVisible);
    void SetParticleSystemTemplate(class UParticleSystem* cTemplate);
    void SetParticleSystemComponent(class UParticleSystemComponent* cComponent);
    void SetEnableAttachTarget(bool bEnable);
    void SetEmitterTrigger(bool bTrigger);
    void SetAttachBattleCharacter(class ABattleCharacterBase* cCharacter);
    void ReleaseParticleSystemComponent();
    bool IsEnableAttachTarget();
    bool IsEmitterTrigger();
    class ABattleCharacterBase* GetAttachBattleCharacter();
}; // Size: 0x290

class ABattleSequencePointLight : public AActor
{
    class UPointLightComponent* PointLightComponent;                                  // 0x0220 (size: 0x8)
    float ShadowResolutionScale;                                                      // 0x0228 (size: 0x4)

    void SetShadowResolutionScale(float fValue);
}; // Size: 0x230

class ABlockingVolumeFootStep : public AVolume
{
    TEnumAsByte<EPhysicalSurface> m_eFootStepType;                                    // 0x0258 (size: 0x1)

}; // Size: 0x260

class ACalcBillboard : public AActor
{
    class UCameraComponent* m_pCineCamComp;                                           // 0x0228 (size: 0x8)

}; // Size: 0x238

class ACameraLockTrigger : public AMJBoxTrigger
{
    bool m_bLock;                                                                     // 0x0238 (size: 0x1)
    bool m_bUnlock;                                                                   // 0x0239 (size: 0x1)
    bool m_bLockX;                                                                    // 0x023A (size: 0x1)
    bool m_bLockY;                                                                    // 0x023B (size: 0x1)
    bool m_bLockZ;                                                                    // 0x023C (size: 0x1)
    FVector m_LimitLock;                                                              // 0x0240 (size: 0xC)
    FVector m_LimitLockFar;                                                           // 0x024C (size: 0xC)
    FVector m_LimitUnlock;                                                            // 0x0258 (size: 0xC)

    void SetLimitPosition(const FVector& limitLock, const FVector& limitLockFar, const FVector& limitUnlock);
    class UBoxComponent* GetCollision();
    FVector ClamptLockPositionInRange(const FVector& lockPosition);
}; // Size: 0x268

class ACameraLockTriggerHolder : public AActor
{
}; // Size: 0x228

class ACanoeDockTrigger : public AMJBoxTrigger
{
}; // Size: 0x238

class ACharacterResourceManager : public AAcqManagerBase
{
    TArray<class ULoadCharaAssetQueue*> m_LoadQueue;                                  // 0x0230 (size: 0x10)
    TMap<class FName, class FLoadedObject> m_LoadedFlipbookResource;                  // 0x0260 (size: 0x50)
    TArray<class UObject*> m_SubPartyMemberResource;                                  // 0x02B0 (size: 0x10)

    void RequestUnLoadCharactersAsset(TArray<FName> CharaResourceIds);
    bool RequestLoadSubPartyCharactersAsset();
    bool RequestLoadCharactersAsset(TArray<FName> CharaResourceIds);
    bool RequestLoadCharactersActionAsset(TArray<FSimpleActionLoad>& CharaResourceIds);
    bool RequestLoadCharacterAssetSync_SelectAction(FName CharaResLabel, FRequestLoadCharacterAssetSync_SelectActionLoadedCallback LoadedCallback, TArray<EKSCharacterAction> ActionLabels);
    bool RequestLoadCharacterAssetSync(FName CharaResLabel, FRequestLoadCharacterAssetSyncLoadedCallback LoadedCallback);
    bool RequestLoadCharacterAsset(FName CharaResLabel, FRequestLoadCharacterAssetLoadedCallback LoadedCallback, TArray<EKSCharacterAction> ActionLabels, bool bBattle);
    bool RefreshLoadCharacters(TArray<FName> NewCharactersResourceId);
    void OnLoadedSubPartyResource(TArray<class UObject*>& loadedResource);
    void OnLoadedMainPartyResource(TArray<class UObject*>& loadedResource);
    bool IsLoading();
    void Debug_SetAlwaysEnableTick(bool Enable);
    bool Debug_LoadCharacterAssetSync(TArray<FName> CharacterResourceIds);
    void Debug_GetDebugInfo(FString& outDebugInfo);
}; // Size: 0x2C0

class ADBAccessManager : public AActor
{
    TMap<class FName, class FName> m_SupporterLabelToNpcLableTable;                   // 0x0220 (size: 0x50)
    TMap<class FName, class FName> m_EnemyLabelToNpcLableTable;                       // 0x0270 (size: 0x50)

    bool SearchAbilitySetFromRestricWeapon(const FName& WeaponLabel, FName& AbilitySetLabel);
    bool PrepareDBAccess(int32 Index);
    FText MakeItemDetailText(const FItemData& ItemData, int32 CharacterID);
    bool GetNpcLabelBySupporterLabel(FName& outLabel, FName SupporterLabel);
    bool GetNpcLabelByEnemyLabel(FName& outLabel, FName EnemyLabel);
    bool GetNpcDataBySupporterLabel(FNPCData& OutData, FName SupporterLabel);
    bool GetNpcDataByEnemyLabel(FNPCData& OutData, FName EnemyLabel);
    void GetMenuJobLabelList(TArray<FName>& outJobList);
    void GetMenuJobIDList(TArray<int32>& outIDList);
    bool GetItemDataForMenu(const FName& ItemLabel, FItemDataForMenu& Value);
    class ADBAccessManager* GetInstance();
    bool ConvertUniqueIDToLabel(int32 NPCUniqID, FName& NPCLabel);
    bool ConvertSupportAbilityIdToLabel(int32 SuportAbilityId, FName& SuportAbilityLabel);
    bool ConvertLabelToAbilitySetID(FName AbilitySetLabel, int32& AbilitySetID);
}; // Size: 0x2C0

class ADatabaseManager : public AAcqManagerBase
{
    class UDataTable* m_DatabaseInfo;                                                 // 0x0230 (size: 0x8)
    TMap<class UScriptStruct*, class FName> m_StructToName;                           // 0x0288 (size: 0x50)
    TMap<class FName, class UDataTable*> m_DatabaseTable;                             // 0x02D8 (size: 0x50)
    TMap<class FName, class FRowNameIdSet> m_RowNameIdSet;                            // 0x0328 (size: 0x50)
    TMap<class FName, class FString> m_AsyncLoading;                                  // 0x0378 (size: 0x50)

    void Static_Unload(FName dbName);
    bool Static_LoadSyncSingle(FName dbName);
    bool Static_LoadSyncByTiming(EDB_LOAD_TIMING LoadTiming);
    bool Static_LoadAsyncSingle(FName dbName);
    bool Static_LoadAsyncByTiming(EDB_LOAD_TIMING LoadTiming);
    bool Static_IsLoading(FName dbName);
    bool Static_IsLoaded(FName dbName);
    bool Static_IsAnythingLoading();
    bool Static_GetRowNames(TArray<FName>& OutRowNames, FName dbName);
    FName Static_GetRowName(FName dbName, int32 rowId);
    int32 Static_GetRowID(FName dbName, FName RowName);
    class UDataTable* Static_GetDBPtr(FName dbName);
    bool SetDbInfoTable(TSoftObjectPtr<UDataTable> dbInfo);
    void OnLoaded(TArray<class UObject*>& objList);
    void Debug_ShowDBInfo(bool bEnable);
}; // Size: 0x428

class ADebugLoadCheatCommand : public AActor
{
}; // Size: 0x268

class ADialogManager : public AAcqManagerBase
{
    TArray<class UCommonDialog*> DialogList;                                          // 0x0230 (size: 0x10)
    FMJUICommonDialogParam RequestParam;                                              // 0x0240 (size: 0xC8)

    void SetSelectSE(const TArray<FName>& SelectSE);
    bool SetReference();
    void SetButtonVisible(bool Visible);
    class UCommonDialog* OpenRequestDialog(const FMJUICommonDialogParam& Param);
    void OnDialogCloseFinishCallback();
    bool IsDialogRunning();
    bool Initialize();
    class UCommonDialog* GetTopDialog();
    bool CloseRequestDialog();
}; // Size: 0x308

class AEncountManager : public AAcqManagerBase
{
    bool m_bIsViewerMode;                                                             // 0x0230 (size: 0x1)
    FVector EncountPosition;                                                          // 0x0234 (size: 0xC)
    EKSCharacterDir EncountDir;                                                       // 0x0240 (size: 0x1)
    FName TressaSpeialStepLevel;                                                      // 0x0244 (size: 0x8)
    bool m_RequestRestoreEncountVolume;                                               // 0x024C (size: 0x1)
    EPlayableCharacterID m_eFixFirstOrderPlayerID;                                    // 0x024D (size: 0x1)
    EBATTLE_VIEWER_MODE Debug_BattleViewerMode;                                       // 0x024E (size: 0x1)
    FName Debug_EnemyGroupID;                                                         // 0x0250 (size: 0x8)
    TArray<FName> Debug_EnemyIDList;                                                  // 0x0258 (size: 0x10)
    FName Debug_PlacementID;                                                          // 0x0268 (size: 0x8)
    bool Debug_UseBattleViewerParty;                                                  // 0x0270 (size: 0x1)
    bool Debug_UseBattleRandomParty;                                                  // 0x0271 (size: 0x1)
    bool Debug_UseExtraJob;                                                           // 0x0272 (size: 0x1)
    int32 Debug_RandomPartyLevel;                                                     // 0x0274 (size: 0x4)
    int32 Debug_RandomPartyLevelRange;                                                // 0x0278 (size: 0x4)
    int32 Debug_RandomPartyNum;                                                       // 0x027C (size: 0x4)
    TArray<EPlayableCharacterID> Debug_BattleViewePartyList;                          // 0x0280 (size: 0x10)
    bool Debug_UseBattleViewerMap;                                                    // 0x0290 (size: 0x1)
    FName Debug_BattleViewerMapID;                                                    // 0x0294 (size: 0x8)
    bool Debug_IsWaterSide;                                                           // 0x029C (size: 0x1)
    bool Debug_UseFixedSituation;                                                     // 0x029D (size: 0x1)
    EBATTLE_START_TYPE Debug_FixedSituation;                                          // 0x029E (size: 0x1)
    EBATTLE_ENCOUNT_TYPE Debug_FixedBattleMode;                                       // 0x029F (size: 0x1)

    bool StartRobBattle(FName EnemyGroupID, EBATTLE_START_TYPE StartType, bool IsPlayEventAfterBattle, int32 nBattleMapIndex);
    bool StartRevealBattle(FName EnemyGroupID, bool IsPlayEventAfterBattle, int32 nBattleMapIndex);
    bool StartPreparationBattle(FName EnemyGroupID, bool IsPlayEventAfterBattle, int32 nBattleMapIndex);
    bool StartInvadeBattle(FName EnemyGroupID, EBATTLE_START_TYPE StartType, bool IsPlayEventAfterBattle, int32 nBattleMapIndex);
    bool StartEventBattle(FName EncountVolumeID, bool IsEventBGM, bool SingleBattle, EPlayableCharacterID CharacterID, bool IsNextEvent, EPlayableCharacterID FixFirstOrderPlayer);
    bool StartEightBattle(FName EnemyGroupID, bool IsPlayEventAfterBattle, int32 nBattleMapIndex, TArray<EPlayableCharacterID>& MainParty, TArray<EPlayableCharacterID>& SubParty);
    bool StartBoutBattle(FName EnemyGroupID, bool IsPlayEventAfterBattle, int32 nBattleMapIndex, EPlayableCharacterID eBattleCHaraID);
    bool SettingBattleParam();
    bool SetLiquidationSkip(bool SkipLiquidation);
    bool SetForceStopEncountStep(int32 nForceStopEncountStepCount);
    bool SetEncountVolume(FEncountTriggerData TriggerData);
    bool SetAfterMainMenu();
    bool RestoreEncountVolumeFromSaveData();
    bool RestoreEncount();
    bool ResetTrigger();
    bool ResetEncountVolume();
    bool ResetEncountStep();
    void RequestRestoreEncountVolumeFromSaveData();
    bool RefleshEncountVolume();
    void OnLevelChanged(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    bool IsChkEncountFlagStartEndData(FEncountFlagStartEndData& chkEncountData);
    bool GetViewerParameter(EBATTLE_VIEWER_MODE& eViewerMode, TArray<FName>& astrEnemyIDList, FName& strPlacementID);
    bool GetReplaceEncountFlagData(FEncountFlagData& chkData, FName& EncountTriggerLabel);
    void GetLiquidationSkip(bool& SkipLiquidation);
    EPlayableCharacterID GetFixFirstOrderPlayer();
    void GetEncountType(EBATTLE_ENCOUNT_TYPE& EncountType);
    void GetEncountTriggerID(int32& TriggerID);
    bool GetEncountParameter(FName& strEnemyGroupID, bool& bIsEventBGM, EBATTLE_ENCOUNT_TYPE& eEncountType);
    int32 GetEncounterLevel();
    void GetEncountCameraRotation(FRotator& EncountSign);
    int32 GetDangerLevel();
    FEncountTriggerData GetCurrentEncountTrigger();
    bool GetBattleViewerMode();
    bool GeRareEnemyParameter(FRareEnemyParam& cRareCatlinParam, FRareEnemyParam& cRareOctlinParam, EAreaID& eArea);
    bool Debug_StartViewerBattle();
    bool Debug_SetFixedSituation(int32 Situation);
    bool Debug_SetFixedEnemyGroupID(FName GrounpID);
    bool Debug_SetFixedEncount(bool Fixed);
    bool Debug_SetEncountSoon(bool Enable);
    bool Debug_SetEightBattle(int32 PartyLevel, int32 LevelRange, bool bEnableEightBattle);
    bool Debug_SetDisableStepRandom(bool Enable);
    bool Debug_SetBattleViewerSituation(EBATTLE_START_TYPE FixedSituation, bool UseFixedSituation);
    bool Debug_SetBattleViewerParty(TArray<EPlayableCharacterID>& PartyList, bool UseBattleViewerParty);
    bool Debug_SetBattleViewerMode(EBATTLE_VIEWER_MODE ViewerMode);
    bool Debug_SetBattleViewerMap(FName ViewerMapID, bool IsWaterSide, bool UseBattleViewerMap);
    bool Debug_SetBattleViewerEnemy(FName EnemyGroupID, TArray<FName>& EnemyIDList, FName PlacementID);
    bool Debug_SetBattleRandomParty(int32 PartyLevel, int32 LevelRange, int32 PartyNum, bool UseExtraJob, bool UseRandomParty);
    bool Debug_SetBattleMode(EBATTLE_ENCOUNT_TYPE eBattleMode);
    void Debug_GetFixedEncount(bool& Fixed);
    void Debug_GetEncountSoon(bool& Enable);
    void Debug_GetEncountInfo(FString& outDebugInfo);
    void Debug_GetDisableStepRandom(bool& Enable);
    bool Debug_GetBattleRandomParty();
    FName Debug_GetActiveEncountVolumeLabel();
    bool Debug_CreateRandomPartyData(int32 CharacterID, int32 PartyLevel, bool UseExtraJob);
    void CalcEncounterLevel(int32 levelId, int32& EncounterLevel, int32& DangerLevel);
    bool BattleStartExec();
    bool BackupEncount();
    bool AddEncountTrigger(class AKSTriggerBase* Trigger);
}; // Size: 0x2A0

class AEncountTriggerBase : public AMJBoxTrigger
{
    bool bDisableTrigger;                                                             // 0x0238 (size: 0x1)

    void SetEncountVolume();
    FString Debug_GetDebugInfo_BP();
}; // Size: 0x240

class AEndRollFlowManager : public AActor
{
    EEndRollFlowState CurrentState;                                                   // 0x0220 (size: 0x1)
    float StagingTimer;                                                               // 0x0224 (size: 0x4)
    TArray<class UEndRollSegmentPlayData*> SegmentList;                               // 0x0230 (size: 0x10)

    void UpdateStagingTime(float DeltaTime);
    void UpdateSegments();
    void UpdateManager(float DeltaSeconds);
    void StopEndRoll();
    void StartEndroll();
    void SegmentTransitionCallback(class UEndRollSegmentPlayData* Segment);
    void ResetEndRoll();
    void OnStop();
    void OnStart();
    void OnReset();
    void OnBeginPlay();
    bool IsSegmentsCompleted();
    bool IsReadyEndRoll();
    bool IsPlayingEndRoll();
    bool IsDisplayDebugInfo();
    EEndRollSegmentSet GetNextPlaySegmentID();
    void DebugUpdate();
    bool CreateSegmentPlayData();
    void ChangeState(EEndRollFlowState NextState);
    bool ChangeSegmentTransition(EEndRollSegmentState State, class UEndRollSegmentPlayData* Segment);
    void AddSegment(FEndRollSegmentData& segmentData, EEndRollSegmentSet segSetID, bool IsEnable, float startEvImageTime, float startBattleTime, float EndTime, float wipeTime);
}; // Size: 0x240

class AEnvSound : public AAtomSound
{
    float m_FirstWaitTime;                                                            // 0x0228 (size: 0x4)
    class USoundAtomCue* m_NightEnvSound;                                             // 0x0230 (size: 0x8)
    class USoundAtomCue* m_DayTimeEnvSound;                                           // 0x0238 (size: 0x8)

    void UpdateFade(float DeltaSeconds);
    void StopEnvSound(int32 nFadeOutTime);
    void PlayEnvSound(ETimeZoneType ETimeZoneType, int32 nFadeInTime);
    void PauseSE(bool bPause);
    bool IsFade();
    void Init();
    class UAtomComponent* GetAtomComponent();
    bool ChangeEnvSound(ETimeZoneType eTimeZone);
    void BattleChange_SavePlayingState();
    void BattleChange_RestorePlayingState();
    bool ApplyOptionVolume();
}; // Size: 0x278

class AEnvSoundObjectBase : public AActor
{
    class UAtomComponent* m_cpAtomComponent;                                          // 0x0220 (size: 0x8)

    void BattleChange_SavePlayingState();
    void BattleChange_RestorePlayingState();
}; // Size: 0x230

class AEventFlagObjectBase : public AActor
{
    TArray<FEventFlagData> m_anEventFlagData;                                         // 0x0220 (size: 0x10)
    bool PrologueForceHidden;                                                         // 0x0230 (size: 0x1)
    bool SwitchVisibilityOnPostTick;                                                  // 0x0231 (size: 0x1)

    void SetVisible(bool bEnable);
    bool SetupEventFlagVisible();
    void SetupEnable(int32 nFlagIndex, bool bStatusFlag);
    TArray<FEventFlagData> GetEventFlagArray();
}; // Size: 0x238

class AEventManager : public AAcqManagerBase
{
    TArray<FEventAtomSoundData> AtomCueArray;                                         // 0x0248 (size: 0x10)
    class UMaterialParameterCollection* m_pMPC;                                       // 0x0260 (size: 0x8)
    FString JsonFilename;                                                             // 0x0278 (size: 0x10)
    TArray<FEventData> EventData;                                                     // 0x0288 (size: 0x10)
    int32 EventIndex;                                                                 // 0x0298 (size: 0x4)
    int32 EndIndex;                                                                   // 0x029C (size: 0x4)
    class UDataTable* EventListDb;                                                    // 0x02A0 (size: 0x8)
    class AKSCharacterBase* PlayerCharacter;                                          // 0x02A8 (size: 0x8)
    class AKSCharacterBase* PlayActionCharacter;                                      // 0x02B0 (size: 0x8)
    class AKSObjectBase* TargetObject;                                                // 0x02B8 (size: 0x8)
    class AKSCharacterBase* EventTargetCharacter;                                     // 0x02C0 (size: 0x8)
    TArray<FString> EventArgs;                                                        // 0x02C8 (size: 0x10)
    float CommandTime;                                                                // 0x02D8 (size: 0x4)
    float WaitTime;                                                                   // 0x02DC (size: 0x4)
    int32 TalkIndex;                                                                  // 0x02E0 (size: 0x4)
    int32 ActiveTalkIndex;                                                            // 0x02E4 (size: 0x4)
    FString PlayEventName;                                                            // 0x02E8 (size: 0x10)
    FString NextEventName;                                                            // 0x02F8 (size: 0x10)
    TArray<FName> DialogEventName;                                                    // 0x0308 (size: 0x10)
    int32 BattleEndNextEventID;                                                       // 0x0318 (size: 0x4)
    FString BattleEndNextEventName;                                                   // 0x0320 (size: 0x10)
    FString BattleEndDefeatNextEventName;                                             // 0x0330 (size: 0x10)
    class AEventTargetBase* CameraTarget;                                             // 0x0340 (size: 0x8)
    class UCameraComponent* ActiveCamera;                                             // 0x0348 (size: 0x8)
    FVector CameraTrackStartPos;                                                      // 0x0350 (size: 0xC)
    FVector CameraTrackEndPos;                                                        // 0x035C (size: 0xC)
    FVector CameraTrackPos;                                                           // 0x0368 (size: 0xC)
    float CameraTrackEndTime;                                                         // 0x0374 (size: 0x4)
    float CameraTrackTime;                                                            // 0x0378 (size: 0x4)
    bool m_bCameraDecelerate;                                                         // 0x037C (size: 0x1)
    TArray<class AKSObjectBase*> ObjectArray;                                         // 0x0380 (size: 0x10)
    FEventListData PlayEventData;                                                     // 0x0390 (size: 0x98)
    int32 TempPlayEventSkip;                                                          // 0x0428 (size: 0x4)
    class UBalloonBase* EventBalloon;                                                 // 0x0430 (size: 0x8)
    class UUIFlashbackBase* EventFlashback;                                           // 0x0438 (size: 0x8)
    TArray<class UMaterial*> PostProcessMaterial;                                     // 0x0440 (size: 0x10)
    TArray<class UMaterialInstanceDynamic*> PostProcessMaterialDynamic;               // 0x0450 (size: 0x10)
    TMap<int32, FEventEffect> EventEffectList;                                        // 0x0460 (size: 0x50)
    TMap<int32, FEventEmotion> EventEmotionList;                                      // 0x04B0 (size: 0x50)
    bool EventBattle;                                                                 // 0x0500 (size: 0x1)
    bool BeforEventBattle;                                                            // 0x0501 (size: 0x1)
    bool IgnoreFootStepSound;                                                         // 0x0502 (size: 0x1)
    class UPartyChatBase* PartyChatWidget;                                            // 0x0508 (size: 0x8)
    bool IsRichEventLoadResourceData;                                                 // 0x0510 (size: 0x1)
    int32 RandomNumber;                                                               // 0x0514 (size: 0x4)
    bool IsCreateRandomNumber;                                                        // 0x0518 (size: 0x1)
    bool ExecFinishPre;                                                               // 0x0519 (size: 0x1)
    bool RefreshEventFlag;                                                            // 0x051A (size: 0x1)
    bool RefreshEventObject;                                                          // 0x051B (size: 0x1)
    bool EditPlayerPosition;                                                          // 0x051C (size: 0x1)
    bool EditCameraLock;                                                              // 0x051D (size: 0x1)
    bool EditPlayerCharacterEnable;                                                   // 0x051E (size: 0x1)
    int32 FirstCharacterSpawn;                                                        // 0x0520 (size: 0x4)
    int32 LastFlagChangeIndex;                                                        // 0x0524 (size: 0x4)
    int32 LastFadeOutIndex;                                                           // 0x0528 (size: 0x4)
    bool RefreshPlayerFlag;                                                           // 0x052C (size: 0x1)
    bool ContinueEvent;                                                               // 0x052D (size: 0x1)
    float TempTime;                                                                   // 0x0530 (size: 0x4)
    FVector TempVector;                                                               // 0x0534 (size: 0xC)
    class AKSCharacterBase* EventMoveTarget;                                          // 0x0540 (size: 0x8)
    TArray<TSoftObjectPtr<UTexture2D>> FlashBackTexture;                              // 0x0548 (size: 0x10)
    FVector CameraLockPos;                                                            // 0x0558 (size: 0xC)
    bool CameraLockFlag;                                                              // 0x0564 (size: 0x1)
    class AEndRollFlowManager* TempEndrollManager;                                    // 0x0568 (size: 0x8)
    int32 EndrollFlow;                                                                // 0x0570 (size: 0x4)
    EEventTheater TheaterStatus;                                                      // 0x0574 (size: 0x1)
    int32 EventStartLevelID;                                                          // 0x0578 (size: 0x4)
    FVector PlayerLocation;                                                           // 0x057C (size: 0xC)
    EKSCharacterDir PlayerDir;                                                        // 0x0588 (size: 0x1)
    FName RestoreHouseName;                                                           // 0x058C (size: 0x8)
    FName RestoreBGMLabel;                                                            // 0x0594 (size: 0x8)
    bool IsPlayEventForce;                                                            // 0x059D (size: 0x1)
    bool IsSequencerSkip;                                                             // 0x059E (size: 0x1)
    bool IsTempChangeTimeZone;                                                        // 0x059F (size: 0x1)
    class UTexture* SepiaLUT;                                                         // 0x05B0 (size: 0x8)
    FVector GRAY_SCALE;                                                               // 0x05B8 (size: 0xC)
    FVector GRAY_ALPHA;                                                               // 0x05C4 (size: 0xC)
    FVector SEPIA;                                                                    // 0x05D0 (size: 0xC)
    class ALevelSequenceActor* m_pcMainSeqActor;                                      // 0x05E0 (size: 0x8)
    TArray<class ALevelSequenceActor*> m_apcSubSeqActor;                              // 0x05E8 (size: 0x10)
    TArray<class ALevelSequenceActor*> m_apSeqList;                                   // 0x0608 (size: 0x10)
    class URichEventCommandBase* m_pcEventCommandData;                                // 0x0618 (size: 0x8)
    class URichEventCommandBase* m_pcSubEventCommandData;                             // 0x0628 (size: 0x8)
    TArray<TSoftObjectPtr<ULevelSequence>> m_acResList;                               // 0x0630 (size: 0x10)
    class ULevelSequence* m_pcCacheTimeSequencer;                                     // 0x0660 (size: 0x8)
    class ULevelSequence* m_ReplaceTimeSequencer;                                     // 0x0668 (size: 0x8)
    FEventManagerEventFinish EventFinish;                                             // 0x06A0 (size: 0x10)
    void EventFinish();
    TMap<int32, AKSCharacterBase*> m_EventCharacter;                                  // 0x0720 (size: 0x50)
    TMap<int32, AKSObjectBase*> m_EventObject;                                        // 0x0770 (size: 0x50)
    TMap<int32, AKSCharacterBase*> m_MoveList;                                        // 0x07C0 (size: 0x50)
    TArray<FSubSeqData> m_DeepThinkParams;                                            // 0x0818 (size: 0x10)

    bool UpdateWPMEventReflection(float DeltaTime);
    bool UpdateWPMEventEnd(float DeltaTime);
    bool UpdateWPMEventCheck(float DeltaTime);
    bool UpdateWPMEvent(float DeltaTime);
    bool UpdateUIStorySelect(float DeltaTime);
    bool UpdateTalk(float DeltaTime);
    bool UpdateSubStoryLabelJump(float DeltaTime);
    bool UpdateSubDelivMessageDialog(float DeltaTime);
    bool UpdateSubDeliveryDialog(float DeltaTime);
    bool UpdateSpawnCharacterThief(float DeltaTime);
    bool UpdateSpawnCharacterPlacement(float DeltaTime);
    bool UpdateSpawnCharacterPartyPosition(float DeltaTime);
    bool UpdateSpawnCharacterNPC(float DeltaTime);
    bool UpdateSpawnCharacter(float DeltaTime);
    bool UpdateSelectMemberDialog(float DeltaTime);
    void UpdateResetBattleWipeMPC_PlayingEvent(bool bWipe);
    bool UpdateReminiscenceDialog(float DeltaTime);
    bool UpdatePChatMode(float DeltaTime);
    bool UpdatePartnerSelectDialog(float DeltaTime);
    bool UpdateOpenPartySquadWidget(float DeltaTime);
    bool UpdateOpenPartySplitWidget(float DeltaTime);
    bool UpdateMove(float DeltaTime);
    bool UpdateInventorLearnAbility(float DeltaTime);
    bool UpdateInventorEventDialog(float DeltaTime);
    bool UpdateGetJobDialog(float DeltaTime);
    bool UpdateGetItemDialog(float DeltaTime);
    bool UpdateFinishTheater(float DeltaTime);
    bool UpdateFieldCommandDialog(float DeltaTime);
    bool UpdateExPartyChange(float DeltaTime);
    bool UpdateEventFadeOut(float DeltaTime);
    bool UpdateEventFadeIn(float DeltaTime);
    void UpdateEventEmotion(float DeltaTime);
    void UpdateEventEffect(float DeltaTime);
    bool UpdateEndrollInit(float DeltaTime);
    bool UpdateEndroll(float DeltaTime);
    bool UpdateDialogJumpEpilogue(float DeltaTime);
    bool UpdateDialogJump(float DeltaTime);
    bool UpdateCharaMoveStart(float DeltaTime);
    bool UpdateCharaFadeOut(float DeltaTime);
    bool UpdateCharaFadeIn(float DeltaTime);
    bool UpdateCharacterForce(float DeltaTime);
    bool UpdateCharacterAction(float DeltaTime);
    bool UpdateChallengeDialog(float DeltaTime);
    bool UpdateCameraDecelerate(float DeltaTime);
    bool UpdateBattleStart(float DeltaTime);
    bool UpdateAddMemberEnd(float DeltaTime);
    bool UpdateAddMemberDialog(float DeltaTime);
    bool UpdateAddMember(float DeltaTime);
    void Update_StartFadeOut(float DetalTime);
    void Update_EventSkipFadeOut(float DeltaTime);
    void Update_EventSkipFadeIn(float DeltaTime);
    void Update_CameraMove(float DeltaTime);
    bool TempEventSkip(bool NewEventSkip);
    bool StopSubSequencer(int32 nIndex);
    bool StartWPMEventReflection(const FEventData& refEventData);
    bool StartWPMEventEnd(const FEventData& refEventData);
    bool StartWPMEventCheck(const FEventData& refEventData);
    bool StartWPMEvent(const FEventData& refEventData);
    bool StartWeaponMasterFrow(const FEventData& refEventData);
    bool StartUnlockFasttravel(const FEventData& refEventData);
    bool StartUIStorySelect(const FEventData& refEventData);
    bool StartUIShop(const FEventData& refEventData);
    bool StartUIPartyEdit(const FEventData& refEventData);
    bool StartUINote(const FEventData& refEventData);
    bool StartUIBar(const FEventData& refEventData);
    bool StartTopCharaTypeLabelJump(const FEventData& refEventData);
    bool StartTempPartySetting(const FEventData& refEventData);
    bool StartTalkPos(const FEventData& refEventData);
    bool StartTalkPChat(const FEventData& refEventData);
    bool StartTalkParty(const FEventData& refEventData);
    bool StartTalkPartner(const FEventData& refEventData);
    bool StartTalkGeneral(const FEventData& refEventData);
    bool StartTalk(const FEventData& refEventData);
    bool StartSuccsessFCTypeLabelJump(const FEventData& refEventData);
    bool StartSubTitleNextBlock(const FEventData& refEventData);
    bool StartSubTitle(const FEventData& refEventData);
    bool StartSubStoryLabelJump(const FEventData& refEventData);
    bool StartSubDelivMessageDialog(const FEventData& refEventData);
    bool StartSubDeliveryDialog(const FEventData& refEventData);
    bool StartStopEmotionIconAll();
    bool StartSpawnEffect(const FEventData& refEventData);
    bool StartShipPutUpSail(const FEventData& refEventData);
    bool StartSetSwoonEventObject(const FEventData& refEventData);
    bool StartSetSwoon(const FEventData& refEventData);
    bool StartSetNextLevelTriggerID(const FEventData& refEventData);
    bool StartSetFastTravel(const FEventData& refEventData);
    bool StartSequencerStart(const FEventData& refEventData);
    bool StartSequencerSkip();
    bool StartSequencerPause();
    bool StartSequencerLabelJump(FString strLabel);
    bool StartSelectMemberJump(const FEventData& refEventData);
    bool StartSelectMemberDialog(const FEventData& refEventData);
    bool StartResidentSubSequencerStopIndex(int32 nIndex);
    bool StartResidentSubSequencerStop();
    bool StartResidentSubSequencerStart(const FEventData& inEventData);
    bool StartReminisceneDialog(const FEventData& refEventData);
    bool StartRefreshEventObject();
    bool StartRecoverSwoonEventChara(const FEventData& refEventData);
    bool StartRecoverSwoon(const FEventData& refEventData);
    bool StartRadarMap(const FEventData& refEventData);
    bool StartPreparationBattleStart(const FEventData& refEventData);
    bool StartPostEffectSetting(class UCameraComponent* TargetCamera, const FEventData& refEventData);
    bool StartPlaySE(const FEventData& refEventData);
    bool StartPlayerCharacterEnable(const FEventData& refEventData);
    bool StartPlayEmotionIcon(const FEventData& refEventData);
    bool StartPChatMode(const FEventData& refEventData);
    bool StartPartnerSelectDialog(const FEventData& refEventData);
    bool StartOpenPartySquadWidget(const FEventData& refEventData);
    bool StartOpenPartySplitWidget(const FEventData& refEventData);
    bool StartOpenEndCardUI(const FEventData& refEventData);
    bool StartOpenEndCardEpilogueUI(const FEventData& refEventData);
    bool StartOpenDoor(const FEventData& refEventData);
    bool StartOKDialog(const FEventData& refEventData);
    bool StartObjectSpawn(const FEventData& refEventData);
    bool StartNotificationMessage(const FEventData& refEventData);
    bool StartNotificationCountShow(const FEventData& refEventData);
    bool StartNarration(const FEventData& refEventData);
    bool StartMovePos(const FEventData& refEventData);
    bool StartMove(const FEventData& refEventData);
    bool StartModifyMP(const FEventData& refEventData);
    bool StartModifyHP(const FEventData& refEventData);
    bool StartLeaveMember(const FEventData& refEventData);
    bool StartJudgeMoney(const FEventData& refEventData);
    bool StartInventorLearnAbility(const FEventData& refEventData);
    bool StartInventorEventDialog(const FEventData& refEventData);
    bool StartHouseInSettingPlaySeq(const FEventData& refEventData);
    bool StartHouseInSetting(const FEventData& refEventData);
    bool StartGetTameMonster(const FEventData& refEventData);
    bool StartGetJobDialog(const FEventData& refEventData);
    bool StartGetItemDialog(const FEventData& refEventData);
    bool StartFullRecoveryAndPotentiality(const FEventData& refEventData);
    bool StartFullRecovery(const FEventData& refEventData);
    bool StartFlashbackStart(const FEventData& refEventData);
    bool StartFlashbackEnd(const FEventData& refEventData);
    bool StartFinishTheater(const FEventData& refEventData);
    bool StartFinishTempPartySetting(const FEventData& refEventData);
    bool StartFinalBattleStart(const FEventData& refEventData);
    bool StartFieldCommandDialog(const FEventData& refEventData);
    bool StartEventFadeOut(const FEventData& refEventData);
    bool StartEventFadeIn(const FEventData& refEventData);
    bool StartEndrollInit(const FEventData& refEventData);
    bool StartEndroll(const FEventData& refEventData);
    bool StartEndReminiscene(const FEventData& refEventData);
    bool StartEndPlayReminiscene(const FEventData& refEventData);
    bool StartEnableFieldObject(const FEventData& refEventData);
    bool StartEnableEventObject(const FEventData& refEventData);
    bool StartEmotionEnable(const FEventData& refEventData);
    bool StartDelFollow(const FEventData& refEventData);
    bool StartCommand(const FEventData& refEventData);
    bool StartCharaMoveStart(const FEventData& refEventData);
    bool StartCharaFadeOut(const FEventData& refEventData);
    bool StartCharaFadeIn(const FEventData& refEventData);
    bool StartCharacterPhysics(const FEventData& refEventData);
    bool StartChangeTitle(const FEventData& refEventData);
    bool StartChangePlayerResource(const FEventData& refEventData);
    bool StartChangePartySet(const FEventData& refEventData);
    bool StartChangeMoeny(const FEventData& refEventData);
    bool StartChangeMap(const FEventData& refEventData);
    bool StartChangeItem(const FEventData& refEventData);
    bool StartChangeArea(const FEventData& refEventData);
    bool StartChallengeDialog(const FEventData& refEventData);
    bool StartCancelSwoon(const FEventData& refEventData);
    bool StartCameraTargetEvent(const FEventData& refEventData);
    bool StartCameraTarget(const FEventData& refEventData);
    bool StartCameraSpawn(const FEventData& refEventData);
    bool StartCameraRotation(const FEventData& refEventData);
    bool StartCameraPos(const FEventData& refEventData);
    bool StartCameraLock(const FEventData& refEventData);
    bool StartCameraDecelerate(const FEventData& refEventData);
    bool StartBeginReminiscene(const FEventData& refEventData);
    bool StartBeginPlayReminiscene(const FEventData& refEventData);
    bool StartBattleStart(const FEventData& refEventData);
    bool StartAutoSave(const FEventData& refEventData);
    bool StartAddMemberEnd(const FEventData& refEventData, bool& AddMember);
    bool StartAddMemberDialog(const FEventData& refEventData);
    bool StartAddMember(const FEventData& refEventData);
    bool SpawnPlayerCharacter(const FEventData& refEventData);
    bool SpawnPChatCharacter(const FEventData& refEventData);
    bool SpawnEventEffect(int32 ID, const FName& Label, float LifeTime, const FVector& Pos, int32 TargetCharacter);
    bool SpawnEventCharacterList();
    bool SpawnCharacterThief(const FEventData& refEventData);
    bool SpawnCharacterPlacement(const FEventData& refEventData);
    bool SpawnCharacterPartyPosition(const FEventData& refEventData);
    bool SpawnCharacterNPC(const FEventData& refEventData);
    bool SpawnCharacter(const FEventData& refEventData);
    void SkipPositionSequencer(FFrameTime Time);
    void SetUpSeamlessMode(bool bSeamless);
    void SetUpdateType(EEventUpdateType Type);
    void SetTimeZoneTheater(FName EventName, int32 OverrideTimeZone);
    void SetSubSequenceDirector(class URichEventCommandBase* pEvent);
    void SetSkipOpenDoorLabel(FName TargetName, bool bOpen);
    void SetRichEventLoadData(bool IsLoad);
    void SetResumeGamePlaySystem();
    bool SetPostProcessDeepThink(bool Enable, class AKSCharacterBase* refTarget, float Time);
    bool SetPChatCharacterDir(const FEventData& refEventData);
    bool SetPartnerNumber(const FEventData& refEventData);
    bool SetOpenCloseDoorFunction(const FEventData& refEventData);
    void SetMaxSkipInputTime(float MaxTime);
    void SetMaterialEnvParams();
    bool SetLegendMonsterAwakening(EAWAKENING_MONSTER_PARAM eAwake);
    void SetLastSoundBlock(int32 bLock);
    void SetFinishBattleWipe(bool Enable);
    void SetFinish(bool Finish);
    void SetEventSkipInput(bool isSkipInput);
    void SetEventPlayMode(EKSEVENT_PLAY Mode);
    void SetEventObjectEnableTheater(FName EventName);
    void SetEventDataWithLevelIDForPartyChat(FName EventLabel, class AKSCharacterBase* TargetChara, FName MapLabel, bool TheaterMode);
    void SetEventDataWithLevelID(FName EventLabel, class AKSCharacterBase* TargetChara, FName MapLabel, bool TheaterMode);
    void SetEventDataForce(FName Name, class AKSCharacterBase* TargetChara, bool TheaterMode);
    void SetEventData(FName Name, class AKSCharacterBase* TargetChara, bool TheaterMode);
    bool SetEventCheckFlag(const FEventData& refEventData);
    void SetEnvTimeZoneMPC_PlayingEvent(bool bPlayingEvent);
    bool SetEndrollManager();
    void SetDeepThinkParameter(FName TagName, FVector Offset, int32 nIndex);
    bool SetDeepThinkMaterialEnable(bool inEnable);
    bool SetCharacterPosition(const FEventData& refEventData);
    void SetCacheMapData(class ULevelSequence* TimeSequencer);
    void SetBanEventSkip(bool bBan);
    void SetAllCharacterEnable(bool Enable);
    void RevertTimeZoneSequencer();
    void RevertPlayerCollision();
    bool RestoreTheater();
    bool RestoreEventSkip();
    bool ResetPostProcess();
    void ResetEventSkip();
    void RequestRefreshSpawnOnEndEvent();
    void RequestPlayEvent();
    void RemoveObject(int32 Index);
    bool RemoveEventEffectList(int32 ID);
    void RemoveEventEffectAll();
    bool RemoveEventEffect(int32 ID);
    void RemoveEmotionIcon(int32 Index);
    bool RemoveCharacterAll();
    void RemoveCharacter(int32 Index);
    void ReferenceSequencerStartDeepDirecting();
    void ReferenceSequencerEndDeepDirecting();
    void ReferenceSequencerDeepDirectingAttachPlayer();
    bool RandomNumberJump(float DeltaTime);
    bool PlayEventTheater(const FName& EventName);
    bool PlayEventForce(FString EventName, class AKSCharacterBase* TargetCharacter);
    bool PlayEvent(FString EventName, class AKSCharacterBase* TargetCharacter);
    void PlayDeepDirection(ENOTICE_TYPE eNoticeType, const FNoticeArgs& Args);
    bool PartnerCharacterJump(float DeltaTime);
    bool MemberCountJump(float DeltaTime);
    FString MakeJsonDataPath(const FName& EventName);
    bool MakeEventData(TArray<FEventData>& outEventData, FString eventJsonName);
    bool LoadSubSequencer(const FEventData& inEventData);
    bool IsTheaterMode();
    bool IsSeqDebugPlay();
    bool IsPlayReferenceSequencerDeepDirecting();
    bool IsPlaying();
    bool IsFinish();
    bool IsExecutingFinishPre();
    bool IsEventBattleDefeatNextEvent();
    bool IsCheckEventPlayMode();
    bool IsBanEventSkip();
    bool HaveMeatItemJump(float DeltaTime);
    bool HaveItemJump(float DeltaTime);
    EEventUpdateType GetUpdateType();
    EEventTheater GetTheaterStatus();
    FName GetTalkGeneralText();
    int32 GetSwitchIndoorTriggerIndex(FString TriggerName);
    TArray<class ALevelSequenceActor*> GetSubSequenceActor();
    class ALevelSequenceActor* GetSubSequeceActor(int32 nIndex);
    FString GetSubSeqFileName();
    FName GetSubOptionValue(int32 nIndex);
    void GetSubEventBattleParty(EKSPartySet MainSet, EKSPartySet SubSet, TArray<EPlayableCharacterID>& MainParty, TArray<EPlayableCharacterID>& SubParty);
    float GetSkipInputTime();
    bool GetSequencerSkip();
    FString GetSeqFileName();
    bool GetRichEventLoadData();
    FName GetResidentTagData(class ULevelSequencePlayer* SequencePlayer);
    class ALevelSequenceActor* GetResidentSequenceActor(int32 nIndex);
    bool GetPlaySequencer();
    FString GetPlayingEventName();
    FEventListData GetPlayEventData();
    class AKSObjectBase* GetObject(int32 Index);
    FEventData GetNowEventData();
    float GetMaxSkipInputTime();
    void GetMaterialEnvParams();
    class ALevelSequenceActor* GetMainSequeceActor();
    class AWeaponMasterEventFlow* GetLoadWeaponMasterAssetClass(const FString strPass);
    bool GetFinishEncountWipe();
    bool GetFinishBattleWipe();
    void GetFinalBattleParty(TArray<EPlayableCharacterID>& MainParty, TArray<EPlayableCharacterID>& SubParty);
    bool GetEventSkip();
    EKSEVENT_PLAY GetEventPlayMode();
    FEventPlayData GetEventPlayData();
    class UUIFlashbackBase* GetEventFlashbackData();
    TMap<int32, FEventEffect> GetEventEffectList();
    class AKSCharacterBase* GetEventCharacter(int32 Index);
    bool GetEventBattleFlag();
    FName GetDeepThinkTagName(class ULevelSequencePlayer* SequencePlayer);
    FVector GetDeepThinkOffset(class ULevelSequencePlayer* SequencePlayer);
    class ALevelSequenceActor* GetDeepThinkActor(int32 nIndex, int32& ArrayNum);
    bool GetDebugPlay();
    class ULevelSequence* GetCacheTimeSequencer();
    int32 GetCacheMapID();
    bool FollowCharacterJump(float DeltaTime);
    bool FinishTheater();
    bool FinishPre();
    bool FinishEventSkip();
    bool FinishEvent();
    bool FinishDialog();
    void ExecCameraMoving();
    void EventSkipUIReset();
    bool EventRemoveCharacterAll();
    void EventRemoveCharacter(int32 Index);
    bool EventLoadLevel(FName inLevelID, FName EventSoundLabel, EEventPlayBGM inEventPlayBGM, FString PlayBGMLabel);
    bool End(float DeltaTime);
    bool DialogFinish(FString& outNextEventName);
    void DeletePlaySequencer(ENOTICE_TYPE eNoticeType, const FNoticeArgs& Args);
    void DeleteDeepDirection(ENOTICE_TYPE eNoticeType, const FNoticeArgs& Args);
    void DebugAwakeningPartner(int32 Type, int32 Index);
    void Debug_DumpEventFlagToFile();
    bool CreateRandomNumber(const FEventData& refEventData);
    bool CreateEventCharacter(ESPAWN_CHARA_TYPE eType, const FEventData& inEventData);
    bool CreateDialogEpilogue(const FEventData& refEventData);
    bool CreateDialog(const FEventData& refEventData);
    bool CommandInit(int32 Index, const FEventData& inEventData);
    void ClearReplaceTimeSequencer();
    void ClearCacheTimeSequencer();
    void CheckOutputAtomSound();
    void ChangeTimeZoneSequencer(class ULevelSequence* replaceSequencer);
    bool BitFlagJump(float DeltaTime);
    bool AttachSequencerSub(class ULevelSequence* SubSeq);
    bool AttachSequencerResidentSub(class ULevelSequence* SubSeq);
    bool AttachSequencerMain(class ULevelSequence* MainSeq);
    bool AttachPlaySequenceSub(class ULevelSequence* SubSeq, int32 NumLoop, FName TagName);
    bool AttachPlaySequencerResidentSub(class ULevelSequence* SubSeq, int32 nIndex, FName TagName, FVector vOffset);
    void AddObject(int32 Index, class AKSObjectBase* Object);
    bool AddEventEffectList(int32 ID, const FEventEffect& EffectData);
    void AddEventCharacter(int32 Index, class AKSCharacterBase* Character);
}; // Size: 0x830

class AEventTargetBase : public APawn
{
    FVector EventCameraLocation;                                                      // 0x0280 (size: 0xC)
    FVector EventCameraLocationInHouse;                                               // 0x028C (size: 0xC)
    FRotator EventCameraRotation;                                                     // 0x0298 (size: 0xC)
    FVector PlayerCameraLocation;                                                     // 0x02A4 (size: 0xC)
    FRotator PlayerCameraRotation;                                                    // 0x02B0 (size: 0xC)
    float PlayerManualFocusDistance;                                                  // 0x02BC (size: 0x4)

    void SwitchCamera(const FEventData& refEventData, bool inHouse);
    void SetPlayerManualFocusDistance(float ManualDistance);
    void FollowingCamera(const FEventData& refEventData);
}; // Size: 0x2C0

class AEventTriggerBox : public AMJBoxTrigger
{
    FString EventName;                                                                // 0x0238 (size: 0x10)
    int32 RequiredNPCIndex;                                                           // 0x0248 (size: 0x4)
    FString RequiredItemLabel;                                                        // 0x0250 (size: 0x10)
    FName m_PlacementLabel;                                                           // 0x0260 (size: 0x8)
    FPlacementData m_PlacementData;                                                   // 0x0268 (size: 0x700)
    bool m_IsSubStory;                                                                // 0x0968 (size: 0x1)
    ERADARMAP_ICON_TYPE m_RadarMapIconType;                                           // 0x0969 (size: 0x1)

    void SetupTriggerAfterSpawn(FName PlacementLabel);
    bool PlayEvent(FString TalkEventName);
    bool IsTalkEventCheck(FString& TalkEventName);
    bool IsSubStoryTrigger();
    bool GetTriggerEnable();
    ERADARMAP_ICON_TYPE GetRadarMapIconType();
    FName GetPlacementLabel();
}; // Size: 0x970

class AFadeManager : public AAcqManagerBase
{
    class UKSFade* m_FadeWidget;                                                      // 0x0230 (size: 0x8)
    class UBattleWipeBase* m_BattleWipeWidget;                                        // 0x0238 (size: 0x8)
    int32 m_FadeUser;                                                                 // 0x0240 (size: 0x4)

    void WipeOut(EWIPE_KIND WipeKind);
    void WipeInAtBattleEndFromEvent();
    void WipeIn(EWIPE_KIND WipeKind);
    void SetIsCancelWipeOutAtBattleEnd(bool Val);
    bool IsFadeUser(EFADE_USER User);
    bool IsFadeEnd();
    bool IsBattleWipeActive();
    bool IsBattleEndWipeOut();
    void HideBattleEndWipe_Immediately();
    bool GetIsCancelWipeOutAtBattleEnd();
    class UKSFade* GetFadeWidget(EFADE_KIND FadeKind);
    int32 GetFadeUser();
    EFADE_TYPE GetFadeType(EFADE_KIND FadeKind);
    class UBattleWipeBase* GetBattleWipeWidget();
    class UKSFade* FadeOut(EFADE_KIND FadeKind, float EndTime, const FLinearColor Color, EFADE_USER FadeUser);
    class UKSFade* FadeInImmediately(EFADE_KIND FadeKind, EFADE_USER FadeUser);
    class UKSFade* FadeIn(EFADE_KIND FadeKind, float EndTime, const FLinearColor Color, EFADE_USER FadeUser);
    class UKSFade* ClearFadeForcibly(EFADE_KIND FadeKind);
}; // Size: 0x248

class AFadeNpcVolumeBase : public AActor
{
    float m_NpcFadeTime;                                                              // 0x0220 (size: 0x4)
    float m_AdditionalNpcFadeTime;                                                    // 0x0224 (size: 0x4)

    float GetTotalFadeTime();
}; // Size: 0x228

class AFieldCommandFlowBase : public AActor
{
    MJFieldCommandType m_FieldCommandType;                                            // 0x0228 (size: 0x1)

    void PrintToVLog(FString str);
    bool IsImpossibleSucceed(class AKSCharacterBase* targetNpc);
    TMap<class FString, class FString> GrabStateSnapshot_Internal();
    FString GetRunningStatus();
    bool GetIsGameOverWhenLoose();
    MJFieldCommandType GetFieldCommandType();
    class AKSCharacterBase* GetFieldCommandTargetNpc();
    class AKSCharacterBase* GetFieldCommandOwner();
    bool Debug_ExecAutoPlayProcess();
}; // Size: 0x230

class AFieldCommandManager : public AAcqManagerBase
{
    TMap<class MJFieldCommandType, class FFieldCommandResult> LastFieldCommandResults; // 0x0238 (size: 0x50)
    bool IsFieldCommandEvent;                                                         // 0x0288 (size: 0x1)
    bool RequestBadConnectionInfo;                                                    // 0x0289 (size: 0x1)
    bool InterruptPlay;                                                               // 0x028A (size: 0x1)
    bool bInFcOpeningPeriod;                                                          // 0x028B (size: 0x1)
    FText Debug_WaitReason;                                                           // 0x0290 (size: 0x18)

    bool StartSwoonTalk(class AKSCharacterBase* targetNpc);
    bool StartFieldCommand();
    bool StartBadConnectionTalk();
    void SetupFlowBase(class AKSCharacterBase* TargetChara, MJFieldCommandType FCType);
    bool SetupCommand(const TArray<MJFieldCommandType>& FieldCommand);
    bool SetStartParam(class AKSCharacterBase* TargetChara, MJFieldCommandType Type);
    void SetLastFieldCommandResults(MJFieldCommandType FCType, FieldCommandStatus FcStatus);
    void SetIsInterruptPlay(bool Val);
    void SetIsIgnoreSwoonProcessFromEventCommand(bool Val);
    void SetIsIgnoreFollowProcessFromEventCommand(bool Val);
    bool RecoveryConnectionValue(int32 TownID);
    void PrintToVLog(FString str);
    bool IsPlayingBadConnectionFlow();
    bool IsPlaying();
    bool IsImpossibleSucceed(MJFieldCommandType FCType, class AKSCharacterBase* targetNpc);
    bool IsCompleteFieldCommand(MJFieldCommandType FCType, class AKSCharacterBase* targetNpc);
    bool IsBattleType();
    bool IsAvailableFieldCommand(MJFieldCommandType FCType, class AKSCharacterBase* targetNpc);
    TMap<class FString, class FString> GrabStateSnapshot_Internal();
    class AKSCharacterBase* GetTargetNpc();
    FString GetState();
    TArray<FPurchaseItemInfoData> GetPurchaseItemList(FName NPCLabel);
    class AFieldCommandFlowBase* GetPlayingCommand();
    TMap<class MJFieldCommandType, class FFieldCommandResult> GetLastFieldCommandResults();
    bool GetIsInterruptPlay();
    bool GetIsGameOverWhenLoose();
    bool GetIsFieldCommandEvent();
    class AFieldCommandManager* GetInstance();
    class AFieldCommandFlowBase* GetFlowBase(MJFieldCommandType FCType);
    bool FinishFieldCommand();
    void Debug_SetWaitReason(const FText reason);
    bool ConnectionBadNotification();
    bool CanExecFieldCommand(FName NPCLabel, MJFieldCommandType FCType);
    bool AddEventBalloon(FName RowName, class AActor* Target);
}; // Size: 0x2A8

class AFlagRandomControlManager : public AAcqManagerBase
{

    void OnStartTimeZoneChange(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnStartLevelChange(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
}; // Size: 0x230

class AFrameGrabberManager : public AAcqManagerBase
{
    class UMaterialInstanceDynamic* MaterialInstanceDynamic;                          // 0x0230 (size: 0x8)
    TArray<uint8> CaptureFrameData;                                                   // 0x0238 (size: 0x10)
    class UTexture2D* CaptureFrameTexture;                                            // 0x0248 (size: 0x8)
    bool NoiseAnimation;                                                              // 0x0250 (size: 0x1)
    bool m_bCaptureSuccess;                                                           // 0x026C (size: 0x1)

    void StopFrameGrab();
    bool StartFrameGrab();
    void SetMaterialInstanceDynamic(class UMaterialInstanceDynamic* MaterialInstance);
    void SetCaptureEnable(bool Enable);
}; // Size: 0x298

class AGameDataClearnupWorker : public AActor
{
    class UKSSaveSystem* m_targetSystemData;                                          // 0x0220 (size: 0x8)

    void StartClearnup(class UKSSaveSystem* SystemData);
    bool GetIsDeleted();
    bool GetIsComplete();
}; // Size: 0x230

class AGameMainSequenceManager : public AAcqManagerBase
{
    TArray<class UStateDataBase*> m_SequenceList;                                     // 0x0240 (size: 0x10)
    EMAINSEQ_TYPE m_CurrentState;                                                     // 0x0250 (size: 0x1)
    EMAINSEQ_TYPE m_BeforeState;                                                      // 0x0251 (size: 0x1)
    int32 m_RequestFlowIndex;                                                         // 0x0254 (size: 0x4)
    TMap<class EREQUEST_TYPE, class FMainSequneceRequestParam> m_RequestList;         // 0x0258 (size: 0x50)
    TArray<FMainSequneceRequestParam> m_HoldingRequestList;                           // 0x02A8 (size: 0x10)
    TMap<class EREQUEST_TYPE, class FTransitionData> m_TrandisitonSeqType;            // 0x02B8 (size: 0x50)
    TArray<class UStateDataBase*> m_BackGroundData;                                   // 0x0308 (size: 0x10)

    bool RequestCheck(EMAINSEQ_TYPE& Type, EREQUEST_TYPE& PassingRequest);
    bool IsBattleMode();
    TArray<FMainSequneceRequestParam> GetHoldingRequestList();
    void Debug_ShowMainSequenceInfo(bool bEnable);
    void Debug_ChangeState(EMAINSEQ_TYPE Type);
    bool CheckNextFlow(EMAINSEQ_TYPE& Type);
    void CheckHoldingRequest();
    bool CheckCurrentState(EMAINSEQ_TYPE CheckType);
    void AddRequest(EREQUEST_TYPE Type, FMainSequneceRequestParam Param);
}; // Size: 0x318

class AGameSpeedManager : public AAcqManagerBase
{
    bool b_mBattleSpeedChange;                                                        // 0x0230 (size: 0x1)
    bool b_mEventSpeedChange;                                                         // 0x0231 (size: 0x1)
    EEVENT_MODE m_eEventMode;                                                         // 0x0232 (size: 0x1)

    void ResetEventSpeedUp(class UObject* WorldContextObject);
    EEVENT_MODE GetEventMode();
    ECHANGE_TIME_DILATION GetEventDilation();
    void EventSpeedUpInit(class UObject* WorldContextObject);
    void EventSpeedUpFinish(class UObject* WorldContextObject);
    void EventSpeedUp(class UObject* WorldContextObject, bool Enable);
    void ChangeEventMode(bool bIsUp);
    void BattleSpeedUpInit(class UObject* WorldContextObject);
    void BattleSpeedUpFinish(class UObject* WorldContextObject);
    void BattleSpeedUp();
}; // Size: 0x238

class AHolyTorchItemTriggerBase : public AMJBoxTrigger
{
    EHOLY_TORCH_TYPE HolyTorchType;                                                   // 0x0238 (size: 0x1)
    TArray<FName> EventLabels;                                                        // 0x0240 (size: 0x10)
    TArray<EPlayableCharacterID> RequiredCharaId;                                     // 0x0250 (size: 0x10)
    int32 TriggerStartFlag;                                                           // 0x0260 (size: 0x4)
    int32 TriggerEndFlag;                                                             // 0x0264 (size: 0x4)

    void SwitchShiningMirror(bool bEnable);
    bool IsTriggerEnabled();
    bool GetShiningMirrorFlag();
    FName GetPlayEvent();
    bool GetCharacterConditon(int32 nIndex);
    bool CheckReburnCondition();
    void CheckLuminusStatue();
}; // Size: 0x268

class AHouseEnterTrigger : public AKSTriggerBase
{
    int32 m_nInFloor;                                                                 // 0x0238 (size: 0x4)
    int32 m_nOutFloor;                                                                // 0x023C (size: 0x4)
    float m_fManualFocusDistance_Room;                                                // 0x0240 (size: 0x4)

    void SetupFocalLength(bool bIsHouseIn);
    int32 GetOutFloor();
    int32 GetInFloor();
}; // Size: 0x248

class AKSAIControllerBase : public AController
{
}; // Size: 0x298

class AKSBattleCharacterBase : public AActor
{

    class UActorComponent* AddActorComponent(UClass* cActorComponentClass);
}; // Size: 0x220

class AKSCameraManager : public AAcqManagerBase
{
    bool EncountCapture;                                                              // 0x0230 (size: 0x1)
    EKSCameraType ActiveType;                                                         // 0x0231 (size: 0x1)
    EKSCameraType OldType;                                                            // 0x0232 (size: 0x1)
    TArray<class AActor*> CameraTargets;                                              // 0x0238 (size: 0x10)
    TArray<class UCameraComponent*> CameraComponents;                                 // 0x0248 (size: 0x10)
    TArray<class USpringArmComponent*> SpringArmComponents;                           // 0x0258 (size: 0x10)
    TArray<FVector> RelativeCameraLocation;                                           // 0x0268 (size: 0x10)
    float m_fDefaultFieldFocusDistance;                                               // 0x0278 (size: 0x4)

    void SetFieldFoucusDistance(float fFoucusDistance);
    void SetComponent(EKSCameraType eType, class AActor* Target, class UCameraComponent* Camera, class USpringArmComponent* SpringArm);
    bool SetCameraActive(EKSCameraType eType, float fBlend);
    void ResetFieldFoucusDistance();
    void OnLevelChangeCompleted(ENOTICE_TYPE noticeType, const FNoticeArgs& Args);
    class AActor* GetTarget(EKSCameraType eType);
    class USpringArmComponent* GetSpringArm(EKSCameraType eType);
    FVector GetRelativeCameraLocation(EKSCameraType eType);
    EKSCameraType GetCurrentCameraType();
    class UCameraComponent* GetCameraComponent(EKSCameraType eType);
    class USpringArmComponent* GetActiveSpringArm();
    class AActor* GetActiveCameraTarget();
    class UCameraComponent* GetActiveCameraComponent();
    void ForceUpdatePlayerCameraManager(float InDeltaTime);
    void BattleEndScreenShot();
}; // Size: 0x2A8

class AKSCharacterBase : public APaperCharacter
{
    ECharacterState CharaState;                                                       // 0x04C0 (size: 0x1)
    bool m_IsFadeInWait;                                                              // 0x04C1 (size: 0x1)
    FName ActionLabel;                                                                // 0x04C4 (size: 0x8)
    FName CurrentFlipbookName;                                                        // 0x04CC (size: 0x8)
    EKSCharacterDir Dir;                                                              // 0x04D4 (size: 0x1)
    bool HouseChangeVisibleFlag;                                                      // 0x04D5 (size: 0x1)
    bool IsAnimEndOnce;                                                               // 0x04D6 (size: 0x1)
    EKSCharacterAnimationLoop ManualLoop;                                             // 0x04D7 (size: 0x1)
    bool FixAnimation;                                                                // 0x04D8 (size: 0x1)
    bool m_bReverseSprite;                                                            // 0x04D9 (size: 0x1)
    FPlayAction NextActionData;                                                       // 0x04DC (size: 0xC)
    EKSCharacterAction NowActionID;                                                   // 0x04E8 (size: 0x1)
    FCharacterActionResource ActionResource;                                          // 0x04F0 (size: 0xC0)
    FKSCharaFlipbook ActionFlipbook;                                                  // 0x05B0 (size: 0x58)
    FVector TempLocation;                                                             // 0x0608 (size: 0xC)
    class UTexture2D* m_CurrentWeaponTexture;                                         // 0x0618 (size: 0x8)
    TArray<float> MoveSpeed;                                                          // 0x0620 (size: 0x10)
    TArray<float> InitMoveSpeed;                                                      // 0x0630 (size: 0x10)
    TArray<float> MoveSpeed_EventPlayer;                                              // 0x0640 (size: 0x10)
    TArray<float> InitMoveSpeed_EventPlayer;                                          // 0x0650 (size: 0x10)
    EKSCharacterCategory CharacterCategory;                                           // 0x0660 (size: 0x1)
    bool CharacterEnable;                                                             // 0x0661 (size: 0x1)
    bool LoadedCharacterEnableCancel;                                                 // 0x0662 (size: 0x1)
    EKSCharacterMoveMode MoveMode;                                                    // 0x0663 (size: 0x1)
    FVector MovePoint;                                                                // 0x0664 (size: 0xC)
    bool IsMoveUpdate;                                                                // 0x0670 (size: 0x1)
    bool Moving;                                                                      // 0x0671 (size: 0x1)
    class UKSPaperFlipbook* CustomFlipbook;                                           // 0x0678 (size: 0x8)
    TMap<class FName, class UMaterialInstanceDynamic*> m_CustomFlipbookMaterialList;  // 0x0680 (size: 0x50)
    FVector MoveDir;                                                                  // 0x06D0 (size: 0xC)
    bool Loaded;                                                                      // 0x06DC (size: 0x1)
    bool m_bChangeDirLock;                                                            // 0x06DD (size: 0x1)
    class USceneComponent* LanternRoot;                                               // 0x06E0 (size: 0x8)
    class ASpotLight* m_pcLanternLight;                                               // 0x06E8 (size: 0x8)
    bool m_bUsingLantern;                                                             // 0x06F0 (size: 0x1)
    FEquipLanternData EquipLanternData;                                               // 0x06F8 (size: 0x20)
    class UCapsuleComponent* NpcFadeCollision;                                        // 0x0720 (size: 0x8)
    float NpcFadeCollisionRadius;                                                     // 0x0728 (size: 0x4)
    float NpcFadeCollisionLengthRate;                                                 // 0x072C (size: 0x4)
    class UBoxComponent* FormCollision;                                               // 0x0730 (size: 0x8)
    float MoveStopLen;                                                                // 0x0738 (size: 0x4)
    FVector MoveLadderPosition;                                                       // 0x073C (size: 0xC)
    class UParticleSystemComponent* LoopEmotionParticle;                              // 0x0748 (size: 0x8)
    int32 PlayEmotionType;                                                            // 0x0750 (size: 0x4)
    bool m_IsNpcTalking;                                                              // 0x0765 (size: 0x1)
    bool FirstFootStep;                                                               // 0x0766 (size: 0x1)
    bool FirstCanoeFootStep;                                                          // 0x0767 (size: 0x1)
    float FirstStepCanoeDeltaTime;                                                    // 0x0768 (size: 0x4)
    FKSCharacterBase_FinishMoveEventDispather m_FinishMoveEventDispather;             // 0x0770 (size: 0x10)
    void FinishMoveDispather();
    bool m_IsOpeningGuildMenu;                                                        // 0x0780 (size: 0x1)
    class UCurveFloat* m_CanoeCurveData;                                              // 0x0820 (size: 0x8)
    bool IsCanoeIdle;                                                                 // 0x0828 (size: 0x1)
    FVector DefaultCanoePosition;                                                     // 0x082C (size: 0xC)
    TArray<FVector> m_CanoeLocationOffset;                                            // 0x0838 (size: 0x10)
    TArray<FRotator> m_CanoeRotationOffset;                                           // 0x0848 (size: 0x10)
    TArray<FVector> m_CanoeScaleOffset;                                               // 0x0858 (size: 0x10)
    class UStaticMeshComponent* CanoeComponent;                                       // 0x0868 (size: 0x8)
    class UStaticMesh* CanoeMeshA;                                                    // 0x0870 (size: 0x8)
    class UStaticMesh* CanoeMeshB;                                                    // 0x0878 (size: 0x8)
    class UStaticMeshComponent* CanoeLanternComponent;                                // 0x0880 (size: 0x8)
    TArray<class UParticleSystemComponent*> m_CanoeEffects;                           // 0x0888 (size: 0x10)
    float FootStepDeltaTime;                                                          // 0x08AC (size: 0x4)
    EKSCharacterMoveMode OldMoveMode;                                                 // 0x08B0 (size: 0x1)
    bool IsPlayFootStep;                                                              // 0x08B3 (size: 0x1)
    float m_fFootStepCheckStartOffset;                                                // 0x08B4 (size: 0x4)
    float m_fFootStepCheckEndOffset;                                                  // 0x08B8 (size: 0x4)
    FName ForcedPlayFootStepTypeLabelName;                                            // 0x08BC (size: 0x8)
    TArray<FName> ActionFootStepLabelList;                                            // 0x08C8 (size: 0x10)
    TArray<float> ActionFootStepLabelIntervalList;                                    // 0x08D8 (size: 0x10)
    FName CharacterFootstep;                                                          // 0x08E8 (size: 0x8)
    bool IsBreakAnimation;                                                            // 0x08F0 (size: 0x1)
    TArray<class UObject*> loadedResource;                                            // 0x08F8 (size: 0x10)
    bool IsLadderIdle;                                                                // 0x0908 (size: 0x1)
    float SpritePlayRate;                                                             // 0x0918 (size: 0x4)
    FVector DefaultSpritePosition;                                                    // 0x091C (size: 0xC)
    class UAtomComponent* SoundComponent;                                             // 0x0928 (size: 0x8)
    class USceneComponent* PCListenerPoint;                                           // 0x0930 (size: 0x8)
    bool m_bShoudTickEnable;                                                          // 0x0938 (size: 0x1)
    bool m_bCalcBillboard;                                                            // 0x0939 (size: 0x1)
    ERADARMAP_ICON_TYPE m_RadarMapIconType;                                           // 0x093A (size: 0x1)
    TMap<class EHUNTER_PARTNER_OFFSET_TYPE, class FVector> HunterPartnerOffsetA;      // 0x0940 (size: 0x50)
    TMap<class EHUNTER_PARTNER_OFFSET_TYPE, class FVector> HunterPartnerOffsetB;      // 0x0990 (size: 0x50)
    TMap<class EKSCharacterDir, class FVector> HunterPartnerFieldOffsetA;             // 0x09E0 (size: 0x50)
    TMap<class EKSCharacterDir, class FVector> HunterPartnerFieldOffsetB;             // 0x0A30 (size: 0x50)
    FVector DefaultFBRelativePos;                                                     // 0x0A80 (size: 0xC)
    class UMaterialInterface* m_PlayerTorchMaterial;                                  // 0x0AA0 (size: 0x8)
    int32 m_nChangeDirCntDef;                                                         // 0x0ABC (size: 0x4)
    int32 m_nChangeDirCnt;                                                            // 0x0AC0 (size: 0x4)
    int32 m_nDebugType;                                                               // 0x0ACC (size: 0x4)
    FVector m_vDebugOffset;                                                           // 0x0AD0 (size: 0xC)
    float m_fDebugSize;                                                               // 0x0ADC (size: 0x4)

    void VisibleEmotion(bool IsVisible);
    void UpdateNpcFadeCollisionSize(float cameraDist);
    void UpdateMove(float DeltaTime);
    void UpdateFootStep(float DeltaTime);
    void UpdateFirstStepDeltaTime(float DeltaTime);
    void UpdateCanoeDir(EKSCharacterDir CurrentDir);
    void UpdateAction();
    void ToggleMoveMode();
    void StopTransportEffectOnStartBattle();
    void StopMusicRecorad();
    void StopCharacter();
    void StopCanoePitching();
    void StopAllCanoeEffect(ECANOE_MOVE_EFFECT ExclusionType);
    bool SpawnEmotionWithOffset(EEMOTION_TYPE EmotionType, FVector SpawnOffset);
    bool SpawnEmotion(EEMOTION_TYPE EmotionType, FVector SpawnOffset);
    void SetVisibleHouseChange(bool bEnable);
    void SetVisibilityToPartnerFB(bool bVisibility);
    void SetupWeaponTextureInMaterial(class UMaterialInstanceDynamic*& targetMaterial);
    void SetUpMoveSpeedData(TEnumAsByte<EMovementMode> EMovementMode, int32 nMode);
    void SetupFlipbookMaterialInstance();
    void SetUpFadeMaterialData(const class UPaperFlipbookComponent* pPaperFlip, const class UPlacementFadeComponent* pPlecementComponent, class UMaterialInstance* Material);
    void SetupCanoeEffect();
    bool SetupCameraLockPosDirectly(FVector CameraLockPos, class UCapsuleComponent* charaCapsule);
    bool SetupCameraLock(FVector lockPos, bool bLock, bool bUnlock, bool bEnableX, bool bEnableY, bool bEnableZ, bool bAfterLevelChange);
    void SetTempLocation(const FVector& BeforLocation);
    void SetTargetDir(class AKSCharacterBase* DirTarget);
    void SetStateGuard(bool Guard);
    void SetStateBoost(int32 BoostLevel);
    void SetSocketBit(EDEBUFF_ATTACHSOCKET_TYPE eSocket);
    void SetReverseSpriteFlag(bool bReverse);
    bool SetReturnCameraOffset(bool LockFlag);
    bool SetResetCameraPos(const FVector& ResetPos);
    void SetPlayFootStep(bool bIsPlayFootStep);
    void SetPlayAnimationFrame(int32 nFrame);
    void SetPartyLadderOffset(EKSCharacterDir NewDir);
    bool SetMovePoint(FVector InLocation);
    void SetMoveMode(int32 Mode);
    bool SetMapinPlayerLocation(FVector Location, EKSCharacterDir charaDir);
    void SetLoadedCharacterEnableCancel(bool Val);
    bool SetLevelLightParam_InDebug(float Intencity, float AttenuationRadius, FLinearColor LightColor, float SourceRadius);
    bool SetLevelLightParam(bool bEnable, FName levelName);
    void SetLantern(bool bEnable);
    void SetLadderMoveParams(const FVector& upEndPos, const FVector& downEndPos, const FVector& moveLadderPos);
    void SetLadderIdle();
    void SetIsOpeningGuild(bool Val);
    void SetIsMoveUpdate(bool bMoveUpdate);
    void SetIsDisableCharacterMovementFlag(bool Val);
    void SetIndoorFocusDistance(float focusDistance);
    void SetIndoorFloor(int32 FloorNum);
    void SetIndoorFlag(bool Indoor);
    void SetHouseChangeVisibleFlag(bool isVisble);
    void SetHideMode();
    void SetForcedPlayFootStep(FName ForcedPlayFootStepType);
    void SetFollowOffset(int32 Offset);
    void SetFixAnimation(bool Eanble, EKSCharacterAction eAction, EKSCharacterAnimationLoop eLoop);
    void SetFinishMove(bool Force);
    void SetEquipmentLanternData(const FEquipLanternData& lanternData);
    void SetEnablePlayAction(bool Enable);
    void SetEmotionVisibility(bool IsVisible);
    void SetDirTargetActor(class AKSCharacterBase* TargetCharacter);
    void SetDir(EKSCharacterDir eDir, bool SetIdle);
    void SetDebugTouchLockTrigger(FString TriggerName);
    void SetDamageAction(EBATTLE_DAMAGE_TYPE DamageType);
    void SetCurrentWeaponTexture(class UTexture2D* weaponTexture);
    bool SetCineCameraRelativeRotation(const FRotator& Rotator);
    void SetCharacterState(ECharacterState State);
    void SetCharacterLocation(const FVector& InLocation, EKSCharacterDir InDir);
    void SetCharacterEnable(bool Enable);
    void SetCharacterCollision(bool Enable);
    void SetChangeDirLock(bool bChangeDirLock);
    void SetCanoeVisibility(bool bVisible);
    void SetCanoePitchingEnabled(bool bEnable);
    void SetCanoeMeshOffset(const FVector canoeOffset);
    void SetCanoeIdle();
    bool SetCameraLockPos(const FVector& CameraLockPos);
    bool SetCameraDistanceRateToOperationCameraComp(float cameraDistanceRate);
    void SetBattleSelectMaterial(bool Select, bool Boost);
    void SetBattleAlphaMode(bool Enable);
    bool SetActorHiddenInGameBP(bool bNewHidden);
    void ResumeSpritePlayRateByLadder();
    bool RespawnEmotion();
    bool ResetSelf();
    void ResetOnLevelBeginPlay();
    void ResetForceLadder();
    void ResetFootStep();
    bool ResetCameraPosition();
    bool ResetCameraLock();
    void RequestRespawnEmotionAfterTalk();
    void RemoveEmotion();
    void RefreshLocationHistoryIndex();
    void RefreshFadeMaterial(bool bClearMaterialParam);
    void RefreshCurrentLocation();
    void RefreshCanoeObject();
    void PlayMusicRecorad();
    void PlayFootStep(FName SELabel);
    void PlayerReplace();
    void PlayEncountCamera();
    void PlayCharacterAction(EKSCharacterAction Label, EKSCharacterDir Direction, bool StackClear);
    void PlayCanoePitching();
    bool PlayCanoeEffectByMoveMode(EKSCharacterMoveMode Mode);
    bool PlayCanoeEffect(ECANOE_MOVE_EFFECT effType);
    void PlayBreakAnimation(bool Break);
    void PlayBattleAction(EBATTLE_ACTION_TYPE BattleAction, bool StackClear);
    void PlayAnimationDir(EKSCharacterAction eAction, EKSCharacterDir eDir, int32 nFrame);
    void PlayAnimation(EKSCharacterAction eAction, int32 nFrame);
    bool PlayAction(EKSCharacterAction ActionID, bool Force, int32 nFrame, EKSCharacterAnimationLoop LoopSetting);
    void OverwriteTemplateSpriteSockets(EKSCharacterAction eAction, EKSCharacterDir eDir);
    void OverwriteSpriteSockets(TMap<class FName, class FMJSpriteSocketData> SocketData);
    bool OpenFieldCommandPopupWidget(bool IgnoreEvent);
    bool OnFinishAutoBalloon();
    void OnEndOverlapFromPlayerChara();
    void OnBeginOverlapFromPlayerChara();
    void OnAnimationFinish();
    void MoveSpeedInHouse(float Scale);
    void MoveBP(FVector vMove);
    void LoadedCharacterEnableCancelRequest();
    void LadderOffset(int32 PartyIndex, EKSCharacterDir NewDir);
    bool IsSpawnedEmotion();
    bool IsRunningFade();
    bool IsPlayingCanoePitching();
    bool IsPlayingCanoeEffect(ECANOE_MOVE_EFFECT effType);
    bool IsPlayerCharacter();
    bool IsPlayBattleAction();
    bool IsPartyCharacter();
    bool IsNpcTalking();
    bool IsMoving();
    bool IsMoveCanoeMode();
    bool IsMove();
    bool IsLadderMoveMode(EKSCharacterMoveMode Mode);
    bool IsLadder();
    bool IsIdle();
    bool IsHunterPartner();
    bool IsFollowNpcCharacter();
    bool IsFieldNpcCharacter();
    bool IsFCAction();
    bool IsFadeInWait();
    bool IsChangeWalkLadderCanoe(EKSCharacterMoveMode nowMode, EKSCharacterMoveMode nextMode);
    bool IsCanoeMoveMode(EKSCharacterMoveMode Mode);
    bool IsCanoe();
    bool IsAfterIdle();
    bool IsActionLooping();
    void InitAction(FName ActionLabelName, bool bBattle);
    bool Idle(bool Force);
    FName GetTextInfo();
    class USplineMoveComponent* GetSplineObject();
    bool GetSocketPos(EDEBUFF_ATTACHSOCKET_TYPE eType, FVector& vOutPos);
    bool GetReverseSpriteFlag();
    bool GetReturnCameraOffset();
    bool GetRespawnEmotionAfterTalk();
    ERADARMAP_ICON_TYPE GetRadarMapIconType();
    EKSCharacterMoveMode GetPrevMoveMode();
    class UPlayerPropertyComponent* GetPlayerPropertyComponent();
    FVector GetPlayerCameraPosition();
    int32 GetPlayAnimationFrame();
    EPlayableCharacterID GetPlayableCharacterID();
    class UPlacementFadeComponent* GetPlacementFadeComponent();
    class USceneComponent* GetPCListenerPoint();
    class UPartyCharaPropertyComponent* GetPartyCharaPropertyComponent();
    FVector GetPartnerOffset();
    FVector GetPartnerFieldOffset();
    class UOperationPlayerCameraComponentBase* GetOperationPlayerCameraComponent();
    class UNpcPropertyComponent* GetNpcPropertyComponent();
    EKSCharacterAction GetNowActionID();
    float GetMoveSpeed(EKSCharacterMoveMode MoveMode);
    EKSCharacterMoveMode GetMoveMode();
    EKSCharacterDir GetMoveDir(FVector inMoveDir, float AdjustX, float AdjustY);
    EKSCharacterAction GetMoveAction();
    ECHARACTER_MODE GetMode();
    void GetLadderMoveParams(FVector& outUpEndPos, FVector& outDownEndPos, FVector& outMoveLadderPos);
    bool GetIsUsingLantern();
    bool GetIsOpeningGuild();
    bool GetIsMoveUpdate();
    bool GetIsDisableCharacterMovementFlag();
    float GetIndoorFocusDistance();
    int32 GetIndoorFloor();
    bool GetIndoorFlag();
    EKSCharacterAction GetIdleAction();
    class UHunterPartnerFbComponent* GetHunterPartnerFbComponent();
    bool GetHouseChangeVisibleFlag();
    int32 GetFollowOffset();
    class UMaterialInterface* GetFlipbookOverrideMaterial();
    class UMaterialInstanceDynamic* GetFlipbookMaterial(FName customFlipbookName, bool bClearParameter);
    FEquipLanternData GetEquipmentLanternData();
    bool GetEmotionVisibility();
    FVector GetEmotionLocation(FVector Offset);
    FString GetEmotionEffectLabel(EEMOTION_TYPE EmotionType);
    FVector GetDirVector();
    EKSCharacterDir GetDir();
    FVector GetDefaultFlipbookRelativePos();
    class UTexture2D* GetCurrentWeaponTexture();
    ETRANSPORTATION_TYPE GetCurrentTransportType();
    float GetCurrentMoveSpeed();
    FVector GetCineCameraWorldLocation();
    FTransform GetCineCameraRelativeTransform();
    ECharacterState GetCharacterState();
    bool GetCharacterEnable();
    class UCapsuleComponent* GetCharacterCollision();
    EKSCharacterCategory GetCharacterCategory();
    class UPaperFlipbook* GetCharacterAction(EKSCharacterAction ActionID, EKSCharacterDir InDir);
    bool GetChangeDirLock();
    FVector GetCameraLockPos();
    FVector GetCameraInitOffset();
    EKSCharacterAction GetBattleIdle(EKSCharacterAction eChkIdleAction, EKSCharacterDir eDir);
    class UTexture2D* GetAnimationTexture(const int32 FrameIndex, FVector2D& vUV);
    FName GetActionLabel();
    bool GetActionFlipbookName(EKSCharacterAction eAction, EKSCharacterDir eDir, FName& outFlipbookName, bool& outIsReverse);
    void ForceMovePoint(FVector InLocation);
    void FirstMoveStep();
    void FinishCallbackLoaded();
    void DetachDebuffEffect(class UParticleSystemComponent* pTargetParticle);
    void DebugShowInfoUpdate();
    void Debug_ShowSocketInfo(bool bEnable);
    void Debug_SetForceUpdateFootStep(bool Enable);
    void Debug_SetBarItemHandRate(int32 Rate);
    void Debug_MoveFallingReturnLocation();
    bool Debug_GetForceUpdateFootStep();
    void Debug_GetEquipmentLanternData(FString& OutInfo);
    FString Debug_GetDebugInfo();
    FString Debug_GetDebugFollowInfo();
    int32 Debug_GetBarItemHandRate();
    void CreateSoundComponent();
    void ClearSocketBit(EDEBUFF_ATTACHSOCKET_TYPE eSocket);
    void ClearRespawnEmotionAfterTalk();
    void ClearActionReferenceObject();
    bool CheckFlipbookMaterialKey(FName customFlipbookName);
    bool ChangeTransport(ETRANSPORTATION_TYPE Type);
    bool ChangeSwoonState(const FVector& SwoonOffsetPos, EKSCharacterAction SwoonAction, ENpcSwoonType SwoonType);
    void ChangeFlipbook(FName FlipbookName, class UMaterialInstanceDynamic* pMatInst);
    void ChangeCharacterModelOnly(FName ResourceLabel);
    void ChangeCanoeEffectOnStop();
    bool CanOpenAutoBalloon();
    void CanoeTimelineUpdate(float Offset);
    void CanoeTimelineFinish();
    bool CallTalkEvent();
    void CallbackLoaded(TArray<class UObject*>& objList);
    FVector CalcLandLocation();
    FVector CalcEmotionOffset();
    bool AttachDebuffEffect(class UParticleSystemComponent* pTargetParticle, EDEBUFF_ATTACHSOCKET_TYPE eType);
    void AddRegistMusicRecordDeleagete();
    void AddMoveSpeed(float inAddSpeed);
    void AddFlipbookMaterial(FName customFlipbookName, class UMaterialInstanceDynamic* pNewMaterial);
    bool ActionSearch();
}; // Size: 0xAF0

class AKSCharacterManager : public AAcqManagerBase
{
    class AKSCharacterBase* PlayerCharacter;                                          // 0x0238 (size: 0x8)
    TArray<class AKSCharacterBase*> PartyCharacterList;                               // 0x0240 (size: 0x10)
    TArray<class AKSCharacterBase*> UsePartyCharacterList;                            // 0x0250 (size: 0x10)
    TArray<int32> PartyFollowOffsetBase;                                              // 0x0260 (size: 0x10)
    TArray<int32> PartyFollowOffsetLadderUp;                                          // 0x0270 (size: 0x10)
    TArray<int32> PartyFollowOffsetLadderDown;                                        // 0x0280 (size: 0x10)
    TArray<int32> PartyFollowOffsetCanoe;                                             // 0x0290 (size: 0x10)
    TArray<int32> PartyFollowOffset;                                                  // 0x02A0 (size: 0x10)
    TArray<class AKSCharacterBase*> BarCharacterList;                                 // 0x02B0 (size: 0x10)
    TArray<FFollowNpcObjectData> FollowCharacterList;                                 // 0x02C0 (size: 0x10)
    TArray<int32> FollowNpcID;                                                        // 0x02D8 (size: 0x10)
    TArray<class AKSCharacterBase*> PartnerCharacterList;                             // 0x02E8 (size: 0x10)
    class AKSCharacterBase* PlayFCActionCharacter;                                    // 0x02F8 (size: 0x8)
    bool PartyCharacterEnable;                                                        // 0x0300 (size: 0x1)
    int32 LastPartyMemberIndex;                                                       // 0x0304 (size: 0x4)
    class AKSCharacterBase* LastPartyMember;                                          // 0x0308 (size: 0x8)
    float FollowDistance;                                                             // 0x0310 (size: 0x4)
    float LocationTimeMax;                                                            // 0x0314 (size: 0x4)
    float LocationTimer;                                                              // 0x0318 (size: 0x4)
    bool IsLeadCharacterEnable;                                                       // 0x031C (size: 0x1)
    bool IsLureCharacterEnable;                                                       // 0x031D (size: 0x1)
    bool IsHireCharacterEnable;                                                       // 0x031E (size: 0x1)
    bool IsPlacateCharacterEnable;                                                    // 0x031F (size: 0x1)
    bool BarCharacterEnable;                                                          // 0x0320 (size: 0x1)
    bool OpenMyShipSail;                                                              // 0x0321 (size: 0x1)
    TMap<int32, AKSCharacterBase*> m_CharacterList;                                   // 0x0330 (size: 0x50)
    class UPlayerLocationTrace* m_PlayerLocationTrace;                                // 0x0398 (size: 0x8)
    TArray<class AKSCharacterBase*> PartyFollowCharaList;                             // 0x03A0 (size: 0x10)
    TArray<class AKSCharacterBase*> EpiloguePartyChara;                               // 0x0458 (size: 0x10)
    TArray<EPlayableCharacterID> EpiloguePartyCharaId;                                // 0x0468 (size: 0x10)
    float LocationTimeMaxWork;                                                        // 0x04E4 (size: 0x4)

    void UpdatePartyFollowOffset();
    void UnregisterFromCharacterList(class AKSCharacterBase* Character);
    void SetupPlayers();
    void SetupPartyCharacter();
    void SetupEpilogueParty();
    void SetSkipPartyCharacterEnableFromCallbackLoaded();
    void SetShowDebugInfo(bool Enable);
    bool SetPartyHouseIn(float Scale, float OffsetHeight, bool HouseOut, bool bNotPartyRefresh);
    void SetPartyGravity(bool Enable);
    void SetPartyFollowOffset();
    void SetPartyCharacterInstance(int32 PartyIndex, class AKSCharacterBase* chara);
    void SetPartyCharacterEnable(bool inEnable);
    void SetPartnerCharacterInstance(int32 partnerIndex, class AKSCharacterBase* chara);
    void SetMyShipSail(bool bOpen);
    void SetFollowCharacterInstance(int32 followIndex, class AKSCharacterBase* chara, MJFieldCommandType FCType);
    void SetCharacterMoveMode_AlsoPlayer(EKSCharacterMoveMode eMoveMode, bool excludeDash);
    void SetCharacterMoveMode(EKSCharacterMoveMode eMoveMode);
    void SetCharacterEnable(int32 Category, bool Enable);
    void SetBarCharacterEnableAll(bool inEnable);
    bool SetBarCharacterEnable(int32 Index, bool IsEnable);
    void SavePlayerPlacementFromTheater();
    void SavePlayerPlacementFromPChat();
    void RestorePlayerPlacement();
    void ResetPlayerLocationHistory(FVector InLocation, EKSCharacterDir InDir);
    void ResetPartyCharacterForOutGame();
    void ResetPartyCharacter();
    void ResetNewFollowMove();
    void ResetFollowMasterCharacterID();
    void ResetFollowerLocation();
    void ResetCanoeEffect();
    void RemoveTemporaryEnemyResourceLabel(FName enemyResLabel);
    void RemoveEpiloguePartyCharacter();
    void RemoveCharacter(class AKSCharacterBase* Character);
    bool RemoveBarCharacterAll();
    void RemoveAllTemporaryEnemyResourceLabel();
    bool RemoveAllEquipment(EPlayableCharacterID CharacterID);
    void RegisterToCharacterList(class AKSCharacterBase* Character);
    bool RegisterNpcToFollowNPCList(MJFieldCommandType FCType);
    void RefreshPartyLocation();
    void RefreshPartyFollowOffset();
    bool RefreshPartyCharacter(bool bSkipLoadResource);
    void RefreshPartyAfterChangeMember();
    bool RefreshPartnerCharacters();
    void RefreshHunterPartnerVisibility();
    void RefreshFollowFormation();
    bool RefreshFollowCharacters();
    bool RefreshFollowCharacter(class AKSCharacterBase* Target);
    void PushPlayerLocationToHistory(float DeltaSeconds);
    void LoadCharacterResource(TArray<FName> CharaResourceLabels);
    bool IsEnabledCharacter_HunterPartner();
    bool InitPartyLocation();
    bool InitParams(FVector MovePoint, EKSCharacterDir Dir);
    void InitAfterLoadSaveData(class UMJSaveData* saveData);
    TArray<class AKSCharacterBase*> GetUsePartyCharacterList();
    TArray<FName> GetTemporaryEnemyResourceLabelList();
    int32 GetRunMode();
    void GetResidentResourceLabelList(TArray<FName>& LabelList, bool ContainNpcResource);
    class AKSCharacterBase* GetPlayerObject();
    void GetPlayerMoveHistoryParams(int32 Index, FVector& Location, uint8& Dir, EKSCharacterMoveMode& Mode, bool& success);
    void GetPlayerLocationHistory(int32 Index, FVector& out_Location, EKSCharacterDir& out_Dir, EKSCharacterMoveMode& outMoveMode);
    LEVEL_AREA_TYPE GetPlayerCurrentArea();
    class AKSCharacterBase* GetPlacateFollowNPC();
    TArray<class AKSCharacterBase*> GetPartyCharacterList();
    class AKSCharacterBase* GetPartyCharacterInstance(int32 PartyIndex);
    class AKSCharacterBase* GetPartyCharacterIndex(int32 inIndex);
    bool GetPartyCharacterEnable();
    class AKSCharacterBase* GetPartyCharacter(EPlayableCharacterID CharacterID);
    class AKSCharacterBase* GetPartnerCharacterInstance(int32 partnerIndex);
    class AKSCharacterBase* GetPartnerCharacter(int32 Index);
    bool GetMyShipSail();
    class AKSCharacterBase* GetLureFollowNPC();
    int32 GetLocationIndex(int32 inOffset);
    class AKSCharacterBase* GetLeadFollowNPC();
    class AKSCharacterBase* GetLastPartyMember();
    class AKSCharacterBase* GetHireFollowNPC();
    int32 GetFollowNpcNum();
    void GetFollowNpcIdList(TArray<int32>& outFollowIds, TArray<int32>& outSubIds);
    class AKSCharacterBase* GetFollowMember(MJFieldCommandType Type);
    int32 GetFollowMasterNum();
    EPlayableCharacterID GetFollowMasterCharacterID(int32 Index);
    class AKSCharacterBase* GetFollowCharacterInstance(int32 followIndex);
    EKSCharacterMoveMode GetCharacterMoveMode();
    class AKSCharacterBase* GetBarCharacterIndex(int32 inIndex);
    void FullRecoveryCharacter(int32 CharacterID);
    void FullRecoveryAllPartyMember();
    bool EquipItem(EPlayableCharacterID CharacterID, FName ItemLabel);
    void DelegateForShipMovingSE(ENOTICE_TYPE noticeType, const FNoticeArgs& Args);
    void Debug_ShowFollowInfo(bool bShow);
    void Debug_SetTempDisableFallPrevention();
    void Debug_SetPushPlayerPosCountPerSec(int32 Count);
    void Debug_SetPartyLoad(bool Enable);
    void Debug_SetFallLimit(int32 fallLimit);
    void Debug_SetEnableNewFollow(bool bEnable);
    void Debug_SetEnableFallPrevention(bool bEnable);
    void Debug_OutputPlayerLocationHistory();
    bool Debug_IsEnableFallPrevention();
    int32 Debug_GetPushPlayerPosCountPerSec();
    bool Debug_GetPartyLoad();
    int32 Debug_GetFallLimit();
    bool Debug_GetEnableNewFollow();
    void Debug_DrawFollowFormation();
    bool CheckPartyCharaLadderAnimation();
    bool BeginPlayers();
    void AddTemporaryEnemyResourceLabel(FName enemyResLabel);
    class AKSCharacterBase* AddPlayerCharacter(EPlayableCharacterID PlayerID, const FVector& Location, EKSCharacterDir Dir);
    class AKSCharacterBase* AddPartyCharacter(class AKSCharacterBase* Follow, int32 PartyIndex);
    class AKSCharacterBase* AddPartnerCharacter(class AKSCharacterBase* Follow);
    void AddFollowMasterCharacterID(EPlayableCharacterID CharacterID);
    class AKSCharacterBase* AddFieldCharacter(const FName& ActionLabel, const FVector& Location, EKSCharacterDir Dir);
    class AKSCharacterBase* AddEventCharacter(const FName& ActionLabel, const FVector& Location, EKSCharacterDir Dir);
    class AKSCharacterBase* AddEpiloguePartyCharacter(EPlayableCharacterID PlayerCharaId);
    class AKSCharacterBase* AddBarCharacter(const FName& ActionLabel, const FVector& Location, EKSCharacterDir Dir, int32 charIndex);
}; // Size: 0x4F0

class AKSDebugMenuManager : public AActor
{
    EDEBUGMENU_STATE DebugMenuState;                                                  // 0x0220 (size: 0x1)
    class UUserWidget* CurrentWidget;                                                 // 0x0228 (size: 0x8)

    bool ToggleFCViewer();
    void StartTutorialAutoCapture(FString ResourceName, int32 targetLang, int32 targetPlatform, FString fileName_TutorialType, FString fileName_ImageNo, FString fileName_Character);
    void ReLocateNPC(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    bool OpenFCViewer(bool IsOpen);
    class AKSDebugMenuManager* GetInstance();
    void CloseMenu();
}; // Size: 0x230

class AKSEffectManager : public AAcqManagerBase
{
    TArray<FEffectComponentList> m_EffectComponentList;                               // 0x0240 (size: 0x10)
    bool m_IsEffectManagerReady;                                                      // 0x0250 (size: 0x1)

    void SuspendEffect(class UParticleSystemComponent* EFFECT);
    void SpawnEffect(FName EffectName, class AActor* TargetActor, FVector Location, FRotator Rotate, bool ForceSpawn, class UParticleSystemComponent*& EFFECT, bool& success, bool& LoopEffect, FVector Scale);
    void SetEffectSetupFlag(bool Flag);
    void SetEffectList(TArray<FName> EffectList);
    void SetDebugMode(bool isDebug);
    void ResumeEffect(class UParticleSystemComponent* EFFECT);
    bool IsEffectManagerReady();
    bool IsDebugMode();
    uint8 GetDebugAddCnt();
    void DestroyEffect(class UParticleSystemComponent* EFFECT);
    void DebugSpawnEffect(FName EffectLabel, uint8 spawnCnt);
    void CallbackSystemFinished(class UParticleSystemComponent* Component);
    void CallbackParticleSpawn(FName Name, float Float, FVector VectorA, FVector VectorB);
}; // Size: 0x258

class AKSFlipbookManager : public AAcqManagerBase
{
    class UMaterialInterface* DefaultMaterial;                                        // 0x0230 (size: 0x8)

    bool GetSpriteDataFromActionLabel(FName CharacterName, EKSCharacterAction ActionType, EKSCharacterDir Dir, FKSSpriteData& Data);
    bool GetSpriteData(FName SpriteName, FKSSpriteData& spriteData);
    bool GetMissionSpriteData(FName SpriteName, FKSSpriteData& spriteData);
    bool GetMissionFlipbookData(FName FlipbookName, FKSUIFlipbookData& flipbookData);
    void GetFlipbookTexAssetPtrs(FName FlipbookName, bool resetArray, TArray<TSoftObjectPtr<UTexture2D>>& outTexAssetPtrs);
    bool GetFlipbookData(FName FlipbookName, FKSFlipbookData& flipbookData);
    class UMaterialInterface* GetDefaultMaterial();
    bool GetCharacterTextureAndAddtionalFirstFrame_SoftObjectPtr(FName CharacterName, EKSCharacterAction ActionType, EKSCharacterDir Dir, TArray<TSoftObjectPtr<UTexture2D>>& outArray);
    void GetCharacterTexAssetPtrs(FName CharacterName, TArray<TSoftObjectPtr<UTexture2D>>& outTexAssetPtrs);
    void GetCharacterMaterialAssetPtrs(FName CharacterName, TArray<TSoftObjectPtr<UMaterialInterface>>& outMatAssetPtrs);
    bool GetCharacterFlipbookNames(FName CharacterName, TArray<FName>& FlipbookNames);
    bool GetCharacterFlipbookName(FName CharacterName, EKSCharacterAction ActionType, EKSCharacterDir Dir, FName& FlipbookName);
    bool GetCharacterData(FName CharacterName, FKSCharaFlipbook& CharacterData);
    bool GetAllSpriteDataFromActionLabel(FName CharacterName, EKSCharacterAction ActionType, EKSCharacterDir Dir, TMap<class FName, class FMJSpriteSocketData>& DataList, bool bIsReverseSocket);
    class UKSPaperFlipbook* CreateFlipbook(class UObject* Outer);
    bool ContainsFlipbookData(FName FlipbookName);
    bool ChangeMissionFlipbook(FName FlipbookName, class UKSPaperFlipbook* PaperFlipbook, class UMaterialInstanceDynamic* SetMaterial);
    bool ChangeFlipbook(FName FlipbookName, class UKSPaperFlipbook* PaperFlipbook, class UMaterialInstanceDynamic* SetMaterial, bool bReverseSprite);
}; // Size: 0x248

class AKSGCManager : public AAcqManagerBase
{

    void SetKSGCTimer(EKSGC_TYPE gcType);
    void ResetKSGCTimer();
}; // Size: 0x238

class AKSGameMode : public AGameMode
{
    class UKSLoadingWidget* LoadingWidget;                                            // 0x0308 (size: 0x8)
    class UKSAutoSavingWidget* AutoSavingWidget;                                      // 0x0310 (size: 0x8)

    void SetTheaterEndMainMenu(bool IsEnable);
    void SetPaused(EPauseType pauseType, bool IsPaused);
    void SetHouseEnterActor(class AActor* HouseEnter);
    void SetHouseCharacterScale(float inScale);
    void SetDirectLoadGame(bool bDirectLoadGame);
    void SetDebugMessage(FString Message);
    void SetDebugInfoVisibility(bool bVisible, int32 pageIndex);
    void SetDebugInfoStoryMemoryVisibility(bool bVisible);
    void SetDebugInfoEventVisibility(bool bVisible);
    void SetBrightnessOffset_ForSwitch(float Val);
    void SetAutoSaveEnable(bool inEnable);
    FString ParseStoryMemoryData(FEventListData EventData, int32 memoryIndex);
    void KSToggleEncount();
    void KSShowMultilingualGuide(bool Flag);
    void KSSetEncount(bool Encount);
    void KSSetBitFlag(int32 BitIndex, bool Flag);
    void KSDrawBitFlag(int32 StartIndex, int32 Num);
    bool IsPaused();
    bool GetTheaterEndMainMenu();
    EPauseType GetPauseFlags();
    bool GetPaused(EPauseType pauseType);
    class AActor* GetHouseEnterActor();
    float GetHouseCharacterScale();
    bool GetDirectLoadGame();
    float GetBrightnessOffset_ForSwitch();
    bool GetAutoSaveEnable();
    void Debug_SetInfoText(EGameModeDebugPage page, FString Text);
    void Debug_SetFixMoveMode(EDebugFixMoveMode fixMoveMode);
    void Debug_SetCompletedGamePreparation(bool bCompleted);
    void Debug_SetAutoPlaying(bool bAutoPlay);
    void Debug_ResetEncountWipeFlag();
    bool Debug_IsCompletedGamePreparation();
    bool Debug_IsAutoPlaying();
    void Debug_GetStoryMemoryData(TArray<FString>& textList, int32 memoryIndex);
    EDebugFixMoveMode Debug_GetFixMoveMode();
    void Debug_GetEventText(FString& Text);
    bool Debug_GetAutoPlayingArgument(FString& outScenarioName);
    bool CanLoadDisabledSaveData();
}; // Size: 0x5E8

class AKSManagerDirector : public AActor
{
    class UBalloonBundleWidgetBase* BalloonBundleWidget;                              // 0x0220 (size: 0x8)

    class AKSManagerDirector* GetInstance();
    class UBalloonBundleWidgetBase* GetBalloonBundleWidget();
}; // Size: 0x228

class AKSObjectBase : public AActor
{
    bool IsMoveEnd;                                                                   // 0x0220 (size: 0x1)
    EKSCharacterDir Dir;                                                              // 0x0221 (size: 0x1)
    TArray<class UStaticMesh*> LoadedMeshes;                                          // 0x0228 (size: 0x10)
    bool HouseChangeVisibleFlag;                                                      // 0x0239 (size: 0x1)
    EOBJ_TYPE m_ObjType;                                                              // 0x023B (size: 0x1)
    FName m_PlacementLabel;                                                           // 0x023C (size: 0x8)
    FVector m_SpawnPos;                                                               // 0x0244 (size: 0xC)
    int32 m_ObjUniqueID;                                                              // 0x0250 (size: 0x4)

    void SetupObjectAfterSpawn(FName PlacementLabel, EOBJ_TYPE ObjType, FVector spawnPos);
    void SetupAfterLoad();
    void SetObjectUniqueID(int32 UniqueId);
    void SetObjectEnable(bool Enable);
    void SetMoveEnd();
    void SetHouseChangeVisibleFlag(bool isVisble);
    void SetDir(EKSCharacterDir eDir);
    bool Move(const FVector& Location, float Sec);
    bool IsOpenedTreasureBox();
    FName GetPlacementLabel();
    FName GetOpenText();
    int32 GetObjectUniqueID();
    EOBJ_TYPE GetObjectType();
    bool GetHouseChangeVisibleFlag();
    void CbLoadedAssets(TArray<class UObject*>& objList);
    void ActionEnter_Implementation();
    void ActionEnter();
}; // Size: 0x258

class AKSPlayerController : public APlayerController
{
    EKSInputMode InputMode;                                                           // 0x0570 (size: 0x1)
    bool IsPlayerCharacterInput;                                                      // 0x0571 (size: 0x1)
    float InputAxisX;                                                                 // 0x0574 (size: 0x4)
    float InputAxisY;                                                                 // 0x0578 (size: 0x4)
    float AxisX;                                                                      // 0x057C (size: 0x4)
    float AxisY;                                                                      // 0x0580 (size: 0x4)
    float RAxisX;                                                                     // 0x0584 (size: 0x4)
    float RAxisY;                                                                     // 0x0588 (size: 0x4)
    bool RSholderHold;                                                                // 0x058C (size: 0x1)
    bool FrameInputFlag;                                                              // 0x058D (size: 0x1)
    FString SwitchMode;                                                               // 0x0590 (size: 0x10)
    bool m_IsGamePadAttached;                                                         // 0x05A0 (size: 0x1)
    EKSUseInputType UseInputType;                                                     // 0x05A1 (size: 0x1)
    EControllerInputType UseControllerInputType;                                      // 0x05A2 (size: 0x1)
    bool bChangeUseInputType;                                                         // 0x05A3 (size: 0x1)
    TArray<class AActor*> InputNotificationList;                                      // 0x05A8 (size: 0x10)
    bool EnableMouseMove;                                                             // 0x05B8 (size: 0x1)
    bool m_IsSystemUiOverlaid;                                                        // 0x05BA (size: 0x1)

    void SetPlayerCharacterInput(bool Enable);
    void SetKSInputMode(EKSInputMode Mode);
    void SetDefaultControllerKeyConfig();
    bool SetConfigKey(EKSKeyConfigElement Elem, const FKey Key);
    void ResetToDefaultKeyConfig(EKSKeyConfigType Type);
    void ResetKeyRepeat();
    void ResetConfigKeyList();
    void ReflectSystemDataKeyConfig();
    void ReflectKeyboardLayoutType();
    void RebuildKeyMappings(const FKSKeyConfigMappingDatum& MappingData);
    void RebuildInputKeyMappingsByKeyConfigElement(EKSKeyConfigElement Elem);
    void OnOptionApplyComplete(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    bool MouseEventY(float Axis);
    bool MouseEventX(float Axis);
    bool IsSetConfigKey(EKSKeyConfigElement Elem, const FKey Key);
    bool IsPressedEventSkip();
    bool IsPressedEventDoubleSpeed();
    bool IsKeyConfigCancelKey(EKSKeyConfigElement Elem, const FKey Key);
    bool IsChangeUseInputType();
    void InitializeConfigKeyList();
    void Initialize();
    EKSUseInputType GetUseInputType();
    int32 GetTypeHashByKeyConfigElement(EKSKeyConfigElement Elem);
    bool GetRSholderHold();
    FVector2D GetRAxis();
    bool GetPlayerCharacterInput();
    FVector2D GetLAxis();
    EKSInputMode GetKSInputMode();
    FName GetKeyNameByKeyConfigElement(EKSKeyConfigElement Elem);
    FKey GetKeyByKeyConfigElement(EKSKeyConfigElement Elem);
    bool GetGamePadAttached();
    bool GetFrameInputFlag();
    void GetDirectInputKey(const FKey XInputKey, FKey& DirectInputKey);
    FKey GetDefaultKeyConfigElement(EKSKeyConfigElement Elem);
    void DebugSetFixedInputMode(EKSUseInputType inputType, bool isFixed);
    void DebugRemoveOldKeyConfig();
    void DebugEnableMouseInput(bool Enable);
    void DebugChangeOldKeyConfigList(bool ChangeOldSetting);
    void DebugAddOldKeyConfig();
    void CleanMoveParam();
    bool CheckInputType();
    void ChangeDefaultKeyboardConfigKey();
    void ApplyDefaultKeyConfigToSystemData();
    void ApplyDefaultKeyConfig();
    void AddInputNotificationActor(class AActor* TargetActor);
}; // Size: 0x5D8

class AKSSaveDataManager : public AAcqManagerBase
{
    class UMJSaveData* SaveGame;                                                      // 0x0250 (size: 0x8)
    class UKSSaveSystem* SaveSystem;                                                  // 0x0258 (size: 0x8)
    TMap<int32, int32> m_TemporaryBackpackItemList;                                   // 0x0260 (size: 0x50)
    bool m_IsCreatedsystemSaveData;                                                   // 0x02C0 (size: 0x1)

    bool ValidateAtlantisPartySet();
    void UpdateSlotData(EKSSaveSlotName slotIdx);
    bool SubItemFromBackpack(FName ItemLabel, int32 Num);
    bool StartAutoSave(const FStartAutoSaveAutoSavedDelegate& AutoSavedDelegate);
    bool SetupReminiscenceParty(EPlayableCharacterID CharacterID);
    bool SetupLastDungeonParty(TArray<int32>& Party1, TArray<int32>& Party2);
    bool SetupLastDungeonMode(TArray<int32>& Party1, TArray<int32>& Party2);
    bool SetupFixedParty(const TArray<EPlayableCharacterID>& fixedCharaList);
    void SetupBackpackItemList(const TArray<FSaveBackPackItem>& saveBackpackItemList);
    void SetupAtlantisPartySet(EKSPartySet PartySetID, const TArray<int32>& mainMember, const TArray<int32>& subMember);
    void SetNewGame(bool IsNewGame);
    void SetLastAccessSlotIndex(EKSSaveSlotName slotIdx);
    void SetIsCreatedsystemSaveData(bool IsCreatedsystemSaveData);
    void SetGameSaveData_Native(class UMJSaveData* saveData);
    void SetGameSaveData_BP(class UMJSaveData* saveData);
    void SetGameSaveData(class UMJSaveData* saveData);
    void SetEventPlayedFlag(int32 Index, bool Flag);
    void SetEventFlag(int32 Index, bool Flag);
    void SetEventCounter(int32 Index, int32 Value);
    void SetEndrollSegmentBattleReplay(EEndRollSegmentSet SegmentID);
    void SetBattleSpeed();
    void SetBackpackItem(const int32 ItemId, const int32 ItemNum);
    void SetAutoSavePlayerLocation(FVector PlayerLocation);
    void SetAutoSaveEnable(bool Enable);
    void SetAutoSaved(bool IsAutoSaved);
    bool ResumeNormalPartySet();
    bool RestoreParty();
    bool ResetPartySet();
    void ResetBattleSpeed();
    void RefreshBackpackSaveData();
    bool PrepareAtlantisPartySet();
    void OnFinishAutoSaveSystemData(FString SlotName, const int32 UserIndex, bool IsSuccesss);
    void OnFinishAutoSaveGameData(FString SlotName, const int32 UserIndex, bool IsSuccesss);
    void OnEndAutoSave();
    bool MergePartyData();
    bool IsValidEventFlag(TEnumAsByte<EBPIsValidReturnCode::Type>& returnCode, int32 Index);
    bool IsNewGame();
    bool IsAutoSaved();
    bool InitSystemData();
    bool InitPartyData(EPlayableCharacterID CharacterID);
    bool InitGameData();
    class UKSSaveSystem* GetSysSaveData();
    void GetSaveBackpackDataWithBuffer(int32 BufferSize, TArray<FSaveBackPackItem>& outBackPackitemsWithBuffer);
    void GetSaveBackpackData(TArray<FSaveBackPackItem>& outBackPackItems);
    EKSSaveSlotName GetLastAccessSlotIndex();
    class AKSSaveDataManager* GetInstance();
    class UMJSaveData* GetGameSaveData();
    bool GetEventPlayedFlag(int32 Index);
    bool GetEventFlagByName(FName FlagLabel);
    bool GetEventFlag(int32 Index);
    int32 GetEventCounter(int32 Index);
    EKSPartySet GetCurrentPartySet();
    float GetCalcBaseBattleSpeed();
    bool GetBackpackItem(int32& ItemNum, const int32 ItemId);
    FVector GetAutoSavePlayerLocation();
    bool FinishLastDungeonMode();
    bool FinishFixedParty();
    void FindItemFromBackpack(FName ItemLabel, bool& isFind, int32& Num);
    void Debug_SetupAtlantisPartySetRandom();
    void Debug_SetRandomParticipationOrder();
    void Debug_ResumeNormalPartySet();
    void Debug_PrintItemAcquisitionHistory();
    void Debug_ClearParticipationOrder();
    bool CheckEventFlag(int32 Index);
    bool ChangePartySet(EKSPartySet PartySetID);
    void ChangeBattleSpeed();
    bool AddItemToBackpack(FName ItemLabel, int32 Num);
    bool AddItemsToBackpack(const TMap<FName, int32>& itemAndNum);
    void AddEventCounter(int32 Index, int32 Value);
}; // Size: 0x2C8

class AKSSimpleLevelLoader : public AActor
{

    void StreamingLevelLoaded();
    class ULevelStreamingDynamic* SimpleLoadKSLevel(class UObject* WorldContextObject, FString levelName, const FVector& Location, const FRotator& Rotation, bool& bOutSuccess);
    void SetStreaming(class ULevelStreamingDynamic* Stream);
    bool IsLoaded();
    class AKSSimpleLevelLoader* GetInstance();
}; // Size: 0x240

class AKSTextManager : public AAcqManagerBase
{
    bool IsLoaded;                                                                    // 0x0230 (size: 0x1)
    bool IsLoadedVoice;                                                               // 0x0231 (size: 0x1)
    TSoftObjectPtr<UDataTable> GameText;                                              // 0x0238 (size: 0x28)
    TSoftObjectPtr<UDataTable> TalkText;                                              // 0x0260 (size: 0x28)
    TSoftObjectPtr<UDataTable> TalkVoice;                                             // 0x0288 (size: 0x28)
    TSoftObjectPtr<UDataTable> TextCharaInfo;                                         // 0x02B0 (size: 0x28)
    TSoftObjectPtr<UDataTable> TextItemInfo;                                          // 0x02D8 (size: 0x28)
    class UTextOperationComponent* TextOperationComponent;                            // 0x0300 (size: 0x8)

    void SetLanguageConditonParam_Talk(FName TargetLabel);
    void SetLanguageConditonParam_Solo(bool IsSolo);
    void SetConditonParam_Item(FName ItemLabel, int32 Count);
    bool LoadTextVoice(EKSLanguage eLang);
    bool LoadText(EKSLanguage eLang);
    FString ExecMacroOperation(FString InputStr);
}; // Size: 0x308

class AKSTriggerBase : public ATriggerBase
{
    EKSTriggerType m_eTriggerType;                                                    // 0x0228 (size: 0x1)
    int32 m_nProcessOrder;                                                            // 0x022C (size: 0x4)

    void Update(float DeltaSeconds);
    void SetDebugTextColor(FLinearColor Color);
    void SetDebugText(FString debugStr);
    void Reset();
    void Initialize();
    EKSTriggerType GetTriggerType();
    bool CanActivateTrigger();
}; // Size: 0x238

class AKSUIManager : public AAcqManagerBase
{
    class UWidgetTemporaryHiddenComponent* m_WidgetTemporalyHiddenComponent;          // 0x0230 (size: 0x8)
    TArray<class UUserWidget*> ActiveStackUI;                                         // 0x0238 (size: 0x10)
    TArray<class UUserWidget*> ClosingStackUI;                                        // 0x0248 (size: 0x10)
    TMap<class FName, class UKSUserWidgetBase*> m_WidgetTable;                        // 0x0268 (size: 0x50)
    TMap<class EKSUIKind, class FName> m_TypeToName;                                  // 0x02B8 (size: 0x50)
    TMap<class EWIDGET_CREATE_PHASE, class ULoadAssetHandle*> m_LoadHandles;          // 0x0368 (size: 0x50)
    class ULetterBoxBase* m_LetterWidget;                                             // 0x0408 (size: 0x8)

    void UnLockInputMode();
    void SetLetterWidget(class ULetterBoxBase* letterWidget);
    void SetHelpOpen(bool IsOpen);
    void ResetHiddenFlag();
    void ResetFromTitle();
    void RemoveUIPartsList(EKSUIPartsKind Kind);
    void RemoveList(EKSUIKind Kind);
    void RefreshWidget();
    void RefreshTextLanguageAllWidget();
    void RefreshTextLanguage();
    int32 PushActive(class UUserWidget* PushUI);
    void PopActiveUIWith(class UUserWidget* UI, bool& IsPop, class UUserWidget*& PopUI);
    void PopActive(class UUserWidget*& PopUI);
    int32 OpenRequest(class UUserWidget* PushUI, bool UseStack);
    class UKSUserWidgetBase* OpenDialog(const FKSUICommonDialogParam& InParam);
    class UKSUserWidgetBase* Open(EKSUIKind Kind);
    bool NoticeCreatedWidget(EWIDGET_CREATE_PHASE CreatePhase);
    void LockInputMode();
    void IsWidgetRunning(bool& IsRunning, EKSUIKind Kind);
    bool IsStack(class UUserWidget* CheckUI);
    bool IsCreatedWidget(EKSUIKind UIType);
    bool IsClosingStackFromWidget(class UUserWidget* CheckUI);
    bool IsClosingStack();
    bool IsBulkLoadedWidgets(EWIDGET_CREATE_PHASE CreatePhase);
    TMap<class FName, class UKSUserWidgetBase*> GetWidgetTable();
    class UKSUserWidgetBase* GetWidgetInstance(EKSUIKind UIType);
    class UKSUserWidgetBase* GetWidget(FName WidgetName);
    class UUserWidget* GetUIPartsList(EKSUIPartsKind Kind);
    class UWidgetTemporaryHiddenComponent* GetTemporayHiddenComponent();
    TSoftClassPtr<UUserWidget> GetPartsWidgetClass(EKSUIPartsKind Kind);
    class UKSUserWidgetBase* GetList(EKSUIKind Kind);
    class ULetterBoxBase* GetLetterWidget();
    bool GetInputModeLock();
    bool GetHelpOpen();
    int32 GetActiveStackCount();
    class UUserWidget* GetActiveStack();
    bool ForceCloseMenuCommon(EKSUIKind Kind);
    void DeleteStack(class UUserWidget* DeleteUI);
    void Debug_ShowDebugInfo(bool bEnable);
    void Debug_ShowActiveUI_Stack();
    void Debug_ForceClearActiveUI_Stack();
    void Debug_EnableTextSizeInfo(bool bEnable);
    void Debug_CreateWidget(FName WidgetName);
    class UUserWidget* CreateUIParts(EKSUIPartsKind Kind);
    class UKSUserWidgetBase* CreateTemporaryWidgets(EKSUIKind UIType);
    class UUserWidget* CreateNonManagedWidgetByClassPtr(const TSoftClassPtr<UUserWidget>& Class, int32 ZOrder, ESlateVisibility InVisibility);
    void CloseRequestFromKind(EKSUIKind Kind, bool ForceClose);
    void CloseRequest(class UUserWidget* PopUI, bool ForceClose);
    bool CloseMenuCommon(EKSUIKind Kind);
    bool CloseDialog(bool& outIsSelected, int32& outFocusIndex);
    class UKSUserWidgetBase* Close(EKSUIKind Kind);
    bool BulkLoadWidgets(EWIDGET_CREATE_PHASE CreatePhase);
    bool BulkCreateWidgets(EWIDGET_CREATE_PHASE CreatePhase);
    bool AddUIPartsList(EKSUIPartsKind Kind, class UUserWidget* UIParts);
    void AddToViewport(class UUserWidget* Target, int32 ZOrder);
    void AddToPlayerScreen(class UUserWidget* Target, int32 ZOrder);
}; // Size: 0x410

class ALadderObjectBase : public AActor
{
}; // Size: 0x220

class ALevelAreaCollisionBase : public AActor
{
    LEVEL_AREA_TYPE AreaType;                                                         // 0x0220 (size: 0x1)
    int32 StartEventFlag;                                                             // 0x0224 (size: 0x4)
    int32 EndEventFlag;                                                               // 0x0228 (size: 0x4)

    bool IsCollisionEnable();
    class UBoxComponent* GetCollision();
    LEVEL_AREA_TYPE GetAreaType();
}; // Size: 0x230

class ALevelManagerBase : public AAcqManagerBase
{
    TArray<class ULevelLoader*> m_LevelLoader;                                        // 0x0240 (size: 0x10)

    void RegisterSubLevelSuffix(FName subLevelSuffix);
    bool IsLevelShown(FName levelName);
    bool IsLevelLoaded(FName levelName);
}; // Size: 0x250

class ALevelManager_Others : public AActor
{
    TMap<class FName, class FKSLevelPostProcessData> m_PostProcessData;               // 0x0220 (size: 0x50)
    float m_PostParam_VignetteWeakRate;                                               // 0x0270 (size: 0x4)
    float m_PostParam_VignetteNormalRate;                                             // 0x0274 (size: 0x4)
    float m_PostParam_FocalRegionWideAdd;                                             // 0x0278 (size: 0x4)
    float m_PostParam_DofScaleWeakRate;                                               // 0x027C (size: 0x4)
    float m_PostParam_DofScaleNormalRate;                                             // 0x0280 (size: 0x4)
    float m_PostParam_GainRateMin;                                                    // 0x0284 (size: 0x4)
    float m_PostParam_GainRateMax;                                                    // 0x0288 (size: 0x4)
    int32 m_Debug_BarNotPlaceCharaRate;                                               // 0x028C (size: 0x4)
    int32 m_Debug_BarPlaceCharaRateOne;                                               // 0x0290 (size: 0x4)
    TArray<int32> m_Debug_BarCharaList;                                               // 0x0298 (size: 0x10)
    TMap<class FName, class TWeakObjectPtr<AKSCharacterBase>> NPCList;                // 0x02A8 (size: 0x50)
    TMap<int32, TWeakObjectPtr<AKSCharacterBase>> NPCIDList;                          // 0x02F8 (size: 0x50)
    TArray<TWeakObjectPtr<AKSCharacterBase>> ReserveDestroyNpcList;                   // 0x0358 (size: 0x10)
    TMap<class FName, class AKSObjectBase*> MapObjectList;                            // 0x0368 (size: 0x50)
    TMap<class FName, class AEventTriggerBox*> EventTriggerList;                      // 0x03B8 (size: 0x50)
    TMap<class FName, class ALevelSequenceActor*> PlacedSequencerList;                // 0x0408 (size: 0x50)
    TArray<class AMJPathSplineObject*> m_apNPCPathList;                               // 0x0458 (size: 0x10)
    bool ChangeBGM;                                                                   // 0x0468 (size: 0x1)
    int32 m_nTreasureBoxCounter;                                                      // 0x0470 (size: 0x4)
    bool m_IsGameOverPlaying;                                                         // 0x0474 (size: 0x1)
    bool m_bTransitionToGameOver;                                                     // 0x0475 (size: 0x1)
    bool m_LevelChangeByLinerShip;                                                    // 0x0476 (size: 0x1)
    bool m_bForceSpawn;                                                               // 0x0559 (size: 0x1)
    class UMaterialParameterCollection* m_MPC_PGControl;                              // 0x0560 (size: 0x8)

    void VisibleEmotionAllNPC(bool IsVisible);
    void VisibleCategoryAll(EPLACEMENT_TYPE eType, bool IsVisible);
    void VisibleBarCharacter();
    void VisibleAll(bool IsVisible);
    void Visible(EPLACEMENT_TYPE eType, FName Label, bool IsVisible);
    void SpawnPlacementObject(EPLACEMENT_TYPE ePlacementType, FName TempDataLabel, FVector vSpawnPos, bool bRefreshFollowNPC, const FPlacementData& pPlacementData, bool bFadeChara, bool bForceSpawn);
    bool Spawn_TimeZoneChange(EPLACEMENT_TYPE eType, FName Label);
    void SetVisibleBarChangeCharacter();
    void SetupNPCPathList();
    void SetLevelChangeByLinerShip(bool bLinerShip);
    void SetChangeBGM(bool change);
    void SetBgmIdFromOuter(int32 BGMID);
    void ResetInHouseSettings();
    void ResetCameraLockParam();
    void RequestRestorePlayerPlacement(const FReminiscenceRestorePlacement& restorePlacement);
    void RequestMapInLocation(const FPlayerLocation& Location);
    void RequestMapInEquipLantern(const FEquipLanternData& EquipLantern);
    void RequestMapInCameraLock(const FVector& CameraLockPos, ELevelTriggerID LevelTriggerID);
    void RemoveTargetNPC_ByID(int32 npdUniqID);
    bool RemoveObjectFromList(EPLACEMENT_TYPE eType, FName ObjLabel);
    bool RemoveList_TimeZoneChange(EPLACEMENT_TYPE eType, FName Label);
    bool RemoveList_TargetNPC(class AKSCharacterBase* pNPC);
    bool RemoveList(EPLACEMENT_TYPE eType, FName ObjLabel);
    void RemoveAllType();
    void RemoveAll(EPLACEMENT_TYPE eType);
    bool RefreshSwoon(int32 NPCUniqID);
    bool RefreshSpawn(class UObject* WorldContextObject, FName levelName, bool FadeChara, bool ForceSpawn, bool NextTimeZone, bool bUpdateSwoon);
    void RefreshPostProcess(bool bCheckEventPlaying);
    void RefreshPlacedObject(EPLACEMENT_TYPE ePlacementType, FName TempDataLabel, bool bRefreshFollowNPC, bool bUpdateSwoon);
    void RefreshCurrentCameraLock_Delay(ENOTICE_TYPE noticeType, const FNoticeArgs& Args);
    void RefreshCurrentCameraLock();
    void RefreshCameraLockByLevelTriggerId(ELevelTriggerID TriggerID);
    void RefreshBarChangeCharacter();
    void RecalcCollectedPostProcessVolumes();
    void Proc_OnFinishLoadFieldLevel();
    void Proc_OnFinishFadeOut_Field_Last();
    void Proc_OnFinishFadeOut_Field_First();
    void Proc_OnFinishFadeIn();
    void Proc_OnFieldLevelShown_Last();
    void Proc_OnFieldLevelShown_First();
    void Proc_OnBeginLevelChangeFadeOut();
    void OnStartGameOver();
    void OnStartBattle();
    bool OnShownField_AfterBattle();
    void OnFinishFadeIn_AfterBattle();
    void OnFinishFadeIn();
    void OnFinishBattle();
    void NotifyGameParamDB(FName dbName, EDBNoticeType notice);
    bool IsTimeZoneThatCanPlaced(const FPlacementData& cPlaceData, bool NextTimeZone);
    bool IsTimeZoneCheck(const FPlacementData& cPlaceInfo);
    bool IsRequestedMapInLocation();
    bool IsRequestedMapInEquipLantern();
    bool IsGameOverLevelLoad();
    bool IsFindList(EPLACEMENT_TYPE eType, FName Label);
    void InitOnBP();
    void HouseChangeVisible(bool inHouse, int32 floor);
    FReminiscenceRestorePlacement GetRestorePlayerPlacement();
    class ALevelSequenceActor* GetPlacedSequencer(FName Label);
    class AKSCharacterBase* GetNPCUniqID(int32 UniqID);
    TArray<class AMJPathSplineObject*> GetNPCPathList();
    TArray<FName> GetNpcLabels();
    class AKSCharacterBase* GetNPC(FName ObjLabel);
    void GetMJLevelManager(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, class AMJLevelManager*& outLevelManager);
    TArray<FName> GetMapObjectLabels();
    class AKSObjectBase* GetMapObject(FName Label);
    FPlayerLocation GetMapInLocation();
    FEquipLanternData GetMapInEquipLantern();
    FVector GetMapInCameraLockPos();
    bool GetLevelChangeByLinerShip();
    TArray<FName> GetEventTriggerLabels();
    class AEventTriggerBox* GetEventTrigger(FName Label);
    TArray<FName> GetDelayedSpawnNpcLabelList();
    int32 GetBgmIdFromOuter();
    FName GetBattleEnemyGroupID();
    TArray<class AKSCharacterBase*> GetAllNPC();
    void FloorVisibleChangeCheck(FName& PlacementLabel, int32 nCheckFloor);
    void EndBattleWipe(int32 GameOverCursor);
    void DestroyDontPlaceObject(EPLACEMENT_TYPE ePlacementType, FName TempDataLabel, bool bFadeChara, const TArray<int32>& anFollowNPCID, int32 nUniqUndex);
    void Debug_ShowPostProcessVolumeInfo();
    void Debug_ChangeBarChara();
    void CollectPostProcessVolumes();
    void ClearRestorePlayerPlacement();
    void ClearPostProcessVolumes();
    void ClearMapInLocation();
    void ClearMapInEquipLantern();
    void ClearMapInCameraLock();
    void ClearForciblyPostProcessVolumes();
    void ClearCollisionDisabledNPC();
    void CheckLevelTriggerEnable();
    bool CheckExtendedSpawnByEndDelayCount(const FPlacementData& PlacementData, int32 nUnqIndex);
    bool CheckEventParamCondition(const FPlacementEventParamSet& eventParamSet);
    void ChangeMapPreProcess(int32 NextMapID);
    bool ApplyScreenBrightness(int32 Level);
    bool ApplyCornerDarkness(bool bIsNormal, bool CheckEventPlaying);
    bool AddPlacedSequencerList(FName ObjLabel, class ALevelSequenceActor* pObj);
    bool AddNPCList(FName ObjLabel, class AKSCharacterBase* pObj);
    bool AddMapObjectList(FName ObjLabel, class AKSObjectBase* pObj);
    bool AddEventTriggerList(FName ObjLabel, class AEventTriggerBox* pObj);
    void AddCollisionDisabledNPC(int32 NPCUniqID);
}; // Size: 0x568

class ALevelTriggerActor : public AActor
{
    class USceneComponent* m_SpawnPointObj;                                           // 0x0220 (size: 0x8)
    TSoftObjectPtr<ACameraLockTrigger> TargetCameraLockTriggerX;                      // 0x0228 (size: 0x28)
    TSoftObjectPtr<ACameraLockTrigger> TargetCameraLockTriggerY;                      // 0x0250 (size: 0x28)
    TSoftObjectPtr<ACameraLockTrigger> TargetCameraLockTriggerZ;                      // 0x0278 (size: 0x28)
    FCameraLockParams CameraLockParams;                                               // 0x02A0 (size: 0x10)
    ELevelTriggerID MyLevelTriggerID;                                                 // 0x02B0 (size: 0x1)
    int32 CurrentTransitionDataFlagID;                                                // 0x02B4 (size: 0x4)
    FName NextMapName;                                                                // 0x02B8 (size: 0x8)
    ELevelTriggerID NextLevelTriggerID;                                               // 0x02C0 (size: 0x1)
    EKSCharacterDir MapInCharaDir;                                                    // 0x02C1 (size: 0x1)
    FEquipLanternData EquipLanternData;                                               // 0x02C8 (size: 0x20)
    FString strNextMapName;                                                           // 0x02E8 (size: 0x10)
    bool EnableAutoSave;                                                              // 0x02F8 (size: 0x1)
    bool NeedButtonInput;                                                             // 0x02F9 (size: 0x1)
    bool ButtonInputCollisionMatchToTrigger;                                          // 0x02FA (size: 0x1)
    TArray<FLevelTransitionData> ConditionalTransitionData;                           // 0x0300 (size: 0x10)
    TSoftObjectPtr<ASwitchIndoorTrigger> m_MapInSwitchIndoorTrigger;                  // 0x0310 (size: 0x28)
    TSoftObjectPtr<AProceduralLinePlace> m_MapInUseLadder;                            // 0x0338 (size: 0x28)
    ECharacterMoveModeForDB m_MapInMoveMode;                                          // 0x0360 (size: 0x1)
    bool m_IsTriggerActive;                                                           // 0x0361 (size: 0x1)

    void SetupDataOnLevelShown();
    void SetupBGMControl();
    void SetCollisionComponent(class UShapeComponent* pComp, FVector vPos);
    bool SetAttachLadderPlayer();
    void RefreshTransitionalData();
    bool IsTriggerActive();
    bool IsIgnoreShowOnRadarMap();
    FVector GetTriggerCollisionLocation();
    FVector GetSpawnLocation();
    ECharacterMoveModeForDB GetMapInMoveMode();
    FEquipLanternData GetEquipLanternData();
}; // Size: 0x368

class ALightStage : public AActor
{
    class UMaterialParameterCollection* m_pMPC;                                       // 0x0220 (size: 0x8)
    bool m_bUseFog;                                                                   // 0x0228 (size: 0x1)
    bool m_bUseSkyDome;                                                               // 0x0229 (size: 0x1)
    class UMaterialInterface* m_pSkyMaterial;                                         // 0x0230 (size: 0x8)
    bool m_bUseSkyLight;                                                              // 0x0238 (size: 0x1)
    class UMaterialInterface* m_pLightFunctionMaterial;                               // 0x0240 (size: 0x8)
    float m_fShadowDistance;                                                          // 0x0248 (size: 0x4)
    float m_fShadowBias;                                                              // 0x024C (size: 0x4)
    bool m_bUseSun;                                                                   // 0x0250 (size: 0x1)
    bool m_bUpdate;                                                                   // 0x0251 (size: 0x1)
    class UTextureCube* m_pcCubemap;                                                  // 0x0258 (size: 0x8)
    bool m_bIndoorPreview;                                                            // 0x0260 (size: 0x1)
    float m_fIndoorSunBrightness;                                                     // 0x0264 (size: 0x4)
    float m_fIndoorSkyLightIntensity;                                                 // 0x0268 (size: 0x4)
    float m_fIndoorFogDensity;                                                        // 0x026C (size: 0x4)
    class UDirectionalLightComponent* m_pMainDirectionalLight;                        // 0x0270 (size: 0x8)
    class UExponentialHeightFogComponent* m_pFog;                                     // 0x0278 (size: 0x8)
    class USkyLightComponent* m_pSkyLight;                                            // 0x0280 (size: 0x8)
    class UStaticMeshComponent* m_pSkyMesh;                                           // 0x0288 (size: 0x8)

}; // Size: 0x298

class AMJBoxTrigger : public AKSTriggerBase
{
}; // Size: 0x238

class AMJLODActor : public AActor
{
    float m_fMaxDrawDistance;                                                         // 0x0220 (size: 0x4)

    void SetLODSettings(class UPrimitiveComponent* PrimComp);
}; // Size: 0x228

class AMJLevelManager : public ALevelManagerBase
{
    FMJLevelManagerOnNotifyLevelTransition OnNotifyLevelTransition;                   // 0x0250 (size: 0x10)
    void LevelTransitionNoticeDelegate(FName levelId, ELEVEL_TYPE levelType, ELevelTransitionNotice notice);
    FMJLevelManagerOnNotifyLevelLoader OnNotifyLevelLoader;                           // 0x0260 (size: 0x10)
    void LevelLoaderNoticeDelegate(FName levelName, ELEVEL_TYPE levelType, ELevelLoaderNotice notice);
    ELevelTriggerID m_RequestLevelTrigger;                                            // 0x075E (size: 0x1)
    bool m_ChangeBGM;                                                                 // 0x075F (size: 0x1)
    bool m_UseFadeUI;                                                                 // 0x0760 (size: 0x1)
    float m_FadeInTime;                                                               // 0x0764 (size: 0x4)
    float m_FadeOutTime;                                                              // 0x0768 (size: 0x4)
    bool m_PrevLevelInGame;                                                           // 0x076C (size: 0x1)
    bool m_PrevLevelSea;                                                              // 0x076D (size: 0x1)
    bool m_IsGameOver;                                                                // 0x076E (size: 0x1)
    class ALevelManager_Others* m_LvlMng_Others;                                      // 0x0770 (size: 0x8)
    FNextMapInfo m_NextMapInfo;                                                       // 0x0778 (size: 0x14)
    bool m_IsFirstVisitLevel;                                                         // 0x078C (size: 0x1)
    class ULevelLoader* m_Debug_BattleLevelLoader;                                    // 0x0790 (size: 0x8)

    bool SwitchActiveLevel(ELEVEL_TYPE levelType, int32 MapIndex, bool useFade);
    bool StartFadeOut();
    bool StartFadeIn();
    void SetSwitchActiveParam(int32 MapIndex, ELEVEL_TYPE NextLevelType);
    void SetRequestedLevelTriggerID(ELevelTriggerID TriggerID);
    void SetNextMapInfoByName(FName NextMapName, ELevelTriggerID ReqTrigger, bool UseFadeUI, bool ChangeBGM, ELEVEL_TYPE NextLevelType);
    void SetNextMapInfoByID(int32 NextMapID, ELevelTriggerID ReqTrigger, bool UseFadeUI, bool ChangeBGM, ELEVEL_TYPE NextLevelType);
    void SetFirstVisited(bool bFirstVisited);
    void SaveVisitedMap(FName SaveLevel);
    void RequestRevealBattle(bool bReveal);
    bool RequestLoadFieldLevel(FName Map, ELevelTriggerID TriggerID, bool Fade, bool ChangeBGM);
    void RequestLevelChange();
    void Proc_AfterUnloadLevel();
    void OnLevelLoaderCommandCompleted(int32 loaderId, const FLevelLoaderRequest& request);
    void NotifyLevelTransition(FName levelId, ELEVEL_TYPE levelType, ELevelTransitionNotice notice);
    void NotifyLevelLoader(FName levelName, ELEVEL_TYPE levelType, ELevelLoaderNotice notice);
    bool IsSameLevelChanging();
    bool IsRunningFadeOut();
    bool IsRunningFadeIn();
    bool IsPrevLevelSea();
    bool IsPrevLevelInGame();
    bool IsLevelChangeFinishFadeIn();
    bool IsImmovableByFieldChanging();
    bool IsFadeOutState();
    bool IsFadeInAllowed();
    bool IsChanging();
    bool GetUseFadeUI();
    ELevelTransitionType GetTransitionType();
    ELevelTriggerID GetRequestedLevelTriggerID();
    FName GetNextLevelId();
    class ALevelManager_Others* GetLevelManagerOthers();
    class ULevelStreaming* GetFieldLevelStreaming();
    bool GetChangeBGM();
    ELEVEL_TYPE GetActiveLevelType();
    bool FinishBattleLevel();
    void Debug_ShowManagerInfo(bool bEnable);
    void Debug_SetMemProf_OnUnloadLevel(bool bEnabled);
    void Debug_SetMemProf_OnEndChangeLevel(bool bEnabled);
    void Debug_SetMemProf_OnBattleEnd(bool bEnabled);
    void Debug_SetForceRevealBattleMap(bool bForce);
    void Debug_SetForceLostWay(bool bFlag);
    void Debug_RequestSimulatedChangLevel();
    void Debug_RequestOverrideBattleMap(FName battleMapName);
    void Debug_OnTransitionEvent(FName levelId, ELEVEL_TYPE levelType, ELevelTransitionNotice notice);
    bool Debug_ChangeLevelOnDecided(const FDebugListMenuItem& menuItem);
    void Debug_ChangeLevelOnClosed();
    bool ChangeFieldLevelWithParams(FName levelId, ELevelTriggerID levelTrgId, bool useFade, bool ChangeBGM);
    bool ChangeFieldLevel(FName levelId);
    void CallLevelTransision(ELEVEL_TYPE levelType, ELevelTransitionNotice notice);
}; // Size: 0x7A0

class AMJPathSplineObject : public AActor
{

    void DebugShowSplineObject(const class USplineComponent* uSpline, class UTextRenderComponent* cTextRender, int32 nIndex);
    void DebugCreateSplineObject(const class USplineComponent* uSpline, class UTextRenderComponent* cTextRender, int32 nIndex);
}; // Size: 0x220

class AMJPostProcessVolume : public APostProcessVolume
{
    int32 m_nIndex;                                                                   // 0x07F0 (size: 0x4)
    bool bBattleMap;                                                                  // 0x07F4 (size: 0x1)
    class UMaterial* m_pAddPostProcessMaterial;                                       // 0x07F8 (size: 0x8)

    void AddPostProcessMaterial(class UMaterial* PPM);
}; // Size: 0x810

class AMJSphereTrigger : public AKSTriggerBase
{
}; // Size: 0x238

class AMapDoorObjectBase : public AActor
{
    TSoftObjectPtr<ALevelTriggerActor> m_TargetLevelTrigger;                          // 0x0220 (size: 0x28)

    void RefreshDoor();
    void OpenDoor();
    void OnCloseMainMenu(ENOTICE_TYPE noticeType, const FNoticeArgs& NoticeArgs);
    void CloseDoor();
}; // Size: 0x248

class AMapShipObject2Base : public AActor
{
    class UStaticMeshComponent* m_MyShipMesh;                                         // 0x0220 (size: 0x8)
    TMap<class EMYSHIP_CUSTOM_TYPE, class UMaterialInterface*> m_ColorMaterialTable;  // 0x0228 (size: 0x50)

    void ApplyShipCustomize();
}; // Size: 0x278

class AMapShipObjectBase : public AActor
{
    float RelativeDir_Go;                                                             // 0x0220 (size: 0x4)
    FVector RelativeOffset_Go;                                                        // 0x0224 (size: 0xC)
    float RelativeDir_Return;                                                         // 0x0230 (size: 0x4)
    FVector RelativeOffset_Return;                                                    // 0x0234 (size: 0xC)
    class UStaticMeshComponent* ShipMesh;                                             // 0x0240 (size: 0x8)
    bool MyShipFlag;                                                                  // 0x0248 (size: 0x1)
    int32 EventFlag_ForceDir_Go;                                                      // 0x024C (size: 0x4)
    int32 EventFlag_ForceDir_Return;                                                  // 0x0250 (size: 0x4)

    void ResetRelativeTransform();
    void ApplySailTexture(bool FirstChoice);
    void ApplyRelativeTransform(bool bGo);
    void ApplyMyShipCustomizeFirstChoice();
    void ApplyMyShipCustomize();
}; // Size: 0x258

class ANPCManager : public AAcqManagerBase
{

    bool RecoverSwoonNPC_TZChange(int32 NPCIndex);
    bool RecoverSwoonNPC(const FName& NPCLabel);
    bool RecoverAllSwoonNPC();
    bool CreateSwoonNPCList();
    bool AddSwoonNPC(const FName& NPCLabel, ENpcSwoonType SwoonType);
}; // Size: 0x230

class ANPCSpawnTarget : public ATargetPoint
{
    class AKSCharacterBase* NPCCharacter;                                             // 0x0220 (size: 0x8)
    class AKSObjectBase* SpawnObject;                                                 // 0x0228 (size: 0x8)
    int32 NPCID;                                                                      // 0x0230 (size: 0x4)
    int32 ObjectId;                                                                   // 0x0234 (size: 0x4)
    EKSCharacterDir Dir;                                                              // 0x0238 (size: 0x1)
    TArray<FNPCSpawnData> SpawnData;                                                  // 0x0240 (size: 0x10)

    bool IsSpawn(const TArray<int32>& EventFlag, const FNPCSpawnData& CheckData);
}; // Size: 0x250

class ANoticeDelegateManager : public AAcqManagerBase
{

    bool Static_BroadcastNotice(ENOTICE_TYPE noticeType, const FNoticeArgs& NoticeArgs);
    void RemoveOneShotNoticeDelegate(ENOTICE_TYPE noticeType, FRemoveOneShotNoticeDelegateNoticeDelegate noticeDelegate);
    void RegisterOneShotNoticeDelegate(ENOTICE_TYPE noticeType, FRegisterOneShotNoticeDelegateNoticeDelegate noticeDelegate);
    void RegisterNoticeDelegate(ENOTICE_TYPE noticeType, FRegisterNoticeDelegateNoticeDelegate noticeDelegate);
    void BroadcastNotice(ENOTICE_TYPE noticeType, const FNoticeArgs& NoticeArgs);
}; // Size: 0x320

class AObjectVisibilityManager : public AAcqManagerBase
{
    TMap<class FName, class FObjectVisibilityData> m_ObjectVisibilityRequest;         // 0x0230 (size: 0x50)
    TMap<class FName, class FObjectVisibilityData> m_ObjectVisibilityDataCashe;       // 0x0280 (size: 0x50)

    void OnLevelChangeStart(ENOTICE_TYPE noticeType, const FNoticeArgs& Args);
}; // Size: 0x2E0

class APartyChatManager : public AAcqManagerBase
{
    bool m_IsInBar;                                                                   // 0x0280 (size: 0x1)

    bool Static_PlayPartyChatFromMissionRecord(const FName& PartyChatLabel);
    bool Static_PlayAvailablePartyChat();
    bool Static_IsAvailablePartyChat();
    bool PlayPartyChatFromMissionRecord(const FName& PartyChatLabel);
    bool PlayAvailablePartyChat();
    void OnUpdateMainStoryTask(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnUpdateMainStory(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnStartEvent(EREQUEST_RESULT Result);
    void OnRefreshPartyCharacter(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnLevelChanged(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnJoinPlayerCharacter(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnFinishPartyChat(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnEnterOrExitBar(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnCompleteMainStory(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnChangeHolyTorchState();
    void OnCalledEventEndProcess();
    bool IsAvailablePartyChat();
    bool GetPlayingPartyChatData(FPartyChat& OutData);
    void Debug_ForcePlayPartyChat(const FName& PartyChatLabel);
}; // Size: 0x300

class APlacementRefreshTrigger : public AMJBoxTrigger
{
    FName m_strStartEventLabel;                                                       // 0x0238 (size: 0x8)
    FName m_strEndEventLabel;                                                         // 0x0240 (size: 0x8)
    ETIMEZONE_TRIGGER_TYPE m_eTargetTimeZone;                                         // 0x0248 (size: 0x1)
    TArray<FRefereshFlagChangeParam> m_acRefreshParam;                                // 0x0250 (size: 0x10)
    FName m_strSELabel;                                                               // 0x0260 (size: 0x8)
    bool m_bPlacementRefresh;                                                         // 0x0268 (size: 0x1)

}; // Size: 0x270

class AProceduralBuilding : public AActor
{
    TArray<FOptionalParts> m_acOptionalPartsList;                                     // 0x0220 (size: 0x10)
    TArray<class UStaticMeshComponent*> m_acStaticMeshComponentList;                  // 0x0230 (size: 0x10)

}; // Size: 0x240

class AProceduralLinePlace : public AActor
{
    TArray<class UStaticMeshComponent*> m_acStaticMeshComponentList;                  // 0x0220 (size: 0x10)
    class UStaticMesh* Mesh_Root_St;                                                  // 0x0230 (size: 0x8)
    class UStaticMesh* Mesh_Root_Lp;                                                  // 0x0238 (size: 0x8)
    class UStaticMesh* Mesh_Root_End;                                                 // 0x0240 (size: 0x8)
    class UStaticMesh* Mesh_YZ_Top_St;                                                // 0x0248 (size: 0x8)
    class UStaticMesh* Mesh_YZ_Top_Lp;                                                // 0x0250 (size: 0x8)
    class UStaticMesh* Mesh_YZ_Top_End;                                               // 0x0258 (size: 0x8)
    class UStaticMesh* Mesh_YZ_Mdl_St;                                                // 0x0260 (size: 0x8)
    class UStaticMesh* Mesh_YZ_Mdl_Lp;                                                // 0x0268 (size: 0x8)
    class UStaticMesh* Mesh_YZ_Mdl_End;                                               // 0x0270 (size: 0x8)
    class UStaticMesh* Mesh_XY_Top_St;                                                // 0x0278 (size: 0x8)
    class UStaticMesh* Mesh_XY_Top_Lp;                                                // 0x0280 (size: 0x8)
    class UStaticMesh* Mesh_XY_Top_End;                                               // 0x0288 (size: 0x8)
    class UStaticMesh* Mesh_XY_Mdl_St;                                                // 0x0290 (size: 0x8)
    class UStaticMesh* Mesh_XY_Mdl_Lp;                                                // 0x0298 (size: 0x8)
    class UStaticMesh* Mesh_XY_Mdl_End;                                               // 0x02A0 (size: 0x8)
    class UStaticMesh* Mesh_XYZ2_Top_St;                                              // 0x02A8 (size: 0x8)
    class UStaticMesh* Mesh_XYZ2_Top_Lp;                                              // 0x02B0 (size: 0x8)
    class UStaticMesh* Mesh_XYZ2_Top_End;                                             // 0x02B8 (size: 0x8)
    class UStaticMesh* Mesh_XYZ2_Mdl_St;                                              // 0x02C0 (size: 0x8)
    class UStaticMesh* Mesh_XYZ2_Mdl_Lp;                                              // 0x02C8 (size: 0x8)
    class UStaticMesh* Mesh_XYZ2_Mdl_End;                                             // 0x02D0 (size: 0x8)
    class UStaticMesh* Mesh_XYZ3_Top_St;                                              // 0x02D8 (size: 0x8)
    class UStaticMesh* Mesh_XYZ3_Top_Lp;                                              // 0x02E0 (size: 0x8)
    class UStaticMesh* Mesh_XYZ3_Top_End;                                             // 0x02E8 (size: 0x8)
    class UStaticMesh* Mesh_XYZ3_Mdl_St;                                              // 0x02F0 (size: 0x8)
    class UStaticMesh* Mesh_XYZ3_Mdl_Lp;                                              // 0x02F8 (size: 0x8)
    class UStaticMesh* Mesh_XYZ3_Mdl_End;                                             // 0x0300 (size: 0x8)

    void ReleaseBase();
}; // Size: 0x308

class AProceduralPlant : public AActor
{
    TArray<class UStaticMeshComponent*> m_acStaticMeshComponentList;                  // 0x0220 (size: 0x10)
    TArray<FPlantResourceData> m_ResourceData;                                        // 0x0230 (size: 0x10)

    void ReleaseBase();
}; // Size: 0x240

class AProceduralRandomPlant : public AActor
{
    TArray<class UStaticMeshComponent*> m_acStaticMeshComponentList;                  // 0x0220 (size: 0x10)
    bool m_bCanUpdate;                                                                // 0x0230 (size: 0x1)
    bool m_bCanBackPlant;                                                             // 0x0231 (size: 0x1)
    bool m_bCanResetRandomSeed;                                                       // 0x0232 (size: 0x1)
    bool m_bCanIsNextPlant;                                                           // 0x0233 (size: 0x1)
    int32 m_nRandomSeedCount;                                                         // 0x0234 (size: 0x4)
    FRandomStream m_cRandomStream;                                                    // 0x0238 (size: 0x8)
    TArray<FPlantResourceData> m_ResourceData;                                        // 0x0240 (size: 0x10)

}; // Size: 0x250

class AProceduralStairs : public AActor
{
    TArray<class UStaticMeshComponent*> m_StaticMeshList;                             // 0x0220 (size: 0x10)

    void ReleaseBase();
}; // Size: 0x230

class AReferenceSequencer : public AActor
{
    class ALevelSequenceActor* m_pDeepThinkActor;                                     // 0x0220 (size: 0x8)
    class ALevelSequenceActor* m_pDeepDirectingActor;                                 // 0x0228 (size: 0x8)
    class ULevelSequence* m_pDeepDirecting;                                           // 0x0250 (size: 0x8)

    void StopReferenceSequencer(ENOTICE_TYPE eNoticeType, const FNoticeArgs& Args);
    void StartDeepThink(FName TagName, FVector AddOffset);
    void StartDeepDirecting();
    void SetToolsTimeZone(ETimeZoneType eTime);
    void SetDeepThinkParameter(FName TagName, FVector Offset);
    void SetDeepDirectingAttachPlayer(class AActor* DeepDirectingActor, bool Enable);
    void SetDeepDirectingAttachCamera(class AActor* DeepDirectingActor, bool Enable);
    ETimeZoneType GetToolsTimeZone();
    FName GetDeepThinkTagName();
    FVector GetDeepThinkOffset();
    class ULevelSequence* GetDeepThink();
    class ULevelSequence* GetDeepDirecting();
    void EndDeepThink();
    void EndDeepDirecting();
    void CreateSequenceActor();
    void AllStopSequencer();
}; // Size: 0x260

class AResidentGameBase : public AActor
{

    class AActor* SpawnDebugAcor(FString KSDebugPath);
}; // Size: 0x220

class ASaveDataTransfer_Ps4ToPs5 : public AActor
{
}; // Size: 0x220

class ASequencerCineCamera : public ACineCameraActor
{
    ESEQ_CAMERA_MODE m_ESeqMode;                                                      // 0x0830 (size: 0x1)
    float m_fLimitTime;                                                               // 0x0834 (size: 0x4)
    float m_fNowTime;                                                                 // 0x0838 (size: 0x4)

    void UpdateSepiaStart(class UCameraComponent* TargetCamera, float DeltaTime);
    void UpdateSepiaEnd(class UCameraComponent* TargetCamera, float DeltaTime);
    void UpdateMonochromeStart(class UCameraComponent* TargetCamera, float DeltaTime);
    void UpdateMonochromeEnd(class UCameraComponent* TargetCamera, float Scale);
    void SetupCamera(class AActor* pTarget);
    void ChangeSepiaMode(float ChangeTime, bool Enable);
    void ChangeMonochromeMode(float ChangeTime, bool Enable);
}; // Size: 0x840

class ASkillManager : public AActor
{
}; // Size: 0x220

class ASoundManager : public AAcqManagerBase
{
    bool m_bPauseBattleGaya;                                                          // 0x0238 (size: 0x1)
    bool m_bPauseEventGaya;                                                           // 0x0239 (size: 0x1)
    bool ShowMenuSeRequest;                                                           // 0x023A (size: 0x1)
    bool ShowSeRequest;                                                               // 0x023B (size: 0x1)
    bool ShowEnvSoundInfo;                                                            // 0x023C (size: 0x1)
    bool ShowBgmInfo;                                                                 // 0x023D (size: 0x1)
    bool ShowCategoryVolume;                                                          // 0x023E (size: 0x1)
    bool ShowLoadedCueSheet;                                                          // 0x023F (size: 0x1)
    bool Show3DSeRequest;                                                             // 0x0240 (size: 0x1)
    bool ShowListenerPoint;                                                           // 0x0241 (size: 0x1)
    bool ShowListeningPoint;                                                          // 0x0242 (size: 0x1)
    bool ShowAISACParam;                                                              // 0x0243 (size: 0x1)
    TArray<class UAtomComponent*> m_AtomComponents;                                   // 0x0288 (size: 0x10)
    TArray<TWeakObjectPtr<UAtomComponent>> m_3DSEComponents;                          // 0x0298 (size: 0x10)
    TMap<class FName, class USoundAtomCueSheet*> m_LoadedCueSheet;                    // 0x02A8 (size: 0x50)
    TArray<FName> m_CueSheetsForEvent;                                                // 0x02F8 (size: 0x10)
    TMap<class FName, class USoundAtomCue*> m_LoadedCue;                              // 0x0308 (size: 0x50)
    class UMJSoundListenerComponent* m_pcListenerComp;                                // 0x0358 (size: 0x8)
    TArray<class UAtomComponent*> m_CommonSeAtom;                                     // 0x0368 (size: 0x10)
    TArray<class UAtomComponent*> m_EventSeAtom;                                      // 0x0380 (size: 0x10)
    TMap<class FName, class UAtomComponent*> m_UsedEventSeAtom;                       // 0x0390 (size: 0x50)
    bool waitFadeIn;                                                                  // 0x0420 (size: 0x1)
    TArray<class AEnvSound*> m_pEnvSoundTriggers;                                     // 0x0428 (size: 0x10)
    TArray<class AActor*> m_pEnvSoundInterfaceObjects;                                // 0x0438 (size: 0x10)
    bool m_bEndCollect;                                                               // 0x0448 (size: 0x1)
    FName m_PlayVoiceCueName;                                                         // 0x044C (size: 0x8)
    FSoundData m_CurentBGM;                                                           // 0x0458 (size: 0x48)
    FSoundData m_NextChangeBGM;                                                       // 0x04A0 (size: 0x48)
    FSoundData m_PauseBGM;                                                            // 0x04E8 (size: 0x48)
    FSoundData CurrentPlayingMusicRecord;                                             // 0x0540 (size: 0x48)
    FSoundData LastPlayedNormalBGM;                                                   // 0x0588 (size: 0x48)
    FSoundManagerOnPlayMusicRecorad OnPlayMusicRecorad;                               // 0x05D0 (size: 0x10)
    void PlayMusicRecord();
    FSoundManagerOnStopMusicRecorad OnStopMusicRecorad;                               // 0x05E0 (size: 0x10)
    void StopMusicRecord();

    void UpdateBgmChangeTimeZone(const FLevelInfoData& rLevelInfo);
    void UnregisterLoadedSoundCue(FName cueLabel);
    bool UnloadEventCueSheet();
    bool UnloadCueSheetByName(FName CueSheetName);
    bool StopVoice(float FadeOutTime);
    void StopAllSe();
    void SetWaitFadeIn(bool waitFadeIn);
    void SetVolume(EKSVolumeType volType, float Volume);
    void SetupSelector();
    void SetupEnvSoundOnCollect(ETimeZoneType eTimeZone);
    bool SetupBattleChangeEnvSound(bool bIsBattle);
    bool SetFadeCategoryVolumeForEvent(EACF_CATEGORY Category, float Volume, float Time);
    bool SetFadeCategoryVolume(EACF_CATEGORY Category, float Volume, float Time);
    void SetDspBusToSeAndVoice(EKSDspBusType dspBusType);
    void SetDspBusToComponent(EKSDspBusType dspBusType, class UAtomComponent* Component);
    void SetDeviceVolume(EKSDeviceVolumeType devVolType, float deviceVolume);
    void SetCurrentBGMSelector(bool bIsDayTime);
    bool SetCategoryVolumeByName(FString CategoryName, float Volume);
    bool SetCategoryVolume(EACF_CATEGORY Category, float Volume);
    bool SetBgmSelector(FName SelectorName, FName SelectorLabel);
    bool SetBgmNextBlockIndex(int32 BlockIndex);
    void SetAISACVolume(FString strAisacName, float fValue);
    void ResumeEnvGaya(bool bBattle, bool bEvent);
    bool RestoreBgmBeforePlayMusicRecord(float FadeOutTime, float FadeInTime, int32 Priority, bool bIsDebugPlay);
    void ResetEnvCollect(ENOTICE_TYPE noticeType, const FNoticeArgs& Args);
    bool RequestStopMusicRecord(float FadeOutTime);
    bool RequestStopLoopSe(int32 handleId);
    bool RequestStopFadeBgm(float FadeOutTime, bool stopBoth);
    bool RequestStopBGM();
    void RequestStopAllEventSe();
    bool RequestPlayVoiceByLabel(FName VoiceLabel);
    bool RequestPlayTitleBgmByLabel(FName BgmLabel, float FadeOutTime, float FadeInTime, int32 Priority, bool IsDayTime, bool bIsDebugPlay);
    bool RequestPlaySeByLabel(FName SELabel);
    bool RequestPlayMusicRecord(FName BgmLabel, float FadeOutTime, float FadeInTime, int32 Priority, bool bIsDebugPlay);
    bool RequestPlayLoopSe(int32 handleId, FName SELabel);
    bool RequestPlayInterruptBgmByLabel(FName BgmLabel, float FadeOutTime, float FadeInTime, int32 Priority);
    bool RequestPlayFadeMapChangeBgmByLabel(FName BgmLabel, float FadeOutTime, float FadeInTime, int32 Priority, bool bIsDebugPlay);
    bool RequestPlayFadeBgmByLabel(FName BgmLabel, float FadeOutTime, float FadeInTime, int32 Priority, bool bIsDebugPlay);
    void RequestPlayEventSeByRowName(FString SeName);
    void RequestPlayEventSeByLabel(FName SELabel, bool& success);
    void RequestPlayBgmByLabel(FName BgmLabel, int32 Priority, bool& success, FSoundData& BeforSoundData);
    void RequestPlayBgmById(int32 BGMID, int32 Priority, bool& success, FSoundData& BeforSoundData);
    void RequestPlayBattleVoiceByLabel(FName VoiceLabel, bool& success, FString& CueName, float& Duration);
    void RequestPlayBattleSeByLabel(FName SELabel, bool& success);
    bool RequestPlay3DSeWithComponent(class UAtomComponent* Component, FName BgmLabel);
    void RequestFadeOutAllEventSe(float FadeOutTime);
    void RequestChangeEnvSound(ETimeZoneType eTimeZone);
    void RegisterLoadedSoundCue(FName CueSheetName, FName cueLabel, class USoundAtomCue* SoundCue);
    bool RefreshCharacterVoiceResource(const TArray<FName>& TempCharaVoices);
    void PauseEnvGaya(bool bBattle, bool bEvent);
    bool OnLevelShown();
    void OnLevelHidden();
    bool LoadEventCueSheetByEventName(FString& CueSheetName);
    bool LoadCueSheetByName(FName CueSheetName);
    bool IsRequestChangeEnvSound();
    bool IsEventSeFadeOut();
    bool IsEndCollect();
    bool IsAtomPlaying(EKSAudioComponentType CompType);
    bool IsAtomPaused(EKSAudioComponentType CompType);
    float GetVolume(EKSVolumeType volType);
    FName GetPlayingBgmLabelOnMusicPlayer();
    void GetLoopSeHandle(int32& handleId, bool& success);
    class USoundAtomCue* GetLoadedCue(FName CueName);
    FName GetLastPlayedNormalBGMLabel();
    class UAtomComponent* GetEventAtomComponent(FName CueSheetName);
    float GetDeviceVolume(EKSDeviceVolumeType devVolType);
    FName GetCurrentBgmLabel();
    void GetCurrentBgmData(FSoundData& PlayingBgmData);
    bool GetCueSheetAssetPath(FName CueSheetName, FName& outAssetPath);
    float GetCategoryVolumeForEvent(EACF_CATEGORY Category);
    float GetCategoryVolume(EACF_CATEGORY Category);
    void GetBgmSelectorInfo();
    FString GetAtomCueName(EKSAudioComponentType eType);
    class UAtomComponent* GetAtomComponent(EKSAudioComponentType CompType);
    void FinishChangeEnvSound();
    void Debug_UnregisterAllSoundCue();
    void Debug_ShowEnvSoundInfo(bool Show);
    void Debug_SetShowDeviceVolume(bool Show);
    void Debug_GetLoadedCueSheetNames(FString& outCueSheetNames);
    void Debug_GetCategoryInfo(FString& outDebugInfo);
    void Debug_GetAtomInfo(FString& outDebugInfo);
    void Debug_Get3DSoundInfo(FString& out3DSoundInfo);
    bool Debug_ChangeSEOnDecided(const FDebugListMenuItem& menuItem);
    void Debug_ChangeSEListClose();
    class UAtomComponent* CreateAndAttach3DSEComponent(class AActor* TargetActor);
    bool ChangeNextBgmFadeInTime(float FadeIn);
    void ChangeListenerPoint(ELISTENER_TYPE eType, class USceneComponent* pParentComponent);
    void ChangeFocusPointDistanceLevel(float fDistanceLevel);
    bool ChangeCurrentBgmFadeOutTime(float FadeOut);
    float CalcSeEnvVolume();
    void BattleChange_SetupEnvSE(ENOTICE_TYPE noticeType, const FNoticeArgs& Args);
    bool ApplyEnvVolume();
}; // Size: 0x5F0

class AStoryManager : public AAcqManagerBase
{
    FName m_StartSubStoryLabel;                                                       // 0x0248 (size: 0x8)

    bool StartMainStory(FName MainStoryLabel);
    void ShowSubStoryStartUI();
    void ShowSubStoryResult();
    void OnFinishSubStoryStartEvent();
    void OnFinishSubStoryCompleteEvent();
    void OnFinishMainStoryEvent(ENOTICE_TYPE noticeType, const FNoticeArgs& Args);
    void Debug_StartAutoPlay(FString scenarioFileName);
    void Debug_ShowDebugInfo(bool bEnable);
    void Debug_PlayMainStoryTaskEvent(int32 mainStoryTaskId, bool bFromStartingTask);
    bool CompleteFakeSubStory(FName subStoryLabel);
    void CallbackOnDialogCloseFinish(int32 SelectIndex);
    void CallbackEventEnd(ENOTICE_TYPE noticeType, const FNoticeArgs& Args);
}; // Size: 0x2B0

class ASwitchIndoorTrigger : public AMJBoxTrigger
{
    bool m_bEnableGateKeeper;                                                         // 0x0240 (size: 0x1)
    bool SwitchVisibilityOnPostTick;                                                  // 0x0241 (size: 0x1)
    bool Fix_Redmine9113;                                                             // 0x0242 (size: 0x1)
    bool Fix_Redmine13664;                                                            // 0x0243 (size: 0x1)
    TArray<TSoftObjectPtr<AActor>> m_apcActorIndoor;                                  // 0x0248 (size: 0x10)
    TArray<TSoftObjectPtr<AActor>> m_apcTranslucentActorListOnEnter;                  // 0x0258 (size: 0x10)
    TArray<TSoftObjectPtr<AActor>> m_apcActorOutdoor;                                 // 0x0268 (size: 0x10)
    TArray<TSoftObjectPtr<AActor>> m_apcTranslucentActorListOnExit;                   // 0x0278 (size: 0x10)
    TArray<TSoftObjectPtr<ASwitchIndoorTrigger>> m_HouseInLink;                       // 0x0288 (size: 0x10)
    TArray<TSoftObjectPtr<ASwitchIndoorTrigger>> m_HouseOutCancel;                    // 0x0298 (size: 0x10)
    float m_fAnimTime;                                                                // 0x02B4 (size: 0x4)
    int32 m_nIndoorFloor;                                                             // 0x02B8 (size: 0x4)
    int32 m_nOutdoorFloor;                                                            // 0x02BC (size: 0x4)
    bool m_bNotChangeVisible;                                                         // 0x02C0 (size: 0x1)
    bool m_bForceOutdoor;                                                             // 0x02C1 (size: 0x1)
    bool m_bNotChangeRenderSetting;                                                   // 0x02C2 (size: 0x1)
    bool m_bForceIndoorAtStart;                                                       // 0x02C3 (size: 0x1)
    bool m_bSkipInitializeProcess;                                                    // 0x02C4 (size: 0x1)
    bool m_bIsBar;                                                                    // 0x02C5 (size: 0x1)
    int32 m_nID;                                                                      // 0x02C8 (size: 0x4)
    bool m_bUseDoor;                                                                  // 0x02CC (size: 0x1)
    float m_fDoorAnimTime;                                                            // 0x02D0 (size: 0x4)
    TArray<TSoftObjectPtr<AActor>> m_apcLightActorIndoor;                             // 0x02D8 (size: 0x10)
    TArray<TSoftObjectPtr<AActor>> m_apcLightActorOutdoor;                            // 0x02E8 (size: 0x10)
    float m_fCharacterScaleIndoor;                                                    // 0x02F8 (size: 0x4)
    float m_fCharacterScaleOutdoor;                                                   // 0x02FC (size: 0x4)
    float m_fCharacterHeightIndoor;                                                   // 0x0300 (size: 0x4)
    float m_fCharacterHeightOutdoor;                                                  // 0x0304 (size: 0x4)
    FCameraLockParams m_CameraLockParams;                                             // 0x0308 (size: 0x10)
    float m_fCameraDistanceRateIndoor;                                                // 0x0318 (size: 0x4)
    float m_fManualFocusDistanceIndoor;                                               // 0x031C (size: 0x4)
    int32 m_nStartEventFlag;                                                          // 0x0320 (size: 0x4)
    int32 m_nEndEventFlag;                                                            // 0x0324 (size: 0x4)
    FEquipLanternData m_cEquipLanternDataIndoor;                                      // 0x0328 (size: 0x20)
    FEquipLanternData m_cEquipLanternDataOutdoor;                                     // 0x0348 (size: 0x20)
    FEncountFlagStartEndData m_cEncounTriggerDataIndoor;                              // 0x0368 (size: 0x28)
    FEncountFlagStartEndData m_cEncounTriggerDataOutdoor;                             // 0x0390 (size: 0x28)
    TArray<class AActor*> m_apcDebugActorIndoor;                                      // 0x03B8 (size: 0x10)
    TArray<class AActor*> m_apcDebugActorOutdoor;                                     // 0x03C8 (size: 0x10)
    TArray<class AActor*> m_apcDebugChangeLightChannnel;                              // 0x03D8 (size: 0x10)
    bool m_bIsOnlyHouseOutSetting;                                                    // 0x03EC (size: 0x1)
    TArray<FString> m_astrHiddenObjLabelOnEnter;                                      // 0x03F0 (size: 0x10)
    TArray<FString> m_astrHiddenObjLabelOnExit;                                       // 0x0400 (size: 0x10)
    class UMaterialParameterCollection* m_pMPC;                                       // 0x0410 (size: 0x8)
    TArray<class AActor*> m_apcActorIndoorWork;                                       // 0x0418 (size: 0x10)
    TArray<class AActor*> m_apcTranslucentActorListOnEnterWork;                       // 0x0428 (size: 0x10)
    TArray<class AActor*> m_apcActorOutdoorWork;                                      // 0x0438 (size: 0x10)
    TArray<class AActor*> m_apcTranslucentActorListOnExitWork;                        // 0x0448 (size: 0x10)
    TArray<class UMaterialInstanceDynamic*> m_apcMaterialIndoor;                      // 0x0458 (size: 0x10)
    TArray<class UMaterialInstanceDynamic*> m_apcMaterialOutdoor;                     // 0x0468 (size: 0x10)
    bool m_bIsIndoor;                                                                 // 0x0478 (size: 0x1)
    bool m_bIsIndoorPrev;                                                             // 0x0479 (size: 0x1)
    ESWITCH_INDOOR_ANIM_STATE m_eMaterialAnimState;                                   // 0x047A (size: 0x1)
    float m_fMaterialAnimElapsedTime;                                                 // 0x047C (size: 0x4)
    bool m_bInitialized;                                                              // 0x0480 (size: 0x1)
    class UBoxComponent* m_pcBorderBox;                                               // 0x0488 (size: 0x8)
    bool m_bOverlapBegin;                                                             // 0x0490 (size: 0x1)
    bool m_bOverlapEnd;                                                               // 0x0491 (size: 0x1)
    bool m_bCheckPartyChatFlag;                                                       // 0x0492 (size: 0x1)
    class UStaticMeshComponent* m_pcDoorMeshComponent;                                // 0x0498 (size: 0x8)
    class UMaterialInstanceDynamic* m_pcDoorMaterial;                                 // 0x04A8 (size: 0x8)
    TArray<class ULightComponent*> m_apcLightIndoorWork;                              // 0x04B8 (size: 0x10)
    TArray<class ULightComponent*> m_apcLightOutdoorWork;                             // 0x04C8 (size: 0x10)
    TArray<float> m_afLightOriginIntensityIndoor;                                     // 0x04D8 (size: 0x10)
    TArray<float> m_afLightOriginIntensityOutdoor;                                    // 0x04E8 (size: 0x10)
    TArray<class UMaterialInstanceDynamic*> m_apcLightMaterialIndoor;                 // 0x04F8 (size: 0x10)
    TArray<class UMaterialInstanceDynamic*> m_apcLightMaterialOutdoor;                // 0x0508 (size: 0x10)
    ESWITCH_INDOOR_ANIM_STATE m_eLightAnimState;                                      // 0x0518 (size: 0x1)
    float m_fLightAnimElapsedTime;                                                    // 0x051C (size: 0x4)
    class UAISACControlComponent* m_pcSoundAisacIndoor;                               // 0x0520 (size: 0x8)
    class UAISACControlComponent* m_pcSoundAisacOutdoor;                              // 0x0528 (size: 0x8)

    void SetVisibleLightPreview(class AActor* pcActor, bool bVisible);
    void SetVisibleChild(class AActor* pcActor, bool bVisible);
    void SetupFocusLength(bool bIsIndoor);
    bool SetupExit(class AKSCharacterBase* pcPlayer, float fAnimTime, bool bModifyParty, bool bIsForceOutdoor);
    void SetupEnter(float fAnimTime, class AKSCharacterBase* pcPlayer, bool bModifyParty, bool bIsLevelChange);
    void Setup();
    void SetLightChannnelAllHierarchy(class AActor* pcRootActor, bool bIndoor);
    void SetGateKeeperNpc(class AKSCharacterBase* NPC);
    bool OpenDoor(bool PlaySE);
    void OnOverlapEnd(class UPrimitiveComponent* OverlappedComponent, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, int32 OtherBodyIndex);
    void OnOverlapBegin(class UPrimitiveComponent* OverlappedComponent, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult);
    bool IsVisibleChangeEnable();
    bool IsIndoor(class AKSCharacterBase* pcPlayer);
    bool IsHiddenObjLabelCheck(FString placeLabel);
    void InitializeLight();
    int32 GetOutdoorFloor();
    class ASwitchIndoorTrigger* GetLinkHouseTrigger();
    int32 GetIndoorFloor();
    class AKSCharacterBase* GetGateKeeperNpc();
    void ForceOpenDoor();
    void CloseDoor();
    void CheckCollision();
    bool CanOpenDoor();
    void ApplyIndoorToMpcAndPostProcess(bool bIndoor);
}; // Size: 0x530

class ASystemDataCleanupWorker : public AActor
{
    class UKSSaveSystem* m_targetSystemData;                                          // 0x0220 (size: 0x8)

    void StartClearnup(class UKSSaveSystem* SystemData);
    bool GetIsComplete();
}; // Size: 0x230

class ATimeManager : public AAcqManagerBase
{
    int32 m_nGamePlayTime;                                                            // 0x0230 (size: 0x4)
    bool m_bGamePlayCountPause;                                                       // 0x0234 (size: 0x1)
    float m_fMillisecond;                                                             // 0x0238 (size: 0x4)

    void StartGamePlayTime(float fStartTime);
    void PauseGamePlayTime(bool bPause);
    float GetGamePlayTime();
}; // Size: 0x240

class ATimeZoneDirector : public AActor
{
    TArray<class UTimeZoneComponentBase*> m_pcTimeZoneComponentList;                  // 0x0248 (size: 0x10)
    TArray<class UTimeZoneLightComponent*> m_pcLightList;                             // 0x0258 (size: 0x10)
    TArray<class ATimeZoneLightParam*> m_pcLightParamList;                            // 0x0268 (size: 0x10)
    TArray<class UTimeZoneEmitterComponent*> m_pcEmitterList;                         // 0x0278 (size: 0x10)
    TArray<class ATimeZoneEmitterParam*> m_pcEmitterParamList;                        // 0x0288 (size: 0x10)
    TArray<class UTimeZoneSoundComponent*> m_pcSoundList;                             // 0x0298 (size: 0x10)
    TArray<class ATimeZoneSoundParam*> m_pcSoundParamList;                            // 0x02A8 (size: 0x10)

}; // Size: 0x2C0

class ATimeZoneEmitterParam : public ATimeZoneParamBase
{
    bool m_bActive;                                                                   // 0x0228 (size: 0x1)

}; // Size: 0x230

class ATimeZoneLightParam : public ATimeZoneParamBase
{
    float m_fIntensity;                                                               // 0x0228 (size: 0x4)
    FLinearColor m_cColor;                                                            // 0x022C (size: 0x10)

}; // Size: 0x240

class ATimeZoneManager : public AAcqManagerBase
{
    class UTimeOperator* m_pTimeOperator;                                             // 0x0230 (size: 0x8)
    class ALevelSequenceActor* m_pSequencer;                                          // 0x0238 (size: 0x8)
    class ULevelSequence* m_pcOriginalSequence;                                       // 0x0240 (size: 0x8)
    class ULevelSequence* m_pcReplaceSequence;                                        // 0x0248 (size: 0x8)
    class ULevelSequence* m_pcPrevSequence;                                           // 0x0250 (size: 0x8)
    class ULevelSequence* m_TheaterCache_CurrentSequence;                             // 0x0258 (size: 0x8)
    class ULevelSequence* m_TheaterCache_PrevSequence;                                // 0x0260 (size: 0x8)
    bool m_bEnable;                                                                   // 0x0269 (size: 0x1)

    void SetTimeZoneType(ETimeZoneType eNewType);
    void SetTimeZoneDarkAreaForEditor(const class UObject* WorldContextObject);
    void SetTempDarkSurfaceEnable(bool bEnable);
    void SetIndoorPostProcessEnableForEditor(const class UObject* WorldContextObject, bool bIndoor);
    void SetIndoorPostProcessEnable(bool bIndoor);
    void SetFrameTimeZoneSequencer(int32 nFrame);
    void SetForcedChangeTimeDisable(bool bDisable);
    void SetEnable(bool bEnable);
    void SetChangeTimeEnable(const bool bEnable);
    void SetAddChangeValueTime(const float fNewValue);
    void RevertTimezoneSequencerAfterTheater();
    void RevertTimeZoneSequencer();
    void ResetTimeZoneSequencerForEditor(const class UObject* WorldContextObject);
    void Reset();
    void RequestChangeTimezoneSequencer(FName sequencerLabel);
    void Refresh(bool bNextTimeZone);
    void OnStartChangeLevel(ENOTICE_TYPE eNoticeType, const FNoticeArgs& Args);
    void OnStartChangeFieldLevel(FName levelId, ELEVEL_TYPE levelType, ELevelTransitionNotice notice);
    void OnPreFinishChangeLevel(ENOTICE_TYPE eNoticeType, const FNoticeArgs& Args);
    void OnFinishChangeLevel(ENOTICE_TYPE eNoticeType, const FNoticeArgs& Args);
    void OnChangeDarkState(ENOTICE_TYPE eNoticeType, const FNoticeArgs& Args);
    ETimeZoneType IsNextTimeZoneCheck();
    bool IsDayTime();
    ETimeZoneType GetTimeZoneType();
    int32 GetSequencerCurrentFrame();
    class ALevelSequenceActor* GetSequencer();
    ETimeZoneType GetNextTimeZoneType();
    bool GetChangeTimeEnable();
    void ChangeTimeZoneSequencer(class ULevelSequence* pSequencer);
    void ChangeTimeZoneForEditor(const class UObject* WorldContextObject, ETimeZoneType ETimeZoneType);
    void ChangeNextTimeZone();
    void CacheTimezoneSequencerBeforeTheater();
    void ApplyReplaceTimezoneSequencer();
}; // Size: 0x270

class ATimeZoneParamBase : public AActor
{
    int32 m_nIndex;                                                                   // 0x0220 (size: 0x4)
    ETimeZoneObjectType m_eType;                                                      // 0x0224 (size: 0x1)

}; // Size: 0x228

class ATimeZoneSoundParam : public ATimeZoneParamBase
{
    bool m_bEnable;                                                                   // 0x0228 (size: 0x1)

}; // Size: 0x230

class ATitleBackgroundMoviePlayerBase : public AActor
{
    class UManaComponent* m_ManaComponent;                                            // 0x0220 (size: 0x8)

}; // Size: 0x228

class ATriggerManager : public AAcqManagerBase
{
    TArray<class AKSTriggerBase*> m_apTriggerList;                                    // 0x0230 (size: 0x10)
    bool m_bReserveUpdateEnableSwitchIndoorTrigger;                                   // 0x0260 (size: 0x1)

    void SortTriggerList(TArray<class AKSTriggerBase*>& TriggerList);
    bool SetUpEncountTriggerByName(FName TriggerName);
    bool SetUpCameraLockTriggerByName(FName TriggerName);
    void SetReserveUpdateEnableSwitchIndoorTrigger(bool Val);
    void SetHolyTorchItemTrigger(class AHolyTorchItemTriggerBase* holyTorchItemTrigger);
    void SetEnableSwitchIndoorTriggerList(TArray<int32> NewList);
    void SetEnableSwitchIndoorTrigger(bool bEnable);
    void RemoveEnableSwitchIndoorTriggerList(int32 nID);
    void OnFinishChangeLevel(ENOTICE_TYPE eNoticeType, const FNoticeArgs& Args);
    class AHolyTorchItemTriggerBase* GetHolyTorchItemTrigger();
    void Debug_SetShowLadderTrigger(bool bShow);
    void Debug_SetShowCanoeDockTrigger(bool bShow);
    void Debug_OutputTriggerInfo();
    bool Debug_GetShowLadderTrigger();
    bool Debug_GetShowCanoeDockTrigger();
    void ClearHolyTorchItemTrigger();
    void ClearEnableSwitchIndoorTriggerList();
    bool ApplyCameraLockTrigger(class ACameraLockTrigger* Trigger);
    void AddEnableSwitchIndoorTriggerList(int32 nID);
}; // Size: 0x290

class ATutorialAutoCaptureActor : public AActor
{
    ETutorialAutoCaptureActorState m_State;                                           // 0x0220 (size: 0x1)

    void SetState(ETutorialAutoCaptureActorState State);
    ETutorialAutoCaptureActorState GetState();
}; // Size: 0x228

class ATutorialManager : public AAcqManagerBase
{
    FTutorialManagerTutorialFinishEvent TutorialFinishEvent;                          // 0x0230 (size: 0x10)
    void TutorialFinishEvent(ETUTORIAL_TYPE TutorialType);
    ETUTORIAL_TYPE TutorialType;                                                      // 0x0240 (size: 0x1)
    TArray<int32> RequestCharaID;                                                     // 0x0248 (size: 0x10)
    TArray<ETUTORIAL_TYPE> RequestTutorialType;                                       // 0x0258 (size: 0x10)
    FDataTableTutorialList TutorialListData;                                          // 0x0268 (size: 0x28)
    FTutorialFlagPart TutorialFlagPartData;                                           // 0x0290 (size: 0x28)
    class UUITutorialBase* UITutorial;                                                // 0x02B8 (size: 0x8)
    bool IsEndCard;                                                                   // 0x02C0 (size: 0x1)
    bool IsEpilouge;                                                                  // 0x02C1 (size: 0x1)

    void UpdateMain();
    void UpdateFinish();
    void SetTutorialData(ETUTORIAL_TYPE Type, bool& FindData);
    void OpenTutorialListData(FDataTableTutorialList ListData, bool AutoPushPop, bool ForcedDisplay, bool& IsOpen, class UUITutorialBase*& Tutorial);
    void OpenTutorialFromLabel(FName Label, bool ForcedDisplay, bool& IsOpen, int32 CharaID);
    void OpenTutorial(ETUTORIAL_TYPE Type, bool ForcedDisplay, bool& IsOpen, int32 CharaID);
    void OpenEndCardEpilogue(ETUTORIAL_TYPE Type, bool ForcedDisplay, bool& IsOpen);
    void OpenEndCard(ETUTORIAL_TYPE Type, bool ForcedDisplay, bool& IsOpen, int32 CharaID);
    void OnTutorialFinish();
    bool OnStateFinish();
    bool IsRunningTutorial();
    bool IsExsistRequest();
    void GetTutorialPageDataFromFlagPartLabels(TArray<FName> FlagPartLabels, TArray<FDataTableTutorialPageData>& PageData);
    void GetTutorialPageData(TArray<FDataTableTutorialPageData>& PageData, bool CheckNextPage);
    int32 GetRequestCharaID();
    void GetPageLabelIndex(int32 CharacterID, int32& PageLabelIndex);
    void ForceTutorialClose(bool RequestClear);
    void ExecuteTutorialFinishEvent();
    bool CheckOpendTutorialList(TArray<FName>& OpenedFlagPartLabels);
    void ChangeStateMain();
}; // Size: 0x2D8

class AUIResourceManager : public AAcqManagerBase
{
    TMap<class FName, class UObject*> LoadedAssets;                                   // 0x0240 (size: 0x50)
    TArray<class ULoadAssetHandle*> LoadHandles;                                      // 0x0290 (size: 0x10)

    void UnloadAssetsByCategory(EUIResCategory Category);
    void UnloadAssetList(TArray<FName> LabelList);
    void UnloadAsset(FName resLabel);
    void SetDataTable(class UDataTable* DataTable);
    void ReloadResources();
    void OnCompletedLoadFirst();
    void OnCompletedLoadCommon();
    void NotifyUIResourceDB(FName dbName, EDBNoticeType notice);
    void LoadFirstAssetsAsync();
    void LoadCommonAssetsAsync();
    void LoadAssetSyncByLabel(TArray<FName>& assetLabels, FLoadAssetSyncByLabelCb cb);
    void LoadAssetsAsyncByLabel(TArray<FName>& assetLabels, FLoadAssetsAsyncByLabelCb cb);
    void LoadAssetsAsyncByCategory(EUIResCategory Category, FLoadAssetsAsyncByCategoryCb cb);
    bool IsLoading();
    bool IsLoadedFirst();
    bool IsLoadedCommon();
    class UTexture2D* GetTexture2D(FName resLabel);
    class UStaticMesh* GetStaticMesh(FName resLabel);
    int32 GetResourceCount();
    int32 GetLoadHandleCount();
}; // Size: 0x2B0

class AVibrationManager : public AAcqManagerBase
{
    FPlayRequest LastPlayRequest;                                                     // 0x0258 (size: 0x18)
    class UAudioComponent* m_Ps5VibratonComp;                                         // 0x0270 (size: 0x8)
    class USoundSubmixBase* m_SoundSubmixForPS5Vibration;                             // 0x0278 (size: 0x8)

    bool PlayVibrationByLabel(FName vibLabel, float Power, bool Loop, int32 LoopInterval);
    bool PlayVibration2ByLabel(FName vibLabel, EVibrationPower Power, bool Loop, int32 LoopInterval);
    bool PlayVibration(FName VibrationLabel, int32 PlayIndex, float Power, bool Loop, int32 LoopInterval);
    bool ForcePlayVibrationByLabel(FName vibLabel, float Power, bool Loop, int32 LoopInterval);
}; // Size: 0x280

class AWeaponMasterEventFlow : public AActor
{

    void Start();
    bool IsRunning();
    void ExecFlow();
}; // Size: 0x220

class AWorldMapActorBase : public AActor
{
    FWorldMapActorBaseOnFinishedSetup OnFinishedSetup;                                // 0x0220 (size: 0x10)
    void WorldMapActorNotice();
    TArray<class UWorldMapPivotComponentBase*> m_PivotComponents;                     // 0x0230 (size: 0x10)
    TMap<class FName, class UWorldMapPivotComponentBase*> m_WorldMapLabelToPivotComponents; // 0x0240 (size: 0x50)
    FVector2D m_GlobeRotationLimit_Current;                                           // 0x0290 (size: 0x8)
    TMap<class EWorldMapZoomType, class FVector2D> m_GlobeRotationLimit_Define;       // 0x0298 (size: 0x50)
    float m_CurrentNormalizedTime;                                                    // 0x02E8 (size: 0x4)
    FName m_SelectingPivotLabel;                                                      // 0x02EC (size: 0x8)
    EWorldMapGlobeState m_WorldMapGlobeState;                                         // 0x02F4 (size: 0x1)
    float m_BlurStrength;                                                             // 0x02F8 (size: 0x4)
    float m_WidgetOpacity;                                                            // 0x02FC (size: 0x4)
    float m_WidgetScale;                                                              // 0x0300 (size: 0x4)
    float m_FrameWidgetScale;                                                         // 0x0304 (size: 0x4)
    class UParticleSystem* m_DarkEffectParticleTemplate;                              // 0x0308 (size: 0x8)
    class UParticleSystem* m_SacredFireParticleTemplate;                              // 0x0310 (size: 0x8)
    class UParticleSystem* m_SacredFireLineParticleTemplate;                          // 0x0318 (size: 0x8)
    TMap<class FName, class UDarkAreaParticleComponent*> m_DarkAreaPartcleComponents; // 0x0320 (size: 0x50)
    float m_AutoRotateCurrentTime;                                                    // 0x0370 (size: 0x4)
    float m_AutoRotateDurationTime;                                                   // 0x0374 (size: 0x4)
    class UCurveFloat* m_AutoRotateAnimCurve;                                         // 0x0378 (size: 0x8)
    FVector m_AutoRotateTarget;                                                       // 0x0380 (size: 0xC)

    void WorldMapActorNotice__DelegateSignature();
    bool UpdateZoom(float DeltaTime, bool IsMovedCursor, FVector2D& rotationDelta);
    bool StartCameraZoomIfPossible(EWorldMapZoomType NewZoomType, FVector2D GazePoint);
    void SetWorldMapGlobeState(EWorldMapGlobeState NewState);
    void SetupDarkAreaEffect();
    void SetSelectingPivotLable(const FName& WorldMapLabel);
    void SetGlobeRotation(const FRotator& NewRotation, FRotator& outClanpedNewRotation);
    void SetGlobeLocation(const FVector& NewLocation, FVector& outClanpedNewLocation);
    void SetCurrentNormalizedTime(float NewCurrentNormalizedTime);
    void RotateToCenterByLebelWithAnim(FName WorldMapLabel, class UCurveFloat* AnimCurve, float Speed);
    void RotateToCenterByLebel(FName WorldMapLabel);
    void RotateGlobe(FVector2D RotateDelta, FVector2D& outClampedRotateDelta);
    void RequestStartCameraZoom(EWorldMapZoomType NewZoomType, FVector2D GazePoint);
    void RefreshWorldMapMaskInPlayerSelect();
    void RefreshWorldMapMask();
    void PlayOpenSequencer();
    void PlayOpenPlayerSelectSequencer();
    void PlayCloseSequencer();
    void PlayClosePlayerSelectSequencer();
    void OverrideGazePoint(FVector2D GazePoint);
    void OpenWorldMapActor(EWorldMapZoomType initZoomType);
    void IsReachedGlobeInRotationLimit(bool& isReachedX, bool& isReachedY);
    bool IsPlayingZoomSequencer();
    bool IsPlayingTimeZoneSequencer();
    bool IsPlayingOpenSequencer();
    bool IsPlayingOpenPlayerSelectSequencer();
    bool IsPlayingCloseSequencer();
    bool IsPlayingClosePlayerSelectSequencer();
    bool IsPlayingAnySequencer();
    void HideAllDarkAreaEffect();
    float GetZoomAlpha();
    EWorldMapGlobeState GetWorldMapGlobeState();
    float GetWidgetScale();
    float GetWidgetOpacity();
    TArray<class UWorldMapPivotComponentBase*> GetSortedPivotComponentsByYaw();
    EWorldMapZoomType GetPrevZoomState();
    TArray<class UWorldMapPivotComponentBase*> GetPivotComponents();
    class UDarkAreaParticleComponent* GetOrCreateDarkAreaEffectComponent(const FName& RowName, const FWorldMapDarkAreaEffectParam& EffectParam);
    EWorldMapZoomType GetNextZoomState();
    bool GetIsZooming();
    FVector GetGlobeWorldPosition();
    FRotator GetGlobeRotation();
    FVector GetGlobeLocation();
    class USceneComponent* GetGlobeComponent();
    class AWorldMapGlobeActorBase* GetGlobeActor();
    float GetFrameWidgetScale();
    EWorldMapZoomType GetCurrentZoomState();
    float GetClosePlayerSelectSequencerDuration();
    float GetBlurStrength();
    class UWorldMapPivotComponentBase* FindPivotComponent(const FName& WorldMapLabel);
    void CloseWorldMapActor();
}; // Size: 0x390

class AWorldMapFastTraveler : public AActor
{
    FWorldMapTable m_TargetWorldMapData;                                              // 0x0220 (size: 0x90)
    FWorldMapFastTraveler_OnCloseConfirmDialog m_OnCloseConfirmDialog;                // 0x02B0 (size: 0x10)
    void CloseFinishCallback(int32 SelectIndex);
    FWorldMapFastTraveler_OnCloseFailedDialog m_OnCloseFailedDialog;                  // 0x02C0 (size: 0x10)
    void CloseFinishCallback(int32 SelectIndex);

    bool IsPossibleFastTravel(const FWorldMapTable& WorldMapData);
    void ExecOnCloseFailedDialogCallback(int32 ButtonIndex);
    void ExecOnCloseConfirmDialogCallback(int32 ButtonIndex);
    EJudgeFastTravelAvailableResponse ExecFastTravelIfPossible(const FWorldMapTable& DestinationData, const FExecFastTravelIfPossibleOnCloseConfirmDialog& OnCloseConfirmDialog, const FExecFastTravelIfPossibleOnCloseFailedDialog& OnCloseFailedDialog);
    bool DEBUG_GetIsForceFastTravel();
    bool CanFastTravelSomeWhere(const TMap<class FName, class UWorldMapIconBase*>& Icons);
}; // Size: 0x2D0

class AWorldMapGlobeActorBase : public AActor
{
    class UMaterialInstanceDynamic* m_WorldMapDynamicMaterial;                        // 0x0220 (size: 0x8)
    TMap<class FName, class FName> m_MaterialResourceLabel;                           // 0x0228 (size: 0x50)
    TMap<class EWorldMapMaskArea, class FName> m_MaskAreaParamName;                   // 0x0278 (size: 0x50)
    TMap<class EWorldMapPrologueMaskArea, class FName> m_PrologueMaskAreaParamName;   // 0x02C8 (size: 0x50)
    TMap<class EWorldMapIslandLayerArea, class FName> m_IslandLayerAreaParamName;     // 0x0318 (size: 0x50)
    TArray<EWorldMapMaskArea> m_DisableMaskInPlayerSelect;                            // 0x0368 (size: 0x10)
    TArray<EWorldMapPrologueMaskArea> m_DisablePrologueMaskInPlayerSelect;            // 0x0378 (size: 0x10)

    void SetIsMaskedPrologueArea(EWorldMapPrologueMaskArea MaskArea, bool isMasked);
    void SetIsMaskedArea(EWorldMapMaskArea MaskArea, bool isMasked);
    void SetIsEnableMasksForPlayerSelect(bool IsEnable);
    void SetIsEnableMask(bool IsEnable);
    void SetIsDisplayedIslandLayer(EWorldMapIslandLayerArea MaskArea, bool isDisplayed);
    class UMaterialInstanceDynamic* GetWorldMapDynamicMaterial();
}; // Size: 0x388

class IAcqUserObjectListEntry : public IUserObjectListEntry
{

    void OnScrolled();
}; // Size: 0x28

class IListItemExWidgetInterface : public IInterface
{

    void OnInputRight();
    void OnInputLeft();
    void InitExWidget();
}; // Size: 0x28

class IObjectControlInterface : public IInterface
{

    void OnShown();
    void OnHidden();
}; // Size: 0x28

class UAISACControlComponent : public UActorComponent
{
    TArray<FAISACCtrlParam> m_acAISACData;                                            // 0x00B0 (size: 0x10)

    void SetupAISAC();
}; // Size: 0xC0

class UAbilityDataTableUtility : public UDataTableUtilityBase
{

    bool IsDivineAbilitySet(FName TargetLabel, bool LogEnable);
    bool GetAbilitySetRowData(FAbilitySetDataBase& OutData, FName TargetLabel, bool LogEnable);
    bool GetAbilityRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetAbilityRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FAbilityDataBase& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class UAbilityForgetWidgetBase : public UKSUserWidgetBase
{
    FAbilityForgetWidgetBaseOnSelectForgetAbility onSelectForgetAbility;              // 0x0358 (size: 0x10)
    void SelectForgetAbilityEvent(int32 SelectCursorPosition, bool IsDecide);

    bool SetAbilityList(const TArray<int32>& AbilityList);
    bool OpenList();
    bool OpenConfirmList();
    bool CloseList();
    void CallOnSelectForgetAbility(int32 SelectCursorPosition, bool IsDecide);
}; // Size: 0x368

class UAchievementDataTableUtility : public UDataTableUtilityBase
{

    void NotifyAchievementDb(FName dbName, EDBNoticeType notice);
    TArray<FName> GetAchievementAllLabels();
}; // Size: 0x28

class UAchievementDebugUtility : public UBlueprintFunctionLibrary
{
}; // Size: 0x28

class UAchievementSaveDataUtil : public USaveDataUtilBase
{

    int32 GetSwoonNpcUniqueCount();
    int32 GetMaxAttackDamage();
    int32 GetLinerShipCount();
    int32 GetFieldCommandSuccessCount(MJFieldCommandType FCType);
    int32 GetDivineAbilityCount();
    int32 GetBreakAttackCount();
    int32 GetBoostAttackCount(EBOOST_LEVEL BoostLevel);
    int32 GetAdvancedAbilityCount();
    int32 GetAbilityCount();
    void Debug_SetSwoonNpcUniqueCount(int32 newCount);
    void Debug_SetMaxAttackDamage(int32 newCount);
    void Debug_SetLinerShipCount(int32 newCount);
    void Debug_SetFieldCommandSuccessCount(MJFieldCommandType FCType, int32 Count);
    void Debug_SetDivineAbilityCount(int32 newCount);
    void Debug_SetBreakAttackCount(int32 newCount);
    void Debug_SetBoostAttackCount(EBOOST_LEVEL BoostLevel, int32 newCount);
    void Debug_SetAdvancedAbilityCount(int32 newCount);
    void Debug_SetAbilityCount(int32 newCount);
}; // Size: 0x28

class UAchievementTypeDataTableUtility : public UDataTableUtilityBase
{

    void NotifyAchievementTypeDb(FName dbName, EDBNoticeType notice);
}; // Size: 0x28

class UAchievementUtility : public UBlueprintFunctionLibrary
{
}; // Size: 0x28

class UAcqGameplayStatics : public UBlueprintFunctionLibrary
{
}; // Size: 0x28

class UAcqImage : public UImage
{
    EAcqImageResourceType ResourceType;                                               // 0x0210 (size: 0x1)
    bool SetResourceFromOnRebuilt;                                                    // 0x0211 (size: 0x1)
    TSoftObjectPtr<UTexture2D> Acq_TextureForPreview;                                 // 0x0218 (size: 0x28)
    FName Acq_TextureLabelForRuntime_AutoFill;                                        // 0x0240 (size: 0x8)
    FName Acq_TextureLabelForRuntime;                                                 // 0x0248 (size: 0x8)
    TMap<class FName, class FMateriaTextureLabel> Acq_MaterialTextureParams;          // 0x0250 (size: 0x50)

    void ResetBrushResource();
}; // Size: 0x2A0

class UAcqListView : public UListView
{

    void SetNumDesignerPreviewEntries(int32 Num);
    void SetEntryWidgetClass(TSubclassOf<class UAcqUserWidget> newEntryWidgetClass);
    class UUserWidget* GetSelectItemWidget(class UObject* Item);
}; // Size: 0x858

class UAcqListViewEntryItemBase : public UObject
{
    FAcqListViewEntryItemBaseOnChangedEntryItem OnChangedEntryItem;                   // 0x0028 (size: 0x10)
    void AcqListViewEntryItemEvent();

}; // Size: 0x38

class UAcqListViewWidget : public UAcqUserWidget
{
    FAcqListViewWidgetDecideEventDelegate DecideEventDelegate;                        // 0x02C0 (size: 0x10)
    void DecideEvent(FAcqListViewWidgetEventPayload payload);
    FAcqListViewWidgetCancelEventDelegate CancelEventDelegate;                        // 0x02D0 (size: 0x10)
    void CancelEvent();
    class UAcqListView* m_ListView;                                                   // 0x02E0 (size: 0x8)
    int32 m_CurrentCursorIndex;                                                       // 0x02E8 (size: 0x4)
    FIntPoint m_CurrentDisplayItemRange;                                              // 0x02EC (size: 0x8)
    TSubclassOf<class UAcqUserWidget> m_EntryWidgetClass;                             // 0x02F8 (size: 0x8)
    int32 m_ItemDisplayNum;                                                           // 0x0300 (size: 0x4)

    void Setup(const TArray<class UAcqListViewEntryItemBase*>& entryItems);
    void SetSelectedIndex(int32 Index);
    void SetScrollOffset(float scrollOffset);
    void SetEntryItems(const TArray<class UAcqListViewEntryItemBase*>& entryItems);
    int32 GetSelectedIndex();
    float GetScrollOffset();
    class UAcqListView* GetListView();
    TArray<class UAcqListViewEntryItemBase*> GetEntryItems();
    int32 GetEntryItemNum();
    void DecideEvent__DelegateSignature(FAcqListViewWidgetEventPayload payload);
    void ClearEntryItems();
    void CancelEvent__DelegateSignature();
    float AddScrollOffset(float Delta);
}; // Size: 0x308

class UAcqUserWidget : public UUserWidget
{
    class UWidgetAnimation* ResetToDefaultAnim;                                       // 0x0260 (size: 0x8)
    TMap<class EWidgetAnimationGroup, class FWidgetAnimationGroupData> WidgetAnimationGroup; // 0x0268 (size: 0x50)
    bool StopTickWhenWidgetPaused;                                                    // 0x02B8 (size: 0x1)

    void StopAnimsImmediately(const TArray<class UWidgetAnimation*>& anims);
    void StopAnimImmediately(class UWidgetAnimation* anim);
    void StopAllAnimImmediatelyByGroup(EWidgetAnimationGroup group);
    void StopAllAnimImmediately();
    void ResetAppearance();
    void GroupingAnimations();
    float GetNormalizedElapsedTime(class UWidgetAnimation* anim);
    bool GetAllAnimations(TArray<class UWidgetAnimation*>& outAllAnims);
    void EvaluateAnimationSpecificFrame(class UWidgetAnimation* anim, int32 frame, bool isStopAllAnimBeforeEval);
    void EvaluateAnimationLastFrame(class UWidgetAnimation* anim, bool isStopAllAnimBeforeEval);
    void AddNonGroupingAnimationsToDefaultGroup();
    void AddAnimationsToGroup(EWidgetAnimationGroup group, TArray<class UWidgetAnimation*> anims);
    class UUMGSequencePlayer* AcqPlayAnimationDefault(class UWidgetAnimation* anim, float StartAtTime, bool isStopAllAnimBeforePlay, int32 NumLoopsToPlay, TEnumAsByte<EUMGSequencePlayMode::Type> PlayMode, float PlaybackSpeed);
    class UUMGSequencePlayer* AcqPlayAnimationAtTime(class UWidgetAnimation* anim, float StartAtTime, bool isStopAllAnimBeforePlay);
    class UUMGSequencePlayer* AcqPlayAnimation(class UWidgetAnimation* anim, bool isStopAllAnimBeforePlay, bool isFast);
}; // Size: 0x2C0

class UActionCommandDirector : public ULevelSequenceDirector
{

    void WeaponChange_Implementation(EWEAPON_CATEGORY WeaponType);
    void WaitSummonAbility_Implementation();
    void WaitSessionSupporter_Implementation();
    void WaitSessionAbility_Implementation();
    void WaitEnemyAction_Implementation();
    void WaitCaptureMainParty_Implementation();
    void WaitCallSubParty_Implementation();
    void WaitBusinessSupporter_Implementation();
    void ShowInfomation_Implementation(FName TextID);
    void ShowBusinessSupportInfomation_Implementation();
    void SetMaterialParameter_Vector_Implementation(class AEmitter* Emitter, FName ParameterName, FVector Value);
    void SetMaterialParameter_Float_Implementation(class AEmitter* Emitter, FName ParameterName, float Value);
    void SetActionCommand(class AActionCommandBase* cActionCommand);
    void ReturnSummonCharacter_Implementation();
    void ReturnSessionSupporter_Implementation();
    void ReturnBusinessSupporter_Implementation();
    void RegisterOnHitSE_Implementation(FName SEID);
    void RandomJumpToMarker_Implementation(float Rate, FString Marker);
    void RandomJumpToFrame_Implementation(float Rate, int32 frame);
    void PlayWeaponAttack_Implementation(class ABattleCharacterBase* ActionCharacter);
    void PlayVoiceWithAbilityHit_Implementation(EBATTLE_VOICE_TYPE VoiceType, EPlayableCharacterID UniqueCharaID, EBATTLE_VOICE_TYPE UniqueVoiceType, bool OnHit);
    void PlayVoice_Implementation(EBATTLE_VOICE_TYPE VoiceType, EPlayableCharacterID UniqueCharaID, EBATTLE_VOICE_TYPE UniqueVoiceType);
    void PlayVibration_Implementation(FName VibrationID, EVibrationPower Power);
    void PlaySEWithAbilityHit_Implementation(FName SEID, bool OnHit);
    void PlaySessionAction_Implementation(EKSCharacterAction BattleActionID);
    void PlaySE_Implementation(FName SEID);
    void PlayBusinessSupportAction_Implementation(EKSCharacterAction BattleActionID);
    void PlayActionWithAbilityHit_Implementation(class ABattleCharacterBase* ActionCharacter, EKSCharacterAction BattleActionID, EPlayableCharacterID UniqueCharaID, EKSCharacterAction UniqueActionID, bool OnHit);
    void PlayActionForSelfOnly_Implementation(class ABattleCharacterBase* ActionCharacter, EKSCharacterAction BattleSelfActionID, EKSCharacterAction BattleOtherActionID, bool bExceptEnforcer);
    void PlayAction_Implementation(class ABattleCharacterBase* ActionCharacter, EKSCharacterAction BattleActionID, EPlayableCharacterID UniqueCharaID, EKSCharacterAction UniqueActionID, bool bExceptEnforcer);
    void PlayAbilitySEWithAbilityHit_Implementation(int32 Index, bool OnHit);
    void PlayAbilitySE_Implementation(int32 Index);
    void JumpToMarker_Implementation(FString strMarker);
    void JumpToFrame_Implementation(int32 frame);
    void HideInfomation_Implementation();
    void ExecSummonCharacter_Implementation(int32 SummonIndex, bool Random);
    void ExecSummonAbility_Implementation(int32 SummonIndex);
    void ExecStepCounter_Implementation();
    void ExecStartCharacterWarp_Implementation(FVector cCommandOffset);
    void ExecSpecialAilment_Implementation();
    void ExecSessionAbility_Implementation();
    void ExecPlayDiseaseMissUI_Implementation();
    void ExecEndCharacterWarp_Implementation();
    void ExecCaptureMainParty_Implementation();
    void ExecCallSubParty_Implementation();
    void ExecAilmentWithAbilityHit_Implementation(int32 Index, bool AllAilment, bool LastHit, bool OnHit);
    void ExecAilment_Implementation(int32 Index, bool AllAilment, bool LastHit);
    void CheckPattern3JumpToMarker_Implementation(FString PatternB, FString PatternC);
    void CheckPattern3JumpToFrame_Implementation(int32 PatternB, int32 PatternC);
    void CheckPattern2JumpToMarker_Implementation(FString PatternB);
    void CheckPattern2JumpToFrame_Implementation(int32 PatternB);
    void CheckMultiPatternJumpToMarker_Implementation(TArray<FString> MarkerList);
    void CheckMultiPatternJumpToFrame_Implementation(TArray<int32> FrameList);
    bool CheckGPUEmitter(class UParticleSystem* cTarget, int32 nIndex);
    void CheckCounterJumpToMarker_Implementation(FString Marker);
    void CheckCounterJumpToFrame_Implementation(int32 frame);
    void CheckBoostLevelLessJumpToMarker_Implementation(int32 BorderLevel, bool ContainEqual, FString Marker);
    void CheckBoostLevelLessJumpToFrame_Implementation(int32 BorderLevel, bool ContainEqual, int32 frame);
    void CheckBoostLevelGreaterJumpToMarker_Implementation(int32 BoostLevel, bool ContainEqual, FString Marker);
    void CheckBoostLevelGreaterJumpToFrame_Implementation(int32 BoostLevel, bool ContainEqual, int32 frame);
    void CheckAbilityHitJumpToMarker_Implementation(bool OnHit, FString Marker);
    void CheckAbilityHitJumpToFrame_Implementation(bool OnHit, int32 frame);
    void CallSessionSupporter_Implementation();
    void CallBusinessSupporter_Implementation();
}; // Size: 0x40

class UActionOrderComponent : public UActorComponent
{
    class ABattleCharacterBase* m_cOwnerPlayer;                                       // 0x00B0 (size: 0x8)

}; // Size: 0xB8

class UActionOrderIcon : public UAcqUserWidget
{

    bool ResetParam();
    bool ImmediateHidden();
    bool ImmediateDettach();
    bool End();
    bool DettachSubIcon();
    bool AttachSubIcon();
}; // Size: 0x2C0

class UActionOrderTimeLineBase : public UAcqUserWidget
{
}; // Size: 0x2C0

class UActionPopupWidgetBase : public UKSUserWidgetBase
{

    bool TemporaryClose();
    bool ReOpen();
    bool Open(class AActor* TargetActor, FName ActionTextLabel);
    bool Close();
}; // Size: 0x358

class UActivityDataUtility : public UDataTableUtilityBase
{

    void RequestResetAllActiveActivities();
    void RequestRefreshActivity();
    void RequestNewGame();
    void NotifyActivityDB(FName dbName, EDBNoticeType notice);
    bool IsNotClearedAnyActivityTask();
    bool IsAllActivityTaskCleared();
    TArray<FName> GetAllMainStoryLabelRelatedActivity();
    void Debug_SetActivityAvailability(FString activityId, bool bEnabled);
    void Debug_ResumeActivity(FString activityId);
    void Debug_ResetAllMainStory();
    void Debug_OutputAllMainStory();
    void Debug_ClearAllMainStory();
}; // Size: 0x28

class UActorUtil : public UBlueprintFunctionLibrary
{

    void ChangeOutLinerName(class AActor* Actor, FString NewName);
}; // Size: 0x28

class UAreaInfoTableUtility : public UBlueprintFunctionLibrary
{

    void GetAreaInfoTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetAreaInfoData(FAreaInfoData& OutData, FName TargetLabel);
}; // Size: 0x28

class UArrowButtonBase : public UUserWidget
{
    bool m_bUseGameText;                                                              // 0x0260 (size: 0x1)

    void SetUseGameText(bool UseGameText);
    void SetTextList(const TArray<FName>& textList);
}; // Size: 0x268

class UBalloonBase : public UAcqUserWidget
{
    EBalloonType BalloonType;                                                         // 0x02C0 (size: 0x1)
    bool EndFlag;                                                                     // 0x02C1 (size: 0x1)
    bool DrawTextEnd;                                                                 // 0x02C2 (size: 0x1)
    bool m_bIsReady;                                                                  // 0x02C3 (size: 0x1)
    bool m_bPause;                                                                    // 0x02C4 (size: 0x1)
    FAddBalloonParam BalloonParam;                                                    // 0x02C8 (size: 0xA0)
    int32 BalloonIndex;                                                               // 0x0368 (size: 0x4)
    FVector2D FontSize;                                                               // 0x036C (size: 0x8)
    FVector2D MinWH;                                                                  // 0x0374 (size: 0x8)
    FVector2D TextBoxSize;                                                            // 0x037C (size: 0x8)
    FBalloonBaseFinishBalloonEvent FinishBalloonEvent;                                // 0x0388 (size: 0x10)
    void FnishBalloonEvent(EBalloonEventType EventName, EBalloonType BalloonType, class AKSCharacterBase* TargetCharacter);

    bool UnPausedBalloon();
    void SetTextAnimationWait(EKSLanguage NewLanguage);
    bool PauseBalloon();
    bool IsReady();
    bool IsPauseBalloon();
    bool IsEnd();
    bool IsDrawTextEnd();
    bool Init(const FAddBalloonParam& InParam, bool bAutoTalk);
    EBalloonType GetType();
    bool GetPlayedVoice();
    FAddBalloonParam GetBalloonParam();
    bool GetAutoBalloon();
    bool CloseBalloon();
    bool CallNext(bool AutoNext);
    bool CallBalloonEvent(EBalloonEventType EventType);
}; // Size: 0x3A0

class UBalloonBundleWidgetBase : public UKSUserWidgetBase
{
    TArray<class UBalloonBase*> RefBalloons;                                          // 0x0358 (size: 0x10)
    TArray<class UBalloonBase*> RefAutoBalloons;                                      // 0x0368 (size: 0x10)
    TArray<class UBalloonBase*> UnUseBalloons;                                        // 0x0378 (size: 0x10)
    TArray<class UBalloonBase*> UnUseAutoBalloons;                                    // 0x0388 (size: 0x10)
    TArray<class UBalloonBase*> UseBalloons;                                          // 0x0398 (size: 0x10)
    TArray<class UBalloonBase*> UseAutoTalkBalloons;                                  // 0x03A8 (size: 0x10)
    class UBalloonBase* RefDeepThink;                                                 // 0x03B8 (size: 0x8)
    class UBalloonBase* RefDeepThinkFixedText;                                        // 0x03C0 (size: 0x8)
    class UBalloonBase* m_cBalloonActive;                                             // 0x03C8 (size: 0x8)

    bool UnPausedAutoTalkBalloonAll();
    void SetAutoTimer(float fTimer);
    void RestoreEventSkip(bool Skip);
    bool PauseAutoTalkBalloonAll();
    void OnEventSpeedChange(ENOTICE_TYPE noticeType, const FNoticeArgs& NoticeArgs);
    void OnBattleSpeedChange(ENOTICE_TYPE noticeType, const FNoticeArgs& NoticeArgs);
    void Next(bool AutoNext);
    bool IsReady();
    bool IsEnd();
    bool IsAllEnd();
    float GetTextWaitTime();
    float GetAutoTimer();
    float GetAutoTime();
    bool GetAutoEventMessage();
    class UBalloonBase* GetActive();
    bool DeleteBalloonAll();
    bool DeleteBalloon(class UBalloonBase* pcDelete);
    bool DeleteAutoBalloonAll();
    bool DeleteAutoBalloon(class UBalloonBase* pcDelete);
    void Debug_SetMessageFullSkip(bool bSkip);
    bool CloseAll();
    void ChangeTextSpeed(EKSLanguage Language);
    bool CallBalloonEvent(EBalloonEventType EventType);
    class UBalloonBase* AddBalloon(const FAddBalloonParam& InAddParam);
    class UBalloonBase* AddAutoTalkBalloon(const FAddBalloonParam& InAddParam, float fDispTime);
}; // Size: 0x3D8

class UBarMenuStorySelectBase : public UKSUserWidgetBase
{
    bool BarMenuMode;                                                                 // 0x0359 (size: 0x1)

    void SetWidgetState(ESTORY_SELECT_STATE Val);
    bool SetupStoryData(const FName& WorldMapLabel);
    bool Setup(const FName& WorldMapLabel, bool bIsBarMode);
    bool SetUIParts();
    bool SetBarUIParts(FName TownNameLabel);
    bool OpenEvent(FName WorldMapLabel, bool IsBarMenu);
    ESTORY_SELECT_STATE GetWidgetState();
}; // Size: 0x360

class UBarTalkUtility : public UBlueprintFunctionLibrary
{

    void GetBarTalkDataByLevelInfo(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FBarTalkDefine& outBarTalkData, const FLevelInfoData& LevelInfoData);
}; // Size: 0x28

class UBattleAIBase : public UActorComponent
{
    class ABattleCharacterBase* m_cOwnerCharacter;                                    // 0x00B0 (size: 0x8)
    EBATTLE_AI_STATE m_ePreState;                                                     // 0x00B8 (size: 0x1)
    EBATTLE_AI_STATE m_eCurrentState;                                                 // 0x00B9 (size: 0x1)
    TArray<FString> m_astrStateNameList;                                              // 0x00C0 (size: 0x10)
    TMap<class EBATTLE_AI_STATE, class EBATTLE_AI_SUB_STATE> m_anAISubState;          // 0x00D0 (size: 0x50)

    void UpdateThinkForConfusion(FName& CommandName);
    void UpdateThink(FName& CommandName);
    void SetOwnerCharacter(class ABattleCharacterBase* cOwner);
    void SetBattleCommandTable(const TArray<FBattleAICommandData>& acCommandTable);
    void SelectBattleTarget(const TArray<class ABattleCharacterBase*>& PlayerList, const TArray<class ABattleCharacterBase*>& EnemyList, EBATTLE_TARGET_TYPE TargetType, TArray<class ABattleCharacterBase*>& TargetList);
    bool PreUpdateThink();
    bool PreTurnStart();
    bool PreOrderStart(class ABattleCharacterBase* ActionCharacter);
    bool PostUpdateThink();
    bool PostSignOfBoost();
    bool PostOrderEnd(class ABattleCharacterBase* ActionCharacter);
    bool PostBattleEvent();
    bool OnRevive();
    bool OnDead();
    bool OnDamage();
    bool OnBreak();
    void GetCounterAbility(FName& CommandName);
    void GetBattleAISubState(EBATTLE_AI_SUB_STATE& CurrentSubState);
    FString GetBattleAIStateName();
    void GetBattleAIState(EBATTLE_AI_STATE& CurrentState, EBATTLE_AI_STATE& PrevState);
    void ChangeBattleAISubState(EBATTLE_AI_SUB_STATE NewSubState);
    void ChangeBattleAIState(EBATTLE_AI_STATE NewState, bool ResetSubState);
    bool AIInitialize();
}; // Size: 0x120

class UBattleAIUtility : public UBlueprintFunctionLibrary
{
}; // Size: 0x28

class UBattleDamageNumberBase : public UKSUserWidgetBase
{

    void UpdatePosition();
    void OnBattleSpeedChange(ENOTICE_TYPE noticeType, const FNoticeArgs& NoticeArgs);
}; // Size: 0x358

class UBattleEventDirector : public ULevelSequenceDirector
{

    void WaitReturnCapture_Implementation();
    void StopBGM_Implementation(float FadeOutTime);
    void SetWhiteOutFlag_Implementation(bool bEnable);
    void SetEventFlag_Implementation(FName FlagName, bool Value);
    void SetBattleSequenceDirector(class ABattleSequenceDirector* cSequenceDirector);
    void SetBattleEnemyVisibility_Implementation(bool bVisible);
    void SetAdvancedAbility_Implementation(EPlayableCharacterID CharacterID, int32 nIndex, bool bEnable);
    void ReturnCapture_Implementation();
    void RemoveBoostEffect_Implementation();
    void ReleasePotentialityAction_Implementation(EPlayableCharacterID CharacterID);
    void RandomJumpToFrame_Implementation(float Rate, int32 frame);
    void PlayVibration_Implementation(FName VibrationID, EVibrationPower Power);
    void PlaySE_Implementation(FName SEID);
    void PlayBGM_Implementation(FName BgmLabel, float FadeOutTime, float FadeInTime);
    void PlayAction_Implementation(class ABattleCharacterBase* ActionCharacter, EKSCharacterAction BattleActionID);
    void OpenTutorial_Implementation(ETUTORIAL_TYPE TutorialType, bool bForcedDisplay);
    void OpenTalk_Implementation(FName TalkTextID, FVector2D Offset, bool WaitFinish);
    void OpenActionInfoFromAdvancedAbility_Implementation(FName TextID, EPlayableCharacterID CharaID, int32 nAbilityIndex);
    void OpenActionInfoForEightBattle_Implementation(FName TextID);
    void OpenActionInfo_Implementation(FName TextID);
    void JumpToFrame_Implementation(int32 frame);
    void InstantDeath_EnemyAll_Implementation();
    void FixBattleCamera_Implementation();
    void ExecPotentialityAction_Implementation(class ABattleCharacterBase* ActionCharacter);
    void ExecExtendBGM_Implementation(int32 nIndex);
    void ExecBattleSuspend_Implementation();
    void ControlDisease_Implementation(class ABattleCharacterBase* TargetCharacter, bool Remove, FName DiseaseName, int32 InvocationValue, int32 InvocationTurn);
    void CloseTalk_Implementation();
    void CloseActionInfo_Implementation();
    void ChangeCharacterName_Implementation(class ABattleCharacterBase* TargetCharacter, FName CharacterNameID);
    void ChangeBoostLevel_Implementation(class ABattleCharacterBase* ActionCharacter, int32 BoostLevel);
    void ChangeActionMode_Implementation(class ABattleCharacterBase* ActionCharacter, bool bIsEnable, int32 nModeIndex, bool bUseTransition);
}; // Size: 0x40

class UBattleReadyStateData : public UStateDataBase
{
}; // Size: 0x58

class UBattleStateData : public UStateDataBase
{
}; // Size: 0x58

class UBattleVoiceComponent : public UActorComponent
{
    class ABattleCharacterBase* m_cOwnerPlayer;                                       // 0x00B0 (size: 0x8)
    bool m_bReadyBattleVoice;                                                         // 0x00B8 (size: 0x1)
    TMap<class EBATTLE_VOICE_TYPE, class FBattleVoiceDataList> m_acBattleVoiceDataList; // 0x00C0 (size: 0x50)
    TMap<class FName, class FBattleVoiceDataList> m_acAbilityVoiceDataList;           // 0x0110 (size: 0x50)
    bool m_bSettledPlayOnce_OnTakeDamage;                                             // 0x0160 (size: 0x1)
    bool m_bEnableDetailLog;                                                          // 0x0161 (size: 0x1)

    void SetSettledPlayOnce_OnTakeDamage(bool bEnable);
    void ResetVoiceFlagForPreAction();
    bool PlayBattleVoice(EBATTLE_VOICE_TYPE eBattleVoiceType, FBattleVoiceSetData cPlayCondition);
    bool IsReadyBattleVoice();
    bool IsBattleVoice(EBATTLE_VOICE_TYPE eBattleVoiceType);
    bool InitBattleVoice(FName strBattleVoiceID);
    bool GetSettledPlayOnce_OnTakeDamage();
    void GetEventFlag(FName FlagName, bool& Value);
}; // Size: 0x168

class UBattleWipeBase : public UAcqUserWidget
{
    bool m_bBattleEndWipeOut;                                                         // 0x02C0 (size: 0x1)
    bool m_bEnableWhiteOut;                                                           // 0x02C1 (size: 0x1)
    bool m_bExecWipe;                                                                 // 0x02C2 (size: 0x1)
    EBATTLE_WIPE_STATE m_eState;                                                      // 0x02C3 (size: 0x1)
    bool m_bDebugWipeColorEnable;                                                     // 0x02C4 (size: 0x1)
    FColor m_DebugWipeColor;                                                          // 0x02C8 (size: 0x4)

    void WipeOutAtBattleStart();
    void WipeOutAtBattleEnd();
    void WipeInAtBattleStart();
    void WipeInAtBattleEnd();
    void SetWhiteOut(bool Enable);
    void SetupDebugWipeColor();
    bool IsReadyAnimation();
    bool IsExecWipe();
    bool IsEnableWhiteOut();
    bool IsBattleEndWipeOut();
    void HideWipeAtBattleEnd_Immediately();
}; // Size: 0x2D0

class UBitFlagSaveDataUtil : public USaveDataUtilBase
{

    bool IsFixedFollowNPC_Placate();
    bool IsFixedFollowNPC_Lure();
    bool IsFixedFollowNPC_Lead();
    bool IsFixedFollowNPC_Hire();
}; // Size: 0x28

class UBusinessWithNpcNotificationBase : public UKSUserWidgetBase
{
    bool m_bIsOpening;                                                                // 0x0358 (size: 0x1)
    FSpActMerchantResult m_SpActMerchantResult;                                       // 0x0360 (size: 0x50)

    void OpenNotificationAnimal(const FSpActMerchantResult& SpActMerchantResult, bool bIsFast);
    void OpenNotification(const FSpActMerchantResult& SpActMerchantResult, bool bIsFast);
    void CloseNotification(bool bIsFast);
}; // Size: 0x3B0

class UButtonTextDataTable : public UDataTableUtilityBase
{

    bool GetButtonTextTableRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FButtonTextData& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class UCharacterFlipbookComponent : public UPaperFlipbookComponent
{
    TMap<class FName, class UMaterialInstanceDynamic*> m_FlipbookMaterialList;        // 0x04E8 (size: 0x50)

    void SetFlipbookVisibility(bool bVisibility);
    void SetFlipbookOffset(const FVector& Offset);
    void SetCharacterDir(EKSCharacterDir Dir);
    void SetCharacterActionLabel(FName CharaActionLabel);
    void PlayCurrentAnimation();
    void PlayAnimation(EKSCharacterAction eAction);
    bool IsFlipbookVisibile();
    class UMaterialInstanceDynamic* GetCurrentFlipbookMaterial();
    class UMaterialInstanceDynamic* GetCachedFlipbookMaterial(FName FlipbookName);
}; // Size: 0x540

class UCharacterGrowTableUtility : public UDataTableUtilityBase
{

    int32 GetTotalExpFromLevel(int32 Level);
    bool GetCharacterGrowTableRowDataByLevel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FCharacterGrowData& OutData, int32 Level, bool LogEnable);
    bool GetCharacterGrowTableRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FCharacterGrowData& OutData, FName TargetLabel, bool LogEnable);
    int32 CalcLevelFromTotalExp(int32 Exp);
}; // Size: 0x28

class UCharacterParamUtility : public UBlueprintFunctionLibrary
{

    FCharacterParam Sub_CharacterParam_CharacterParam(FCharacterParam A, FCharacterParam B);
    void SetCharacterParamProperty(FCharacterParam& CharaParam, ECHARACTER_PARAM_TYPE ParamType, int32 Value);
    FCharacterParam Multiply_CharacterParam_RevisionParam(FCharacterParam Base, FCharacterParam Revision);
    FCharacterParam Multiply_CharacterParam_Float_ExceptMinus(FCharacterParam Base, float Revision);
    FCharacterParam Multiply_CharacterParam_Float(FCharacterParam Base, float Revision);
    void MinusParamFromBool(const FCharacterParam Base, TArray<bool>& retList);
    FCharacterParam InversionMinusParameter(FCharacterParam Base);
    int32 GetCharacterParamProperty(const FCharacterParam& CharaParam, ECHARACTER_PARAM_TYPE ParamType);
    void Debug_OutputCharacterParam(const FCharacterParam& Val);
    FString Debug_MakeCharacterParamString(const FCharacterParam& Val);
    FCharacterParam Add_CharacterParam_CharacterParam(FCharacterParam A, FCharacterParam B);
}; // Size: 0x28

class UCharacterResourceDataUtility : public UDataTableUtilityBase
{

    bool GetCharacterResourceRowData(FCharacterResourceData& OutData, FName TargetLabel, bool EnableLog);
    bool GetCharacterResourceLabelNames(TArray<FName>& OutData);
}; // Size: 0x28

class UCharacterResourceUtility : public UBlueprintFunctionLibrary
{

    void GetNPCResourceLabelFromLevelName(TArray<FName>& OutData, FName levelName);
    void GetCurrentSubPartyResourceLabel(TArray<FName>& OutData, class UObject* WorldContextObject);
    void GetCurrentPartyResourceLabel(TArray<FName>& OutData, class UObject* WorldContextObject);
}; // Size: 0x28

class UCharacterResource_BattleReductionDataUtility : public UDataTableUtilityBase
{

    bool GetCharRes_BattleReductionRowData(FCharResource_BattleReductionTable& OutData, FName TargetLabel, bool EnableLog);
    bool GetCharRes_BattleReductionLabelNames(TArray<FName>& OutData);
}; // Size: 0x28

class UCharacterSaveDataUtil : public USaveDataUtilBase
{

    bool UpdateFollowNpcSupportLimit(MJFieldCommandType FieldCommandType, int32 SupportLimit);
    void SubPlayerMoney(int32 SubMoney);
    void SetTameMonsterMode(ETameMonsterMode Mode);
    void SetTameMonsterData(int32 Index, FTameMonsterData NewTameMonster);
    void SetPlayerMoney(int32 Money);
    void SetMyShipCustomFirstChoice(EMYSHIP_CUSTOM_PART Part, EMYSHIP_CUSTOM_TYPE Type);
    void SetMyShipCustom(EMYSHIP_CUSTOM_PART Part, EMYSHIP_CUSTOM_TYPE Type);
    void SetLegendMonsterData(int32 Index, FTameMonsterData NewLegendMonster);
    void SetHunterPartner(EHUNTER_PARTNER_ID partnerID);
    bool SetFollowWaitingNpc(int32 NPCID, int32 SupportLimitCount, MJFieldCommandType FieldCommandType, EPlayableCharacterID CharaID);
    bool SetFollowNpc(int32 NPCID, int32 SupportLimitCount, MJFieldCommandType FieldCommandType, EPlayableCharacterID CharaID);
    void SetFirstEquipment(EPlayableCharacterID PlayerCharaId);
    void SetCharacterRawMP(int32 PlayerCharaId, int32 MP);
    void SetCharacterRawHP(int32 PlayerCharaId, int32 HP);
    void SetCharacterLevelAndExp(int32 PlayerCharaId, int32 Level, int32 Exp);
    void SetCharacterJobPoint(int32 PlayerCharaId, int32 JP);
    void SetCharacterData(int32 CharacterIndex, const FSavePlayerCharacterData& CharacterData);
    void SetBackpackItemList(const TArray<FSaveBackPackItem>& ItemList);
    void SetAdvancedAbility(int32 CharacterID, int32 AbilityIndex, bool IsLearn);
    void SetAbility(int32 CharacterID, int32 JobID, int32 AbilityIndex, bool IsLearn);
    void MergePlayerMoney(int32 ReminiMoney);
    bool IsLearnAdvancedAbility(int32 CharacterID, int32 AbilityIndex);
    int32 GetTameMonsterNum();
    ETameMonsterMode GetTameMonsterMode();
    int32 GetSecondJobID_FromSaveCharacterData(int32 CharacterID);
    int32 GetRawPOT_FromSaveCharacterData(int32 CharacterID);
    int32 GetRawMP_FromSaveCharacterData(int32 CharacterID);
    int32 GetRawHP_FromSaveCharacterData(int32 CharacterID);
    int32 GetPriorityJobID_FromSaveCharacterData(int32 CharacterID);
    int32 GetPlayerMoney();
    EMYSHIP_CUSTOM_TYPE GetMyShipCustomFirstChoice(EMYSHIP_CUSTOM_PART Part);
    EMYSHIP_CUSTOM_TYPE GetMyShipCustom(EMYSHIP_CUSTOM_PART Part);
    int32 GetLevel_FromSaveCharacterData(int32 CharacterID);
    int32 GetLegendMonsterNum();
    int32 GetJobPoint_FromSaveCharacterData(int32 CharacterID);
    EHUNTER_PARTNER_ID GetHunterPartner();
    void GetFollowWaitingNpcUniqueId(TArray<int32>& outUniqId);
    bool GetFollowWaitingNPCDataByType(int32& NPCID, int32& SupportLimit, MJFieldCommandType FieldCommandType);
    bool GetFollowWaitingNpcByFieldCommandType(MJFieldCommandType FieldCommandType, FSaveFollowNpcData& Output);
    void GetFollowNpcUniqueId(TArray<int32>& outUniqId);
    bool GetFollowNPCDataByType(int32& NPCID, int32& SupportLimit, MJFieldCommandType FieldCommandType);
    bool GetFollowNpcByNpcUniqueId(int32 NPCID, FSaveFollowNpcData& Output);
    bool GetFollowNpcByFieldCommandType(MJFieldCommandType FieldCommandType, FSaveFollowNpcData& Output);
    bool GetFollowNpcByCharacterIdAndFieldCommandType(EPlayableCharacterID CharaID, MJFieldCommandType Type, FSaveFollowNpcData& Output);
    bool GetFollowNpcByCharacterID(EPlayableCharacterID CharaID, FSaveFollowNpcData& Output);
    void GetFollowNpcAndWaitingNpcUniqueId(TArray<int32>& outUniqId);
    TArray<FSaveFollowNpcData> GetFollowNpc();
    int32 GetFirstJobID_FromSaveCharacterData(int32 CharacterID);
    int32 GetExp_FromSaveCharacterData(int32 CharacterID);
    TArray<int32> GetEquipSupportSkill_FromSaveCharacterData(int32 CharacterID);
    FSaveEquipmentDataID GetEquipment_FromSaveCharacterData(int32 CharacterID);
    int32 GetCharacterID_FromSaveCharacterData(int32 CharacterID);
    bool GetCharacterFixedEquipment(int32 CharacterID, EEQUIPMENT_PART Part);
    FName GetCharacterEquipmentPartLabel(int32 CharacterID, EEQUIPMENT_PART Part);
    TArray<FName> GetCharacterEquipmentLabels(int32 CharacterID);
    FSaveEquipmentData GetCharacterEquipmentLabel(int32 CharacterID);
    FSavePlayerCharacterData GetCharacterData(int32 CharacterID);
    bool FindCharacterFromPlayerMember(int32 CharacterID, int32& FoundIndex, FSavePlayerCharacterData& FoundCharacter, TEnumAsByte<EBPFuncReturnCode::Type>& returnCode);
    bool DeleteTameMonsterInvadeID(int32 TargetInvadeID);
    bool DeleteTameMonster(int32 Index);
    bool DeleteLegendMonster(int32 Index);
    bool DeleteFollowWaitingNpc(MJFieldCommandType FieldCommandType);
    bool DeleteFollowNpcByCharacterID(EPlayableCharacterID CharaID);
    bool DeleteFollowNpc(MJFieldCommandType FieldCommandType);
    void Debug_SetAllAbility(int32 CharacterID, bool FullOpen);
    bool CheckCharacterAlive_SpecialActionType(int32 SpecialActionType);
    bool CanShowHunterPartnerInParty();
    bool AddTameMonster(FTameMonsterData TameMonster);
    void AddPlayerMoney(int32 AddMoney);
    bool AddLegendMonster(FTameMonsterData LegendMonster);
}; // Size: 0x28

class UCharactersActionTableUtility : public UDataTableUtilityBase
{

    bool GetCharactersActionRowData(FCharacterActionResource& OutData, FName TargetLabel, bool EnableLog);
    bool GetCharactersActionLabels(TArray<FName>& LabelList);
}; // Size: 0x28

class UCharactersFlipbookUtility : public UDataTableUtilityBase
{

    bool IsIdleAction(EKSCharacterAction Action);
    bool GetThiefMissionFlipbookToSaveLoad(FName& outLabel, class UObject* WorldContextObject, int32 CharaID, int32 JobID, int32 form, EPLAYER_JOB_FB_TYPE Type);
    bool GetMissionFlipbookLabelToSaveLoad(FName& outLabel, class UObject* WorldContextObject, int32 CharaID, int32 form, int32 JobID);
    bool GetMissionFlipbookLabelToPlayerSelect(FName& outLabel, int32 CharaID, EPLAYER_SELECT_FB_TYPE selectType, EPLAYER_SELECT_FB_PATTERN pattern);
    bool GetMissionFlipbookLabelToJob(FName& outLabel, class UObject* WorldContextObject, int32 CharaID, int32 JobID, EPLAYER_JOB_FB_TYPE Type, bool checkTou);
    bool GetMissionCustomFlipbookRowData(FKSUIFlipbookData& OutData, FName TargetLabel, bool EnableLog);
    bool GetMissionCustomFlipbookNames(TArray<FName>& OutNames);
    bool GetMissionCustomFlipbookListRowDataFromCharaID(FCustomMissionFlipbookList& OutData, int32 CharaID);
    bool GetMissionCustomFlipbookListRowData(FCustomMissionFlipbookList& OutData, FName TargetLabel);
    bool GetCustomFlipbookRowData(FKSFlipbookData& OutData, FName TargetLabel, bool EnableLog);
    bool GetCharactersFlipbookRowData(FKSCharaFlipbook& OutData, FName TargetLabel, bool EnableLog);
    bool GetActionSocket(const FName targetCharaLabel, EKSCharacterAction eAction, EKSCharacterDir eDir, TMap<class FName, class FMJSpriteSocketData>& outSocketData, bool& outIsReverse);
    bool GetActionFlipbookName(class UPaperFlipbookComponent* fbComp, FName CharaActionLabel, EKSCharacterAction eAction, EKSCharacterDir eDir, FName& outFlipbookName, bool& outIsReverse);
}; // Size: 0x28

class UCharactersGridPanelBase : public UUserWidget
{
    FCharactersGridPanelBaseOnOpenedCallback OnOpenedCallback;                        // 0x0260 (size: 0x10)
    void CharactersGridPanelNotice();
    FCharactersGridPanelBaseOnClosedCallback OnClosedCallback;                        // 0x0270 (size: 0x10)
    void CharactersGridPanelNotice();
    FCharactersGridPanelBaseOnSelectedCharacter OnSelectedCharacter;                  // 0x0280 (size: 0x10)
    void CharactersGridPanelCharacterSelectNotice(EPlayableCharacterID SelectedCharacter);
    ECHARACTER_GRID_PANEL_WIDGET_STATE m_WidgetState;                                 // 0x0290 (size: 0x1)
    FIntPoint m_CursorPosition;                                                       // 0x0294 (size: 0x8)
    FIntPoint m_GridSize;                                                             // 0x029C (size: 0x8)
    TArray<class UPartyCharacterPanelBase*> m_PartyCharacterPanelRefs;                // 0x02A8 (size: 0x10)
    TArray<class UPartyCharPanelSelectBackBase*> m_PartyCharacterPanelSelectBackRefs; // 0x02B8 (size: 0x10)
    TMap<class FIntPoint, class UPartyCharacterPanelBase*> m_PartyCharacterPanelPositions; // 0x02C8 (size: 0x50)
    TMap<class FIntPoint, class UPartyCharPanelSelectBackBase*> m_PartyCharacterPanelSelectBackPositions; // 0x0318 (size: 0x50)

    void SetWidgetState(ECHARACTER_GRID_PANEL_WIDGET_STATE NewState);
    void SetTitleText(const FName& TextLabel);
    void SetMember(const TArray<FCharacterGridPanelParam>& newMember);
    void SetCursorPosition(const FIntPoint& newPos);
    void Open();
    void MoveCursor(const FIntPoint& Delta);
    TArray<class UPartyCharPanelSelectBackBase*> GetPartyCharacterPanelSelectBackRefs();
    TArray<class UPartyCharacterPanelBase*> GetPartyCharacterPanelRefs();
    bool GetPartyCharacterPanelByPos(const FIntPoint& Pos, class UPartyCharacterPanelBase*& outPanel, class UPartyCharPanelSelectBackBase*& outSelectBack);
    FIntPoint GetCursorPosition();
    void Decide();
    void Close();
    void BroadcastOnSelectedCharacter(EPlayableCharacterID PlayerID);
    void BroadcastOnOpenedDelegate();
    void BroadcastOnClosedDelegate();
}; // Size: 0x368

class UCircularDayNightParentWidgetBase : public UCanvasPanel
{
    class UWidget* ChildWidget;                                                       // 0x0130 (size: 0x8)
    bool IsChildKeepHorizontal;                                                       // 0x0138 (size: 0x1)
    float RotationAngle;                                                              // 0x013C (size: 0x4)

    void SetRotationAngle(float newRotationAngle);
}; // Size: 0x140

class UCommonDialog : public UKSUserWidgetBase
{
    FMJUICommonDialogParam CurrentParam;                                              // 0x0358 (size: 0xC8)
    int32 ButtonIndex;                                                                // 0x0420 (size: 0x4)

    bool SettingSelectSE(const TArray<FName>& SelectSE);
    void SelectButton(int32 buttonIdx);
    bool OpenPlayerMoney();
    bool OpenDialog(const FMJUICommonDialogParam& Param);
    void OnSelectCallback();
    void ExecCloseFinishCallback();
    bool ClosePlayerMoney();
    bool CloseDialog();
    bool ButtonVisible(bool Visible);
}; // Size: 0x428

class UCommonNotificationBase : public UKSUserWidgetBase
{
}; // Size: 0x358

class UCustomListView : public UListView
{

    class UUserWidget* GetSelectItemWidget(class UObject* Item);
}; // Size: 0x858

class UCustomSpriteDataTableUtility : public UDataTableUtilityBase
{

    bool GetMissionCustomSpriteRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FKSSpriteData& OutData, FName TargetLabel, bool LogEnable);
    bool GetCustomSpriteRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FKSSpriteData& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class UDarkAreaDataUtility : public UDataTableUtilityBase
{

    void SetIsDarkendDarkArea(const FName& DarkAreaLabel, bool isDarkend);
    void SetIsDarkendAllDarkArea(bool isDarkend);
    bool IsLevelDarkend(const FName& levelLabel);
    bool IsLevelBelongDarkArea(const FName& levelLabel);
    bool IsDarkendDarkAreaLabel(const FName& DarkAreaLabel);
    bool IsDarkendAnyDarkArea();
    bool IsAllowLostWayLevel(const FName& levelLabel);
    bool GetDarkendWorldMapLabels(TArray<FName>& outWorldMapLabel);
    bool GetDarkendLevelLabels(TArray<FName>& outLevelLabel);
    bool GetDarkendDarkAreaLabels(TArray<FName>& outDarkAreaLabel);
    bool GetDarkAreaLabelByLevel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, const FName& levelLabel, FName& outDarkAreaLabel);
    bool GetDarkAreaByLevel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, const FName& levelLabel, FDarkAreaData& outDarkArea);
    void GetAllDarkAreaLabels(TArray<FName>& outDarkAreaLabel);
}; // Size: 0x28

class UDarkAreaParticleComponent : public UParticleSystemComponent
{
    FVector m_BaseLocation;                                                           // 0x06A8 (size: 0xC)
    FVector m_LocationOffset;                                                         // 0x06B4 (size: 0xC)
    FRotator m_RotationOffset;                                                        // 0x06C0 (size: 0xC)
    FVector m_ScaleOffset;                                                            // 0x06CC (size: 0xC)
    FWorldMapDarkAreaEffectParam m_DarkAreaEffectParam;                               // 0x06D8 (size: 0x40)

    void SetTransformOffset(const FVector& LocationOffset, const FRotator& RotationOffset, const FVector& ScaleOffset);
    void SetEnableEffect(bool Enable);
    void SetDarkAreaEffectParam(const FWorldMapDarkAreaEffectParam& newParam);
    void SetBaseLocation(const FVector& baseLocation);
    FName GetWorldMapLabel();
    FName GetDarkAreaLabel();
    FWorldMapDarkAreaEffectParam GetDarkAreaEffectParam();
    void ApplyTransform();
}; // Size: 0x720

class UDataTableUtilityBase : public UBlueprintFunctionLibrary
{
}; // Size: 0x28

class UDatabaseMisc : public UBlueprintFunctionLibrary
{

    void SetDatabaseNoticeDelegate();
}; // Size: 0x28

class UDebugBattleCharaComponent : public UActorComponent
{

    void SetMasterParameter(ECHARACTER_PARAM_TYPE eType, int32 nValue);
    void SetDebugSwitch(EBATTLE_DEBUG_SWITCH eType, bool bValue);
    void SetCurrentMP(int32 nValue);
    void SetCurrentHP(int32 nValue);
    int32 GetTotalParameter(ECHARACTER_PARAM_TYPE eType);
    int32 GetMasterParameter(ECHARACTER_PARAM_TYPE eType);
    int32 GetCurrentShield();
    bool GetCurrentPOT(int32& outActionPoint, int32& outActionPointMax);
    int32 GetCurrentMP();
    int32 GetCurrentHP();
    int32 GetCurrentBP();
    void GetCharacterName(FText& strCharacterName);
    TArray<FItemData> GetCharacterEquipmentList();
    class AKSCharacterBase* GetAnimationCharacter();
    bool CheckDebugSwitch(EBATTLE_DEBUG_SWITCH eType);
}; // Size: 0xC8

class UDebugBattleLogComponent : public UActorComponent
{

    int32 GetBattleLogListNumMax();
    TArray<FDebugBattleLog> GetBattleLogList();
    bool GetBattleLogDirty();
    int32 GetBattleLogCount();
    void ClearBattleLogDirty();
}; // Size: 0xD8

class UDebugBattleManagerComponent : public UActorComponent
{

    void SetFixedWonderAbility(FName strAbilityName);
    void SetDebugSwitch(EBATTLE_DEBUG_SWITCH eType, bool bValue);
    void SetDebugParameter(EBATTLE_DEBUG_SWITCH eType, int32 nValue);
    bool SetConvertPlayerIDList(bool bEnable, TMap<int32, FName>& acConvertPlayerIDList);
    bool IsEnableConvertPlayerID();
    FName GetFixedWonderAbility();
    int32 GetDebugParameter(EBATTLE_DEBUG_SWITCH eType);
    FName ConvertPlayerIDForBattleEventDebug(int32 nPlayerID);
    bool CheckDebugSwitch(EBATTLE_DEBUG_SWITCH eType);
}; // Size: 0x178

class UDebugCanvasComponent : public UActorComponent
{
    bool AutoArrangement;                                                             // 0x00B0 (size: 0x1)
    int32 AutoID;                                                                     // 0x00B4 (size: 0x4)
    FVector2D StartPos;                                                               // 0x00B8 (size: 0x8)

    void SetVisible(bool bVisible);
    void SetAutoArrangement(bool Enable, FVector2D Pos);
    void RemoveTextWithID(int32 ID);
    void RemoveText();
    void RemovePrimitiveWithID(int32 ID);
    void RemovePrimitive();
    void RemoveAllText();
    void RemoveAllPrimitive();
    bool IsVisible();
    void AddTextWithID(int32 ID, const FDebugTextData& textData);
    void AddText(const FDebugTextData& textData);
    void AddRowPartText(FText Text, FLinearColor Color);
    void AddPrimitiveWithID(int32 ID, const FDebugPrimitiveData& primData);
    void AddPrimitive(const FDebugPrimitiveData& primData);
}; // Size: 0xC0

class UDebugListMenuComponent : public UActorComponent
{

    void SetDelegateOnDecided(FSetDelegateOnDecidedOnDecided onDecided);
    void SetDelegateOnClosed(FSetDelegateOnClosedOnClosed OnClosed);
    void OpenMenu();
    bool IsRunning();
    void InitMenu(int32 filterColNum, int32 itemColNum);
    void CloseMenu();
    void ClearDelegateOnDecided();
    void AddItemDataArray(const TArray<FDebugListMenuItem>& Data);
    void AddItemData(const FDebugListMenuItem& Data);
    void AddFilterDataArray(const TArray<FDebugListMenuFilter>& Data);
    void AddFilterData(const FDebugListMenuFilter& Data);
    void AddFilter(int32 Index, FText& Text, bool bChecked);
}; // Size: 0x1A8

class UDebugMenuParamPanelWidgetBase : public UAcqUserWidget
{
}; // Size: 0x2C0

class UDebugMenuParamWidgetBase : public UAcqUserWidget
{

    void SetInformationValue(const FText& InText);
    void OnTickFunc(const FDebugParam& Param);
}; // Size: 0x2C0

class UDebugMenuSupportBase : public UActorComponent
{
    FText RootMenuName;                                                               // 0x00C0 (size: 0x18)
    TArray<FDebugParam> DebugParamList;                                               // 0x00D8 (size: 0x10)
    FDebugParam cCurrentParamData;                                                    // 0x00E8 (size: 0x130)
    bool IsSubMenuActive;                                                             // 0x0218 (size: 0x1)
    int32 m_nCurrentHierarchy;                                                        // 0x021C (size: 0x4)
    int32 m_nMaxHierarchy;                                                            // 0x0220 (size: 0x4)
    int32 m_nParentHierarchy;                                                         // 0x0224 (size: 0x4)

    void OnPreInitWidgetFunc(FDebugParam& Param);
    void OnDecideFunc(FDebugParam& Param);
    void OnChangeFunc(FDebugParam& Param);
    void Initialize();
    TArray<FDebugParam> GetSubMenuParam(int32 Index);
    TArray<FDebugParam> GetDebugSubMenuList(const FDebugParam& baseManuItem);
    TArray<FDebugParam> GetDebugParamFromHierarchy(int32 nHierarcy);
    void DebugPrintScreenMessage(FString str, FColor col);
    void CreateMenu_Implementation();
    void CreateMenu();
    void CloseMenu_Implementation();
    int32 BackParentHierarchy();
    void AddToggleVal_Change(FString MenuName, bool Enable, FAddToggleVal_ChangeOnChangeFunc OnChangeFunc, FAddToggleVal_ChangeOnDecideFunc OnDecideFunc);
    void AddToggleVal(FString MenuName, bool Enable, FAddToggleValOnDecideFunc OnDecideFunc);
    void AddSubMenuEnd();
    void AddSubMenuBegin(FString MenuName, FAddSubMenuBeginOnDecideFunc OnDecideFunc);
    void AddListVal_Change_PreInitWidget(FString MenuName, TArray<FText> strList, int32 StartIndex, FAddListVal_Change_PreInitWidgetOnChangeFunc OnChangeFunc, FAddListVal_Change_PreInitWidgetOnDecideFunc OnDecideFunc, FAddListVal_Change_PreInitWidgetOnPreInitWidgetFunc OnPreInitWidgetFunc);
    void AddListVal_Change(FString MenuName, TArray<FText> strList, int32 StartIndex, FAddListVal_ChangeOnChangeFunc OnChangeFunc, FAddListVal_ChangeOnDecideFunc OnDecideFunc);
    void AddListVal(FString MenuName, TArray<FText> strList, int32 StartIndex, FAddListValOnDecideFunc OnDecideFunc);
    void AddIntVal_Change(FString MenuName, int32 DefaultValue, int32 intMin, int32 intMax, FAddIntVal_ChangeOnChangeFunc OnChangeFunc, FAddIntVal_ChangeOnDecideFunc OnDecideFunc);
    void AddIntVal(FString MenuName, int32 DefaultValue, int32 intMin, int32 intMax, FAddIntValOnDecideFunc OnDecideFunc);
    void AddInfomationWithCallback(FString MenuName, FString InformationStr, FAddInfomationWithCallbackOnTickFunc OnTickFunc, EDEBUG_INFORMATION_COLOR_TYPE ColorType);
    void AddInfomation(FString MenuName, FString InfomationStr, EDEBUG_INFORMATION_COLOR_TYPE ColorType);
    void AddFloatVal_Change(FString MenuName, float DefaultValue, float floatMin, float floatMax, FAddFloatVal_ChangeOnChangeFunc OnChangeFunc, FAddFloatVal_ChangeOnDecideFunc OnDecideFunc);
    void AddFloatVal(FString MenuName, float DefaultValue, float floatMin, float floatMax, FAddFloatValOnDecideFunc OnDecideFunc);
}; // Size: 0x228

class UDebugParamFunction : public UBlueprintFunctionLibrary
{

    void SetDebugFlag(EDEBUG_FLAG eFlag, bool Enable);
    void SetAutoTalkTimer(float fAutoTimer);
    bool GetDebugFlag(EDEBUG_FLAG eFlag);
    float GetAutoTalkTimer();
}; // Size: 0x28

class UDebugSaveDataUti : public USaveDataUtilBase
{

    void Debug_ActivateAllEventFlagsWithoutSaveBanFlag();
}; // Size: 0x28

class UDebugServiceConnecter : public UServiceConnecter
{
}; // Size: 0x48

class UDiseaseComponent : public UActorComponent
{
    class ABattleCharacterBase* m_cOwnerPlayer;                                       // 0x00B0 (size: 0x8)

}; // Size: 0xB8

class UDiseaseListItem : public UAcqUserWidget
{

    void Setup(const FDiseaseListItemData& Data);
}; // Size: 0x2C0

class UDiseaseListWidget : public UKSUserWidgetBase
{
    EDiseaseListState m_WidgetState;                                                  // 0x0358 (size: 0x1)

    void SortDiseaseList(TArray<FDiseaseListItemData>& list);
    void SetWidgetState(EDiseaseListState State);
    EDiseaseListState GetWidgetState();
}; // Size: 0x360

class UEffectDataTableUtility : public UDataTableUtilityBase
{

    bool GetEffectRowNames(TArray<FName>& OutRowNames);
    bool GetEffectRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FEffectData& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class UEncountDataTableUtility : public UDataTableUtilityBase
{

    bool GetEncountVolumeRowDataByID(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FEncountVolume& OutData, int32 TargetID, bool LogEnable);
    bool GetEncountVolumeRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FEncountVolume& OutData, FName TargetLabel, bool LogEnable);
    bool GetEncountTriggerRowDataByID(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FEncountTriggerData& OutData, int32 TargetID, bool LogEnable);
    bool GetEncountTriggerRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FEncountTriggerData& OutData, FName TargetLabel, bool LogEnable);
    bool GetEncountTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames, EEncountTableType Type);
    int32 EncountTriggerLabelToId(FName EncountTriggerLabel);
    FName EncountTriggerIdToLabel(int32 EncountTriggerId);
}; // Size: 0x28

class UEndRollSaveDataUtil : public USaveDataUtilBase
{

    EEndRollSegmentSet GetClearedEndRollSegmentByIndex(int32 Index);
    bool AddClearedMainStory(EEndRollSegmentSet Segment);
}; // Size: 0x28

class UEndRollSegmentPlayData : public UObject
{

    EEndRollSegmentSet GetSegmentSetID();
    FName GetEventImage();
    bool GetBattleRevivalFlag();
}; // Size: 0x60

class UEndRollUtil : public UBlueprintFunctionLibrary
{

    void StopEndRoll(const class UObject* WorldContextObject);
    void StartEndroll(const class UObject* WorldContextObject);
    void SetupEndRoll();
    void ResetEndRoll(const class UObject* WorldContextObject);
    bool IsReadyEndRoll(const class UObject* WorldContextObject);
    bool IsPlayingEndRoll(const class UObject* WorldContextObject);
    bool GetEndRollManager(const class UObject* WorldContextObject, class AEndRollFlowManager*& Out);
}; // Size: 0x28

class UEnforcerOffsetComponent : public UActorComponent
{
    FTransform EnforcerOffset;                                                        // 0x00B0 (size: 0x30)
    bool m_bIsEnforcerTarget;                                                         // 0x00E0 (size: 0x1)

    void SetEnforcerTarget(bool bEnable);
    void SetEnforcerOffset(FTransform cTransform);
}; // Size: 0xF0

class UEquipmentMenuWidgetBase : public UKSUserWidgetWithState
{

    bool SetBarMode(bool IsBar);
}; // Size: 0x368

class UEquipmentTextureTableUtility : public UDataTableUtilityBase
{

    bool GetEquipmentTextureRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FEquipmentTextureData& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class UEquipmentTextureUtility : public UBlueprintFunctionLibrary
{

    FName GetResourceLabel(const FEquipmentTextureData& EquipmentTextureData, EWEAPON_STANCE stance, bool bGetNPC);
}; // Size: 0x28

class UEvaluateAchievementFunctions : public UBlueprintFunctionLibrary
{

    bool EvaluateVisitLevelCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateSwoonNpcUniqueCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateSubStoryClearCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateSpecifySpecialItemCount_MusicRecord(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateSpecifySpecialItemCount_BattleTestedWeapon(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateSpecifySpecialItemCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateOwnShip(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateOpenEndCard(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateMaxDamage(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateMainStoryRecordReOpen(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateMainStoryClearCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateMainStoryClear(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateLinerShipCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateJoinedPlayerCharacterCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateJobItemCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateInformationFieldCommandSuccessCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateFollowingCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateExtraStoryRecordReOpen(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateEpilogueClear(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateClearExBoss(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateBreakCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateBoostAttackCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateAllAchievement(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateAcquisitonDivineAbilityCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateAcquisitonAdvancedAbilityCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateAcquisitonAbilityCount(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool EvaluateAcquisitonAbility(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
    bool CalculateMainStoryProgress(const FAchievementData& achieve, const FNoticeArgs& NoticeArgs, float& outProgress);
}; // Size: 0x28

class UEventCommandBase : public ULevelSequenceDirector
{
    class ULevelSequencePlayer* m_pTargetMainSequencePlayer;                          // 0x0038 (size: 0x8)
    bool m_bIsStopMainSequence;                                                       // 0x0040 (size: 0x1)
    float m_fPlaybackSubSeqPosition;                                                  // 0x0044 (size: 0x4)
    float m_fFadeTime;                                                                // 0x0048 (size: 0x4)
    class ULevelSequencePlayer* m_pTargetSubSequencePlayer;                           // 0x0050 (size: 0x8)
    bool m_bIsStopSubSequence;                                                        // 0x0058 (size: 0x1)
    TMap<class FName, class FEventEmotion> EventEmotionList;                          // 0x0070 (size: 0x50)

    void TitlePauseFunction();
    void SubSequencePlayIndexFunction(int32 nNumLoops, float fSubSeqPlayPosition, int32 nIndex);
    void SubSequencePlayFunction(int32 nNumLoops, float fSubSeqPlayPosition);
    void StopRichEventBgmFunction(float fFadeOutTime);
    void StopEmotionFunction(FName TagName);
    void StartPlayEmotionFunction(FName TagName, EEMOTION_TYPE EmotionType, float LifeTime, FVector Offset);
    void StartCameraSpawnFunction(EKSCameraType CameraType, float fBlend);
    void SpawnCharaFunction(class AKSCharacterBase* EventChara, FName CharaLabelName, EKSCharacterDir SetDir, FName AddTagName);
    void ShowDebugInfoTextFunction(FString Text, float Time);
    void SetPlayerPositionFunction(FVector Position, bool PlaySkip);
    void SetLateFadeParam(ERICHEVENT_CMD Command, float EndTime, FLinearColor Color);
    void SetHouseModeFunction(bool In, FName TargetBP, bool DoorOpen);
    void PlayRichEventSeFunction(FName strSeLabel);
    void PlayRichEventBgmMapFunction(float fFadeOutTime, float fFadeInTime);
    void PlayRichEventBgmFunction(FName strBgmLabel, float fFadeOutTime, float fFadeInTime);
    void PlayRichEventBgmBlockFunction(int32 nBlockId);
    void NarrationPlayFunction(FName strNarrationLabel, bool StopMainSequence, float fPlaybackSubSeqPosition);
    void InitSeqData();
    bool GetAllInvokeMode();
    void FinishBattleWipe(ENOTICE_TYPE eNoticeType, const FNoticeArgs& Args);
    void FadeOutFunction(float EndTime, const FLinearColor Color);
    void FadeInFunction(float EndTime, const FLinearColor Color);
    void End();
    void DetachCharacterFunction(class AKSCharacterBase* EventChara);
    bool CheckActiveMessage();
    void ChangeVolumeEnvFunction(float fVolume, float fFadeTime);
    bool ChangeUpdateCommand(ERICHEVENT_CMD eType);
    void ChangeCameraFunction(EKSCameraType CameraType, float fBlend);
    void ChangeActionFunction(class AKSCharacterBase* EventChara, EKSCharacterAction ActionLabelName, int32 frame, EKSCharacterAnimationLoop LoopSetting, EKSCharacterDir SetDir);
    void BalloonOpenLabelPlayerFunction(EBalloonType BalloonType, EEventBalloonDir BalloonDir, FName TalkTargetName, FName TalkText, float AutoTalkWait, bool StopMainSeq, float PlaybackSubSeqPosition, bool WithoutTail);
    void BalloonOpenLabelFunction(FName TalkTargetTag, EBalloonType BalloonType, EEventBalloonDir BalloonDir, FName TalkTargetName, FName TalkText, float AutoTalkWait, bool StopMainSeq, float PlaybackSubSeqPosition, FVector2D Offset, bool WithoutTail);
    void BalloonOpenFunction(FName TalkTargetTag, EBalloonType BalloonType, EEventBalloonDir BalloonDir, FName TalkTargetName, FString TalkText, float AutoTalkWait, bool StopMainSeq, float PlaybackSubSeqPosition, FVector2D Offset, bool WithoutTail, FTalkVoice TalkVoiceData);
    void AttachPlayerFunction(class AKSCharacterBase* EventChara, EKSCharacterDir SetDir, FName MemoryLabelName);
    void AttachCharacterActionFunction(class AKSCharacterBase* EventChara, EKSCharacterAction ActionLabelName, int32 frame, EKSCharacterAnimationLoop LoopSetting, EKSCharacterDir SetDir);
}; // Size: 0xE8

class UEventFieldCommandBattleBase : public UKSUserWidgetBase
{

    bool Open(FName NPCLabel);
}; // Size: 0x358

class UEventFunction : public UBlueprintFunctionLibrary
{

    bool SetTheaterEventData(FSetTheaterEventDataDelegate Delegate);
    void SetNpcTalkDir(class AKSCharacterBase* targetNpc, int32 ParamDir);
    bool SetJsonData(TArray<FString>& outEventData, class UJsonFieldData* jsonData, FString Command, FString eventJsonName);
    bool SetEventData(FSetEventDataDelegate Delegate);
    bool PlayEventTheater(FName EventName, int32 OverrideTimeZone);
    void MakeActiveEventLabelList(TArray<FName>& outEventLabelList, const FPlacementData& placeData);
    bool IsEventSkipEnable();
    bool IsEventPlayTheater();
    bool IsEventPlaying();
    bool IsEventBattleDefeatNextEvent();
    bool IsEventActive(int32 StartFlag, int32 EndFlag);
    bool IsActiveByEventFlag(int32 StartFlag, int32 EndFlag);
    int32 GetThiefChokerFlag();
    FName GetThiefActionLabelPartyChat(int32 PartyChatId, bool bTheater);
    FName GetThiefActionLabelName(bool Flag);
    FName GetThiefActionLabelMainStory(int32 StoryTaskID, bool bTheater);
    FString GetPlayingEventName();
    int32 GetMovieSectionsCount(class UMovieScene* Movie);
    class UMovieSceneEventTriggerSection* GetMovieSectionData(class UMovieScene* Movie, int32 Count);
    class UMovieSceneAtomSection* GetMovieSectionAtomData(class UMovieScene* Movie, int32 Count);
    FMovieSceneEvent GetEventTriggerParam(class UMovieSceneEventTriggerSection* Section, int32 Count);
    int32 GetEventTriggerNum(class UMovieSceneEventTriggerSection* Section);
    class AKSCharacterBase* GetEventTargetCharacter();
    bool GetEventMemoryObjectFlag(int32 StoryTaskID, int32 FlagID);
    EKSCharacterDir GetEventDir(int32 ParamDir);
    bool EventPlay(FName EventName, class AKSCharacterBase* TargetCharacter);
    void EventFlagRefresh(class UObject* WorldContextObject);
    bool CheckCurrentTimeByTimeZoneTriggerType(ETIMEZONE_TRIGGER_TYPE timeZoneTrgType);
}; // Size: 0x28

class UEventSkipBase : public UKSUserWidgetBase
{

    bool UpdateProgress(float CurrentTime, float MaxTime);
    void OnEventSpeedChange(ENOTICE_TYPE noticeType, const FNoticeArgs& NoticeArgs);
    void Debug_SetForceSkip(bool bforceSkip);
}; // Size: 0x358

class UEventStateData : public UStateDataBase
{
}; // Size: 0x58

class UEventTableUtility : public UBlueprintFunctionLibrary
{

    void GetEventSoundDataFromName(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FEventSoundData& outEventSound, FName Label);
    void GetEventListDataFromName(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FEventListData& outEventData, FName Label);
}; // Size: 0x28

class UFBImage : public UImage
{
    TArray<class UKSPaperFlipbook*> CustomFlipbook;                                   // 0x0210 (size: 0x10)
    class UPaperFlipbook* flipbook;                                                   // 0x0228 (size: 0x8)
    FFlipbookCalcData CalcData;                                                       // 0x0230 (size: 0x20)
    bool AutoSizeUpdate;                                                              // 0x0250 (size: 0x1)
    bool ForceLayout;                                                                 // 0x0251 (size: 0x1)
    bool EnableOffset;                                                                // 0x0252 (size: 0x1)
    FVector2D DrawSize;                                                               // 0x0254 (size: 0x8)
    float Timer;                                                                      // 0x025C (size: 0x4)
    bool AnimationLoop;                                                               // 0x0260 (size: 0x1)

    void Tick(const float InDeltaTime);
    void SwitchFlipbookModifyTarget();
    bool SetFlipbook(class UPaperFlipbook* flipbook);
    void SetFBSize(class UPaperSprite* TargetSprite);
    void SetDrawSize(const FVector2D Size);
    void SetAnimationLoop(bool bLoop);
    bool IsFlipbookAnimeFinish();
    FVector2D GetSpriteOffset();
    FVector2D GetMaxFBSize();
    class UKSPaperFlipbook* GetFlipbookModifyTarget();
    void CalcSprite();
}; // Size: 0x268

class UFBPart : public UAcqUserWidget
{
}; // Size: 0x2C0

class UFastTravelChangeDestTableUtil : public UDataTableUtilityBase
{

    bool GetChangedDestinationByEventFlag(FName levelLabel, FFastTravelChangeDestination& NewDestination);
}; // Size: 0x28

class UFieldChangeStateData : public UStateDataBase
{
}; // Size: 0x58

class UFieldCommandDataUtility : public UDataTableUtilityBase
{

    FName GetFieldCommandStatusMenuIconLabel(MJFieldCommandType FCType);
    FName GetFieldCommandNameLabel(MJFieldCommandType FCType);
    FName GetFieldCommandIconLabel(MJFieldCommandType FCType);
    bool GetFieldCommandFlowClassType(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TSubclassOf<class AFieldCommandFlowBase>& FlowClass, MJFieldCommandType FCType);
    FName GetFieldCommandDetailLabel(MJFieldCommandType FCType);
    bool GetFieldCommandDataByType(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FFieldCommandData& OutData, MJFieldCommandType FCType);
    bool GetFieldCommandDataByRowName(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FFieldCommandData& OutData, FName RowName);
    float GetFieldCommandActionWaitTime(MJFieldCommandType FCType);
}; // Size: 0x28

class UFieldCommandMenuBase : public UKSUserWidgetBase
{

    bool Open(class AKSCharacterBase* TargetChara, bool DrawLeft, const TArray<MJFieldCommandType>& CommandList);
    bool IsInputEnableMode();
    bool Close(bool StateCheck);
    bool CheckUniqueCommandFlow();
}; // Size: 0x358

class UFieldCommandMenuStateData : public UStateDataBase
{
}; // Size: 0x58

class UFieldCommandPopupWidgetBase : public UKSUserWidgetBase
{

    bool Open(class AKSCharacterBase* TargetCharacter, const TArray<MJFieldCommandType>& Commands);
}; // Size: 0x358

class UFieldCommandPreviewMenu : public UKSUserWidgetBase
{
    int32 m_CurrentTabCursorIndex;                                                    // 0x0358 (size: 0x4)
    EFieldCommandPreviewMenuState WidgetState;                                        // 0x035C (size: 0x1)

    void SetState(EFieldCommandPreviewMenuState NextState);
    void SetCurrentTabCursorIndex(int32 Index);
    void OnUpdateState(EFieldCommandPreviewMenuState CurrentState);
    void OnEndState(EFieldCommandPreviewMenuState CurrentState);
    void OnDecide_Internal();
    void OnCursorUp_Internal();
    void OnCursorDown_Internal();
    void OnCancel_Internal();
    void OnBeginState(EFieldCommandPreviewMenuState CurrentState);
    EFieldCommandPreviewMenuState GetState();
    int32 GetCurrentTabCursorIndex();
}; // Size: 0x360

class UFieldCommandPreviewPanelBase : public UAcqUserWidget
{
    int32 m_CurrentCursorIndex;                                                       // 0x02C0 (size: 0x4)
    int32 m_BanInput;                                                                 // 0x02C4 (size: 0x4)

    void SetCurrentCursorIndex(int32 Index);
    void SetBanInput(int32 allow);
    int32 GetCurrentCursorIndex();
    bool GetBanInput(EUI_INPUT_TYPE Type);
}; // Size: 0x2C8

class UFieldCommandPreviewTabIconBase : public UAcqUserWidget
{
}; // Size: 0x2C0

class UFieldCommandStateData : public UStateDataBase
{
}; // Size: 0x58

class UFieldCommandUtil : public UBlueprintFunctionLibrary
{

    void SetIsFcV2(bool Val);
    void OpenFieldCommandPreviewMenu();
    void OpenFieldCommandMenu();
    bool IsUseFieldCommandsAllwaysTimeZone(TArray<MJFieldCommandType> Type, class AKSCharacterBase* TargetChara, bool IsDayTime);
    bool IsUseFieldCommandAllwaysTimeZone(MJFieldCommandType Type, class AKSCharacterBase* TargetChara, bool IsDayTime);
    bool IsSwoonFc(MJFieldCommandType Type);
    bool IsPlayingFieldCommand();
    bool IsPlayingBadConnectionFieldCommand();
    bool IsOpenFieldCommandMenu(class UObject* WorldContextObject, class AKSCharacterBase* refTalk);
    bool IsItemFc(MJFieldCommandType Type);
    bool IsInformationFc(MJFieldCommandType Type);
    bool IsFollowFc(MJFieldCommandType Type);
    bool IsFieldCommandTargetNpc(class AKSCharacterBase* NPC);
    bool IsBadConnectionNPC(FName NPCLabel);
    bool IsBadConnection(int32 TownID);
    TArray<MJFieldCommandType> GetSwoonFcTypes();
    void GetPartyFieldCommand(bool AvaiableOnly, class AKSCharacterBase* TargetChara, bool& CanUseCommand, TArray<MJFieldCommandType>& FieldCommandList);
    TArray<MJFieldCommandType> GetItemFcTypes();
    bool GetIsGameOverWhenLoose();
    bool GetIsFcV2();
    TArray<MJFieldCommandType> GetInformationFcTypes();
    TArray<MJFieldCommandType> GetFollowFcTypes();
    void Debug_SetIsForceSuccessFC(bool Val);
    void Debug_SetIsForceFailureFC(bool Val);
    bool Debug_GetIsForceSuccessFC();
    bool Debug_GetIsForceFailureFC();
    bool CanExecFieldCommand(FName NPCLabel, MJFieldCommandType FCType);
}; // Size: 0x28

class UFieldCommandWidgetBase : public UKSUserWidgetBase
{
    class UBackgroundBlur* Blur;                                                      // 0x0358 (size: 0x8)

}; // Size: 0x360

class UFieldCommandWidgetBattleBase : public UFieldCommandWidgetSwoonBase
{
    int32 ForgetAbilityIndex;                                                         // 0x0360 (size: 0x4)

    bool OpenLearnAbilityDialog(FName NPCLabelName, bool IsAbilityFull);
    bool OpenForgetAbilityDialog(FName NPCLabel, const TArray<int32>& SelectAbilityList);
    bool OpenConfirmAbilityDialog(const TArray<int32>& SelectAbilityList);
    void IsExecLearnAbility(bool& ExecLearnAbility);
}; // Size: 0x368

class UFieldCommandWidgetInfoBase : public UFieldCommandWidgetBase
{

    bool OpenInformationDialog(FName NPCLabel);
    bool OpenFailedDialog(FName NPCLabel);
    bool OpenConfirmDialog(FName NPCLabel);
    bool GetResult(bool& WasExece, bool& WasSuccess);
}; // Size: 0x360

class UFieldCommandWidgetItemBase : public UFieldCommandWidgetBase
{
    bool IsExecuted;                                                                  // 0x0360 (size: 0x1)
    bool IsSucceeded;                                                                 // 0x0361 (size: 0x1)
    TArray<FName> ItemLabels;                                                         // 0x0368 (size: 0x10)
    FName PlayEventLabel;                                                             // 0x0378 (size: 0x8)

    bool OpenDialog(FName NPCLabel);
    FName GetPlayEventLabel();
    TArray<FName> GetItemLabels();
    bool GetIsSucceeded();
    bool GetIsExecuted();
}; // Size: 0x380

class UFieldCommandWidgetMonsterBase : public UFieldCommandWidgetSwoonBase
{

    bool OpenMonsterReleaseDialogInBattle(const TArray<FMonsterListData>& ShowMonsterList);
    bool OpenMonsterReleaseDialog(const TArray<FMonsterListData>& ShowMonsterList);
    void GetReleaseMonsterList(TArray<int32>& ReleaseMonsterList);
    bool CloseMonsterReleaseDialog();
}; // Size: 0x360

class UFieldCommandWidgetRobBase : public UFieldCommandWidgetSwoonBase
{

    bool OpenResultDialog(const TArray<FPurchaseItemInfoData>& GotItems, const TArray<FPurchaseItemInfoData>& CouldNotGetItems);
}; // Size: 0x360

class UFieldCommandWidgetSwoonBase : public UFieldCommandWidgetBase
{

    bool OpenNPCDialog(FName NPCLabel);
    bool OpenFailedDialog(FName NPCLabel);
    int32 GetDialogInput();
}; // Size: 0x360

class UFieldPathTableUtility : public UBlueprintFunctionLibrary
{

    void GetFieldPathTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetFieldPathData(FFieldPathInfoData& OutData, FName TargetLabel);
}; // Size: 0x28

class UFieldStateData : public UStateDataBase
{
}; // Size: 0x58

class UFlagOverrideUtility : public UDataTableUtilityBase
{

    void NotifyFlagOverrideDB(FName dbName, EDBNoticeType notice);
}; // Size: 0x28

class UFlagRandomControlDbUtil : public UDataTableUtilityBase
{
}; // Size: 0x28

class UFontDataUtility : public UBlueprintFunctionLibrary
{

    class UDataTable* GetTalkFontStyleDB();
}; // Size: 0x28

class UFootStepTableUtility : public UDataTableUtilityBase
{

    bool GetFootStepTableRowData(FFootStepData& OutData, FName TargetLabel, bool EnableLog);
}; // Size: 0x28

class UGameColorTableUtility : public UDataTableUtilityBase
{

    void NotifyGameColorDb(FName dbName, EDBNoticeType notice);
    void GetGameColorAsSlateColor(EGameColor gameColor, FSlateColor& outSlateColor);
    FLinearColor GetGameColor(EGameColor gameColor);
}; // Size: 0x28

class UGameConditionUtility : public UBlueprintFunctionLibrary
{

    bool CheckGameCondition(EGAME_CONDITION_TYPE Type, FGameConditionInfo& Param);
}; // Size: 0x28

class UGameMainSequenceUtility : public UBlueprintFunctionLibrary
{

    FMainSequneceRequestParam CreateDefaultParamWithStateParam(FMainSequenceStateParam StateParam);
}; // Size: 0x28

class UGameOverStateData : public UStateDataBase
{
}; // Size: 0x50

class UGameParamTableUtility : public UDataTableUtilityBase
{

    bool GetGameParamTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetGameParamTableRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FGameParamInfo& OutData, FName TargetLabel, bool LogEnable);
    bool GetBattleParamRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetBattleParamData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FGameParamInfo& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class UGameoverWidgetBase : public UKSUserWidgetWithState
{
    FGameoverWidgetBaseFinishEvent FinishEvent;                                       // 0x0368 (size: 0x10)
    void FinishEvent(int32 nSelectCursor);
    FGameoverWidgetBaseOpenFinish OpenFinish;                                         // 0x0378 (size: 0x10)
    void OpenFinish();

    void SetGameOverType(EGAMEOVER_TYPE Type);
    int32 IsCursorSelect();
    void DecideEvent();
    void CursorUpEvent();
    void CursorDownEvent();
}; // Size: 0x388

class UGiftDataTableUtility : public UDataTableUtilityBase
{
}; // Size: 0x28

class UGiftUtility : public UBlueprintFunctionLibrary
{

    bool TryReceiveGift(const FGiftData& GIFT, TArray<FName>& outFailedReceiveItems);
    bool GetIsPreOrdered();
    bool GetAvailablePreOrderGiftData(FGiftData& OutData);
    void Debug_SetIsForcePreOrdered(bool Val);
}; // Size: 0x28

class UGraphicsUtility : public UBlueprintFunctionLibrary
{

    void SetVSyncEnable(bool bEnable);
    void SetViewDistanceQuality(int32 nQuality);
    void SetTextureQuality(int32 nQuality);
    void SetShadowQuality(int32 nQuality);
    void SetShaderQuality(int32 nQuality);
    void SetResolutionQuality(int32 nQuality);
    void SetPostProcessQuality(int32 nQuality);
    void SetMaxFPS(int32 nMaxFPS);
    void SetGraphicsPreset(class UObject* WorldContextObject, int32 nQuality);
    void SetFoloageQuality(int32 nQuality);
    void SetEyeAdaptationEnable(bool bEnable);
    void SetEffectQuality(int32 nQuality);
    void SetAntiAliasingQuality(int32 nQuality);
    bool IsEnableGraphicsPreset(class UObject* WorldContextObject);
    int32 GetViewDistanceQuality();
    int32 GetShaderQuality();
    int32 GetResolutionQuality();
    int32 GetFoliageQuality();
}; // Size: 0x28

class UGuildDataUtility : public UDataTableUtilityBase
{

    void SetAcquiredJobLicense(int32 GuildId, int32 licenseIndex, bool bAcquired);
    bool IsAcquiredJobLicense(int32 GuildId, int32 licenseIndex);
    void GetGuildNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    void GetGuildDataByLabel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FGuildData& outGuildData, FName guildLabel);
    void FindGuildInWorldMapLocation(TArray<int32>& outGuildId, FName WorldMapLabel);
    void FindGuildDataByNpcLabel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FGuildData& outGuildData, FName NPCLabel);
    bool CheckAchievedJobLicense(int32 GuildId, int32 licenseIndex);
}; // Size: 0x28

class UGuildMenuBase : public UKSUserWidgetBase
{
    FGuildData GuildData;                                                             // 0x0358 (size: 0x88)
    FName guildLabel;                                                                 // 0x03E0 (size: 0x8)

    void SetGuildData(FName Label);
    bool ReOpenGuildMenu();
    bool GetReOpenFlag();
}; // Size: 0x3E8

class UGuildSaveDataUtil : public USaveDataUtilBase
{

    void SetVisitedGuild(int32 GuildId, bool bVisited);
    void SetAcquiredLicense(int32 GuildId, int32 licenseIndex, bool bAcquired);
    bool IsVisitedGuild(int32 GuildId);
    bool IsAcquiredLicense(int32 GuildId, int32 licenseIndex);
}; // Size: 0x28

class UHelpWindowBase : public UKSUserWidgetBase
{
    class UPanelWidget* m_WidgetRoot;                                                 // 0x0358 (size: 0x8)
    FVector2D m_CurrentOffset;                                                        // 0x0360 (size: 0x8)

    void SetPositionByWidget(const class UUserWidget* Widget, bool forceFlip);
    void SetPosition(const FVector2D& NewPosition);
    void SetOffset(const FVector2D& Offset);
    FVector2D GetCurrentOffset();
}; // Size: 0x368

class UHolyTorchSaveDataUtil : public USaveDataUtilBase
{

    void SetHolyTorchState(EHOLY_TORCH_TYPE torchType, EHOLY_TORCH_STATE torchState);
    bool IsAllHolyTorchReBurn();
    EHOLY_TORCH_STATE GetHolyTorchState(EHOLY_TORCH_TYPE torchType);
    int32 GetBurnOutNum();
    int32 GetBurnNum();
}; // Size: 0x28

class UHunterPartnerFbComponent : public UCharacterFlipbookComponent
{

    void SetPartnerVisibility(bool bVisibility);
    bool IsPartnerVisibile();
}; // Size: 0x550

class UInitialLaunchOptionMenu : public UUserWidget
{
    EINITIAL_OPTION_WIDGET_STATE m_WidgetState;                                       // 0x0260 (size: 0x1)

    void UpdateWidgetState(EINITIAL_OPTION_WIDGET_STATE WidgetState);
}; // Size: 0x268

class UInvadeDataUtility : public UDataTableUtilityBase
{

    int32 InvadeDataLabelToId(FName Label);
    FName InvadeDataIdToLabel(int32 ID);
    bool InvadeDataExistsByLabel(FName Label);
    TArray<FName> GetInvadeDataLabelList();
    void GetInvadeDataByLabel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FInvadeData& outInvadeData, FName Label);
}; // Size: 0x28

class UInventorComponent : public UActorComponent
{
    TMap<class FName, class FInventorItemData> m_acInventorItemData;                  // 0x00B0 (size: 0x50)

    bool UseInventorItem(FName strInventorItemLabel);
    bool UpdateCreateInventorItem(int32 nTurnCount, bool bRandom, bool bUseText);
    bool StartCreateInventorItem(FName strInventorItemLabel);
    bool StartCreateAllInventorItem();
    bool IsInventorItemReady(FName strLabel);
    bool IsInventorItemExecCreate(FName strLabel);
    bool IsInventorItemAllReady();
    bool IsExecutableInventorItem();
    bool InitInventorItemData();
    void GetInventorItemCreateTurn(FName strLabel, int32& nRestTurn, int32& nCreateTurnMax);
    bool AddInventorItemData(FName strInventorItemLabel, int32 nInventorTurn);
}; // Size: 0x100

class UInventorInventionDbUtil : public UDataTableUtilityBase
{

    bool GetInventionDataByRowName(FInventionData& OutData, const FName& RowName);
}; // Size: 0x28

class UItemDataUtility : public UBlueprintFunctionLibrary
{

    void SaveEquipmentDataLabelToId(const FSaveEquipmentData& saveEquipDataLabel, FSaveEquipmentDataID& outSaveEquipDataId);
    void SaveEquipmentDataIdToLabel(const FSaveEquipmentDataID& saveEquipDataId, FSaveEquipmentData& outSaveEquipDataLabel);
    void NotifyItemDataDB(FName dbName, EDBNoticeType notice);
    int32 ItemLabelToID(FName ItemLabel);
    FName ItemIDToLabel(int32 ItemId);
    bool IsUsableSpecialItemInMenu(FName spItemLabel);
    bool IsSpecialItem(FName ItemLabel);
    bool IsMeatItem(FName spItemLabel);
    bool IsItemExistsInDB(FName ItemLabel);
    bool IsHolyTorchItem(FName spItemLabel);
    bool IsDisplaySpecialItemInMenuByLabel(FName spItemLabel);
    bool IsDisplaySpecialItemInMenu(const FSpecialItemData& specialItem);
    void GetSpesialItemDataByItemLabel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSpecialItemData& outSpItemData, FName ItemLabel);
    void GetSpesialItemData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSpecialItemData& outSpItemData, FName spItemLabel);
    void GetSpecialItemLabelList(ESPECIAL_ITEM_TYPE spType, TArray<FName>& outList);
    EBATTLE_TARGET_TYPE GetItemTarget(FName ItemLabel);
    void GetItemPossesionMaxTableByCategory(TMap<EItemCategoryData, int32>& outMaxTable);
    int32 GetItemPossesionMaxByItemLabel(FName ItemLabel);
    int32 GetItemPossesionMaxByItemId(int32 ItemId);
    int32 GetItemPossesionMaxByCategory(EItemCategoryData Category);
    bool GetItemNameTextWithIcon(FText& outItemName, FName ItemLabel);
    bool GetItemNameText(FText& outItemName, FName ItemLabel);
    FName GetItemNameID(FName ItemLabel);
    int32 GetItemMaxNum(FName ItemLabel);
    bool GetItemLabelTextList(TArray<FText>& outLabelList);
    TArray<FName> GetItemLabelList();
    int32 GetItemID(FName ItemLabel);
    void GetItemFontData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FItemIconText& outItemFontTextData, FName itemIconTextLabel);
    FName GetItemEquipmentTextureLabel(FName ItemLabel);
    EEquipmentCategory GetItemEquipmentCategory(FName ItemLabel);
    EITEM_DISPLAY_TYPE GetItemDisplayType(FName ItemLabel);
    FName GetItemDetailTextID(FName ItemLabel);
    bool GetItemDataByItemID(FItemData& outItemData, int32 ItemId);
    bool GetItemData(FItemData& outItemData, FName ItemLabel);
    class UDataTable* GetItemCommandEffecter(FName ItemLabel);
    void GetItemCategoryDataByEnum(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FItemCategory& outItemCategoryData, EItemCategoryData ItemCategory);
    EItemCategoryData GetItemCategory(FName ItemLabel);
    EATTRIBUTE_TYPE GetItemAttribute(FName ItemLabel);
    bool GetItemAilment(TArray<FAilmentHandler>& outAilment, FName ItemLabel);
    void GetEquipmentCategoryDataByEnum(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FEquipmentCategoryBase& outEquipCategoryData, EEquipmentCategory equipCategory);
    FName EquipmentCategoryIDToLabel(int32 equipCategoryID);
    bool CheckItemCategory(FName ItemLabel, EItemCategoryData Category);
}; // Size: 0x28

class UItemSaveDataUtil : public USaveDataUtilBase
{

    void SetSoldOutShopItemDataByLabel(const FName& purchaseItemLabel, const FSoldOutShopItemData& Data);
    void SetSoldOutShopItemDataById(int32 purchaseItemId, const FSoldOutShopItemData& Data);
    bool IsSoldOutShopItemByLabel(const FName& purchaseItemLabel);
    bool IsSoldOutShopItemById(int32 purchaseItemId);
    void GetSortedBackpackItemsForSale(TArray<FBackPackItemData>& outItems);
    void GetSortedBackpackItemsForBattle(TArray<FBackPackItemData>& outItems);
    void GetSortedBackpackItems(TArray<FBackPackItemData>& outItems);
    int32 GetMeetNum();
    int32 GetItemNumInBackpackByLabel(const FName& ItemLabel);
    int32 GetItemNumInBackpackById(const int32 ID);
    void GetItemAcquisitionHistory(TArray<int32>& outHistory);
    void GetBackpackItems(TArray<FBackPackItemData>& outItems);
}; // Size: 0x28

class UItemUtility : public UBlueprintFunctionLibrary
{

    void SortSaleItemByShopItemOrder(TArray<FSaveBackPackItem>& ItemList);
    void SortPurchaseItemByShopItemOrderForAnimalShop(TArray<FItemData>& ItemList);
    void SortPurchaseItemByShopItemOrder(TArray<FItemData>& ItemList);
    void SortItemByIdAndPriority(TArray<FSaveBackPackItem>& ItemList);
    void SortBattleItemById(TArray<FSaveBackPackItem>& ItemList);
    bool IsMusicRecord(const FName& ItemLabel);
    int64 CalcShopItemOrder(int64 ItemId, int64 SortCategory, int64 itemPrice);
}; // Size: 0x28

class UJobDataTableUtility : public UDataTableUtilityBase
{

    void NotifyJobDataDB(FName dbName, EDBNoticeType notice);
    TArray<FName> GetObtainJobItem();
    bool GetJobDataTableRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FJobData& OutData, FName TargetLabel, bool LogEnable);
    bool GetJobDataByJobID(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FJobData& OutData, int32 JobID);
    bool GeJobDataTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
}; // Size: 0x28

class UJobEvalautionValueTableUtility : public UDataTableUtilityBase
{

    bool GetJobEvalautionValueTableRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FJobEvalautionValueData& OutData, FName TargetLabel, bool LogEnable);
    bool GetJobEvalautionValueTableRomDataFromJobType(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FJobEvalautionValueData& OutData, EJOB_TYPE JobType, bool LogEnable);
    bool GeJobEvalautionValueTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
}; // Size: 0x28

class UKSAutoSavingWidget : public UUserWidget
{

    bool SetText(bool ForOptionMenu);
    bool OpenUI();
    bool CloseUI();
}; // Size: 0x260

class UKSCharacterFunction : public UBlueprintFunctionLibrary
{

    void SubPlayerCharacterFirstEquipment(EPlayableCharacterID CharacterID);
    LEVEL_AREA_TYPE Static_GetPlayerCurrentArea();
    bool StartPlayerLadderUp(class AActor* ladderActor, class UBoxComponent* ladderUpTrigger, const FVector& StartPosition);
    bool StartPlayerLadderDown(class AActor* ladderActor, class UBoxComponent* ladderUpTrigger, const FVector& StartPosition);
    void StartEpilogueParty();
    class AKSCharacterBase* SpawnPlayerCharacter(EPlayableCharacterID PlayerID, const FVector& Location, EKSCharacterDir Dir);
    class AKSCharacterBase* SpawnNPCCharacter(const FName& ActionLabel, const FVector& Location, EKSCharacterDir Dir);
    class AKSCharacterBase* SpawnEventCharacter(const FName& ActionLabel, const FVector& Location, EKSCharacterDir Dir);
    class AKSCharacterBase* SpawnBarCharacter(const FName& ActionLabel, const FVector& Location, EKSCharacterDir Dir, int32 charIndex);
    void SortCharacterIDFromJobDisplay(TArray<int32> CharaID, TArray<int32>& outCharaID);
    bool SetUpLadderUpStart(class AActor* ladderActor, class UBoxComponent* upCollision, FVector vPosition, EKSCharacterMoveMode eCheckMode, EKSCharacterMoveMode eSetMode, bool bEnable);
    bool SetUpLadderDownStart(class AActor* ladderActor, class UBoxComponent* downCollision, FVector vPosition, EKSCharacterMoveMode eCheckMode, EKSCharacterMoveMode eSetMode, bool bEnable);
    void SetupFirstLearnAbility();
    void SetPlayerCharacterInput(class UObject* WorldContextObject, bool Enable);
    void SetPartyHouseIn(float Scale, float OffsetHeight, bool HouseOut, bool bNotPartyRefresh);
    void SetMyShipSail(bool bOpen);
    void SetLadderMoveParamsToPlayer(const FVector& upEndPos, const FVector& downEndPos);
    void SetLadderCharacterPosition(FVector vPosition, EKSCharacterMoveMode eMoveMode);
    void SetKSInputMode(class UObject* WorldContextObject, EKSInputMode Mode);
    void SetCharacterEnable(bool Enable);
    void ResetPartyCharacterForOutGame();
    void ResetLadderMode();
    void RemoveCharacter(class AKSCharacterBase* Character);
    void RegisterCharacterToManageList(class AKSCharacterBase* Character);
    void RefreshPartyCharacterFormation();
    void RefreshPartyAfterChangeMember(class UObject* WorldContextObject);
    void RefreshCharacterVoice(class UObject* WorldContextObject, TArray<int32>& CharacterIDs);
    void RefreshCharacterResource(bool containNPC);
    void RefreshCharacterLantern();
    void NotifyCharaFormDB(FName dbName, EDBNoticeType notice);
    bool IsRegisteredInManageList(class AKSCharacterBase* Character);
    bool IsPlayerCharacterInput(class UObject* WorldContextObject);
    bool IsPlayerCharacter(class AActor* charaActor);
    bool IsPlacateFollowNPC();
    bool IsMainPlayerCharacter(EPlayableCharacterID PlayerID);
    bool IsLureFollowNPC();
    bool IsLoaded();
    bool IsLearnedAbility();
    bool IsLeadFollowNPC();
    bool IsHireFollowNPC();
    bool IsGuestPlayerCharacterFromID(int32 CharaID);
    bool IsGuestPlayerCharacter(EPlayableCharacterID PlayerID);
    bool IsFieldCommandActionEnd(class AKSCharacterBase* Character);
    bool IsEquipedSupportAbility(int32 CharacterID, ESUPPORT_AILMENT_TYPE SupportAilment, FSupportAbilityDataBase& outEquipedSupportAbility);
    bool IsEightParty();
    void InitPlayerAfterSetSaveData(class UObject* WorldContextObject);
    FVector GetTargetRearLocation(class AKSCharacterBase* TargetCharacter, float Scale);
    EKSCharacterDir GetReverseDirByPosition(class AKSCharacterBase* CharaA, class AKSCharacterBase* CharB);
    EKSCharacterDir GetReverseDir(const EKSCharacterDir& Dir);
    class UPlayerPropertyComponent* GetPlayerProperty();
    class AKSCharacterBase* GetPlayerObject();
    bool GetPlayerDataByIntID(int32 CharacterID, FPlayableCharacterData& CharacterData);
    bool GetPlayerDataByID(EPlayableCharacterID PlayerID, FPlayableCharacterData& CharacterData);
    FName GetPlayerCharacterLabelWithForm(class UObject* WorldContextObject, EPlayableCharacterID PlayerID, uint8 CharaForm);
    uint8 GetPlayerCharacterForm(class UObject* WorldContextObject, EPlayableCharacterID PlayerID);
    void GetNPCResourceLabelFromLevelName_NoReaction(TArray<FSimpleActionLoad>& OutData, FName levelName);
    void GetNPCResourceLabelFromLevelName_ExceptNoReaction(TArray<FName>& OutData, FName levelName);
    void GetNPCResourceLabelFromLevelName(TArray<FName>& OutData, FName levelName);
    bool GetMyShipSail();
    EKSCharacterMoveMode GetMoveModeForAction(EKSCharacterAction Action);
    bool GetLandLocation(class UObject* WorldContextObject, FVector& OutNewLocation, const FVector& Location, float Length, const FVector AddOffset);
    class AKSPlayerController* GetKSPlayerController(class UObject* WorldContextObject);
    EKSInputMode GetKSInputMode(class UObject* WorldContextObject);
    FVector GetDirVector(EKSCharacterDir Dir);
    void GetCurrentPartyResourceLabel(TArray<FName>& OutData, class UObject* WorldContextObject);
    TArray<ESpecialActionType> GetCharacterSpecialActionTypeList(int32 CharacterID);
    ESpecialActionType GetCharacterSpecialActionType(int32 CharacterID, int32 Index);
    TArray<FName> GetCharacterSpecialActionTextLabelsForMenuName(int32 CharacterID);
    TArray<FName> GetCharacterSpecialActionTextLabelsForMenuDetail(int32 CharacterID);
    TArray<FName> GetCharacterSpecialActionTextLabelsForBattleCommandName(int32 CharacterID);
    TArray<FName> GetCharacterSpecialActionTextLabelsForBattleCommandDetail(int32 CharacterID);
    TArray<FName> GetCharacterSpecialActionTextLabelsForAbilityLabel(int32 CharacterID);
    FName GetCharacterSpecialActionTextLabelForPlayerSelectDetail(int32 CharacterID);
    FName GetCharacterSpecialActionTextLabelForMenuName(int32 CharacterID, int32 Index);
    FName GetCharacterSpecialActionTextLabelForMenuDetail(int32 CharacterID, int32 Index);
    FName GetCharacterSpecialActionTextLabelForBattleCommandName(int32 CharacterID, int32 Index);
    FName GetCharacterSpecialActionTextLabelForBattleCommandDetail(int32 CharacterID, int32 Index);
    TArray<FName> GetCharacterSpecialActionTextLabelForAbilityLabel(int32 CharacterID, int32 Index);
    FName GetCharacterLabelNameForSaveLoad(class UObject* WorldContextObject, EPlayableCharacterID PlayerID, EJOB_TYPE JobID, int32 CharaForm);
    FName GetCharacterLabelNameForJob(class UObject* WorldContextObject, EPlayableCharacterID PlayerID, EJOB_TYPE JobID);
    FName GetCharacterLabelNameForEventFlag(class UObject* WorldContextObject, EPlayableCharacterID PlayerID);
    FName GetCharacterLabelNameForBaseJob(class UObject* WorldContextObject, EPlayableCharacterID PlayerID);
    FName GetCharacterLabelName(class UObject* WorldContextObject, EPlayableCharacterID PlayerID, EJOB_TYPE JobID, bool IsEventFlagCheck);
    EPlayableCharacterID GetCharacterID(class AKSCharacterBase* Target, bool& IsPlayableCharacter);
    bool GetCharacterFormData(FCharacterFormData& OutData, FName Label, EKSCharacterAction Action, EKSCharacterDir Dir);
    TArray<MJFieldCommandType> GetCharacterFieldCommandType(EPlayableCharacterID PlayerID);
    void GetAllPlayerCharacterIdList(TArray<int32>& outCharaIdList);
    void GetAllPlayerCharacterEnumList(TArray<EPlayableCharacterID>& outCharaEnumList);
    FName GetActionLabelNameByResourceLabel(FName ResourceLabel);
    void FullRecoveryAllPartyMember();
    bool FinishLadderModeWithoutPosition(EKSCharacterMoveMode eCheckMode, EKSCharacterMoveMode eSetMode, bool bEnable);
    bool FinishLadderMode(FVector vPosition, EKSCharacterMoveMode eCheckMode, EKSCharacterMoveMode eSetMode, bool bEnable);
    bool EndPlayerLadderUp(const FVector& EndPosition);
    bool EndPlayerLadderDown(const FVector& EndPosition);
    void EndEpilogueParty();
    bool EnablePartyCharaRemove();
    TArray<FString> Debug_GetPlayableCharacterIdNameList();
    FString Debug_GetPlayableCharacterIdName(EPlayableCharacterID CharaID);
    void ClearActionReferenceObject();
    bool CheckStopAction(FName ActionLabel, EKSCharacterAction Action);
    bool CheckLadderState(EKSCharacterMoveMode eMoveMode, bool bEnable);
    bool CheckHaveLantern();
    bool CheckCharacterHaveSpecialAction(int32 CharacterID, ESpecialActionType Type, int32& OutputIndex);
    void AddPlayerCharacterFirstEquipment(EPlayableCharacterID CharacterID);
}; // Size: 0x28

class UKSCharacterMovementComponent : public UCharacterMovementComponent
{
}; // Size: 0xB00

class UKSCheatManager : public UCheatManager
{
    class ADebugLoadCheatCommand* m_pLoadCheatCommand;                                // 0x0090 (size: 0x8)
    TArray<class ADebugLoadCheatCommand*> m_CheatCommandList;                         // 0x0098 (size: 0x10)

    void TameAlwaysSuccess(bool bEnable);
    void StartLastChapter(bool Enable);
    void StartEpilogue(bool Enable);
    void ShowGameMainSequenceLog(bool bEnable);
    void ShowEventTextData(bool Enable, float TextSize);
    void SetSystemDataVibrationEnable(bool bEnable);
    void SetRandomParticipationOrder();
    void SetMyShipCustom(int32 parts, int32 Type);
    void SetHunterPartnerID(int32 partnerID);
    void SetEventCounter(int32 Index, int32 Value);
    void SetEnableWorldMapDebugDraw(bool IsEnable);
    void SetEnableFlatEarthMode(bool IsEnable);
    void SetDarkArea(bool IsEnable);
    void SetBitFlagLabel(FString BitFlagLabel, bool Flag);
    void SetAllAbility(int32 CharaID, bool IsLearn);
    void SetAdvancedAbility(int32 CharaID, int32 AbilityIndex, bool IsLearn);
    void ResumeNormalPartySet();
    void ReleasePotentialityAction(int32 CharaID, bool AllChara);
    void PlaySequenceEvent(FString SequenceName, FString SubSequenceName);
    void PlayAbility(FString strAbilityLabel, int32 nBoostLevel, bool bPlayerSide);
    void PartyNoKO(bool bEnable);
    void PartyNoDamage(bool bEnable);
    void PartyFullPower(bool bEnable);
    void OpenFCViewer(bool bEnable);
    void OnFinishSaveGame(FString SlotName, const int32 UserIndex, bool IsSuccesss);
    void OnFinishLoadGame(FString SlotName, const int32 UserIndex, class UMJSaveData* SaveGame);
    void MJWipeColorChange(bool bEnable, uint8 R, uint8 G, uint8 B);
    void MJTutorialAutoCapture(FString ResourceName);
    void MJTimeZoneLock(bool bEnable);
    void MJStartAutoPlay(FString Filename);
    void MJSoundPlayVoice(FName VoiceLabel);
    void MJSoundPlaySe(FName SELabel);
    void MJSoundPlayBgm(FName BgmLabel, float FadeOutTime, float FadeInTime);
    void MJSoundBlockIndex(int32 nBlockIndex);
    void MJShowTextSizeInfo(bool Enable);
    void MJShowStoryDebugInfo(bool bEnable);
    void MJShowSoundListeningPoint(bool bDraw);
    void MJShowSoundListenerPoint(bool bDraw);
    void MJShowSoundAISACParam(bool bDraw);
    void MJShowLevelManagerInfo(bool bShow);
    void MJShowDebugInfoStoryMemory(bool bEnable);
    void MJShowDebugInfoEvent(bool bEnable);
    void MJShowDebugInfo(bool bEnable, int32 pageIndex);
    void MJShowDebugGuildInfo(bool bEnable);
    void MJShowDBManagerInfo(bool bShow);
    void MJShowDarkAreaStatus();
    void MJShowCharacterSocket(bool Enable);
    void MJShowCharacterMoveMode(bool Enable);
    void MJShowCharacterFootStep(bool Enable);
    void MJShowAllTutorialList(bool bEnable);
    void MJSetupAtlantisPartyRandom();
    void MJSetTutorialViewFlag(bool bEnable);
    void MJSettingEncountInfoFromEnemyGroup(FName EnemyGroupID);
    void MJSetSubParty(int32 char1, int32 char2, int32 char3, int32 char4);
    void MJSetSimpleActionLoad(bool Enable);
    void MJSetShowLoadedCharacterResource(bool Enable);
    void MJSetPartyResourceOnlyFlag(bool Enable);
    void MJSetParty(int32 char1, int32 char2, int32 char3, int32 char4);
    void MJSetMoney(int32 Money);
    void MJSetMainStoryConfirmedFlag(int32 MainStoryId, bool Confirmed);
    void MJSetIsOldWorldMapTexure(bool isOld);
    void MJSetIsForceTrialMode(bool bEnable);
    void MJSetIsForceSkipNoticeScreen(bool bEnable);
    void MJSetIsDarkend(FName DarkAreaLabel, bool isDarkend);
    void MJSetIsAllDarkend(bool isDarkend);
    void MJSetIgnorePlaceNoReactionNPC(bool isIgnore);
    void MJSetForceFastTravel(bool IsEnable);
    void MJSetFixMoveMode(int32 fixMoveMode);
    void MJSetFieldIgnoreBattleResourceLoad(bool Enable);
    void MJSetExcludeSpecifiyMapVisited(bool IsVisited, FName levelLabel);
    void MJSetEnableTitleMovieCurrentTime(bool Enable);
    void MJSetEnableDebugAchievementNotification(bool bEnable);
    void MJSetDebugTargetActorName(FString targetActorName);
    void MJSetAutoBalloonTimer(float fAutoTimer);
    void MJSetAllMapVisited(bool IsVisited);
    void MJSEList(bool Enable);
    void MJScreenshot(FString InFilename);
    void MJSaveGameBySlotId(int32 ID);
    void MJRequestBattleMap(FName battleMapName);
    void MJReleaseAllStoryRecord(bool bEnable);
    void MJRefreshFlagObject();
    void MJPlacementRefresh();
    void MJPlacementAllRemove();
    void MJOutputAnimationPlayerLog(bool Enable);
    void MJOutputAnimationOtherLog(bool Enable);
    void MJOpenScreenCapture();
    void MJOpenGuildMenu(FName guildLabel);
    void MJMemReport(bool bFull);
    void MJLoadGameBySlotId(int32 ID);
    void MJInvisibleDebugCharacter(bool Enable);
    void MJHideDebugTargetActor(bool hidden);
    void MJForceBattleEnemyNameOpen(bool Enable);
    void MJFallPrevention(bool bEnable);
    void MJFadeColorChange(bool bEnable, uint8 R, uint8 G, uint8 B);
    void MJEnemyWeaknessFullOpen();
    void MJEndAtlantisParty();
    void MJEnableSafetyBalloon(bool Enable);
    void MJEmotionDisable(bool Enable);
    void MJCloseScreenCapture();
    void MJClearFadeForcibly();
    void MJClearBattleMap();
    void MJChangeTimeZone(int32 nType);
    void MJChangeParty(int32 partyIdx);
    void MJApplyOldKeyConfig(bool OldApply);
    void MJAddAllItemToBackpack(int32 Num);
    void KSShowUserWidgetState(bool Show);
    void KSShowTimeLockTrigger(bool Enable);
    void KSShowShopTrigger(bool Enable);
    void KSShowLoadLogStartEnd(bool Enable);
    void KSShowLoadFilename(bool Enable);
    void KSShowLevelTrigger(bool Enable);
    void KSShowLadderTrigger(bool Enable);
    void KSShowInputMode(bool Enable);
    void KSShowHouseInTrigger(bool Enable);
    void KSShowEventTrigger(bool Enable);
    void KSShowEndRollDebugInfo_Segment(bool Enable);
    void KSShowEndRollDebugInfo_Credit(bool Enable);
    void KSShowCollision(bool Enable);
    void KSShowCharacterPos(bool Enable);
    void KSShowCharacterMovePoint(bool Enable);
    void KSShowCharacterMoveLocation(bool Enable);
    void KSShowCharacterList();
    void KSShowCharacterLaycast(int32 Type);
    void KSShowCharacterDir(bool Enable);
    void KSShowCharacterAction(bool Enable);
    void KSShowCanoeDockTrigger(bool Enable);
    void KSShowCameraLockTrigger(bool Enable);
    void KSShowCameraLockTiggerInfo(bool Enable);
    void KSSetUseCustomFlipbook(bool Enable);
    void KSSetRunMode(int32 Mode);
    void KSSetPlayerMoveSpeed(float AddSpeed);
    void KSSetPlayerLocation(float X, float Y, float Z);
    void KSSetCharacterFlag(int32 PlayerID, int32 Sequence, bool Enable);
    void KSPlayEventTheater(FString EventName, int32 TimeZone);
    void KSPlayEvent(FString EventName, int32 FrameNum);
    void KSPlayBalloon(FName Label, int32 nType);
    void KSPerformanceCheck(bool Enable);
    void KSLevelTriggerCheck(bool Enable);
    void KSLevelChangeList(bool Enable);
    void KSLevelChange(FName levelName, uint8 triggerIndex);
    void KSForceGarbageCollection();
    void KSFlagEditor(bool Enable, bool Label);
    void KSEventTriggerEnable(bool Enable);
    void KSEventCameraMode(bool Enable);
    void KSAllowLoadDisabledSaveData(bool Enable);
    void KSAddItemToBackpack(FName ItemLabel, int32 Num);
    void GetEventCounter(int32 Index);
    void FullPotentialityAction();
    void FixedRandomDamage(bool bEnable);
    void FixedRandomAilment(bool bEnable);
    void ExecCheatCommandFromSaved(FString FilePath);
    void ExecCheatCommand(FString FilePath);
    void EscapeAlwaysSuccess(bool bEnable);
    void EnemyNoKO(bool bEnable);
    void EnemyNoDamage(bool bEnable);
    void EnemyFullPower(bool bEnable);
    void EnableManualSequencerUpdate(bool bEnable);
    void EnableBusinessSupport(bool bEnable);
    void EnableBattleVictory(bool bEnable);
    void EnableBattleDefeat(bool bEnable, bool bOnce);
    void EnableAutoBattle(bool bEnable);
    void EnableAllLearnAbilityOpen(bool bEnable);
    void EnableAllInvadeMonsterOpen(bool bEnable);
    void EnableAllAbilityOpen(bool bEnable);
    void DeleteTameMonster(int32 InvadeID);
    void ClearParticipationOrder();
    void ChangeGameSpeed(float ChangeSpeed);
    void ChangeBattleSpeed();
    void AwakeningMonster(int32 Awake);
    void AddEventCounter(int32 Index, int32 Value);
}; // Size: 0xA8

class UKSDPICustomScalingRule : public UDPICustomScalingRule
{
}; // Size: 0x28

class UKSDebugMenuStatics : public UBlueprintFunctionLibrary
{

    void NextBattleCalcText();
    bool IsOutputPlayerAnimLog();
    bool IsOutputOtherAnimLog();
    bool IsLevelTriggerIntercept();
    bool IsEditor();
    bool IsDisableEmotion();
    bool IsDebugMenuOpen();
    TArray<FString> GetSpawnNpcListFromTextFile();
    bool GetPlacementLabelsForDebug(TArray<FName>& PlacementLabels, TArray<FText>& PlacementLabels_FText);
    FString GetEventFalgLabel(int32 ID);
    FString GetDebugMenuSortList();
    uint8 GetDebugDrawCounter();
    class UUserWidget* GetCurrentDebugMenuWidget();
    FString GetBattleCalcText(int32 nIndex);
    bool ExportUObjectAsJson(const class UObject* Obj, FString& outExportedFilePath);
    void ExportTextFile(FString FilePath, FString Filename);
    bool ExportSaveData(const class UObject* Obj);
    void DebugDrawSwitch();
    void CloseDebugMenu();
    void ClearBattleCalcText();
    void AppendBattleCalcText(FString pushText);
}; // Size: 0x28

class UKSFade : public UUserWidget
{
    EFADE_TYPE FadeType;                                                              // 0x0260 (size: 0x1)
    int32 TickType;                                                                   // 0x0264 (size: 0x4)
    bool IsEnd;                                                                       // 0x0268 (size: 0x1)
    float Timer;                                                                      // 0x026C (size: 0x4)
    float EndTime;                                                                    // 0x0270 (size: 0x4)
    FLinearColor FadeColor;                                                           // 0x0274 (size: 0x10)
    float StartAlpha;                                                                 // 0x0284 (size: 0x4)
    ESlateVisibility EndSlateVisible;                                                 // 0x0288 (size: 0x1)
    FKSFadeOnFinishFadeOut OnFinishFadeOut;                                           // 0x0290 (size: 0x10)
    void FadeFinish();
    FKSFadeOnFinishFadeIn OnFinishFadeIn;                                             // 0x02A0 (size: 0x10)
    void FadeFinish();
    FColor m_DebugFadeColor;                                                          // 0x02B0 (size: 0x4)
    bool m_bDebugFadeColorEnable;                                                     // 0x02B4 (size: 0x1)

    void SetupDebugFadeColor();
    bool IsFadeVisible();
    bool IsFadeEnd();
    EFADE_TYPE GetFadeType();
    bool FadeOut(const FLinearColor& inColor, float inEndTime);
    bool FadeInit(const FLinearColor& rColor, const float inEndTime);
    bool FadeIn(const FLinearColor& inColor, float inEndTime);
    bool FadeEnd();
}; // Size: 0x2B8

class UKSGameInstance : public UGameInstance
{
    bool m_bDebugMode;                                                                // 0x01C2 (size: 0x1)
    TMap<int32, FFontItemData> FontMap;                                               // 0x01C8 (size: 0x50)
    TArray<class UObject*> FontJA;                                                    // 0x0218 (size: 0x10)
    TArray<class UObject*> FontEN;                                                    // 0x0228 (size: 0x10)
    bool IsCreateFCv2;                                                                // 0x0249 (size: 0x1)

    void SetStartLevel(FName levelName);
    void SetPlayInTestLevel(bool bInTestLevel);
    void SetGameSuspend(bool isSuspend);
    void SetFirstSpawn(bool FirstSpawn);
    void SetDisableWorldRendering(bool bDisable);
    void SetDebugMode(bool isDebug);
    void SetDebugLoadLevel(bool DebugLoadLebel);
    void LoadFonts();
    void LoadFont(EKSLanguage lang);
    void KSSetLang(EKSLanguage eLang);
    bool IsPlayInTestLevel();
    bool IsGamePlayMode();
    FName GetStartLevel();
    bool GetIsDebugLoadLevel();
    class UKSGameInstance* GetInstance();
    bool GetFirstSpawn();
    bool GetDebugMode();
    class AKSCharacterManager* GetCharacterManager();
    void Debug_SetOverwritePlatformFontType(int32 Type);
}; // Size: 0x250

class UKSGameStatics : public UBlueprintFunctionLibrary
{

    void WipeOutAtBattleStart(class UObject* WorldContextObject);
    void WipeOutAtBattleEnd(class UObject* WorldContextObject);
    void WipeInAtBattleStart(class UObject* WorldContextObject);
    void WipeInAtBattleEnd(class UObject* WorldContextObject);
    class UKSLoadingWidget* StopLoadingUI(class UObject* WorldContextObject, ELOADING_REASON reason);
    void StartTimer();
    class UKSLoadingWidget* StartLoadingUI(class UObject* WorldContextObject, ELOADING_REASON reason);
    void SetUseCustomFlipbook(class UObject* WorldContextObject, bool Enable);
    void SetTransitionFromLoadGame(class UObject* WorldContextObject, bool Enable);
    FTimerHandle SetTimerForNextTick(class UObject* WorldContextObject, const FSetTimerForNextTickInDynDelegate& InDynDelegate);
    void SetTimeDilation(class UObject* WorldContextObject, ECHANGE_TIME_DILATION eType);
    void SetTagVisibleStaticMesh(class UObject* WorldContextObject, FName Tag, bool Enable);
    void SetTagVisible(class UObject* WorldContextObject, FName Tag, bool Enable);
    void SetShowMultilingualGuide(class UObject* WorldContextObject, bool Enable);
    void SetResolution(ERESOLUTION_TYPE Type);
    void SetPlayerDash(class UObject* WorldContextObject, bool inEnable);
    void SetPartyChatEnable(class UObject* WorldContextObject, bool inEnable);
    void SetMainMenuEnable(class UObject* WorldContextObject, bool inEnable);
    void SetLastBattleResult(EBATTLE_RESULT InResult);
    void SetLanguage(EKSLanguage InLang);
    void SetInHouse(class UObject* WorldContextObject, bool inHouse);
    void SetHiddenCollisionComponentChild(class USceneComponent* pRootComp, bool bHidden);
    void SetHiddenCollisionActorChild(class AActor* pRootActor, bool bHidden);
    void SetHiddenActorChild(class AActor* pRootActor, bool bHidden);
    void SetEventSpeedUpMode(class UObject* WorldContextObject, int32 State, bool IsInputChange);
    void SetEncountSignMode(class UObject* WorldContextObject, bool InEncountSign);
    void SetEncount(class UObject* WorldContextObject, bool InEncount);
    void SetBattleSpeed();
    void SetBattleMode(class UObject* WorldContextObject, bool InBattleMode);
    void ResetGameOnGameOver(class UObject* WorldContextObject);
    void ResetBattleSpeedUp();
    EKSLanguage PS_GetSystemLanguage();
    bool PS4IsEnterAssingCircle();
    void PrintCurrentRealTime(const class UObject* WorldContextObject, FString Comment);
    class UKSAutoSavingWidget* OpenOptionAutoSavingUI(class UObject* WorldContextObject);
    class UKSAutoSavingWidget* OpenAutoSavingUI(class UObject* WorldContextObject);
    void KSSetPerformanceModeChangedNotificationEnabled(bool IsEnable);
    bool IsUseCharacterResourceDB();
    bool IsTrialEdition(class UObject* WorldContextObject);
    bool IsTransitionFromLoadGame(class UObject* WorldContextObject);
    bool IsReleaseMusicPlayer();
    bool IsPlayerActiveMode(class UObject* WorldContextObject);
    bool IsPlayBalloonVoice(class UObject* WorldContextObject);
    bool IsPlatformSwitch();
    bool IsPlatformPS5();
    bool IsPlatformPS4();
    bool IsPlatformPC(class UObject* WorldContextObject);
    bool IsNoticeScreenSkip(class UObject* WorldContextObject);
    bool IsMainMenuOpen(class UObject* WorldContextObject);
    bool IsFadeUser(class UObject* WorldContextObject, EFADE_USER User);
    bool IsFadeEnd(class UObject* WorldContextObject);
    bool IsCheckInputEventFunction(class UObject* WorldContextObject);
    bool IsCheckInputBattleFunction(class UObject* WorldContextObject);
    void HideWipeAtBattleEnd_Immediately(class UObject* WorldContextObject);
    bool GetUseCustomFlipbook(class UObject* WorldContextObject);
    bool GetTitlePlaying(class UObject* WorldContextObject);
    bool GetShowMultilingualGuide(class UObject* WorldContextObject);
    ERESOLUTION_TYPE GetResolution();
    EMJRegion GetRegion_Switch();
    FName GetPlayVoiceWaitTimeLabel();
    bool GetPlayerDash(class UObject* WorldContextObject);
    EMJRegion GetPlatformRegion();
    EKSLanguage GetPlatformDefaultLanguage();
    bool GetPartyChatEnable(class UObject* WorldContextObject);
    bool GetOpenMainMenuDisable(class UObject* WorldContextObject);
    EKSLanguage GetOldLanguage();
    FName GetNoVoiceWaitTimeLabel();
    bool GetMainMenuEnable(class UObject* WorldContextObject);
    EBATTLE_RESULT GetLastBattleResult();
    EKSLanguage GetLanguage();
    class AKSGameMode* GetKSGameMode(class UObject* WorldContextObject);
    bool GetInHouse(class UObject* WorldContextObject);
    bool GetFieldCommandDisable(class UObject* WorldContextObject);
    bool GetFCMode();
    class UKSFade* GetFadeWidget(class UObject* WorldContextObject);
    EFADE_TYPE GetFadeType(class UObject* WorldContextObject);
    bool GetEventSpeedUpMode();
    EEVENT_MODE GetEventMode();
    bool GetEventAutoMode();
    bool GetEncountSignMode(class UObject* WorldContextObject);
    bool GetEncount(class UObject* WorldContextObject);
    bool GetElapsedTimeZoneDisable(class UObject* WorldContextObject);
    bool GetChangeTimeZoneDisable(class UObject* WorldContextObject);
    float GetCalcBaseBattleSpeed();
    bool GetBuildRegionJP();
    int32 GetBitFlagIndexByName(FName FlagName);
    bool GetBitFlagByName(FName FlagName);
    bool GetBattleMode(class UObject* WorldContextObject);
    float GetBalloonThinkingTextWaitValue(class UObject* WorldContextObject, bool PlayVoice);
    float GetBalloonTextWaitValue(class UObject* WorldContextObject, bool PlayVoice);
    float GetBalloonSpeedValue(class UObject* WorldContextObject);
    bool GetActivatedWindow(class APlayerController* PlayerController);
    class UKSFade* FadeOut(class UObject* WorldContextObject, float EndTime, const FLinearColor Color, EFADE_USER FadeUser);
    void FadeInImmediately(class UObject* WorldContextObject, EFADE_USER FadeUser);
    class UKSFade* FadeIn(class UObject* WorldContextObject, float EndTime, const FLinearColor Color, EFADE_USER FadeUser);
    void EndTimerToComment(FString reason);
    void EndTimer();
    void Debug_SetFixMoveMode(class UObject* WorldContextObject, EDebugFixMoveMode fixMoveMode);
    EDebugFixMoveMode Debug_GetFixMoveMode(class UObject* WorldContextObject);
    class UKSAutoSavingWidget* CloseAutoSavingUI(class UObject* WorldContextObject);
    void ClearFadeForcibly(class UObject* WorldContextObject);
    float CheckTimer();
    void ChangBattleSpeedUp();
    void AddSequenceRequestForHolding(EREQUEST_TYPE Type, FMainSequneceRequestParam Param);
    void AddSequenceRequest(EREQUEST_TYPE Type, FMainSequneceRequestParam Param);
    void AcqQuitGame(class UObject* WorldContextObject, class APlayerController* PlayerController);
}; // Size: 0x28

class UKSListColumnWidgetBase : public UUserWidget
{

    void SetText_Column3(FName col1, FName col2, FName col3);
    void SetText_Column2(FName col1, FName col2);
    void SetText_Column1(FName col1);
}; // Size: 0x260

class UKSListItemWidgetBase : public UAcqUserWidget
{
}; // Size: 0x2C0

class UKSListWidgetBase : public UAcqUserWidget
{
    TSubclassOf<class UKSListColumnWidgetBase> m_ColumnWidgetClass;                   // 0x02C0 (size: 0x8)
    TSubclassOf<class UKSListItemWidgetBase> m_ItemWidgetClass;                       // 0x02C8 (size: 0x8)
    class UKSListColumnWidgetBase* m_ColumnWidget;                                    // 0x02D0 (size: 0x8)
    FName m_ContainerName;                                                            // 0x02D8 (size: 0x8)

}; // Size: 0x2E0

class UKSLoadingWidget : public UAcqUserWidget
{

    bool StopLoading_Inner();
    bool StopLoading(ELOADING_REASON reason);
    bool StartLoading_Inner();
    bool StartLoading(ELOADING_REASON reason);
    ERESOLUTION_TYPE GetLoadingResourceResolution();
}; // Size: 0x2C8

class UKSPaperFlipbook : public UPaperFlipbook
{
    TArray<class UKSPaperSprite*> m_PaperSpritePool;                                  // 0x0050 (size: 0x10)
    class UKSPaperSprite* m_pPrevSprite;                                              // 0x0060 (size: 0x8)

    void ResetKeyFrames(bool releaseSprite);
    FVector2D GetMaxSpriteSize();
    void CalcFlipbookData(FFlipbookCalcData& Data);
}; // Size: 0x78

class UKSPaperSprite : public UPaperSprite
{
    FVector2D CharaFootPivot;                                                         // 0x00A8 (size: 0x8)

    FVector2D GetOffset();
    FVector2D GetDimension();
}; // Size: 0xB0

class UKSPartySplitWidgetBase : public UKSUserWidgetWithState
{
    FKSPartySplitWidgetBaseOnClosedKSPartySplitWithResult OnClosedKSPartySplitWithResult; // 0x0368 (size: 0x10)
    void OnClosedKSPartySplitWithResult(EPARTY_SPLIT_CLOSE_REASON reason);

    void SetIsDisplayWarning(bool isDisplay);
    EPARTY_SPLIT_CLOSE_REASON GetCloseReason();
}; // Size: 0x378

class UKSSaveDataStatics : public UBlueprintFunctionLibrary
{

    bool StartAutoSave(const FStartAutoSaveAutoSavedDelegate& AutoSavedDelegate);
    void SetSysSaveDataParam(class UObject* WorldContextObject, EKSSaveDataParamType ParamType, int32 Param);
    void SetSysSaveDataKeyConfigParam(class UObject* WorldContextObject, EKSKeyConfigElement ParamType, int32 Param);
    void SetSysSaveDataFlag(class UObject* WorldContextObject, EKSSaveDataFlagType flagType, bool Flag);
    void SetSysSaveData(class UObject* WorldContextObject, class UKSSaveSystem* sysSaveData);
    void SetNextLoadTarget(ESaveDataLoadTarget Target);
    void SetGameSaveData(class UObject* WorldContextObject, class UMJSaveData* gameSaveData);
    void SetDefaultOptionParam(class UObject* WorldContextObject);
    void SetDefaultGraphicsOptionParam(class UObject* WorldContextObject);
    void SetActivitySubTaskStatus(int32 MainStoryId, int32 Status);
    TArray<int32> ResizeArraywithBlank(TArray<int32> InputPin, int32 ReturnArrayLength, int32 InitValue);
    FString MakeSystemDataFileName();
    FString MakeGameDataFileNameByEnum(EKSSaveSlotName SlotNo);
    FString MakeGameDataFileName(int32 SlotNo);
    bool IsVoiceLangJapanese(class UObject* WorldContextObject);
    bool IsAutoSaving();
    void GetSysSaveDataParamArray(TArray<int32>& outParam, class UObject* WorldContextObject);
    int32 GetSysSaveDataParam(class UObject* WorldContextObject, EKSSaveDataParamType ParamType);
    void GetSysSaveDataKeyConfigArray(TArray<int32>& outParam, class UObject* WorldContextObject);
    void GetSysSaveDataFlagArray(TArray<int32>& outFlag, class UObject* WorldContextObject);
    bool GetSysSaveDataFlag(class UObject* WorldContextObject, EKSSaveDataFlagType flagType);
    class UKSSaveSystem* GetSysSaveData(class UObject* WorldContextObject);
    ESaveDataLoadTarget GetNextLoadTarget();
    class UMJSaveData* GetGameSaveData(class UObject* WorldContextObject);
    int32 GetCurrentPlayTime();
    int32 GetActivitySubTaskStatus(int32 MainStoryId);
    bool DoesExistsTrialGameData();
    bool DoesExistsPS4GameData();
    void Debug_OutputActivitySaveData();
    void Debug_CheckContainerSizeInSaveData();
}; // Size: 0x28

class UKSSaveSystem : public USaveGame
{
    FKSSysSaveData SystemSaveData;                                                    // 0x0028 (size: 0x38)
    TArray<FKSSaveSlotData> SaveSlotData;                                             // 0x0060 (size: 0x10)
    FMJActivitySaveData ActivitySaveData;                                             // 0x0070 (size: 0x50)

    void SetSlotdata(EKSSaveSlotName SlotNo, FKSSaveSlotData slotData);
    void SetParam(EKSSaveDataParamType ParamType, int32 Param);
    void SetKeyConfigParam(EKSKeyConfigElement ParamType, int32 Param);
    void SetKeyboardLayoutParam(EKeyboardLayoutType Param);
    void SetFlag(EKSSaveDataFlagType flagType, bool Flag);
    void MergeActivitySaveData(const class UKSSaveSystem* Other);
    void GetSlotdata(EKSSaveSlotName SlotNo, FKSSaveSlotData& outSlotData);
    void GetParamArray(TArray<int32>& outParam);
    int32 GetParam(EKSSaveDataParamType ParamType);
    void GetKeyConfigParamArray(TArray<int32>& outParam);
    int32 GetKeyConfigParam(EKSKeyConfigElement ParamType);
    EKeyboardLayoutType GetKeyboardLayoutParam();
    void GetFlagArray(TArray<int32>& outFlag);
    bool GetFlag(EKSSaveDataFlagType flagType);
    void Debug_OutputAllData();
}; // Size: 0xC0

class UKSTextBlock : public UTextLayoutWidget
{
    FText Text;                                                                       // 0x0130 (size: 0x18)
    FKSTextBlockTextDelegate TextDelegate;                                            // 0x0148 (size: 0x10)
    FText GetText();
    FSlateColor ColorAndOpacity;                                                      // 0x0158 (size: 0x28)
    FKSTextBlockColorAndOpacityDelegate ColorAndOpacityDelegate;                      // 0x0180 (size: 0x10)
    FSlateColor GetSlateColor();
    FSlateFontInfo Font;                                                              // 0x0190 (size: 0x58)
    FVector2D ShadowOffset;                                                           // 0x01E8 (size: 0x8)
    FLinearColor ShadowColorAndOpacity;                                               // 0x01F0 (size: 0x10)
    FKSTextBlockShadowColorAndOpacityDelegate ShadowColorAndOpacityDelegate;          // 0x0200 (size: 0x10)
    FLinearColor GetLinearColor();
    float MinDesiredWidth;                                                            // 0x0210 (size: 0x4)
    TArray<class UKSTextBlockDecorator*> Decorators;                                  // 0x0218 (size: 0x10)
    FText Debug_InitializeText;                                                       // 0x04A8 (size: 0x18)
    EKSLanguage m_Language;                                                           // 0x04C1 (size: 0x1)
    EKSFontType m_FontType;                                                           // 0x04C2 (size: 0x1)
    FName m_GameTextLabel;                                                            // 0x04C4 (size: 0x8)
    FName m_GameTextFormatLabel;                                                      // 0x04CC (size: 0x8)
    TArray<FName> m_GameTextList;                                                     // 0x04D8 (size: 0x10)
    bool DisableRefreshFont;                                                          // 0x04E8 (size: 0x1)
    FKSTextBlockOnRefreshFont OnRefreshFont;                                          // 0x0508 (size: 0x10)
    void RefreshFontCallback();
    bool m_bUpdateOutlineSize;                                                        // 0x0520 (size: 0x1)

    void UpdateFontOutlineSize();
    void SetWrapTextAt(float Value);
    void SetText(FText InText);
    void SetShadowOffset(FVector2D InShadowOffset);
    void SetShadowColorAndOpacity(FLinearColor InShadowColorAndOpacity);
    void SetOpacity(float InOpacity);
    void SetGameTextWithFormatText(FName GameTextFormatLabel, FName GameTextLabel);
    void SetGameTextWithFormatNumber(FName GameTextLabel, int32 LabelNum);
    void SetGameTextWithFormatKey(FName GameTextLabel, FText Key);
    void SetGameText(FName GameTextLabel);
    void SetFontStyle(EKSFontType InFontType, FSlateColor InColorAndOpacity, int32 InFontSize);
    void SetFont(FSlateFontInfo InFontInfo);
    void SetColorAndOpacity(FSlateColor InColorAndOpacity);
    void RefreshGameText();
    FText GetText();
    FSlateFontInfo GetFont();
    void Debug_ShowTextSizeInfo(bool Enable);
    void Debug_ApplyDebugText();
}; // Size: 0x528

class UKSTextBlockDecorator : public URichTextBlockDecorator
{
}; // Size: 0x28

class UKSTextStatics : public UBlueprintFunctionLibrary
{

    bool LoadTextVoice(EKSLanguage eLang);
    bool LoadText(EKSLanguage eLang);
    bool IsKSTextLoaded();
    void GetTextItemInfo(FName Label, FGameTextItemInfo& OutText);
    void GetTextCharaInfo(FName Label, FGameTextCharaInfo& OutText);
    void GetTalkVoice(FName Label, FTalkVoice& OutText);
    bool GetTalkText(FName Label, FTalkText& OutText);
    void GetGameTextString(FName Label, FString& OutText);
    void GetGameTextMacroOperation(FName Label, FText& OutText);
    void GetGameText(FName Label, FText& OutText);
    FName GetFallbackTalkTextLabel();
    FText GetButtonTextFromKeyConfig(class UObject* WorldContextObject, EKSKeyConfigElement Type);
    FText GetButtonText(class UObject* WorldContextObject, ECONTROL_GUIDE_BUTTON_TYPE Type);
}; // Size: 0x28

class UKSUIStatics : public UBlueprintFunctionLibrary
{

    void ReloadUIResources();
    int32 PushActive(class UUserWidget* PushUI);
    void PopActiveUIWith(class UUserWidget* UI, bool& IsPop, class UUserWidget*& PopUI);
    void PopActive(class UUserWidget*& PopUI);
    int32 OpenRequest(class UUserWidget* PushUI, bool UseStack);
    void OpenMainMenu(bool FastWorldMap);
    bool IsUIResManagerLoading();
    bool IsStack(class UUserWidget* CheckUI);
    bool IsKSUserWidgetRunning(EKSUIKind inKind);
    bool IsClosingStack();
    class UTexture2D* GetUIResTexture2D(FName resName);
    class UStaticMesh* GetUIResStaticMesh(FName resName);
    class UUserWidget* GetUIPartsWidget(EKSUIPartsKind Kind);
    class UBalloonBundleWidgetBase* GetBalloonBundle();
    class UUserWidget* GetActiveStack();
    FVector2D GetAbsoluteSize(class UWidget* Target);
    void DeleteStackUI(class UUserWidget* DeleteUI);
    void Debug_SetEventForceSkip(bool bforceSkip);
    void Debug_SetBalloonMessageFullSkip(bool bSkip);
    FText ConvertMoneyToText_int64(int64 Money, int32 MinDigit, int32 MaxDigit);
    FText ConvertMoneyToText(int32 Money, int32 MinDigit, int32 MaxDigit);
    void CloseRequestFromKind(EKSUIKind Kind, bool ForceClose);
    void CloseRequest(class UUserWidget* PopUI, bool ForceClose);
    bool CloseMainMenuFromMissionRecordPartyChat(bool FastClose);
    bool CloseMainMenu(bool FastClose);
    void AddToScreen(class UUserWidget* Target, int32 ZOrder, bool UsePlayer);
}; // Size: 0x28

class UKSUserWidgetBase : public UAcqUserWidget
{
    FKSUserWidgetBaseOnOpenCallback OnOpenCallback;                                   // 0x02C0 (size: 0x10)
    void OpenDelegate();
    FKSUserWidgetBaseOnOpenFinishCallback OnOpenFinishCallback;                       // 0x02D0 (size: 0x10)
    void OpenFinishDelegate();
    FKSUserWidgetBaseOnCloseCallback OnCloseCallback;                                 // 0x02E0 (size: 0x10)
    void CloseDelegate();
    FKSUserWidgetBaseOnCloseFinishCallback OnCloseFinishCallback;                     // 0x02F0 (size: 0x10)
    void CloseFinishDelegate();
    FKSUserWidgetBaseOnCloseFinishCallbackBP OnCloseFinishCallbackBP;                 // 0x0300 (size: 0x10)
    void CloseFinishDelegateBP();
    int32 m_TemporaryHideUser;                                                        // 0x0310 (size: 0x4)
    class UWidgetAnimation* OpenAnim;                                                 // 0x0318 (size: 0x8)
    class UWidgetAnimation* CloseAnim;                                                // 0x0320 (size: 0x8)
    TArray<class UWidgetAnimation*> AnimationList;                                    // 0x0328 (size: 0x10)

    void UpdateOpening();
    void UpdateMain();
    void UpdateClosing();
    void UIOpen();
    void UIClose();
    void TurnOffTemporaryHiddenFlag(EWIDGET_TEMPORARY_HIDE_USER hideUser);
    void TickUpdateState(float fDeltaTime);
    bool SetReference();
    void SetManualAnimationUpdate(bool bManual);
    void ResetInputAllowed();
    void ResetFromTitle();
    void ResetForceUIClose();
    void RefreshLanguage(EKSLanguage NewLanguage);
    void OnResetHiddenFlag();
    void OnOpenFinish();
    void OnCloseFinish();
    void NoticeCreatedWidget(EWIDGET_CREATE_PHASE CreatePhase);
    void ManualAnimationUpdate(const FGeometry& MyGeometry, float InDeltaTime);
    bool IsWait();
    bool IsUpdate();
    bool IsTemporaryHidden();
    bool IsRunning();
    bool IsForceClosing();
    bool IsChangeStateOpenFinish();
    bool IsChangeStateCloseFinish();
    bool Init();
    void HideTemporaryInternal(bool isHidden, EWIDGET_TEMPORARY_HIDE_USER hideUser);
    void HideTemporary(bool isHidden, EWIDGET_TEMPORARY_HIDE_USER hideUser);
    bool GetPlayingAnimation(class UWidgetAnimation*& Animation);
    bool GetManualAnimationUpdate();
    float GetDeltaTime();
    void ForceUIClose();
    class UUserWidget* FindWidget(const FName& WidgetName);
    FString Debug_GetStateInfoAsString();
    void Debug_DecideUI(int32 Param);
    bool CheckInputAllowed();
}; // Size: 0x358

class UKSUserWidgetWithState : public UKSUserWidgetBase
{

    void UpdateState();
    void SetNextState(int32 NextState);
    void OnUpdateState(int32 CurrentState);
    void OnEndState(int32 CurrentState, int32 NextState);
    void OnBeginState(int32 PrevState, int32 CurrentState);
    bool IsClosingState(int32 State);
    void InitState();
    int32 GetPrevState();
    int32 GetNextState();
    int32 GetCurrentState();
}; // Size: 0x368

class UKeyConfigButton1Base : public UUserWidget
{

    void SetDescriptionText(FName Text);
}; // Size: 0x260

class ULetterBoxBase : public UKSUserWidgetBase
{

    bool HiddenLetterWidget();
    bool ApplyLetterSize();
}; // Size: 0x358

class ULevelFunction : public UBlueprintFunctionLibrary
{

    FPlayerLocation MakeCurrentPlayerLocation();
    bool IsSameLevelArea(class UObject* WorldContextObject, FVector Pos, LEVEL_AREA_TYPE AreaType);
    bool IsPlayableLevelChange();
    FName GetTimeZoneChangeSeLabelInCurrentLevel();
    FCameraLockParams GetLevelTriggerCameraLockParams(class UObject* WorldContextObject, ELevelTriggerID LevelTriggerID);
    LEVEL_AREA_TYPE GetLevelArea(class UObject* WorldContextObject, FVector CheckPos);
    void GetLandObject(class UObject* WorldContextObject, FVector StartLocation, float Length, class AActor*& HitActor, FHitResult& OutHit);
    class ALevelTriggerActor* FindLevelTriggerByTriggerId(class UObject* WorldContextObject, ELevelTriggerID LevelTriggerID);
    void Debug_SetExcludeSpecifiyMapVisited(bool bVisited, FName levelLabel);
    void Debug_SetAllMapVisited(bool bVisited);
    void Debug_GetAllMapLabels(TArray<FName>& OutMapLabels);
    LEVEL_AREA_TYPE CheckContainedLevelArea(const FVector& CheckPos);
}; // Size: 0x28

class ULevelLoader : public UObject
{
    class ULevelSet* m_TargetLevelSet;                                                // 0x0060 (size: 0x8)
    TMap<class FName, class ULevelSet*> m_LoadedLevel;                                // 0x0090 (size: 0x50)
    UClass* m_LevelSetClass;                                                          // 0x00E0 (size: 0x8)

}; // Size: 0xF0

class ULevelManagerUtility : public UBlueprintFunctionLibrary
{

    bool SwitchBattleLevel(int32 MapIndex);
    void SetVisibleObjects(EPLACEMENT_TYPE eType, FName Label, bool IsVisible);
    void SetVisibleEmotionAllNPC(bool IsVisible);
    void SetVisibleBarChangeCharacter();
    void SetVisibleAllObjects(bool IsVisible);
    void SetVignetteWeakRate(float Param);
    void SetVignetteNormalRate(float Param);
    void SetRequestedLevelTriggerID(ELevelTriggerID TriggerID);
    void SetLevelChangeByLinerShip(bool bLinerShip);
    void SetGainRateMin(float Param);
    void SetGainRateMax(float Param);
    void SetFocalRegionWideAdd(float Param);
    void SetBgmIdFromOuter(int32 BGMID);
    void SaveVisitedMap(FName SaveLevel);
    void ResetCameraLockParam();
    void RequestRestorePlayerPlacement(const FReminiscenceRestorePlacement& restorePlacement);
    void RequestMapInLocation(const FPlayerLocation& Location);
    void RequestMapInEquipLantern(const FEquipLanternData& EquipLantern);
    void RequestMapInCameraLock(const FVector& CameraLockPos, ELevelTriggerID LevelTriggerID);
    bool RequestLoadFieldLevel(FName Map, ELevelTriggerID TriggerID, bool Fade, bool ChangeBGM);
    void RemoveTargetNPC_ByID(int32 NPCUniqID);
    bool RemoveObjectFromList(EPLACEMENT_TYPE eType, FName ObjLabel);
    void RemoveAllType();
    bool RefreshSwoon(int32 NPCUniqID);
    bool RefreshSpawnCurrentLevel(bool FadeChara, bool IsForceSpawn, bool NextTimeZone, bool bUpdateSwoon);
    void RefreshFlagObjectRenderStateDirty();
    void RefreshFlagObject();
    void RefreshBarChangeCharacter();
    void RecalcCollectedPostProcessVolumes();
    bool PlayLevelBGM();
    void ModifyActorSoftReference(TSoftObjectPtr<AActor>& softRef);
    bool IsValidLevelManager_Inner();
    void IsValidLevelManager(TEnumAsByte<EBPIsValidReturnCode::Type>& returnCode);
    bool IsTransitionToGameOver();
    bool IsTownById(int32 levelId);
    bool IsSameLevelChanging();
    bool IsRequestedMapInLocation();
    bool IsPrevLevelSea();
    bool IsPrevLevelInGame();
    bool IsNowLevelTown();
    bool IsNowLevelSea();
    bool IsNowLevelInGame();
    bool IsNextLevelInGame();
    bool IsLevelChanging();
    bool IsImmovableByFieldChanging();
    bool IsGameOverPlaying();
    bool IsGameOverLevelLoad();
    bool IsFirstVisitLevel();
    bool IsDungeonById(int32 levelId);
    bool IsCompletedLevelChanging();
    void HouseChangeVisible(bool inHouse, int32 floor);
    float GetVignetteWeakRate();
    float GetVignetteNormalRate();
    FName GetShowLevelName();
    FReminiscenceRestorePlacement GetRestorePlayherPlacement();
    bool GetRestoreEncountDataAfterReminiscence(FEncountTriggerData& outEncountTriggerData);
    ELevelTriggerID GetRequestedLevelTriggerID();
    int32 GetPrevTownID(bool useSubTownID);
    FName GetPrevLevelName();
    int32 GetPrevLevelDataID();
    bool GetPrevLevelData(FLevelInfoData& outLevelData);
    ELEVEL_DARK_STATE GetPrevLevelDarkState();
    class AKSCharacterBase* GetNPCUniqID(int32 UniqID);
    void GetNPCPathList(TArray<class AMJPathSplineObject*>& outNpcPathList);
    class AKSCharacterBase* GetNPC(FName ObjLabel);
    int32 GetNowTownID(bool useSubTownID);
    FName GetNowLevelName();
    int32 GetNowLevelDataID();
    bool GetNowLevelData(FLevelInfoData& outLevelData);
    int32 GetNextTownID(bool useSubTownID);
    FName GetNextLevelName();
    int32 GetNextLevelDataID();
    bool GetNextLevelData(FLevelInfoData& outLevelData);
    FPlayerLocation GetMapInLocation();
    FEquipLanternData GetMapInEquipLantern();
    class ALevelManager_Others* GetLevelManageOthersActor();
    bool GetLevelChangeByLinerShip();
    float GetGainRateMin();
    float GetGainRateMax();
    float GetFocalRegionWideAdd();
    ELEVEL_DARK_STATE GetCurrentLevelDarkState();
    FName GetBattleEnemyGroupID();
    ELEVEL_TYPE GetActiveLevelType();
    bool FinishBattleLevel();
    void Debug_ShowPostProcessVolumeInfo();
    void Debug_SetBarPlaceCharaRateOne(int32 Param);
    void Debug_SetBarNotPlaceCharaRate(int32 Param);
    void Debug_SetBarCharaList(const TArray<int32>& Param);
    bool Debug_LevelChange(FName levelName, uint8 triggerIndex);
    int32 Debug_GetBarPlaceCharaRateOne();
    int32 Debug_GetBarNotPlaceCharaRate();
    TArray<int32> Debug_GetBarCharaList();
    void Debug_ChangeBarChara();
    void ClearRestorePlayherPlacement();
    void ClearMapInLocation();
    void ClearMapInEquipLantern();
    void ClearCollisionDisabledNPC();
    int32 CalcLostWayProbability();
    bool ApplyScreenBrightness(int32 Level);
    void ApplyRestorePlayerPlacement();
    void ApplyPostProcessCurrentParam(bool bCheckEventPlaying);
    bool ApplyCurrentLevelResolution(const class UObject* WorldContextObject);
    bool ApplyCornerDarkness(bool IsNormal, bool CheckEventPlaying);
    void AddCollisionDisabledNPC(int32 NPCUniqID);
}; // Size: 0x28

class ULevelResolutionUtility : public UDataTableUtilityBase
{

    void SetFixCurrentLevelResolution(const class UObject* WorldContextObject, const FName& levelName);
    void GetLevelScreenParcentage(const FName& levelName, float& fSceenPercent, float& fSeparateTranslucencyScreenPercent);
    bool GetLevelResolutionLabelNames(TArray<FName>& OutData);
    bool GetLevelResolution(FLevelResolutioData& OutData, FName TargetLabel, bool EnableLog);
}; // Size: 0x28

class ULevelSaveDataUtil : public USaveDataUtilBase
{

    void SetVisitedMap(bool bVisited, int32 MapID);
    void SetShowMapIcon(bool bVisited, int32 MapID);
    bool SetMapData(int32 levelId, FMapData NewMapData);
    void SetIsVisitedWorldMapPrologueMaskArea(EWorldMapPrologueMaskArea MaskArea, bool IsVisited);
    void SetIsVisitedWorldMapMaskArea(EWorldMapMaskArea MaskArea, bool IsVisited);
    void SetIsVisitedWorldMapIslandLayerArea(EWorldMapIslandLayerArea Area, bool IsVisited);
    void SetCurrentLevelDarkState(ELEVEL_DARK_STATE darkState);
    void SetConnectionValue(int32 TownID, int32 ConnectionValue);
    void ResetLostWayCount();
    bool OpenTreasureBox(int32 levelId, int32 ObjectUniqueID);
    void IncreaseLostWayCount();
    bool GetVisitedMap(int32 MapID);
    bool GetShowMapIcon(int32 MapID);
    int32 GetLostWayCount();
    bool GetIsVisitedWorldMapPrologueMaskArea(EWorldMapPrologueMaskArea MaskArea);
    bool GetIsVisitedWorldMapMaskArea(EWorldMapMaskArea MaskArea);
    bool GetIsVisitedWorldMapIslandLayerArea(EWorldMapIslandLayerArea Area);
    ELEVEL_DARK_STATE GetCurrentLevelDarkState();
    int32 GetConnectionValue(int32 TownID);
    bool FindMapData(int32 levelId, FMapData& FoundMapData);
    bool DEBUG_CloseTreasureBox(int32 levelId, int32 ObjectUniqueID);
    void AddOrOverrideRevivalObjectSaveData(const FRevivalObjectSaveData& newData);
}; // Size: 0x28

class ULevelSet : public UObject
{
    class ULevelStreamingCustom* m_ParentLevelStreaming;                              // 0x0028 (size: 0x8)
    TMap<class FName, class ULevelStreamingCustom*> m_SubLevelStreaming;              // 0x0030 (size: 0x50)

    void OnUnloaded();
    void OnShown();
    void OnLoaded();
    void OnHidden();
}; // Size: 0x90

class ULevelStreamingCustom : public ULevelStreamingDynamic
{

    void OnUnloaded();
    void OnShown();
    void OnLoaded();
    void OnHidden();
}; // Size: 0x160

class ULevelTableUtility : public UBlueprintFunctionLibrary
{

    FName MakeLevelTriggerLabel(FName levelName, ELevelTriggerID TriggerID);
    int32 LevelLabelToID(FName levelLabel);
    FName LevelIDToLabel(int32 levelId);
    bool IsSeaLevel(FName levelName);
    bool IsInGameLevel(const FLevelInfoData& levelData);
    void GetLevelTriggerParamsByRowName(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FLevelTriggerParams& outLevelTrgData, FName RowName);
    ELevelTriggerID GetLevelTriggerID(FName levelTriggerLabel);
    bool GetLevelRowNames(TArray<FName>& OutRowNames);
    void GetLevelInfoDataByRowName(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FLevelInfoData& outLevelData, FName RowName);
    void GetLevelInfoDataByLevelName(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FLevelInfoData& outLevelData, FName levelName);
    void GetLevelInfoDataByLevelID(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FLevelInfoData& outLevelData, int32 levelId);
    bool ExistsInLevelDb(FName levelLabel);
    void Debug_OutputRegionVisited();
    void Debug_OutputMapVisited();
    bool Debug_ContainsInLevelDB(FName levelName);
}; // Size: 0x28

class ULibAsset : public UBlueprintFunctionLibrary
{

    bool LevelExists(FString AssetPath);
    bool AssetExistsFromSoftReference(const TSoftObjectPtr<UObject> softAssetData);
    bool AssetExists(FString AssetPath);
}; // Size: 0x28

class ULibAsyncLoad : public UBlueprintFunctionLibrary
{

    void UnloadAssets(TArray<TSoftObjectPtr<UObject>>& assetsPtrList);
    void LoadAssetsAsync(class UObject* WorldContextObject, TArray<TSoftObjectPtr<UObject>>& assetsPtrList, FLoadAssetsAsyncCallback Callback);
    void LoadAssetList(TArray<class UObject*>& outList, TArray<TSoftObjectPtr<UObject>> assetPtrList);
    void LoadAssetAsyncByReference(class UObject* WorldContextObject, TArray<FSoftObjectPath>& AssetRefList, FLoadAssetAsyncByReferenceCallback Callback);
    class UObject* LoadAsset(TSoftObjectPtr<UObject> AssetPtr);
    bool InitLoadAsync();
    int32 GetAcyncLoadRequestNum();
    void DestroyLoadAsync();
}; // Size: 0x28

class ULibBalloon : public UBlueprintFunctionLibrary
{

    class UBalloonBundleWidgetBase* GetBalloonBundleWidget();
    FAddBalloonParam CreateBalloonParam_Auto(FName TalkLabel, FVector2D balloonOffset, EEventBalloonDir BalloonDir, bool EnableTail, class AActor* TargetActor, float Scale);
}; // Size: 0x28

class ULibColor : public UBlueprintFunctionLibrary
{

    FString ToHtmlStringRGBA(const FColor& cColor, bool lower);
    FString ToHtmlString(uint8 Val, bool lower);
    FString GetTextColorChangeCodeToGameColor(FString TargetSource, EGameColor ColorType);
    FString GetTextColorChangeCode(FString TargetSource, FColor Color);
    FLinearColor GetColor(EColor EColor);
}; // Size: 0x28

class ULibDataTable : public UBlueprintFunctionLibrary
{

    bool GetDataTableRowByName(class UDataTable* Table, FName RowName, FTableRowBase& OutRow, EGET_DATATABLE_RESULT& OutResult);
}; // Size: 0x28

class ULibDialog : public UBlueprintFunctionLibrary
{

    class UCommonDialog* OpenDialog(const FMJUICommonDialogParam& Param);
    void IsDialogRunning(bool& IsRunning);
    FMJUICommonDialogParam CreateSelectWidgetParam(FText Caption, FText Detail, TArray<class UUserWidget*> SelectWidgetList, int32 SelectIndex, bool OnTop, FCreateSelectWidgetParamCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateEventParam_OpenSe(FText Caption, FText Detail, TArray<FText> ButtonText, FName OpenSeLabel);
    FMJUICommonDialogParam CreateEventParam_FinishCallback(FText Caption, FText Detail, TArray<FText> ButtonText, FCreateEventParam_FinishCallbackCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateEventParam_EnableBlood(FText Caption, FText Detail, TArray<FText> ButtonText, bool EnableCancel, TArray<bool> BloodList, FCreateEventParam_EnableBloodCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateEventParam_CancelKey_FinishCallback(FText Caption, FText Detail, TArray<FText> ButtonText, bool EnableCancel, FCreateEventParam_CancelKey_FinishCallbackCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateEventParam_CancelKey_DefaultButton_FinishCallback(FText Caption, FText Detail, TArray<FText> ButtonText, bool EnableCancel, int32 DefaultButton, FCreateEventParam_CancelKey_DefaultButton_FinishCallbackCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateEventParam(FText Caption, FText Detail, TArray<FText> ButtonText);
    FMJUICommonDialogParam CreateDefaultParam_OpenSe_FinishCallback(FText Caption, FText Detail, TArray<FText> ButtonText, FName OpenSeLabel, FCreateDefaultParam_OpenSe_FinishCallbackCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateDefaultParam_FinishCallback(FText Caption, FText Detail, TArray<FText> ButtonText, FCreateDefaultParam_FinishCallbackCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateDefaultParam_Duplication(FText Caption, FText Detail, TArray<FText> ButtonText, bool DuplocationFlag);
    FMJUICommonDialogParam CreateDefaultParam_Detail_AutoClose_Cancel_Input_SelectCallback(FText Caption, FText Detail, TArray<FText> ButtonText, class UUserWidget* AttachDetail, bool AutoClose, bool EnableCancel, bool InputReception, FCreateDefaultParam_Detail_AutoClose_Cancel_Input_SelectCallbackSelectCallback SelectCallback);
    FMJUICommonDialogParam CreateDefaultParam_DefaultButton_FinishCallback(FText Caption, FText Detail, TArray<FText> ButtonText, int32 DefaultButton, FCreateDefaultParam_DefaultButton_FinishCallbackCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateDefaultParam_AutoSelectClose_Callback(FText Caption, FText Detail, TArray<FText> ButtonText, bool AutoSelectClose, FCreateDefaultParam_AutoSelectClose_CallbackCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateDefaultParam_AutoSelectClose(FText Caption, FText Detail, TArray<FText> ButtonText, bool AutoSelectClose);
    FMJUICommonDialogParam CreateDefaultParam_AutoClose_Cancel_InputReception(FText Caption, FText Detail, TArray<FText> ButtonText, bool AutoClose, bool EnableCancel, bool InputReception);
    FMJUICommonDialogParam CreateDefaultParam_AutoClose_Cancel_Callback(FText Caption, FText Detail, TArray<FText> ButtonText, bool AutoSelectClose, bool Cancel, FCreateDefaultParam_AutoClose_Cancel_CallbackCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateDefaultParam_AutoClose_AttachCaption_SelectCallback(FText Caption, FText Detail, TArray<FText> ButtonText, bool AutoClose, class UUserWidget* AttachCaption, bool CaptionTop, bool CaptionSeparation, FCreateDefaultParam_AutoClose_AttachCaption_SelectCallbackSelectCallback SelectCallback);
    FMJUICommonDialogParam CreateDefaultParam_AttachDetail_Callback(FText Caption, FText Detail, TArray<FText> ButtonText, class UUserWidget* AttachDetail, bool OnTop, FCreateDefaultParam_AttachDetail_CallbackCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateDefaultParam_AttachDetail_AttachCaption_Callback(FText Caption, FText Detail, TArray<FText> ButtonText, class UUserWidget* AttachCaption, bool CaptionTop, bool CaptionSeparation, class UUserWidget* AttachDetail, bool DetailTop, FCreateDefaultParam_AttachDetail_AttachCaption_CallbackCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateDefaultParam_AttachCaption_OpenSe_Callback(FText Caption, FText Detail, TArray<FText> ButtonText, class UUserWidget* AttachCaption, bool CaptionTop, bool CaptionSeparation, FName OpenSeLabel, FCreateDefaultParam_AttachCaption_OpenSe_CallbackCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateDefaultParam_AttachCaption_Callback(FText Caption, FText Detail, TArray<FText> ButtonText, class UUserWidget* AttachCaption, bool CaptionTop, bool CaptionSeparation, FCreateDefaultParam_AttachCaption_CallbackCloseFinishCallback CloseFinishCallback);
    FMJUICommonDialogParam CreateDefaultParam(FText Caption, FText Detail, TArray<FText> ButtonText);
}; // Size: 0x28

class ULibDisplay : public UBlueprintFunctionLibrary
{

    bool SetWindowResolution(TEnumAsByte<EWindowMode::Type> InFullScreenMode, FIntPoint Resolution);
    bool SetFPS(float Fps);
    void RefreshDisplayInformation();
    FVector2D GetWindowLetterBoxSize(class UObject* WorldContextObject, bool IsRemoveDpiScale);
    void GetWindowedResolutions(TArray<FIntPoint>& Resolutions);
    FVector2D GetWidgetSpaceSize(class UObject* WorldContextObject);
    void GetFullscreenResolutions(TArray<FIntPoint>& Resolutions);
    TEnumAsByte<EWindowMode::Type> GetCurrentWindowMode();
    FIntPoint GetCurrentScreenResolutionFromConfig();
    FIntPoint GetCurrentScreenResolutionEx();
    FIntPoint GetCurrentScreenResolution();
    float GetCurrentFPS();
    bool DisplayLog();
}; // Size: 0x28

class ULibEnum : public UBlueprintFunctionLibrary
{

    int32 NameEnumLabel(FString EnumName, TArray<FText>& OutStringList);
    int32 NameEnumDisplayName(FString EnumName, TArray<FText>& OutStringList);
    int32 GetMaxEnumValue(FString EnumName);
    class UEnum* GetEnumType(FString EnumName);
    void GetEnumNameStringByValue(FString EnumName, int32 Value, FString& OutString);
    void GetEnumLabel(FString EnumName, int32 Key, FString& OutValueName);
    int32 GetEnumEntryNum(FString EnumName);
    void GetEnumDisplayNameByValue(FString EnumName, int32 Value, FString& OutString);
    void GetEnumDisplayName(FString EnumName, int32 Key, FString& OutValueName);
    int32 BuildEnumStrings(class UEnum* EnumType, TArray<FString>& OutStringList);
    int32 BuildEnumNameStrings(class UEnum* EnumType, TArray<FString>& OutStringList);
    int32 BuildEnumLabel(class UEnum* EnumType, TArray<FText>& OutStringList);
    int32 BuildEnumFNameLabel(class UEnum* EnumType, TArray<FName>& OutStringList);
    int32 BuildEnumDisplayName(class UEnum* EnumType, TArray<FText>& OutStringList);
}; // Size: 0x28

class ULibEvent : public UBlueprintFunctionLibrary
{
}; // Size: 0x28

class ULibGetParam : public UBlueprintFunctionLibrary
{

    bool GetGameParamToVector4(FVector4& OutData, FName RowName, bool LogEnable);
    bool GetGameParamToVector2D(FVector2D& OutData, FName RowName, bool LogEnable);
    bool GetGameParamToVector(FVector& OutData, FName RowName, bool LogEnable);
    void GetGameParamToInt(FName RowName, int32& Min, int32& Max, int32& Init, int32& Param);
    bool GetGameParamToFName(FName& Min, FName& Max, FName& Init, FName& Param, FName RowName, bool LogEnable);
    void GetGameParamToFloatV4(FName RowName, FVector4& OutParams);
    void GetGameParamToFloat(FName RowName, float& Min, float& Max, float& Init, float& Param);
    void GetGameParamOnlyToInt(FName RowName, int32& Param);
    float GetGameParamOnlyToFloat(const FName& RowName);
    bool GetGameParamMinToInt32(int32& OutData, FName RowName, bool LogEnable);
    bool GetGameParamMaxToInt32(int32& OutData, FName RowName, bool LogEnable);
    bool GetGameParamDataToGuid(FGuid& OutData, FName RowName, bool LogEnable);
    bool GetBattleParamMinToInt32(int32& OutData, FName RowName, bool LogEnable);
    bool GetBattleParamMaxToInt32(int32& OutData, FName RowName, bool LogEnable);
    bool GetBattleParamDataToGuid(FGuid& OutData, FName RowName, bool LogEnable);
}; // Size: 0x28

class ULibHolyTorch : public UBlueprintFunctionLibrary
{

    void ReburnHolyTorch(EHOLY_TORCH_TYPE torchType);
    EHOLY_TORCH_SHINING_STATE GetShiningState();
    void BurnOutHolyTorch(EHOLY_TORCH_TYPE torchType);
}; // Size: 0x28

class ULibImage : public UBlueprintFunctionLibrary
{

    bool SaveImageToByteArray(class UTextureRenderTarget2D* RenderTarget, const FLinearColor ClearColour, TArray<uint8>& outByteArray);
    class UTexture2D* LoadImageFromByteArray(const TArray<uint8>& ByteArray, int32 Width, int32 Height, bool& IsValid);
}; // Size: 0x28

class ULibKey : public UBlueprintFunctionLibrary
{

    void SaveInputSetting();
    void RemoveAxisMappingByName(const FName InAxisName);
    void RemoveActionMappingByName(const FName InActionName);
    FName KeyToName(const FKey Key);
    bool IsInputKeyDownByActionMappings(class APlayerController* PlayerController, const FName InActionName);
    int32 GetTypeHashFromFKey(const FKey Key);
    EKeyboardLayoutType GetKeyboardLayoutType();
    FString GetKeyBoardCode();
    FKey GetInputKeyDownFKeyConfigFilter(class APlayerController* PlayerController);
    FKey GetInputKeyDownFKey(class APlayerController* PlayerController);
    FKey GetFKeyFromTypeHash(int32 TypeHash);
    EControllerInputType GetControllerInputType();
    EControllerInputType GetControllerInputCurrentType();
    void DebugLogTypeHashFromKey();
    void DebugLogCodesFromKey();
    void DebugLogAxisMappingByName(const FName InAxisName);
    void DebugLogAllAxisMapping();
    void DebugLogAllActionMapping();
    void DebugLogActionMappingByName(const FName InActionName);
    FKey CheckInputKeyDown(class APlayerController* PlayerController);
    bool CheckInputAnyKeyboardKeyJustPressed(class APlayerController* PlayerController);
    void AddAxisMapping(const FName InAxisName, const FKey Key, const float Scale);
    void AddActionMapping(const FName InActionName, const FKey Key);
}; // Size: 0x28

class ULibMainScenario : public UBlueprintFunctionLibrary
{
}; // Size: 0x28

class ULibMath : public UBlueprintFunctionLibrary
{

    void ToggleBit(int32 Index, TArray<int32>& BitArray);
    void SetBit(int32 Index, TArray<int32>& BitArray);
    bool GetBit(int32 Index, const TArray<int32>& BitArray);
    void ClearBit(int32 Index, TArray<int32>& BitArray);
    int32 BitShiftRight(int32 Value, int32 Shift);
    int32 BitShiftLeft(int32 Value, int32 Shift);
}; // Size: 0x28

class ULibMisc : public UBlueprintFunctionLibrary
{

    class AActor* SpawnActorByClassAssetId(class UObject* WorldContextObject, const TSoftClassPtr<UObject>& classAssetId, const FTransform Transform);
    void SortNameArrayInt64Order(TArray<FName>& nameArray, TArray<int64>& orderArray, bool isAscending);
    void SortNameArrayByFloatOrder(TArray<FName>& nameArray, TArray<float>& orderArray, bool isAscending);
    void SortNameArray(TArray<FName>& nameArray, TArray<int32>& orderArray, bool isAscending);
    void SortIntArray(TArray<int32>& intArray, TArray<int32>& orderArray, bool isAscending);
    void SetShowCollision(class UObject* WorldContextObject, bool bShow);
    void SetGamma(float Value);
    void Reserve_NameArray(TArray<FName>& taregtArray, int32 Size);
    void Reserve_Map(const TMap<int32, int32>& TargetMap, int32 Size);
    void Reserve_IntArray(TArray<int32>& targetArray, int32 Size);
    void ReleaseSlateResource(class UWidget* Widget);
    void PrintBPCallstack();
    void OutputMessageLog(ELogErrorType ErrorType, FString Message);
    void OutputLog(ELogErrorType ErrorType, FString Log, float TimeToDisplay);
    void LogError(FString Log, float TimeToDisplay);
    bool IsDebugCameraRunning(class UObject* WorldContextObject);
    FSoftObjectPath GetSpriteAssetPath(const TSoftObjectPtr<UObject>& cSoftObject);
    bool GetShowCollision(class UObject* WorldContextObject);
    float GetGamma();
    int32 GetDataTableRowNum(FString AssetPath);
    FString GetCommandLineValue(FString Key, bool& bSucceeded);
    class UUserWidget* CreateUserWidgetByClassAssetId(class APlayerController* OwningPlayer, const TSoftClassPtr<UObject>& classAssetId);
    class UActorComponent* AddActorComponent(class AActor* cSelf, UClass* cActorComponentClass);
}; // Size: 0x28

class ULibReflection : public UBlueprintFunctionLibrary
{
}; // Size: 0x28

class ULibSound : public UBlueprintFunctionLibrary
{

    FName ReplaceBattleResultBgmByCondition(FName currentBattleBgmLabel, FName jingleBgmLabel);
    FName ReplaceBattleBgmByCondition(FName BgmLabel);
    bool PlaySeByLabel(FName SELabel);
    bool IsCheckNormalMapInOverAllChapterAndBgmNull();
    bool IsAtomPlaying(EKSAudioComponentType CompType);
    FName CheckShouldPlayBgm(const FLevelInfoData& rLevelInfo, bool bCheckReserveTimeZone, bool forceNonDarkening);
}; // Size: 0x28

class ULibString : public UBlueprintFunctionLibrary
{

    void SortFText(TArray<FText>& TargetArrayRef, bool IsDescending);
    FString ReplaceFStringWithRegex(FString SourceString, FString RegexString, FString To);
    FString JoinFTextArray(const TArray<FText>& SourceArray, FString Separator);
    FString JoinFNameArray(const TArray<FName>& SourceArray, FString Separator, bool IsIgnoreNone);
}; // Size: 0x28

class ULibTutorial : public UBlueprintFunctionLibrary
{

    void SetTutorialFinishFlag(ETUTORIAL_TYPE Type);
    void OpenTutorialWithCloseCallback(ETUTORIAL_TYPE Type, bool ForceOpen, int32 CharaID, FOpenTutorialWithCloseCallbackCloseFinishCallback CloseFinishCallback, bool& IsOpen);
    void OpenTutorial(ETUTORIAL_TYPE Type, bool ForceOpen, int32 CharaID, bool& IsOpen);
    bool IsRunningTutorial();
    bool CheckProlouge(int32& CharaID);
    bool CheckMultiStory(int32& CharaID);
    bool CheckMerchant(int32& CharaID);
    bool CheckCoupling_Sin(int32& CharaID);
    bool CheckCoupling_Odo(int32& CharaID);
    bool CheckCoupling_Kus(int32& CharaID);
    bool CheckCoupling_Gak(int32& CharaID);
}; // Size: 0x28

class ULibUI : public UBlueprintFunctionLibrary
{

    void UpdateProgress(float CurrentTime, float MaxTime);
    void TurnOffTemporaryHiddenFlag(EWIDGET_TEMPORARY_HIDE_USER hideUser);
    void TemporaryCloseActionPopup();
    void SetWidgetVisible(EKSUIKind Type, ESlateVisibility Visible);
    void SetWidgetPaused(bool isPause);
    void SetSupportAbilityMenuEnable(bool Enable);
    void SetRadarForceHidden(bool ForceHidden);
    void SetLetterBoxWidget(class ULetterBoxBase* letterWidget);
    void SetJobMenuEnable(bool Enable);
    void SetIsOpeningPartyChatNotification(bool IsOpening);
    void SetHelpWindowPositionByWidget(const class UUserWidget* Widget);
    void SetHelpWindowPosition(const FVector2D& NewPosition);
    void SetHelpWindowOffset(const FVector2D& Offset);
    void SetAbilityMenuEnable(bool Enable);
    void ResetMapNameNotification();
    void ReOpenSubTitle();
    void ReOpenGuildMenu();
    void ReOpenEnterActionPopup();
    void PushMapNameNotification(FName RegionName, FName MapName, int32 EncounterLevel, int32 DangerLevel, bool IsOpenKeep, class UTexture* EmblemTexture, FName NotificationFormat);
    void OpenTutorialUI(const TArray<FDataTableTutorialPageData>& PageData, ETUTORIAL_TYPE Type, class UUITutorialBase*& UITutorial, bool IsEndCard, bool IsEpilouge);
    void OpenSubTitle(FName SubTitleLabel, bool RequestEvent, FName AfterEventLabel);
    void OpenStoryNotificationSubStory(FName TitleLabel, FName FormatTextLabel);
    void OpenStoryNotificationMarchant(FName MainStoryLabel, FName TitleLabel, FName FormatTextLabel);
    void OpenStoryNotificationCoupling(FName MainStoryLabel, FName TitleLabel, FName FormatTextLabel);
    void OpenScreenCaputreWithTexture(FName ResourceLabel);
    void OpenScreenCapture(bool PlayNoice);
    void OpenSaveLoadMenu(bool SaveMode, bool FromDebugMenu);
    class UPartySplitWidgetBase* OpenPartySplitWidget();
    class UMusicPlayerWidget* OpenMusicPlayer();
    void OpenMissionRecord();
    class UKSPartySplitWidgetBase* OpenKSPartySplitWidget();
    void OpenHelpWindowWithOffset(const FVector2D& Offset);
    void OpenHelpWindow();
    void OpenGuildMenu(FName guildLabel, bool& IsOpen);
    void OpenFieldCommandPreviewMenu(class AKSCharacterBase* targetNpc);
    void OpenFieldCommandMenu(class AKSCharacterBase* targetNpc, bool DrawLeft, TArray<MJFieldCommandType> CommandList);
    bool OpenFieldCommandJudge(class AKSCharacterBase* TargetChara, TArray<MJFieldCommandType> CommandList);
    void OpenEnterActionPopup(class AActor* TargetActor, FName ActionTextLabel);
    class UDiseaseListWidget* OpenDiseaseListUI();
    void OpenBusinessWithNpcNotificationAnimal(const FSpActMerchantResult& SpActMerchantResult, bool bIsFast);
    void OpenBusinessWithNpcNotification(const FSpActMerchantResult& SpActMerchantResult, bool bIsFast);
    bool IsRunningPartySplitWidget();
    bool IsRunningMusicPlayer();
    bool IsRunningKSPartySplitWidget();
    bool IsRunningFieldCommandPreviewMenu();
    bool IsOpeningGuildMenu();
    bool IsMainMenuFastWorldMapMode();
    bool IsActiveSubTitle();
    void HideWidgetTemporary(bool isHide, EWIDGET_TEMPORARY_HIDE_USER hideUser);
    class UTexture2D* GetSourceTextureFromPaperSprite(class UPaperSprite* Target);
    bool GetNoiceFinish();
    class ULetterBoxBase* GetLetterBoxWidget();
    EPARTY_SPLIT_CLOSE_REASON GetKSPartySplitWidgetCloseReason();
    bool GetGuildReOpenFlag();
    bool GetFCMenuUniqueCommandFlow();
    bool GetFCMenuInputEnableMode();
    bool GetEnableSafetyBalloon();
    FName GetAfterEventLabel();
    void Debug_SetIsForceHideQuitGameMenu(bool Val);
    void Debug_SetIsForceAvailableTrialData(bool Val);
    void Debug_SetEnableSafetyBalloon(bool Enable);
    bool Debug_GetIsForceHideQuitGameMenu();
    bool Debug_GetIsForceAvailableTrialData();
    void CloseSubTitle(bool& IsNext);
    void CloseScreenCapture();
    void ClosePartySplitWidget();
    void CloseMusicPlayer();
    void CloseKSPartySplitWidget();
    void CloseFieldCommandPreviewMenu(bool OpenJudgeWindow);
    void CloseFieldCommandMenu(bool OpenJudgeWindow, bool StateCheck);
    void CloseEnterActionPopup();
    void CloseDiseaseListUI();
    void CloseBusinessWithNpcNotification(bool bIsFast);
    bool CanMainMenuOpen();
    bool CanMainMenuClose();
    void ApplyLetterBoxSize();
}; // Size: 0x28

class ULibVibration : public UBlueprintFunctionLibrary
{

    bool GetDefaultVibrationEnable();
}; // Size: 0x28

class ULinerShipUtility : public UDataTableUtilityBase
{

    void GetRouteDataByLabel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FLinerShipRouteData& outRouteData, FName routeLabel);
    void GetAllRouteDataInTown(TArray<FLinerShipRouteData>& outRouteData, FName levelName, bool swapLevelAB);
}; // Size: 0x28

class UListCharacterWidgetBase : public UKSUserWidgetWithState
{

    bool SetupJoinNewMember(bool IsAddFriendMode, EPlayableCharacterID NewCharacterID);
    void SetIsRefreshPartyCharacter(bool IsRefreshPartyCharacter);
    void SetIsOpenInBar(bool IsBar);
    void SetIsIgnoreFadeOnCloseWidget(bool IsIgnoreFade);
    class UOverlay* GetPartyPanelRool();
    class UOverlay* GetMenuFooterRoot();
}; // Size: 0x368

class UListItemDetailWidgetBase : public UUserWidget
{

    void Show();
    void Hide();
}; // Size: 0x260

class UListItemWidget_Opt_Base : public UMJListItemWidget
{
    FOptionItemData m_OptionItemData;                                                 // 0x0400 (size: 0x48)

    bool SetupWindowResolution(FIntPoint currentResolution);
    void SetSpacerEnable(bool Enable);
    void SetOptionItemData(const FOptionItemData& OptionItemData);
    void RefreshUI();
    bool RefreshGuideData();
    FOptionItemData GetOptionItemData();
}; // Size: 0x448

class ULoadAssetHandle : public UObject
{
    TArray<class UObject*> LoadedObjects;                                             // 0x0050 (size: 0x10)

    void CallLoadFinish();
    void Callback(TArray<class UObject*>& LoadedObjects);
}; // Size: 0x70

class ULoadCharaAssetQueue : public UObject
{
    TArray<class UObject*> m_FlipbookResources;                                       // 0x0038 (size: 0x10)

    void CallbackLoadResource();
    void CallbackLoadFlipbook(TArray<class UObject*>& loadObjList);
}; // Size: 0x58

class UMJBillboardComponent : public USceneComponent
{
    class UCameraComponent* m_pCineCamComp;                                           // 0x01F8 (size: 0x8)

}; // Size: 0x210

class UMJGameViewportClient : public UGameViewportClient
{
}; // Size: 0x360

class UMJLevelSet : public ULevelSet
{
}; // Size: 0x98

class UMJListItemWidget : public UKSListItemWidgetBase
{
    class UKSTextBlock* RefText_Col1;                                                 // 0x02C0 (size: 0x8)
    class UKSTextBlock* RefText_Col2;                                                 // 0x02C8 (size: 0x8)
    class UKSTextBlock* RefText_Col3;                                                 // 0x02D0 (size: 0x8)
    class UKSTextBlock* RefText_Unit;                                                 // 0x02D8 (size: 0x8)
    class UImage* RefIcon_Cursor;                                                     // 0x02E0 (size: 0x8)
    class UImage* RefIcon_Item;                                                       // 0x02E8 (size: 0x8)
    class UImage* RefIcon_Item_0;                                                     // 0x02F0 (size: 0x8)
    class UImage* RefImg_StrikeThrough;                                               // 0x02F8 (size: 0x8)
    class UImage* RefImg_BackGround;                                                  // 0x0300 (size: 0x8)
    class UImage* RefFixedIcon;                                                       // 0x0308 (size: 0x8)
    class UVerticalBox* RefVBox_Detail;                                               // 0x0310 (size: 0x8)
    class UHorizontalBox* RefColumnExtension;                                         // 0x0318 (size: 0x8)
    class UVerticalBox* RefTitle;                                                     // 0x0320 (size: 0x8)
    class UWidgetAnimation* RefAnim_Focus;                                            // 0x0328 (size: 0x8)
    class UWidgetAnimation* RefAnim_OutFocus;                                         // 0x0330 (size: 0x8)
    class UWidgetAnimation* RefAnim_Decide;                                           // 0x0338 (size: 0x8)
    class UWidgetAnimation* RefAnim_DisableFocus;                                     // 0x0340 (size: 0x8)
    class UWidgetAnimation* RefAnim_DisableOutFocus;                                  // 0x0348 (size: 0x8)
    FLinearColor DefaultBackColor;                                                    // 0x0350 (size: 0x10)
    FLinearColor DefaultTextColor;                                                    // 0x0360 (size: 0x10)
    bool DefaultVisibility;                                                           // 0x0370 (size: 0x1)
    bool IsFirstSetup;                                                                // 0x0371 (size: 0x1)
    class UUserWidget* RefSpacer;                                                     // 0x0378 (size: 0x8)
    class UUserWidget* RefDivider;                                                    // 0x0380 (size: 0x8)
    class URankWidgetBase* RefRankWidget;                                             // 0x0388 (size: 0x8)
    FLinearColor TextCol_Enable;                                                      // 0x0390 (size: 0x10)
    FLinearColor TextCol_Disable;                                                     // 0x03A0 (size: 0x10)
    FLinearColor IconCol_Enable;                                                      // 0x03B0 (size: 0x10)
    FLinearColor IconCol_Disable;                                                     // 0x03C0 (size: 0x10)
    class UWidgetAnimation* CurrentAnimation;                                         // 0x03D0 (size: 0x8)
    int32 IndxInAll;                                                                  // 0x03D8 (size: 0x4)
    bool ShowUnit;                                                                    // 0x03DC (size: 0x1)
    class UUserWidget* ColumnExtension;                                               // 0x03E0 (size: 0x8)
    bool TextCol2_Dark;                                                               // 0x03E8 (size: 0x1)
    ELIST_ITEM_STATUS itemStatus;                                                     // 0x03E9 (size: 0x1)
    class UWidgetAnimation* ResetToDefaultAnimDisable;                                // 0x03F0 (size: 0x8)

    void UpdateCheckIcon(bool StrikeThrough);
    void StopAnim();
    void Setup(const FMJListWidgetItemData& itemmData, ELIST_NUM_UNIT_TYPE unitType, bool& success);
    void SetTitleWidget(class UUserWidget* titleWidget);
    void SetTextToColumn1(FName TextLabel);
    void SetTextColor(const FSlateColor& Color);
    void SetSpacer(ELIST_ITEM_NEXT_SPACE spacerType);
    void SetShining(bool ShiningFlag);
    void SetNumUnit(ELIST_NUM_UNIT_TYPE unitType);
    void SetItemDataIsRank(class UTexture2D* itemTexture, const FText& Name, const FText& Value_0, const FText& Value_1, int32 rankNum, const FText& Detail, ELIST_ITEM_STATUS Status);
    void SetItemData(class UTexture2D* iconTex, class UTexture2D* iconTex0, const FText& Name, const FText& value0, const FText& value1, const FText& Detail, ELIST_ITEM_STATUS Status);
    void SetIconColor(const FSlateColor& Color);
    void SetFixedIcon(class UTexture2D* Tex);
    void SetDetailWidget(class UListItemDetailWidgetBase* detailWidget);
    void SetDarkToTextCol2(bool Dark);
    void SetCursorVisibility(bool IsVisible);
    void SetColumnExWidget(class UUserWidget* extensionWidget);
    void SetColorByStatus(ELIST_ITEM_STATUS newPram);
    void SetCol1Icon(class UTexture2D* iconTex);
    void RemoveDetailWidget();
    void RemoveColumnExWidget();
    void PlayAnim(class UWidgetAnimation* anim, bool isFast);
    void OutFocus(bool isFast);
    void InitInstance(bool& success);
    void Init(int32 indexInAll, bool showColumn2, bool showColumn3, ELIST_ITEM_STATUS itemStatus, bool StrikeThrough);
    int32 GetItemIndexAll();
    float GetHeight();
    FVector2D GetCursorRelativePosition();
    class UUserWidget* GetColumnExWidget();
    void Focus(bool isFast);
    void FirstSetup();
    void Decide();
}; // Size: 0x3F8

class UMJRichTextBlock : public URichTextBlock
{
    EKSLanguage m_Language;                                                           // 0x0678 (size: 0x1)
    bool bOverrideFontSize;                                                           // 0x0679 (size: 0x1)
    int32 OverrideDefaultFontSize;                                                    // 0x067C (size: 0x4)
    bool bOverrideDefaultFontColor;                                                   // 0x0680 (size: 0x1)
    FLinearColor OverrideDefaultFontColor;                                            // 0x0684 (size: 0x10)
    bool bOverrideDefaultOutlineSize;                                                 // 0x0694 (size: 0x1)
    int32 OverrideDefaultOutLineSize;                                                 // 0x0698 (size: 0x4)
    bool bOverrideDefaultOutlineColor;                                                // 0x069C (size: 0x1)
    FLinearColor OverrideOutlineColor;                                                // 0x06A0 (size: 0x10)
    bool bOverrideDefaultShadowColor;                                                 // 0x06B0 (size: 0x1)
    FLinearColor OverrideShadowColor;                                                 // 0x06B4 (size: 0x10)
    bool bBanOverrideStyle;                                                           // 0x06C4 (size: 0x1)
    bool m_bUpdateOutlineSize;                                                        // 0x06C5 (size: 0x1)
    bool m_bOutlineCalcRoundingDown;                                                  // 0x06C6 (size: 0x1)

    void UpdateFontOutlineSize();
    void SetMJText(const FText& InText);
    bool RefreshFontSet(bool forceRefresh);
    void OverrideDefaultStyleParameter();
}; // Size: 0x6D0

class UMJSaveData : public USaveGame
{
    TArray<int32> BitFlag;                                                            // 0x0028 (size: 0x10)
    TArray<int32> EventPlayedFlag;                                                    // 0x0038 (size: 0x10)
    TArray<int32> EventValueParam;                                                    // 0x0048 (size: 0x10)
    TArray<int32> EventCounter;                                                       // 0x0058 (size: 0x10)
    FPlayerLocation PlayerLocation;                                                   // 0x0068 (size: 0x1C)
    FVector ladderUpPos;                                                              // 0x0084 (size: 0xC)
    FVector ladderDownPos;                                                            // 0x0090 (size: 0xC)
    FVector ladderMovePos;                                                            // 0x009C (size: 0xC)
    FTimeZoneSaveData TimeZoneData;                                                   // 0x00A8 (size: 0x8)
    EKSLanguage Voice;                                                                // 0x00B0 (size: 0x1)
    TArray<bool> PreparationKnown;                                                    // 0x00B8 (size: 0x10)
    bool IsTressaInParty;                                                             // 0x00C8 (size: 0x1)
    int32 TotalMoneyByTressa;                                                         // 0x00CC (size: 0x4)
    TArray<int32> LearnAbilityList;                                                   // 0x00D0 (size: 0x10)
    TArray<FTameMonsterData> TameMonsterList;                                         // 0x00E0 (size: 0x10)
    TArray<FTameMonsterData> LegendMonsterList;                                       // 0x00F0 (size: 0x10)
    int32 HunterPartner;                                                              // 0x0100 (size: 0x4)
    uint8 TameMonsterMode;                                                            // 0x0104 (size: 0x1)
    TArray<int32> SubMissionOrder;                                                    // 0x0108 (size: 0x10)
    TMap<int32, FPartyChatSaveData> PartyChatSaveData;                                // 0x0118 (size: 0x50)
    TArray<int32> MapChangeHistory;                                                   // 0x0168 (size: 0x10)
    int32 LevelChangeCounterForFinalChapterHintPartyChat;                             // 0x0178 (size: 0x4)
    TMap<int32, int32> FixedFieldBgmMainStoryTaskIdTable;                             // 0x0180 (size: 0x50)
    int32 LastBgmID;                                                                  // 0x01D0 (size: 0x4)
    int32 FirstSelectCharacterID;                                                     // 0x01D4 (size: 0x4)
    TArray<int32> ParticipationOrderCharacterID;                                      // 0x01D8 (size: 0x10)
    bool IsRadarMapVisible;                                                           // 0x01E8 (size: 0x1)
    TArray<bool> SupportAilmentSwitch;                                                // 0x01F0 (size: 0x10)
    TArray<int32> ShowMapIcon;                                                        // 0x0200 (size: 0x10)
    TArray<int32> VisitedMap;                                                         // 0x0210 (size: 0x10)
    TArray<int32> VisitedWorldMapMaskArea;                                            // 0x0220 (size: 0x10)
    TArray<int32> VisitedWorldMapPrologueMaskArea;                                    // 0x0230 (size: 0x10)
    TArray<int32> VisitedWorldMapIslandLayerArea;                                     // 0x0240 (size: 0x10)
    TArray<int32> EnableSwitchIndoorTrigger;                                          // 0x0250 (size: 0x10)
    int32 PlayingReminiscenceId;                                                      // 0x0270 (size: 0x4)
    int32 ReminiscenceCharaId;                                                        // 0x0274 (size: 0x4)
    EKSPartySet CurrentPartySet;                                                      // 0x0278 (size: 0x1)
    FPlayerParty PlayerParty;                                                         // 0x0280 (size: 0x48)
    TArray<int32> BackupMainMemberId;                                                 // 0x02C8 (size: 0x10)
    TArray<int32> BackupSubMemberId;                                                  // 0x02D8 (size: 0x10)
    FPlayerBackpack PlayerBackpack;                                                   // 0x02E8 (size: 0x18)
    FItemAcquisitionHistory ItemAcquitisionHistory;                                   // 0x0300 (size: 0x10)
    TArray<FSaveFollowNpcData> FollowNpcSaveData;                                     // 0x0310 (size: 0x10)
    TArray<FSaveFollowNpcData> FollowWaitingNpcSaveData;                              // 0x0320 (size: 0x10)
    TArray<FSaveFollowNpcData> BackupFollowNpcList;                                   // 0x0330 (size: 0x10)
    TArray<FSaveFollowNpcData> BackupFollowWaitingNpcList;                            // 0x0340 (size: 0x10)
    FPlayerParty PlayerParty_Set1;                                                    // 0x0350 (size: 0x48)
    FPlayerParty PlayerParty_Set2;                                                    // 0x0398 (size: 0x48)
    FPlayerParty PlayerParty_Set3;                                                    // 0x03E0 (size: 0x48)
    FPlayerParty PlayerParty_Set4;                                                    // 0x0428 (size: 0x48)
    FPlayerParty PlayerParty_Set5;                                                    // 0x0470 (size: 0x48)
    TArray<int32> LastAtlantisPartySet;                                               // 0x04B8 (size: 0x10)
    FReminiscenceBufferMoney BackupMoney;                                             // 0x04C8 (size: 0x10)
    FReminiscenceBufferItem BackupItem;                                               // 0x04D8 (size: 0x28)
    FReminiscenceBufferEquipment BackupEquipment;                                     // 0x0500 (size: 0x18)
    FReminiscenceBufferJob BackupJob;                                                 // 0x0518 (size: 0x18)
    FReminiscenceBufferAbility BackupAbility;                                         // 0x0530 (size: 0x18)
    FReminiscenceBufferExp BackupExp;                                                 // 0x0548 (size: 0x18)
    FReminiscenceBufferJP BackupJP;                                                   // 0x0560 (size: 0x28)
    FReminiscenceBufferDopingParam BackupDopingParam;                                 // 0x0588 (size: 0x18)
    FReminiscenceBufferLearnAbility BackupLearnAbility;                               // 0x05A0 (size: 0x18)
    FReminiscenceBufferFollowNpc BackupFollowNpc;                                     // 0x05B8 (size: 0x28)
    FReminiscenceBufferTameMonster BackupTameMonster;                                 // 0x05E0 (size: 0x28)
    FReminiscenceBufferTimeZone BackupTimeZone;                                       // 0x0608 (size: 0x18)
    FReminiscenceBufferPOT BackupPOT;                                                 // 0x0620 (size: 0x18)
    int32 DifficultyPoint;                                                            // 0x0648 (size: 0x4)
    int32 BackupDifficultyPoint;                                                      // 0x064C (size: 0x4)
    TArray<int32> BackupCurrentHP;                                                    // 0x0650 (size: 0x10)
    TArray<int32> BackupCurrentSP;                                                    // 0x0660 (size: 0x10)
    FPlayerLocation ReminiPlayerLocation;                                             // 0x0670 (size: 0x1C)
    FVector ReminiCameraLockPos;                                                      // 0x068C (size: 0xC)
    uint8 ReminiCameraLockLvTrigId;                                                   // 0x0698 (size: 0x1)
    FReminiscenceRestorePlacement ReminiRestoreData;                                  // 0x06A0 (size: 0x68)
    TArray<FSavePlayerCharacterData> PlayerMember;                                    // 0x0708 (size: 0x10)
    TArray<FBattleReplayData> Endroll_BattleReplayData;                               // 0x0718 (size: 0x10)
    TArray<int32> Endroll_ClearedMS;                                                  // 0x0728 (size: 0x10)
    bool BattleHelpWindowOpen;                                                        // 0x0738 (size: 0x1)
    int32 CurrentEncountTriggerID;                                                    // 0x073C (size: 0x4)
    int32 BattleSpeedStep;                                                            // 0x0740 (size: 0x4)
    TMap<int32, FTownData> TownData;                                                  // 0x0748 (size: 0x50)
    FMenuData MenuData;                                                               // 0x0798 (size: 0xC)
    TMap<int32, FSaveEnemyData> EnemyInfoData;                                        // 0x07A8 (size: 0x50)
    FVector CameraLockPos;                                                            // 0x07F8 (size: 0xC)
    int32 GamePlaySecond;                                                             // 0x0804 (size: 0x4)
    int32 equipEncountRevision;                                                       // 0x0808 (size: 0x4)
    TArray<FSaveMissionData> SubMissionData;                                          // 0x0810 (size: 0x10)
    TMap<int32, FMapData> MapData;                                                    // 0x0820 (size: 0x50)
    TArray<FRevivalObjectSaveData> RevivalObjectSaveData;                             // 0x0870 (size: 0x10)
    EKSCharacterMoveMode MoveMode;                                                    // 0x0880 (size: 0x1)
    FEquipLanternData EquipLanternData;                                               // 0x0888 (size: 0x20)
    TMap<int32, FNpcEventData> NPCEventList;                                          // 0x08A8 (size: 0x50)
    TMap<int32, FSoldOutShopItemData> SoldOutShopItemDataList;                        // 0x08F8 (size: 0x50)
    TMap<int32, int8> NPCSpawnStartDelayCountList;                                    // 0x0948 (size: 0x50)
    TMap<int32, int8> NPCSpawnEndDelayCountList;                                      // 0x0998 (size: 0x50)
    TMap<int32, int8> NPCTZCangeSwoonRevivalCountList;                                // 0x09E8 (size: 0x50)
    uint8 CameraLockCurrentLevelTriggerID;                                            // 0x0A38 (size: 0x1)
    int32 CameraLockCurrentLevelID;                                                   // 0x0A3C (size: 0x4)
    TArray<FMainStorySaveData> MainStoryData;                                         // 0x0A40 (size: 0x10)
    TMap<int32, FMainStoryTaskSaveData> MainStoryTaskData;                            // 0x0A50 (size: 0x50)
    int32 AutoInterruptMainStory;                                                     // 0x0AA0 (size: 0x4)
    int32 AutoInterruptMainStory_Prologue;                                            // 0x0AA4 (size: 0x4)
    TArray<int32> ExtraStoryProgress;                                                 // 0x0AA8 (size: 0x10)
    FAchievementSaveData AchievementSaveData;                                         // 0x0AB8 (size: 0xD0)
    TArray<FSaveDataGuild> GuildData;                                                 // 0x0B88 (size: 0x10)
    TArray<FSaveDataSubTitle> SubTitleData;                                           // 0x0B98 (size: 0x10)
    TArray<int32> MyShipCustom;                                                       // 0x0BA8 (size: 0x10)
    TArray<int32> MyShipCustomFirstChoice;                                            // 0x0BB8 (size: 0x10)
    int32 LevelDarkState;                                                             // 0x0BC8 (size: 0x4)
    int32 LostWayCount;                                                               // 0x0BCC (size: 0x4)
    TArray<int32> HolyTorchState;                                                     // 0x0BD0 (size: 0x10)
    int32 TutorialCanDisplayFlag;                                                     // 0x0BE0 (size: 0x4)

    void ToggleBitFlag(int32 Index);
    void SetVoice(EKSLanguage eLang);
    void SetVisitedMap(bool SetBit, int32 Index);
    void SetupOnStartReminiscence();
    bool SetupFixedParty(const TArray<EPlayableCharacterID>& fixedCharaList);
    void SetupBackpackAndMoneyToInitial(int32 CharacterID);
    bool SetupBackpackAndEquipmentForReminiscence(int32 reminisceceId);
    void SetTimeZoneData(const FTimeZoneSaveData& TimeZoneData);
    void SetTameMonsterMode(ETameMonsterMode Mode);
    void SetTameMonsterList(TArray<FTameMonsterData> NewTameMonsterList);
    void SetSubMissionRecordStartSelect(int32 StartSelect);
    void SetShowMapIcon(bool SetBit, int32 Index);
    void SetSaveEnemyData(int32 EnemyID, const FSaveEnemyData& SaveEnemyData);
    void SetReminiscenceCharacterId(int32 CharacterID);
    void SetRecentCameraLockLevelTrigger(int32 levelId, uint8 LevelTriggerID);
    void SetRadarMapVisible(bool bVisible);
    void SetPlayingReminiscenceId(int32 reminiscenceId);
    void SetPlayerLocationBeforeReminiscence(const FPlayerLocation& Location);
    void SetPlayerLocation(const FPlayerLocation& PlayerLocation);
    void SetPartySupportAilmentSwitch(TArray<bool> SwitchList);
    void SetParticipationOrderCharacterID(TArray<int32> IDList);
    void SetNPCEventList(TMap<int32, FNpcEventData> NewNPCEventList);
    void SetMoveMode(EKSCharacterMoveMode Mode);
    void SetMapChangeHistory(int32 MapID);
    int32 SetMainProgressPoint(int32 SetPoint);
    void SetMainMissionRecordStartSelect(int32 StartSelect);
    void SetLegendMonsterList(TArray<FTameMonsterData> NewLegendMonsterList);
    void SetLearnAbility(int32 Index, int32 AbilitySetID);
    void SetLastBgmId(int32 ID);
    void SetLadderPosition(const FVector& ladderUpPos, const FVector& ladderDownPos, const FVector& ladderMovePos);
    void SetGamePlaySecond(int32 Second);
    void SetExtraMissionRecordStartSelect(int32 StartSelect);
    void SetEventValueParam(int32 Index, int32 Value);
    void SetEventtPlayedFlag(int32 Index, bool Flag);
    int32 SetEventCounter(int32 Index, int32 Value);
    void SetEquipLanternData(FEquipLanternData Equip);
    void SetEquipEncountRevision(int32 equipEncountRevision);
    void SetEnableSwitchIndoorTriggerList(TArray<int32> list);
    int32 SetDifficultyPoint(int32 SetPoint);
    void SetCurrentPartySet(EKSPartySet partySet);
    void SetCurrentEncountTriggerID(int32 TriggerID);
    void SetCameraLockPos(const FVector& Pos);
    void SetCameraLockBeforeReminiscence(const FVector& CameraLockPos, uint8 TriggerID);
    void SetBitFlagRange(int32 inStart, int32 inEnd, bool Flag);
    void SetBitFlagArray(const TArray<int32>& IndexArray, bool Flag);
    void SetBitFlag(int32 Index, bool Flag);
    void SetBattleSpeedStep(int32 Value);
    void SetBattleHelpWindowOpen(bool Open);
    bool ResumePartySetAfterAtlantis();
    void RestoreOriginalData();
    void RestoreDifficultyPoint();
    bool ResetPartySetToSet1();
    bool PreparePartySetBeforeAtlantis();
    void MergeReminiscenceData();
    void MergeDifficultyPoint();
    void JoinPlayerCharacterToParty(EPlayableCharacterID CharacterID, bool& OutResult, bool& outIsAddMainMember);
    bool IsRadarVisible();
    void InitTownConnectionValue();
    void InitTimezone();
    void InitPlayerParty(TArray<int32> mainMember, TArray<int32> subMember);
    void InitPlayerMembers();
    void InitNewGameData();
    void InitFollowNPC();
    void InitEndroll();
    void InitBackpackAndMoneyBuffer();
    EKSLanguage GetVoice();
    bool GetVisitedMap(int32 Index);
    FTimeZoneSaveData GetTimeZoneData();
    ETameMonsterMode GetTameMonsterMode();
    TArray<FTameMonsterData> GetTameMonsterList();
    TArray<FSaveDataSubTitle> GetSubTitleData();
    int32 GetSubMissionRecordStartSelect();
    TMap<int32, FSoldOutShopItemData> GetSoldOutShopitemDataList();
    bool GetShowMapIcon(int32 Index);
    FSaveEnemyData GetSaveEnemyData(int32 EnemyID);
    TArray<FRevivalObjectSaveData> GetRevivalObjectSaveData();
    int32 GetReminiscenceCharacterId();
    uint8 GetRecentCameraLockLevelTriggerID();
    int32 GetRecentCameraLockLevelID();
    int32 GetPlayingReminiscenceId();
    FPlayerParty GetPlayerPartySet(EKSPartySet partySet);
    FPlayerParty GetPlayerParty();
    TArray<FSavePlayerCharacterData> GetPlayerMember();
    FPlayerLocation GetPlayerLocationBeforeReminiscence();
    FPlayerLocation GetPlayerLocation();
    TArray<FSaveBackPackItem> GetPlayerBackpackItemList();
    TArray<bool> GetPartySupportAilmentSwitch();
    TArray<int32> GetParticipationOrderCharacterID();
    TMap<int32, FNpcEventData> GetNPCEventList();
    EKSCharacterMoveMode GetMoveMode();
    TArray<int32> GetMapChangeHistory();
    TMap<int32, FMainStoryTaskSaveData> GetMainStoryTaskSaveData();
    TArray<FMainStorySaveData> GetMainStory();
    int32 GetMainProgressPoint();
    int32 GetMainMissionRecordStartSelect();
    int32 GetLevelChangeCounterForFinalChapterHintPartyChat();
    TArray<FTameMonsterData> GetLegendMonsterList();
    TArray<int32> GetLearnAbility();
    int32 GetLastPlayedBgmID();
    void GetLadderPosition(FVector& outLadderUpPos, FVector& outLadderDownPos, FVector& outLadderMovePos);
    TArray<FSaveDataGuild> GetGuildData();
    int32 GetGamePlaySecond();
    void GetFirstSelectCharacterID(int32& FirstSelectCharaID);
    TArray<int32> GetExtraStoryProgressBuffer();
    int32 GetExtraMissionRecordStartSelect();
    int32 GetEventValueParam(int32 Index);
    bool GetEventtPlayedFlag(int32 Index);
    TArray<int32> GetEventPlayedFlag();
    int32 GetEventCounter(int32 Index);
    FEquipLanternData GetEquipLanternData();
    int32 GetEquipEncountRevision();
    TArray<int32> GetEnableSwitchIndoorTriggerListRef();
    TArray<int32> GetEnableSwitchIndoorTriggerList();
    int32 GetDifficultyPoint();
    EKSPartySet GetCurrentPartySet();
    int32 GetCurrentEncountTriggerID();
    FVector GetCameraLockPosBeforeReminiscence();
    FVector GetCameraLockPos();
    uint8 GetCameraLockLvTriggerIdBeforeReminiscence();
    bool GetBitFlag(int32 Index);
    TArray<int32> GetBit();
    int32 GetBattleSpeedStep();
    bool GetBattleHelpWindowOpen();
    TMap<int32, FTownData> GetAllTownData();
    TMap<int32, FMapData> GetAllMapData();
    bool DeleteTameMonsterList(int32 Index);
    FAcquisitionAbilityData CreateAcquitisionAdvancedAbilityData(int32 ArraySize);
    TArray<FAcquisitionAbilityData> CreateAcquitisionAbilityData(int32 ArraySize);
    void CopyPartySetDataOtherThanMember(EKSPartySet PartySetID);
    void ClearReminiscenceCharacterId();
    void ClearRecentCameraLockLevelTrigger();
    void ClearPlayingReminiscenceId();
    void ClearPlayerLocationBeforeReminiscence();
    void ClearCameraLockBeforeReminiscence();
    bool CheckLearnAbilityFull(int32& outEmptyIndex);
    void ChangePartySet(EKSPartySet partySet);
    void BackupDataBeforeReminiscence();
    void BackupAndResetDifficultyPoint();
    int32 AddMainProgressPoint(int32 AddPoint);
    int32 AddEventValueParam(int32 Index, int32 Value);
    int32 AddEventCounter(int32 Index, int32 Value);
    int32 AddDifficultyPoint(int32 AddPoint);
}; // Size: 0xBE8

class UMJSoundListenerComponent : public USceneComponent
{

    void ChangeListenerPoint(ELISTENER_TYPE eListenerType, class USceneComponent* pParentComponent);
}; // Size: 0x200

class UMacroData : public UObject
{
    TArray<class UMacroData*> m_ChildrenNodes;                                        // 0x0050 (size: 0x10)

}; // Size: 0x60

class UMainMenuBase : public UKSUserWidgetBase
{

    bool PreCloseActionFromPartyChat();
    bool PreCloseAction();
    bool OpenMissionRecordReOpen();
    bool OpenFastWorldMap();
    void IsFastWorldMapMode(bool& FastWorldMapMode);
    class UMainMenuListBase* GetMainMenuList();
    bool CanMainMenuClose();
    void CanCloseMainMenu(bool& CanClose);
}; // Size: 0x358

class UMainMenuListBase : public UUserWidget
{

    void OnPartyRefresh(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void Init();
}; // Size: 0x260

class UMainMenuStateData : public UMainMenuStateDataBase
{
}; // Size: 0x50

class UMainMenuStateDataBase : public UStateDataBase
{
}; // Size: 0x50

class UMainMenuWorldMapStateData : public UMainMenuStateDataBase
{
}; // Size: 0x50

class UMainTitleBase : public UKSUserWidgetBase
{

    void SetupNewGameForAutoPlay(int32 PlayerCharaId);
    void SetTitleScene(class UTitleBase* Scene, EUITitleFlow Flow);
}; // Size: 0x358

class UMapNameNotificationBase : public UKSUserWidgetBase
{
    EMAP_NAME_NOTIFICATION_OPEN_OWNER m_OpenOwner;                                    // 0x0358 (size: 0x1)

    void SetOpenOwner(EMAP_NAME_NOTIFICATION_OPEN_OWNER Owner);
    bool SetLevelChangeVisible(ESlateVisibility IsVisible);
    bool ResetNotification();
    bool OpenEventAreaUI(FName RegionName, FName MapName, class UTexture* EmblemTexture);
    bool OpenAreaUI(FName RegionName, FName MapName, int32 EncounterLevel, int32 DangerLevel, bool IsOpenKeep, class UTexture* EmblemTexture, FName NotificationFormat);
    bool CloseAreaUIDelay();
    bool CloseAreaUI();
}; // Size: 0x360

class UMasqueradeComponent : public UActorComponent
{
    class ABattleCharacterBase* m_cOwnerPlayer;                                       // 0x00B0 (size: 0x8)
    class ABattleCharacterBase* m_cMasqueradeTarget;                                  // 0x00B8 (size: 0x8)
    bool m_bExecMasquerade;                                                           // 0x00C0 (size: 0x1)

    bool ResumeMasquerade();
    bool PlayMasqueradeBattleVoice(EBATTLE_VOICE_TYPE eBattleVoiceType, FBattleVoiceSetData cPlayCondition);
    bool IsExecMasquerade();
    TArray<EWEAPON_CATEGORY> GetMasqueradeEquipWeaponList();
    FName GetMasqueradeCommandNameSecondJob();
    FName GetMasqueradeCommandNameFirstJob();
    TArray<FName> GetMasqueradeCommandListSecondJob();
    TArray<FName> GetMasqueradeCommandListFirstJob();
    FName GetMasqueradeCommandDetailSecondJob();
    FName GetMasqueradeCommandDetailFirstJob();
    void GetMasqueradeCharacterID(EPlayableCharacterID& eCharaID);
    bool ExecMasquerade(class ABattleCharacterBase* cTarget, int32 nInvocationTurn);
}; // Size: 0xC8

class UMenuSaveLoadBase : public UKSUserWidgetWithState
{
    ESaveDataLoadTarget m_LoadTarget;                                                 // 0x0368 (size: 0x1)

    void SetLoadTarget(ESaveDataLoadTarget Target);
    bool OpenMenu(bool IsSaveMode, bool FromDebugMenu);
    class UKSSaveSystem* GetTargetSystemData();
    void GetResult(ESAVELOAD_RESULT& Result);
    ESaveDataLoadTarget GetLoadTarget();
}; // Size: 0x370

class UMillionaireModeUtility : public UDataTableUtilityBase
{

    bool IsActiveMillionaireMode(const FName& millionaireModeLabel);
    int64 GetMillionaireModePrice(const FName& millionaireModeLabel);
    bool GetMillionaireModeData(const FName& millionaireModeLabel, FMillionaireModeData& outMillionaireModeData);
    bool GetActiveMillionaireModeData(FMillionaireModeData& outMillionaireModeData);
}; // Size: 0x28

class UMissionSaveDataUtil : public USaveDataUtilBase
{

    bool SetSubStoryState(int32 AreaID, int32 missionSaveDataIndex, int32 State);
    bool SetSubStoryOrder(int32 MissionIndex);
    void SetSubStoryNewFlag(int32 AreaID, int32 missionSaveDataIndex, bool bNewFlag);
    bool SetSubStoryMarker(int32 AreaID, int32 missionSaveDataIndex, int32 MapID, FVector MarkerPos);
    bool SetSubStoryClearIndex(int32 AreaID, int32 missionSaveDataIndex, int32 ClearIndex);
    bool SetSubMissionData(int32 AreaID, FSaveMissionData newSubMissionData);
    void SetMainMissionProgressCount(int32 CharacterID, int32 progressCount);
    void SetExtraStoryProgressCount(int32 ExStoryCategory, int32 progressCount);
    bool ResetSubStoryOrder();
    int32 GetSubStoryState(int32 AreaID, int32 missionSaveDataIndex);
    bool GetSubStoryOrder(TArray<int32>& outSubMissionOrder);
    bool GetSubStoryNewFlag(int32 AreaID, int32 missionSaveDataIndex);
    void GetSubStoryMarkerInMap(int32 MapID, TArray<int32>& outAreaID, TArray<int32>& outMissionSaveDataIndex, TArray<FVector>& outMarkerPos);
    int32 GetSubStoryClearIndex(int32 AreaID, int32 missionSaveDataIndex);
    bool GetSubMissionData(int32 AreaID, FSaveMissionData& outSubMissionData);
    int32 GetMainMissionProgressCount_FromSaveCharacterData(int32 CharacterID);
    int32 GetExtraStoryProgressCount(int32 ExStoryCategory);
}; // Size: 0x28

class UMusicPlayerWidget : public UKSUserWidgetBase
{
    EMUSIC_PLAYER_WIDGET_STATE m_WidgetState;                                         // 0x0358 (size: 0x1)

    void UpdateWidgetState(EMUSIC_PLAYER_WIDGET_STATE WidgetState);
    void OnEndState(EMUSIC_PLAYER_WIDGET_STATE CurrentState);
    void OnBeginState(EMUSIC_PLAYER_WIDGET_STATE CurrentState);
}; // Size: 0x360

class UMyShipUtility : public UBlueprintFunctionLibrary
{

    FName GetSailTextureResourceLabel(EMYSHIP_CUSTOM_TYPE SailType);
    FName GetMyShipMeshResourceLabel();
    FName GetMyShipFlipbook();
    FName GetMyShipFirstChoiceMeshResourceLabel();
    void ApplyMyShipCustomizeFirstChoice();
    void ApplyMyShipCustomize();
}; // Size: 0x28

class UNPCDataBaseUtility : public UDataTableUtilityBase
{

    bool GetNPCPurchaseData(FName RowName, FNPCPurchaseDataBase& outPurchaseData);
    bool GetNPCLeadData(FName RowName, FNPCLeadDataBase& outLeadData);
    bool GetNPCHearInfoData(FName RowName, FNPCHearInfoDataBase& outHearInfoData);
    bool GetNPCHearData(FName RowName, FNPCHearDataBase& outHearData);
    bool GetNPCDataBaseRowNames(ENPC_DB_TYPE Type, TArray<FName>& OutRowNames);
    bool GetNPCBattleData(FName RowName, FNPCBattleData& outBattleData);
}; // Size: 0x28

class UNPCSaveDataUtil : public USaveDataUtilBase
{

    bool SetNPCTZChangeSwoonRevivalCount(int32 nNPCIndex, int32 nTimeZoneCnt);
    bool SetNPCSwoonFlag(FName NPCLabel, bool Flag, ENpcSwoonType SwoonType, int32& NPCIndex);
    bool SetNPCEventData(int32 NPCID, FNpcEventData NpcEventData);
    bool IsSwoonNPC(FName NPCLabel);
    int32 GetNPCTZChangeSwoonRevivalCount(int32 nNPCIndex);
    bool GetNPCEventDataByLabel(FName NPCLabel, FNpcEventData& NpcEventData, int32& NPCID);
    bool GetNPCEventDataByID(int32 NPCID, FNpcEventData& Out);
    void DEBUG_ClearNpcPurchasedItems(FName NPCLabel);
    void DEBUG_ClearNpcHearFlag(FName NPCLabel);
    void DEBUG_ClearAllNpcPurchasedItems();
    TArray<int32> DEBUG_ClearAllNpcHearFlag();
}; // Size: 0x28

class UNarrationDataTableUtility : public UBlueprintFunctionLibrary
{

    int32 NarrationDataLabelToID(FName NarrationDataLabel);
    FName NarrationDataIDToLabel(int32 NarrationDataID);
    bool GetNarrationDataRowNames(TArray<FName>& OutRowNames);
    bool GetNarrationData(FName RowName, FNarrationDataBase& outRowData);
}; // Size: 0x28

class UNarrationMessageWidgetBase : public UAcqUserWidget
{

    void SkipDraw();
    void SetNottingLine();
    void SetBlankLine();
    void Reset();
    bool PlayMessage(const FText& Text, int32 TextJustification, bool DisableAnimation, float DrawTime, FTalkVoice VoiceData);
    void PlayFadeOut();
}; // Size: 0x2C0

class UNarrationWidgetBase : public UKSUserWidgetBase
{

    void UpdateDrawMessage(bool& IsEnd);
    bool SetPlayPageMessage(const FNarrationDataBase& page);
    void SetAnimationMode(bool PassBGOpen, bool PassBGClose);
    void PlayNote(FName NoteLabel, bool UseBackground);
    void PlayNarration(FName NarrationSetLabel);
    void PhraseMessageDraw();
    void OpenInner();
    bool OneLineDraw(class UNarrationMessageWidgetBase* TargetObject, FName TalkLabel, int32 TextJustification, bool DisableAnimation, bool IsVoiceSkip);
    void NextPage(bool& IsEnd);
    void CloseMessage();
    void Close(bool IsForceClose);
    void AllDrawMessage();
}; // Size: 0x358

class UNextPurposeDataUtility : public UDataTableUtilityBase
{

    void NotifyNextPurposeDataDB(FName dbName, EDBNoticeType notice);
    bool GetNextPurposeTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames, ENextPurposeDataType Type);
    bool GetNextPurposeRowDataByID(FNextPurposeData& OutData, int32 TargetID);
    bool GetNextPurposeRowData(FNextPurposeData& OutData, FName TargetLabel);
    bool GetNextPurposeLabelsByMainStory(TArray<FName>& outLabels, FName MainStoryLabel);
    void GetNextPurposeDataByMainStoryTaskLabel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FNextPurposeData& OutData, FName mainStoryTaskLabel);
}; // Size: 0x28

class UNpcPropertyComponent : public UActorComponent
{
    FName m_NpcLabel;                                                                 // 0x00B0 (size: 0x8)
    int32 m_NpcUniqueID;                                                              // 0x00B8 (size: 0x4)
    int32 m_RequestID;                                                                // 0x00BC (size: 0x4)
    bool m_IsEnableMove;                                                              // 0x00C0 (size: 0x1)
    bool m_IsMoveNPC;                                                                 // 0x00C1 (size: 0x1)
    bool m_IsNoReactionNPC;                                                           // 0x00C2 (size: 0x1)
    bool m_IsEnableFieldCommand;                                                      // 0x00C3 (size: 0x1)
    bool m_IsPlayingAutoTalk;                                                         // 0x00C4 (size: 0x1)
    float m_AutoBalloonDistance;                                                      // 0x00C8 (size: 0x4)

    void SetRequestID(int32 Val);
    void SetPlayingAutoTalk(bool Val);
    int32 SetNpcUniqueID(int32 Value);
    FName SetNpcLabel(FName Value);
    void SetIsNoReactionNPC(bool Val);
    void SetIsMoveNPC(bool Val);
    void SetIsEnableMove(bool Val);
    void SetIsEnableFieldCommand(bool Val);
    void SetAutoBalloonDistance(float Distance);
    bool IsSwoon();
    bool IsSignBoard();
    bool IsPlayingAutoTalk();
    bool IsGramoPhone();
    int32 GetRequestID();
    bool GetPurchaseData(FNPCPurchaseDataBase& OutData);
    int32 GetNpcUniqueID();
    FName GetNpcLabel();
    bool GetLeadData(FNPCLeadDataBase& OutData);
    bool GetIsNoReactionNPC();
    bool GetIsMoveNPC();
    bool GetIsEnableMove();
    bool GetIsEnableFieldCommand();
    bool GetHearData(FNPCHearDataBase& OutData);
    bool GetBattleData(FNPCBattleData& OutData);
    float GetAutoBalloonDistance();
    bool CheckFieldCommandEnable();
}; // Size: 0xD0

class UNullServiceConnecter : public UServiceConnecter
{
}; // Size: 0x38

class UObjectDataTableUtility : public UDataTableUtilityBase
{

    FName GetObjectLabelById(int32 ID);
    bool GetObjectDataRow(FKSObjectData& OutData, FName TargetLabel);
}; // Size: 0x28

class UOpenSpeechUIComponent : public UActorComponent
{
    FName m_SubTitleLabel;                                                            // 0x00B8 (size: 0x8)

    void OpenSpeechUI();
    void CloseSpeechUI();
    bool CheckCanBegin();
}; // Size: 0xC0

class UOperationPlayerCameraComponentBase : public UActorComponent
{
    float m_PosInterpTimer;                                                           // 0x00B0 (size: 0x4)
    FVector m_PosInterpOffsetStart;                                                   // 0x00B4 (size: 0xC)
    FVector m_PosInterpOffsetEnd;                                                     // 0x00C0 (size: 0xC)
    FVector m_PosInterpOffset;                                                        // 0x00CC (size: 0xC)

    bool UpdateCameraInterpolationByPlayerPos(float DeltaTime);
    bool StartCameraInterpolationByPlayerPos(FVector startPlayerPos);
}; // Size: 0xD8

class UOptionGroupTableUtility : public UDataTableUtilityBase
{

    int32 OptionGroupLabelToID(FName OptionGroupLable);
    FName OptionGroupIDToLabel(int32 OptionGroupID);
    bool GetOptionGroupTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetOptionGroupRowDataByID(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FOptionGroupData& OutData, int32 TargetID, bool LogEnable);
    bool GetOptionGroupRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FOptionGroupData& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class UOptionMenuWBPBase : public UKSUserWidgetWithState
{

    bool SetFromTitleScene(bool FromTitleScene);
    void IsSaving(bool& Saving);
}; // Size: 0x368

class UOssServiceConnecter : public UServiceConnecter
{
}; // Size: 0x50

class UOutGameStateData : public UStateDataBase
{
}; // Size: 0x50

class UPartnerDetailWidget : public UUserWidget
{
}; // Size: 0x260

class UPartyCharPanelSelectBackBase : public UAcqUserWidget
{

    void StayAnim();
    void OutFocus();
    void Focus();
    void FastOutFocus();
}; // Size: 0x2C0

class UPartyCharaPropertyComponent : public UActorComponent
{
    EPlayableCharacterID m_PlayerCharacterID;                                         // 0x00B0 (size: 0x1)

    EPlayableCharacterID SetPlayerID(EPlayableCharacterID ID);
    EPlayableCharacterID GetPlayerID();
}; // Size: 0xB8

class UPartyCharacterListBase : public UUserWidget
{

    void ResetPartyPanel();
    void Init(bool EnableStatusSpacer);
    class UPartyCharacterPanelBase* GetMainMemberPanel(int32 MainMemberIndex);
}; // Size: 0x260

class UPartyCharacterPanelBase : public UAcqUserWidget
{
    bool IsUseUiResource;                                                             // 0x02C0 (size: 0x1)
    FSavePlayerCharacterData m_CharacterData;                                         // 0x02C8 (size: 0xF0)

    void SetVisibleEquipmentInfo(int32 ShowCount);
    void SetVisibleEquipIcon(bool IsVisible);
    void SetParamRange(int32 ParamMin, int32 ParamMax);
    void SetIsUseUiResource(bool Val);
    bool SetEquipmentInfo(int32 Index, const EEQUIPMENT_ITEM_PARAM ParamType, int32 ParamBefore, int32 ParamAfter);
    void SetEquipmentAnim(bool CanEquip);
    void SetCharacterData(const FSavePlayerCharacterData& CharacterData);
    void OutFocus();
    bool GetIsUseUiResource();
    FSavePlayerCharacterData GetCharacterData();
    void Focus();
    void Decide();
}; // Size: 0x3B8

class UPartyChatBase : public UKSUserWidgetBase
{

    bool VisibleBackGround(bool IsVisible);
    bool SetupPartyChatWidget(const FPartyChat& PartyChatData, bool UseBackgroundImage);
    bool SetCharaDir(int32 Index, EKSCharacterDir Dir);
    bool SetCharacterIndex(int32 Index, EPlayableCharacterID Character, EKSCharacterDir Dir);
    bool OutFocusPartyChatCharactr(bool isFast);
    void GetCharacterPos(FVector2D& Pos, int32 Index);
    bool FocusPartyChatCharactr(const TArray<int32>& FocusCharacters, bool isFast);
}; // Size: 0x358

class UPartyChatFunction : public UBlueprintFunctionLibrary
{

    bool IsWithinMainStoryProgress(const FPartyChat& PartyChat);
    bool IsValidPartyChatData(const FPartyChat& PartyChat);
    bool IsTraveledUniqueMapEnoughTimes();
    bool IsSameLevel(const FPartyChat& PartyChat);
    bool IsPlayingFinalChapterPartyChat();
    bool IsChokerDetachPartyChat();
    bool IsChokerAttachPartyChat();
    bool IsAnyCharacterPlayingMainStory();
    bool IsAllRequiredCharactersInParty(const FPartyChat& PartyChat, bool containSubMember);
}; // Size: 0x28

class UPartyChatNotificationBase : public UKSUserWidgetBase
{
    bool m_IsOpening;                                                                 // 0x0358 (size: 0x1)
    bool m_IsTemporaryHidden;                                                         // 0x0359 (size: 0x1)

    void SetIsOpening(bool IsOpening);
}; // Size: 0x360

class UPartyChatSaveDataUtil : public USaveDataUtilBase
{

    void SetState(int32 PartyChatId, EPARTY_CHAT_STATE State);
    bool SetPartyChatTimeZoneOnPlayed(int32 PartyChatId, int32 TimezoneType, int32 timeZonePosition);
    void SetPartyChatLevelOnPlayed(int32 PartyChatId, int32 levelId);
    bool SetPartyChatEventObjectFlag(int32 PartyChatId, int32 FlagID, bool Val);
    void SetNewFlag(int32 PartyChatId, bool bNew);
    bool IsPartyChatFlag(int32 PartyChatId);
    EPARTY_CHAT_STATE GetState(int32 PartyChatId);
    int32 GetPartyChatTimeZoneTypeOnPlayed(int32 PartyChatId);
    int32 GetPartyChatTimeZonePositionOnPlayed(int32 PartyChatId);
    int32 GetPartyChatLevelOnPlayed(int32 PartyChatId);
    TArray<FName> GetPartyChatLabelsRelatedMainStoryWithReleasedState(FName MainStoryLabel);
    void GetPartyChatEventObjectFlag(int32 PartyChatId, int32& FlagID, bool& Val);
    bool GetNewFlag(int32 PartyChatId);
    int32 GetLevelChangeCounterForFinalChapterHintPartyChat();
    bool GetIsUnRelease(int32 PartyChatId);
    bool GetIsRelease(int32 PartyChatId);
    void Debug_SetLevelChangeCounterForFinalChapterHintPartyChat(int32 newCount);
}; // Size: 0x28

class UPartyChatStateData : public UStateDataBase
{
}; // Size: 0x58

class UPartyChatTableUtility : public UDataTableUtilityBase
{

    int32 PartyChatLabelToID(FName PartyChatLable);
    FName PartyChatIDToLabel(int32 PartyChatId);
    void NotifyPartyChatDB(FName dbName, EDBNoticeType notice);
    bool GetPartyChatTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetPartyChatRowDataFromEventLabel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FPartyChat& OutData, FName EventLabel, bool LogEnable);
    bool GetPartyChatRowDataByID(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FPartyChat& OutData, int32 TargetID, bool LogEnable);
    bool GetPartyChatRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FPartyChat& OutData, FName TargetLabel, bool LogEnable);
    TArray<FName> GetPartyChatLabelsRelatedMainStory(FName MainStoryLabel);
    TArray<FName> GetPartyChatLabelsOthers();
    TArray<FName> GetPartyChatLabelsByType(EPARTY_CHAT_TYPE Type);
}; // Size: 0x28

class UPartySaveDataUtil : public USaveDataUtilBase
{

    bool UpdateCurrentPartySet();
    bool IsPartySolo();
    bool IsBattleMember(EPlayableCharacterID CharaID);
    TArray<int32> GetSubMemberCharacterIDs();
    TArray<int32> GetSubMemberArrayIndex();
    TArray<FSavePlayerCharacterData> GetSubMember();
    EPlayableCharacterID GetPartyTopCharacterID();
    TArray<FSavePlayerCharacterData> GetMemberFromMainMenu();
    TArray<int32> GetMainMemberCharacterIDs();
    TArray<int32> GetMainMemberArrayIndex();
    TArray<int32> GetLastAtlantisPartySet(EKSPartySet partySet);
    TArray<FSavePlayerCharacterData> GetBattleMember();
    bool CheckInSubParty(EPlayableCharacterID CharaID);
    bool CheckInPartySet(EPlayableCharacterID CharaID, EKSPartySet partySet);
    bool CheckInParty(EPlayableCharacterID CharaID);
}; // Size: 0x28

class UPartySplitCharacterPanelBase : public UUserWidget
{

    void SetCharacterFlpBook(EPlayableCharacterID CharacterID);
}; // Size: 0x260

class UPartySplitCharacterPlacementBoxBase : public UUserWidget
{
    EPlayableCharacterID m_PlacedCharacter;                                           // 0x0260 (size: 0x1)
    bool IsInFocus;                                                                   // 0x0261 (size: 0x1)
    FName m_TitleTextLabel;                                                           // 0x0264 (size: 0x8)

    void SetPlacedCharacter(EPlayableCharacterID CharacterID);
    void OutFocus(bool isFast);
    void InFocus(bool isFast);
    EPlayableCharacterID GetPlacedCharacter();
}; // Size: 0x270

class UPartySplitMainPartyBoxBase : public UUserWidget
{
    TArray<class UPartySplitCharacterPanelBase*> m_CharacterPanels;                   // 0x0260 (size: 0x10)
    TArray<EPlayableCharacterID> m_MainMember;                                        // 0x0270 (size: 0x10)
    FName m_TitleTextLabel;                                                           // 0x0280 (size: 0x8)

    void SetMemberList(const TArray<EPlayableCharacterID>& newMainMember);
}; // Size: 0x288

class UPartySplitResultBase : public UUserWidget
{
    FPartySplitResultBaseOnStartedOpenCallback OnStartedOpenCallback;                 // 0x0260 (size: 0x10)
    void PartySplitResultNotice();
    FPartySplitResultBaseOnOpenedCallback OnOpenedCallback;                           // 0x0270 (size: 0x10)
    void PartySplitResultNotice();
    FPartySplitResultBaseOnStartedCloseCallback OnStartedCloseCallback;               // 0x0280 (size: 0x10)
    void PartySplitResultNotice();
    FPartySplitResultBaseOnClosedCallback OnClosedCallback;                           // 0x0290 (size: 0x10)
    void PartySplitResultNotice();
    TArray<class UPartyCharacterPanelBase*> m_MainParty;                              // 0x02A0 (size: 0x10)
    TMap<class EPARTY_SPLIT_PLACEMENT_POSITION, class UPartyCharacterPanelBase*> m_PlacedCharacter; // 0x02B0 (size: 0x50)
    FName m_TitleTextLabel;                                                           // 0x0300 (size: 0x8)
    FName m_MainPartyTextLabel;                                                       // 0x0308 (size: 0x8)
    FName m_WildernessPlaceTextLabel;                                                 // 0x0310 (size: 0x8)
    FName m_DesertPlaceTextLabel;                                                     // 0x0318 (size: 0x8)
    FName m_MountainPlaceTextLabel;                                                   // 0x0320 (size: 0x8)
    FName m_IslandPlaceTextLabel;                                                     // 0x0328 (size: 0x8)

    void SetMember(const TMap<class EPlayableCharacterID, class EPARTY_SPLIT_PLACEMENT_POSITION>& member);
    void Open();
    void Close();
    void BroadcastOnStartOpenDelegate();
    void BroadcastOnStartCloseDelegate();
    void BroadcastOnOpenedDelegate();
    void BroadcastOnClosedDelegate();
}; // Size: 0x330

class UPartySplitUiUtil : public UBlueprintFunctionLibrary
{

    bool SavePartySplitResult(const TMap<class EPlayableCharacterID, class EPARTY_SPLIT_PLACEMENT_POSITION>& party);
    bool IsCompletePartySplit(const TMap<class EPlayableCharacterID, class EPARTY_SPLIT_PLACEMENT_POSITION>& party);
}; // Size: 0x28

class UPartySplitWidgetBase : public UKSUserWidgetBase
{
    FPartySplitWidgetBaseOnClosedPartySplitWithResult OnClosedPartySplitWithResult;   // 0x0358 (size: 0x10)
    void OnClosedPartySplitWithResult(FOnClosedPartySplitParam Param);
    EPARTY_SPLIT_WIDGET_STATE m_WidgetState;                                          // 0x0368 (size: 0x1)
    FIntPoint m_CursorPosition;                                                       // 0x036C (size: 0x8)
    class UPartySplitMainPartyBoxBase* m_MainPartyBox;                                // 0x0378 (size: 0x8)
    class UCharactersGridPanelBase* m_CharacterGrid;                                  // 0x0380 (size: 0x8)
    class UPartySplitResultBase* m_PartySplitResult;                                  // 0x0388 (size: 0x8)
    TMap<class FIntPoint, class UPartySplitCharacterPlacementBoxBase*> m_CursorPosToPlacementBox; // 0x0390 (size: 0x50)
    TMap<class EPARTY_SPLIT_PLACEMENT_POSITION, class UPartySplitCharacterPlacementBoxBase*> m_PlacementPosToPlacementBoxe; // 0x03E0 (size: 0x50)
    TMap<class EPlayableCharacterID, class EPARTY_SPLIT_PLACEMENT_POSITION> m_CharacterPlacementPositions; // 0x0430 (size: 0x50)
    EPARTY_SPLIT_CLOSE_REASON m_CloseReason;                                          // 0x0480 (size: 0x1)
    FName m_HeaderTextLabel;                                                          // 0x0484 (size: 0x8)
    FName m_FooterSelectPlaceTextLabel;                                               // 0x048C (size: 0x8)
    FName m_FooterSelectCharacterTextLabel;                                           // 0x0494 (size: 0x8)
    FName m_FooterConfirmButtonTextLabel;                                             // 0x049C (size: 0x8)
    FName m_FooterResetButtonTextLabel;                                               // 0x04A4 (size: 0x8)
    FName m_CharacterGridTitleTextLabel;                                              // 0x04AC (size: 0x8)
    FName m_WildernessPlaceTextLabel;                                                 // 0x04B4 (size: 0x8)
    FName m_DesertPlaceTextLabel;                                                     // 0x04BC (size: 0x8)
    FName m_MountainPlaceTextLabel;                                                   // 0x04C4 (size: 0x8)
    FName m_IslandPlaceTextLabel;                                                     // 0x04CC (size: 0x8)
    FName m_BackDialogTextLabel;                                                      // 0x04D4 (size: 0x8)
    FName m_FailedDialogTextLabel;                                                    // 0x04DC (size: 0x8)
    FName m_ResetDialogTextLabel;                                                     // 0x04E4 (size: 0x8)
    FName m_ConfirmDialogTextLabel;                                                   // 0x04EC (size: 0x8)
    bool debug_IsLoggingMode;                                                         // 0x04F4 (size: 0x1)

    void SetWidgetState(EPARTY_SPLIT_WIDGET_STATE NewState);
    void SetCursorPosition(const FIntPoint& newPos);
    void SetCharacterPlacementPosition(const TMap<class EPlayableCharacterID, class EPARTY_SPLIT_PLACEMENT_POSITION>& newPositions);
    void OnInputPlus();
    void OnInputMinus();
    void OnInputDecide();
    void OnInputCursor(const FIntPoint& Input);
    void OnInputCancel();
    void OnChangedWidgetState(EPARTY_SPLIT_WIDGET_STATE NextState, EPARTY_SPLIT_WIDGET_STATE PrevState);
    EPARTY_SPLIT_WIDGET_STATE GetWidgetState();
    class UPartySplitCharacterPlacementBoxBase* GetPlacementBoxByPlacementPos(EPARTY_SPLIT_PLACEMENT_POSITION keyPos);
    class UPartySplitCharacterPlacementBoxBase* GetPlacementBoxByCursorPos(const FIntPoint& keyPos);
    FIntPoint GetCursorPosition();
    EPARTY_SPLIT_PLACEMENT_POSITION GetCurrentSelectedPlacementPosition();
    class UPartySplitCharacterPlacementBoxBase* GetCurrentSelectedPlacementBox();
    EPARTY_SPLIT_CLOSE_REASON GetCloseReason();
    TMap<class EPlayableCharacterID, class EPARTY_SPLIT_PLACEMENT_POSITION> GetCharacterPositions();
    void BroadcastOnClosedPartySplitWithResultDelegate();
}; // Size: 0x4F8

class UPathSplineComponent : public USplineComponent
{
    EPATH_TYPE m_ePathType;                                                           // 0x0548 (size: 0x1)

    EPATH_TYPE GetPathType();
}; // Size: 0x550

class UPlacedSequencerBase : public ULevelSequenceDirector
{

    float SetUpFrameNumber(float Time);
    void OpenAutoBalloonWithNPCFunction(FName TalkDataLabel, FName PlacementLabel, FVector2D balloonOffset, float DispTime, float DispDistance, EEventBalloonDir BalloonDir, bool EnableTail);
    void OpenAutoBalloonFunction(FName TalkTargetTag, FName TalkDataLabel, FVector2D balloonOffset, float DispTime, float DispDistance, EEventBalloonDir BalloonDir, bool EnableTail);
    void InitSeqData();
    void Initialize();
    void Finalize();
}; // Size: 0x38

class UPlacementFadeComponent : public UActorComponent
{
    class AActor* m_pOwnerAct;                                                        // 0x00C0 (size: 0x8)
    float m_fFadeTimer;                                                               // 0x00C8 (size: 0x4)
    class UMaterialInstanceDynamic* m_pMaterialInstance;                              // 0x00D0 (size: 0x8)
    FPlacementFadeComponentOnFadeInEvent OnFadeInEvent;                               // 0x00D8 (size: 0x10)
    void FadeInEvent();
    FPlacementFadeComponentOnFadeOutEvent OnFadeOutEvent;                             // 0x00E8 (size: 0x10)
    void FadeOutEvent();

    void StartFadeOutWithFadeTime(float fFadeTime);
    void StartFadeOut();
    void StartFadeInWithFadeTime(float fFadeTime);
    void StartFadeInWait();
    void StartFadeIn();
    void SetUpMaterialInstance(class UMaterialInstanceDynamic* cMaterial);
    void SetExFactorFadeTime(float FadeTime);
    void SetExFactorFadeRate(float fadeRate);
    void SetCameraFactorFadeRate(float fadeRate);
    bool IsRunningExFactorFadeOut();
    bool IsRunningCameraFactorFadeOut();
    bool IsFadeOutFinish();
    bool IsFadeMode();
    bool IsFadeInWait();
    bool IsFadeInFinish();
    bool IsFadeFinish();
    bool IsCompletedExFactorFadeOut();
    bool IsCompletedCameraFactorFadeOut();
    class UMaterialInstanceDynamic* GetMaterialInstance();
    void FadeInImmediately();
}; // Size: 0x130

class UPlacementUtility : public UDataTableUtilityBase
{

    bool IsMerchantSubStoryFromPlacementLabel(FName PlacementLabel);
    void GetPlacementNameByLevelName(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& outLabel, FName levelName);
    bool GetPlacementInfo(FLabelListData& OutLabelInfo, FName RowName);
    void GetPlacementEventParamSetByIndex(const FPlacementData& PlacementData, int32 Index, FPlacementEventParamSet& outEventParamSet);
    void GetPlacementDataRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    void GetPlacementDataByLevelName(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FPlacementData>& outInfoData, FName levelName);
    bool GetPlacementData(FPlacementData& OutData, FName TargetLabel);
    bool GetNPCDataByPlacementInfo(FNPCData& OutData, FName PlacementLabel);
    bool GetNPCDataByNPCLabel(FNPCData& OutData, FName NPCLabel);
    bool GetActivePlacementEventParamSet(const FPlacementData& PlacementData, TArray<FPlacementEventParamSet>& outEventParamSet);
    FName GetActiveEventLabelFromEventTypeAndParam(FName NPCLabel, ENPCEVENT_TYPE EventType, FName EventParam);
    void EventTypeStringToByte(FString strData, uint8& retByte);
    void Debug_OutputPlacementInfo(FName levelName);
    void CharaDirStringToByte(FString strData, uint8& retByte);
}; // Size: 0x28

class UPlayerDataUtility : public UDataTableUtilityBase
{

    int32 PlayerLabelToID(FName Label);
    FName PlayerIDToLabel(int32 ID);
    void GetPlayerText(int32 CharaID, FText& NameText);
    bool GetPlayerTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetPlayerTableRowDataByID(FPlayableCharacterData& OutData, int32 TargetID);
    bool GetPlayerTableRowDataByEnum(FPlayableCharacterData& OutData, EPlayableCharacterID TargetID);
    bool GetPlayerTableRowData(FPlayableCharacterData& OutData, FName TargetLabel);
    bool GetPlayerTableAllRows(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FPlayableCharacterData>& OutRows);
    bool GetPlayerPortraitNameImage(int32 CharaID, class UTexture2D*& Image);
    bool GetPlayerPortraitImage(int32 CharaID, class UTexture2D*& Image, bool IsNight);
    bool GetPlayerPortraitBgImage(int32 CharaID, class UTexture2D*& Image, bool IsNight);
    void GetPlayerFieldCommandName(int32 CharaID, FName& DayFcName, FName& NightFcName);
    void GetPlayerFieldCommandDetailInPlayerSelect(int32 CharaID, FName& DayFc, FName& NightFC);
    void GetPlayerDetailText(int32 CharaID, FText& DetailText);
    void GetFirstEquipmentLabels(int32 CharaID, TArray<FName>& outEquipmentLabels);
    void GetClassText(int32 CharaID, FText& ClassText);
    void GetCharaVoice(int32 CharaID, bool IsJapanese, TArray<FName>& VoiceSheet);
}; // Size: 0x28

class UPlayerLocationTrace : public UObject
{
}; // Size: 0x50

class UPlayerPropertyComponent : public UActorComponent
{
    ETRANSPORTATION_TYPE m_CurrentTransportType;                                      // 0x00B8 (size: 0x1)
    ETRANSPORT_EFFECT m_CurrentTransportEffectType;                                   // 0x00B9 (size: 0x1)
    LEVEL_AREA_TYPE m_CurrentLevelArea;                                               // 0x00BA (size: 0x1)
    EPlayableCharacterID m_PlayerCharacterID;                                         // 0x00BB (size: 0x1)
    bool m_EnableFCJudge;                                                             // 0x00BC (size: 0x1)
    class AKSCharacterBase* m_RefTalkCharacter;                                       // 0x00C0 (size: 0x8)
    class AEventTriggerBox* m_RefEventTriger;                                         // 0x00C8 (size: 0x8)
    class ASwitchIndoorTrigger* m_RefSwitchIndoorTrigger;                             // 0x00D0 (size: 0x8)
    bool m_IsPTC_CheckSwitchIndoorTrigger;                                            // 0x00D8 (size: 0x1)
    bool m_IsMissionRecord_CheckSwitchIndoorTrigger;                                  // 0x00D9 (size: 0x1)
    bool m_IsPTC_SwitchIndoorTriggerEndOverlapIgnore;                                 // 0x00DA (size: 0x1)

    void SetRefTalkCharacter(class AKSCharacterBase* Val);
    void SetRefSwitchIndoorTrigger(class ASwitchIndoorTrigger* Val);
    void SetRefEventTriger(class AEventTriggerBox* Val);
    EPlayableCharacterID SetPlayerID(EPlayableCharacterID ID);
    void SetMissionRecord_CheckSwitchIndoorTrigger(bool bIsTriiger);
    void SetEnableFCJudge(bool Val);
    ETRANSPORTATION_TYPE SetCurrentTransportType(ETRANSPORTATION_TYPE Value);
    ETRANSPORT_EFFECT SetCurrentTransportEffectType(ETRANSPORT_EFFECT Value);
    LEVEL_AREA_TYPE SetCurrentLevelArea(LEVEL_AREA_TYPE Value);
    bool IsMissionRecord_CheckSwitchIndoorTrigger();
    class AKSCharacterBase* GetRefTalkCharacter();
    class ASwitchIndoorTrigger* GetRefSwitchIndoorTrigger();
    class AEventTriggerBox* GetRefEventTriger();
    EPlayableCharacterID GetPlayerID();
    bool GetEnableFCJudge();
    ETRANSPORTATION_TYPE GetCurrentTransportType();
    ETRANSPORT_EFFECT GetCurrentTransportEffectType();
    LEVEL_AREA_TYPE GetCurrentLevelArea();
    void ClearReferenceObject();
}; // Size: 0xF8

class UPlayerSelectIconBase : public UWorldMapIconBase
{

    void UpdateFlipBook();
    FVector2D GetSnapPositionOffset();
}; // Size: 0x3B0

class UPotentialityActionComponent : public UActorComponent
{
    class ABattleCharacterBase* m_cOwnerPlayer;                                       // 0x00B0 (size: 0x8)
    class UUserWidget* m_cPlayerStatusUI;                                             // 0x00B8 (size: 0x8)
    class UUserWidget* m_cPlayerSubStatusUI;                                          // 0x00C0 (size: 0x8)
    int32 m_nResumeBoostPoint;                                                        // 0x00C8 (size: 0x4)
    int32 m_nResumeActionPoint;                                                       // 0x00CC (size: 0x4)
    FPotentialityActionData m_cPotentialityActionData;                                // 0x00D0 (size: 0x80)
    EPOTENTIALITY_ACTION_TYPE m_eUniqueActionType;                                    // 0x0150 (size: 0x1)
    int32 m_nActionPoint;                                                             // 0x0154 (size: 0x4)
    int32 m_nActionPointMax;                                                          // 0x0158 (size: 0x4)
    bool m_bActionReady;                                                              // 0x015C (size: 0x1)
    bool m_bActionExec;                                                               // 0x015D (size: 0x1)
    bool m_bDoubleActionExec;                                                         // 0x015E (size: 0x1)
    bool m_bIsExecBreakAct;                                                           // 0x015F (size: 0x1)

    void SetPotentialityActionPoint(int32 nNewActionPoint);
    void SetPlayerSubStatusUI(class UUserWidget* cPlayerStatusUI);
    void SetPlayerStatusUI(class UUserWidget* cPlayerStatusUI);
    void SetExecBreakAct(bool bExecBreakAct);
    bool ResumeUnusedPotentialityAction();
    bool RecoveryPotentialityActionPoint(int32 nValue);
    bool OnPotentialityAction_Common();
    bool OnPotentialityAction();
    bool OffPotentialityAction_Common(bool bCancel);
    bool OffPotentialityAction(bool bCancel);
    bool IsPotentialityActionReady();
    bool IsPotentialityActionPointMax();
    bool IsPotentialityActionExec();
    bool IsPotentialityActionAvailable();
    void InitPotentialityAction(FPotentialityActionData cActionData, int32 nActionPoint);
    EPOTENTIALITY_ACTION_TYPE GetUniquePotentialityAction();
    void GetPotentialityActionPoint(int32& outActionPoint, int32& outActionPointMax);
    FPotentialityActionData GetPotentialityActionData();
    void GetPotentialityActionCommandText(FName& outActionCommandName, FName& outActionCommandDetail);
    TArray<FName> GetPotentialityActionAbility();
    void FullPotentialityActionPoint();
    bool FinishPotentialityAction();
    bool ExecPotentialityAction();
    void Debug_SetPotentialityActionPointMax(int32 nValue);
    void Debug_SetPotentialityActionPoint(int32 nValue);
    bool CheckEnablePotentialityAction(EPOTENTIALITY_ACTION_TYPE eActionType);
    void AddPotentialityActionPoint(int32 nAddActionPoint, bool bIgnoreAddAbility);
}; // Size: 0x160

class UPotentialityActionDataUtility : public UDataTableUtilityBase
{

    bool ReleasePotentialityAction(EPlayableCharacterID CharacterID);
    bool IsReleasePotentialityAction(EPlayableCharacterID CharacterID);
    bool GetPotentialityActionDataByPlayableCharacterID(FPotentialityActionData& OutData, EPlayableCharacterID CharacterID, bool LogEnable);
    bool GetPotentialityActionData(FPotentialityActionData& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class UPotentialityActionDetailBase : public UKSUserWidgetBase
{
    class UKSTextBlock* m_pTitleText;                                                 // 0x0358 (size: 0x8)
    class UKSTextBlock* m_pDetailText;                                                // 0x0360 (size: 0x8)
    class UWidgetAnimation* m_pOpenAnimation;                                         // 0x0368 (size: 0x8)
    class UWidgetAnimation* m_pCloseAnimation;                                        // 0x0370 (size: 0x8)
    class UWidgetAnimation* m_pForceCloseAnimation;                                   // 0x0378 (size: 0x8)
    class UWidgetAnimation* m_pForceOpenAnimation;                                    // 0x0380 (size: 0x8)
    float m_fCloseTime;                                                               // 0x0388 (size: 0x4)

    void SetText(FName TitleLabel, FName DetailLabel);
    void Open();
    void ForceOpen();
    void ForceClose();
    void Close();
}; // Size: 0x3A8

class UPotentialityActionGageBase : public UAcqUserWidget
{
    float m_CurrentValue;                                                             // 0x02C0 (size: 0x4)
    float m_MaxValue;                                                                 // 0x02C4 (size: 0x4)
    EPlayableCharacterID m_PlayableCharacterId;                                       // 0x02C8 (size: 0x1)
    bool m_IsDead;                                                                    // 0x02C9 (size: 0x1)

    void SetValue(float CurrentValue, float MaxValue, bool isSkipAnim);
    void Setup(EPlayableCharacterID PlayableCharacterId);
    void PlayOpenAnimation();
    void PlayCloseAnimation();
    void OnRevival();
    void OnDead();
}; // Size: 0x2D0

class UProceduralBuildingMeshList : public UObject
{
    FProceduralBuildingMeshDataSet m_cBuildingMesh;                                   // 0x0028 (size: 0xE8)

}; // Size: 0x110

class UPureImage : public UImage
{
}; // Size: 0x210

class URadarMapBase : public UKSUserWidgetBase
{
    TMap<class FName, class FRadarMapIconParam> m_DestinationIconParam;               // 0x0358 (size: 0x50)
    TMap<int32, FRadarMapDisplayData> m_PositionOverlapPrevention;                    // 0x03A8 (size: 0x50)

    bool SetRadarMapVisible(bool IsVisible);
    bool SetBackTitle();
    bool RemoveIcon_AllSubStoryEventTrigger();
    bool RemoveIcon_AllMapObject();
    bool RemoveIcon_AllLevelTrigger();
    bool RemoveIcon_AllFieldNpc();
    void RemoveDestinationIconParam(FName DestinationLabel);
    void RemoveAllDestinationIconParam();
    bool RefreshLevelTriggerIcon();
    bool RefreshAllIcon();
    void OnRefreshSpawnComplete(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void NextSwitch(bool& IsVisible);
    void ModifyDestinationIconParam(FName DestinationLabel, const FRadarMapIconParam& iconParam);
    FRadarMapIconParam GetDestinationIconParam(FName DestinationLabel);
    bool ExistsDestinationIconParam(FName DestinationLabel);
    FString Debug_GetAllDestinationIconParam();
    bool ClearIcon();
    bool CheckTreasureBoxIcon(int32 TreasureIndex);
    bool CheckHiddenPointIcon(int32 PointIndex);
    bool AddIcon(int32& attachIndex, FName DestinationLabel, ERADARMAP_ICON_TYPE IconType, ERADARMAP_ICON_OBJ_TYPE ObjType, uint8 LevelTriggerID, FName NextFieldName, FName TargetObjectName, FVector Position, int32 TreasureIndex, EGameColor gameColor, EGameColor RippleColor, int32 TargetCharaID);
    void AddDestinationIconParam(FName DestinationLabel, const FRadarMapIconParam& iconParam);
}; // Size: 0x3F8

class URadarMapUtility : public UDataTableUtilityBase
{

    bool Setup();
    void RefreshRadarMap();
    void NotifyRadarMapDb(FName dbName, EDBNoticeType notice);
    void GetSubStoryDestinationLevelTriggerInLevel(TArray<ELevelTriggerID>& outMainStoryLvTrigIdList, TArray<ELevelTriggerID>& outSubStoryLvTrigIdList, FName levelName);
    void GetDestinationSubPlacementInLevel(TArray<FRadarMapDisplayData>& outIconPlacement, FName levelName);
    void GetDestinationPlacementInLevel(TArray<FRadarMapDisplayData>& outIconPlacement, FName levelName);
    void GetDestinationLevelTriggerInLevel(TArray<ELevelTriggerID>& outLevelTriggerIdList, FName levelName);
    bool GetDestinationDataByMainStory(FRadarMapDestinationData& OutRow, FName MainStory, FName levelName, LEVEL_AREA_TYPE LevelAreaType);
    bool GetDestinationData(FRadarMapDestinationData& OutRow, FName Label);
}; // Size: 0x28

class URankWidgetBase : public UUserWidget
{

    void SetupRankList();
    void SetRank(int32 rank);
}; // Size: 0x260

class UReminiscenceDataUtility : public UDataTableUtilityBase
{

    void GetReminiscenceMergeByLabel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FReminiscenceMergeSetting& outReminiMergeData, FName reminiMergeLabel);
    void GetReminiscenceDataByLabel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FReminiscenceSetting& outReminiData, FName reminiLabel);
}; // Size: 0x28

class UReminiscenceUtility : public UBlueprintFunctionLibrary
{

    bool StartPrologueReminiscenceFromMainMenu(EPlayableCharacterID PlayerCharaId);
    bool StartPrologueReminiscenceFromBarMenu(EPlayableCharacterID PlayerCharaId);
    bool StartPrologueReminiscence(EPlayableCharacterID PlayerCharaId);
    bool StartPlayableReminiscenceByLabel(FName reminiscenceLabel);
    bool StartPlayableReminiscence(int32 reminiscenceId);
    bool SkipPrologueReminiscence(EPlayableCharacterID PlayerCharaId);
    bool SetupFirstEquipmentOnSkipReminiscence(int32 reminisceceId, TArray<FName>& addedItemLabels);
    void SetReturnLevelAfterReminiscence();
    void SetPlayReminiscenceFromMainMenu(bool bFromMainMenu);
    void SetPlayingReminiscence(bool bPlaying);
    void SetCompletedPrologueReminiscence(EPlayableCharacterID PlayerCharaId, bool bCompleted);
    void RestorePlayerPlacementForPartyChat(class UObject* WorldContextObject, const FReminiscenceRestorePlacement& backupData);
    bool RestorePartyOnPrologueReminiscence();
    bool RestorePartyOnPlayableReminiscence();
    void JoinPlayerCharacter(EPlayableCharacterID PlayerCharaId, bool& OutResult, bool& outIsAddMainMember);
    bool IsPlayReminiscenceFromMainMenu();
    bool IsPlayingReminiscence();
    bool IsPlayingPrologueReminiscence();
    bool IsPlayingPastReminiscence();
    bool IsCompletedPrologueReminiscence(EPlayableCharacterID PlayerCharaId);
    FPlayerLocation GetReturnLevelAfterReminiscence();
    bool ExistsReturnLevelAfterReminiscence();
    bool EndPrologueReminiscence();
    bool EndPlayableReminiscence();
    void Debug_GetReminiscenceDebugInfo(FString& outDebugInfo);
    void ClearReturnLevelAfterReminiscence();
    bool BackupPlayerPlacementForTheater(class UObject* WorldContextObject, FReminiscenceRestorePlacement& outBackupData);
}; // Size: 0x28

class URevivalObjectManageComponent : public UActorComponent
{

    void OnStartLevelChange(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
}; // Size: 0xB0

class URevivalObjectManageHelper : public UBlueprintFunctionLibrary
{

    void RegisterRevivalObject(const FKSObjectData& ObjectData, const FPlacementData& PlacementData);
}; // Size: 0x28

class URichEventCommandBase : public UEventCommandBase
{
    bool IsGameOverFinish;                                                            // 0x00F0 (size: 0x1)
    EEVENTGAMEOVER_STATE eGameOverState;                                              // 0x00F1 (size: 0x1)
    float FadeEndTime;                                                                // 0x010C (size: 0x4)
    FLinearColor FadeEndColor;                                                        // 0x0110 (size: 0x10)
    int32 ParticipationIndex;                                                         // 0x0120 (size: 0x4)
    EEVENTDIALOG_MODE DialogMode;                                                     // 0x0124 (size: 0x1)
    int32 SelectDialogIndex;                                                          // 0x0128 (size: 0x4)
    FName SelectLabelName;                                                            // 0x012C (size: 0x8)

    void VisibleTalkTaxtData(FString Name, FName NameLabel, FString Message, FName MessageLabel);
    void StopSubSequenceIndexFunction(int32 nIndex);
    void StopSubSequenceFunction();
    void StopSubSequenceAction(class ULevelSequencePlayer* Sequence);
    void StopResidentSubSequencerFunction();
    void StartResidentSubSequencerFunction(FString Loop);
    void StartPreparationBattleFunction(FString EnemyGroupID, FString FinishEvent);
    void StartPreparationBattleExec(const FEventData& EventData);
    void StartFlashbackFunciton(FName ResourceName, float EndTime, const FLinearColor FadeColor);
    void StartFinalBattleFunction(FString EnemyGroupID, FString FinishEvent);
    void StartFinalBattleExec(const FEventData& EventData);
    void StartEventBattle(const FEventData& EventData);
    void StartEndCardFunciton(EPlayableCharacterID Character);
    void StartDeepThinkResidentFunction(int32 SeqIndex, FName TagName, FVector Offset);
    void StartDeepThinkFunction(int32 nIndex, FName TagName, FVector Offset);
    void StartDeepDirectingFunction();
    void StartCharaFadeFunction(class AKSCharacterBase* EventChara, bool Visible, float FadeTime);
    void StartBattleFunction(FString EnemyGroup, FString FinishEvent, bool EventBattle, bool SingleBattle, EPlayableCharacterID EventBattleChara, EPlayableCharacterID FixFirstOrderPlayer, bool DarkSurface);
    void StartBattleBitFlagFunction(FString EnemyGroup, FString FinishEvent, bool EventBattle, EPlayableCharacterID EventBattleChara, EPlayableCharacterID FixFirstOrderPlayer, int32 FlagIndex);
    void SpawnThiefActionFunction(class AKSCharacterBase* EventChara, EKSCharacterDir SetDir, FName AddTagName, EKSCharacterAction ActionLabelName, EKSCharacterAnimationLoop LoopSetting);
    void SpawnPartyPositionCharaFunction(class AKSCharacterBase* EventChara, int32 PartyPosition, EKSCharacterDir SetDir, FName AddTagName, EKSCharacterAction ActionLabelName, EKSCharacterAnimationLoop LoopSetting);
    void SpawnPartnerCharaFunction(class AKSCharacterBase* EventChara, FName CharaLabelName, EKSCharacterDir SetDir, FName AddTagName, EHUNTER_PARTNER_ID partnerID);
    void SpawnParticipationOrderCharaFunction(class AKSCharacterBase* EventChara, int32 Index, EKSCharacterDir SetDir, FName AddTagName, EKSCharacterAction ActionLabelName, EKSCharacterAnimationLoop LoopSetting);
    void SpawnFirstSelectCharaFunction(class AKSCharacterBase* EventChara, EKSCharacterDir SetDir, FName AddTagName, EKSCharacterAction ActionLabelName, EKSCharacterAnimationLoop LoopSetting);
    void SpawnEventEffectPartnerFunction(int32 ID, const FName EffectLabel, float LifeTime, const FVector Pos, const FRotator Rotate, const FVector Scale, FName CharacterLabel, EHUNTER_PARTNER_ID partnerID);
    void SpawnEventEffectFunction(int32 ID, const FName EffectLabel, float LifeTime, const FVector Pos, FName CharacterLabel);
    void SpawnEventCharaEffectFunction(class AKSCharacterBase* EventChara, int32 ID, const FName EffectLabel, float LifeTime, const FVector Pos);
    void SpawnCharaActionFunction(class AKSCharacterBase* EventChara, FName CharaLabelName, EKSCharacterDir SetDir, FName AddTagName, EKSCharacterAction ActionLabelName, EKSCharacterAnimationLoop LoopSetting);
    void SpawnCharaActionFootStepFunction(class AKSCharacterBase* EventChara, FName CharaLabelName, EKSCharacterDir SetDir, FName AddTagName, EKSCharacterAction ActionLabelName, EKSCharacterAnimationLoop LoopSetting, bool FootStep);
    void SpawnAtlantisPartyCharaFunction(class AKSCharacterBase* EventChara, EKSPartySet PartySetID, int32 PartyPosition, EKSCharacterDir SetDir, FName AddTagName, EKSCharacterAction ActionLabelName, EKSCharacterAnimationLoop LoopSetting);
    float SetUpFrameNumber(float Time);
    void SetSubSequenceOptionFunction(int32 Index, FName OptionName);
    void SetOpenEventGameOverUI();
    void SetOpenCloseDoorFunction(FName TargetBP, bool DoorOpen, bool IgnoreSE);
    void SetHouseModeTheaterFunction(bool In, FName TargetBP, bool DoorOpen);
    void SetGravityModeFunction(class AKSCharacterBase* EventChara, bool Enable);
    void SetFlipbookPlayRateFunction(class AKSCharacterBase* EventChara, float Rate);
    void SetFlipbookPlayRateAllFunction();
    void SetEnableFootStepSoundFunction(bool Enable);
    void SetEnableCharacterFootStepFunction(class AKSCharacterBase* EventChara, bool Enable);
    void SetEnableActorBillboardFunction(FName TargetTag, bool Enable);
    void SetBitFlagFunction(int32 Index, bool Flag);
    void SequencerFrameJumpFunction(int32 FrameNumber);
    void SequencerFrameBitFlagJumpFunction(int32 FrameNumber, int32 FlagIndex);
    void RestartSubSequenceReditentFunction(int32 nIndex);
    void RestartSubSequenceFunction(int32 nIndex);
    void RestartMainSequencerFunction();
    void ResetFlipbookPlayRateFunction();
    bool RemoveEventEffectFunction(int32 ID);
    void PostEffectSepiaFunction(class UCameraComponent* TargetCamera, bool Enable);
    void PostEffectSepiaFadeFunction(class UCameraComponent* TargetCamera, bool Enable);
    void PostEffectMonochromeParamFunction(class UCameraComponent* TargetCamera, FVector Scale);
    void PostEffectMonochromeFunction(class UCameraComponent* TargetCamera, bool Enable);
    void PostEffectMonochromeFadeFunction(class UCameraComponent* TargetCamera, bool Enable);
    void PlayRichEventSeLabelFunction(ESE_TYPE SELabel);
    void PlayRichEventPartnerSeFunction(FName strSeLabel, EHUNTER_PARTNER_ID partnerID);
    void PlayFieldCommandDialogFunction();
    void PlayEditorSound(class USoundAtomCue* SoundData);
    void ParticipationOrderFrameJumpFunction(FJumpFrameSet FrameSetData, int32 EndFrame);
    void OpenTutorialUIFunciton(ETUTORIAL_TYPE TutorialType, bool Force);
    void OpenSelectDialogVariableTypeFunction(FName TalkLabel, FName SelectTextLabel1, FName JumpLabelName1, FName SelectTextLabel2, FName JumpLabelName2, FName SelectTextLabel3, FName JumpLabelName3, FName SelectTextLabel4, FName JumpLabelName4);
    void OpenSelectDialogNextEventFunction(FName TalkLabel, FName SelectTextLabel1, int32 SelectSubSeqIndex1, FName SelectTextLabel2, int32 SelectSubSeqIndex2);
    void OpenSelectDialogLabelJumpFunction(FName TalkLabel, FName SelectTextLabel1, FName JumpLabelName1, FName SelectTextLabel2, FName JumpLabelName2);
    void OpenMapNotificationUIFunciton(FName levelLabel);
    void OpenKenshiTutorialUIFunciton();
    void OpenGetItemDialogFunction(FName TalkLabel, FName ItemLabel_1, int32 ItemNum_1, FName ItemLabel_2, int32 ItemNum_2, FName ItemLabel_3, int32 ItemNum_3, FName ItemLabel_4, int32 ItemNum_4);
    void OpenEventGameOverUIFunciton(FName JumpLabel);
    void OpenChoiceAnswerDialogFunction(FName TalkLabel, FName SelectTextLabel1, FName JumpLabelName1, FName SelectTextLabel2, FName JumpLabelName2, int32 AnswerIndex);
    void NotificationEditorDrawText(FString RegionName, FString levelName);
    void NarrationWaitFunction();
    void NarrationEditorDrawText(TArray<FString> NarrationText, FString AutoTime);
    void MoveSpotLightTargetFunction(class AActor* Actor, FVector AddOffset);
    void MoveSpotLightResidentFunction(class AActor* Actor, FVector AddOffset);
    void MessagePauseFunction();
    void MapObjectVisibleParentFunction(FName TagName, bool Enable);
    void MapObjectVisibleFunction(FName TagName, bool Enable);
    void MapObjectRefreshFunction();
    void LoadFlashbackDataFunciton(FName ResourceName);
    bool IsEventFadeOutEnd();
    bool IsEventFadeInEnd();
    void Initialize();
    int32 GetTrackNum(int32 Count);
    FName GetTrackName(class UMovieSceneTrack* Track);
    TArray<class UMovieSceneTrack*> GetTrackData(int32 Count);
    FString GetTargetSequenceName(class UMovieSceneSubSection* Section);
    FString GetMovieSectionsName(int32 Count);
    class UMovieSceneSection* GetMovieSectionsData(int32 Count);
    int32 GetMovieSectionsCount();
    FString GetMovieBindingName(int32 Count);
    int32 GetMovieBindingCount();
    void FirstSelectCharaFrameJumpFunction(FJumpFrameSet FrameSetData);
    void Finalize();
    void FadeOutTypeSelectFunction(EEVENT_FADE_TYPE FadeType, const FLinearColor Color);
    void FadeInTypeSelectFunction(EEVENT_FADE_TYPE FadeType, const FLinearColor Color);
    void EventFadeOutUIFunction(float EndTime, const FLinearColor Color);
    void EventFadeInUIFunction(float EndTime);
    void EndFlashbackFunciton(float EndTime);
    void EndDeepThinkResidentFunction(int32 SeqIndex);
    void EndDeepThinkFunction(int32 nIndex);
    void EndDeepDirectingFunction();
    bool DialogUpdate();
    void DeepDirectingStartEndAttachFunction(class AActor* Actor);
    void DeepDirectingAttachPlayerFunction(bool Enable);
    void DeepDirectingAttachCameraFunction(bool Enable);
    void DancerSongFrameJumpFunction(int32 ChapterIndex, int32 Frame1, int32 Frame2, int32 Frame3);
    bool CheckTimeZoneEditor(ETimeZoneType Zone);
    void CheckObjectTimeZoneFunction(class USceneComponent* ActorComponent, ETimeZoneType Zone);
    void ChangeTimeZoneFunction(ETimeZoneType Zone);
    void ChangeActionCharaTagNameFunction(FName TargetTag, EKSCharacterAction ActionLabelName, int32 frame, EKSCharacterAnimationLoop LoopSetting, EKSCharacterDir SetDir);
    void CallHideBattleWipeFunction();
    void BalloonOpenSubSequenceFunction(FName TalkTargetTag, EEventBalloonDir BalloonDir, FName TalkText, float AutoTalkWait, FVector2D Offset, bool StopSubSeq);
    void BalloonOpenPartnerFunction(FName TalkTargetTag, EEventBalloonDir BalloonDir, FName TalkTextA, FName TalkTextB, float AutoTalkWait, bool StopMainSeq, float PlaybackSubSeqPosition, FVector2D Offset, bool WithoutTail);
    void BalloonOpenLabelPositionFunction(FName TalkTargetTag, EEventBalloonDir BalloonDir, FName TalkText, float AutoTalkWait, FVector2D Offset, bool StopMainSeq, float PlaybackSubSeqPosition, bool WithoutTail);
    void BalloonOpenDeepThinkingFixedFunction(EBALLOON_TEXT_POS BalloonPos, FName TalkText, float AutoTalkWait, bool IsCustomFadeTime, float FadeOutTime, bool StopMainSeq);
    void AttachCharacterChangeCollisionFunction(class AKSCharacterBase* EventChara, bool Enable);
    void AtlantisCharaFrameJumpFunction(EKSPartySet PartySetID, int32 PartyPosition, FJumpFrameSet FrameSetData);
}; // Size: 0x138

class URichEventCommandObject : public UActorComponent
{
    class ULevelSequencePlayer* m_pTargetMainSequencePlayer;                          // 0x00B0 (size: 0x8)
    bool m_bIsStopMainSequence;                                                       // 0x00B8 (size: 0x1)
    float m_fPlaybackSubSeqPosition;                                                  // 0x00BC (size: 0x4)
    float m_fFadeTime;                                                                // 0x00C0 (size: 0x4)
    TMap<class FName, class FEventEmotion> EventEmotionList;                          // 0x00E0 (size: 0x50)

    void TitlePauseFunction();
    void SubSequencePlayIndexFunction(int32 nNumLoops, float fSubSeqPlayPosition, int32 nIndex);
    void SubSequencePlayFunction(int32 nNumLoops, float fSubSeqPlayPosition);
    void StopSubSequenceIndexFunction(int32 nIndex);
    void StopSubSequenceFunction();
    void StopSubSequenceAction(class ULevelSequencePlayer* Sequence);
    void StopRichEventBgmFunction(float fFadeOutTime);
    void StopEmotionFunction(FName TagName);
    void StartPlayEmotionFunction(FName TagName, EEMOTION_TYPE EmotionType, float LifeTime, FVector Offset);
    void StartCameraSpawnFunction(EKSCameraType CameraType, float fBlend);
    void StartBattleFunction(FString EnemyGroup, FString FinishEvent, bool EventBattle);
    void SpawnCharaFunction(class AKSCharacterBase* EventChara, FName CharaLabelName, EKSCharacterDir SetDir, FName AddTagName);
    void ShowDebugInfoTextFunction(FString Text, float Time);
    void SetSubSequenceOptionFunction(int32 Index, FName OptionName);
    void SetPlayerPositionFunction(FVector Position);
    void SetHouseModeFunction(bool In, FName TargetBP, bool DoorOpen);
    void RestartSubSequenceFunction(int32 nIndex);
    void PlayRichEventSeFunction(FName strSeLabel);
    void PlayRichEventBgmMapFunction(float fFadeOutTime, float fFadeInTime);
    void PlayRichEventBgmFunction(FName strBgmLabel, float fFadeOutTime, float fFadeInTime);
    void PlayRichEventBgmBlockFunction(int32 nBlockId);
    void NarrationPlayFunction(FName strNarrationLabel, bool StopMainSequence, float fPlaybackSubSeqPosition);
    FName MoveSpotLightTargetFunction(class AActor* Actor, FVector AddOffset);
    void InitSeqData();
    void FadeOutTypeSelectFunction(EEVENT_FADE_TYPE FadeType, const FLinearColor Color);
    void FadeOutFunction(float EndTime, const FLinearColor Color);
    void FadeInTypeSelectFunction(EEVENT_FADE_TYPE FadeType, const FLinearColor Color);
    void FadeInFunction(float EndTime, const FLinearColor Color);
    void End();
    void DetachCharacterFunction(class AKSCharacterBase* EventChara);
    void ChangeVolumeEnvFunction(float fVolume, float fFadeTime);
    bool ChangeUpdateCommand(ERICHEVENT_CMD eType);
    void ChangeCameraFunction(EKSCameraType CameraType, float fBlend);
    void ChangeActionFunction(class AKSCharacterBase* EventChara, EKSCharacterAction ActionLabelName, int32 frame, EKSCharacterAnimationLoop LoopSetting, EKSCharacterDir SetDir);
    void BalloonOpenLabelPlayerFunction(EBalloonType BalloonType, EEventBalloonDir BalloonDir, FName TalkTargetName, FName TalkText, float AutoTalkWait, bool StopMainSeq, float PlaybackSubSeqPosition);
    void BalloonOpenLabelFunction(FName TalkTargetTag, EBalloonType BalloonType, EEventBalloonDir BalloonDir, FName TalkTargetName, FName TalkText, float AutoTalkWait, bool StopMainSeq, float PlaybackSubSeqPosition);
    void BalloonOpenFunction(FName TalkTargetTag, EBalloonType BalloonType, EEventBalloonDir BalloonDir, FName TalkTargetName, FString TalkText, float AutoTalkWait, bool StopMainSeq, float PlaybackSubSeqPosition);
    void AttachPlayerFunction(class AKSCharacterBase* EventChara, EKSCharacterDir SetDir);
    void AttachCharacterChangeCollisionFunction(class AKSCharacterBase* EventChara, bool Enable);
    void AttachCharacterActionFunction(class AKSCharacterBase* EventChara, EKSCharacterAction ActionLabelName, int32 frame, EKSCharacterAnimationLoop LoopSetting, EKSCharacterDir SetDir);
}; // Size: 0x130

class URichEventEditorComponent : public UPaperFlipbookComponent
{
}; // Size: 0x4C0

class URichEventSoundPreviewerObject : public UObject
{
}; // Size: 0x28

class USaveDataObject : public UObject
{
    EKSSaveSlotName SlotName;                                                         // 0x0028 (size: 0x1)

}; // Size: 0x30

class USaveDataUtilBase : public UBlueprintFunctionLibrary
{

    class UMJSaveData* GetSaveData();
}; // Size: 0x28

class USaveLoadFunction : public UBlueprintFunctionLibrary
{

    void Debug_SetIsForceSaveFailed(bool Val);
    void Debug_SetIsForceAsyncSaveWaitTime(float Val);
    void Debug_SetIsForceAsyncSave(bool Val);
    void Debug_SetIsForceAsyncLoadWaitTime(float Val);
    void Debug_SetIsForceAsyncLoad(bool Val);
    void Debug_AcqSaveGameByFileName(FString Filename, const FDebug_AcqSaveGameByFileNameSavedDelegate& SavedDelegate);
    void Debug_AcqLoadGameByFileName(FString Filename, const FDebug_AcqLoadGameByFileNameLoadedDelegate& LoadedDelegate, ESaveDataLoadTarget LoadTarget);
    void AcqSaveSystemData(const FAcqSaveSystemDataSavedDelegate& SavedDelegate);
    void AcqSaveGame(EKSSaveSlotName SlotNo, const FAcqSaveGameSavedDelegate& SavedDelegate);
    class UKSSaveSystem* AcqLoadSystemDataNoCallback(ESaveDataLoadTarget LoadTarget);
    void AcqLoadSystemData(const FAcqLoadSystemDataLoadedDelegate& LoadedDelegate, ESaveDataLoadTarget LoadTarget);
    void AcqLoadGame(EKSSaveSlotName SlotNo, const FAcqLoadGameLoadedDelegate& LoadedDelegate, ESaveDataLoadTarget LoadTarget);
}; // Size: 0x28

class UScreenCaptureBase : public UKSUserWidgetBase
{

    void OpenUIWithTexture(FName ResourceLabel);
    void OpenUI(bool PlayNoise);
    bool NoiseFinish();
    void CloseUI();
}; // Size: 0x358

class USeVibrationTableUtility : public UDataTableUtilityBase
{

    bool GetSeVibrationTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetSeVibrationRowDataByID(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSeVibrationData& OutData, int32 TargetID, bool LogEnable);
    bool GetSeVibrationRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSeVibrationData& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class USelectPlayerStatusBase : public UAcqUserWidget
{

    float GetBoostGaugeLoopTime();
}; // Size: 0x2C0

class USequencerResourceDBUtility : public UDataTableUtilityBase
{

    bool GetSequencerResourceDataRow(FSequencerResourceData& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class UServiceConnecter : public UObject
{
    FServiceConnecterOnUnLockedAchievement OnUnLockedAchievement;                     // 0x0028 (size: 0x10)
    void OnUnLockedAchievement();

}; // Size: 0x38

class UShopDataUtility : public UDataTableUtilityBase
{

    bool GetShopTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames, EShopDataType Type);
    bool GetShopListRowData(FLabelListData& OutData, FName TargetLabel);
    bool GetShopInfoRowDataByID(FShopInfoData& OutData, int32 TargetID);
    bool GetShopInfoRowData(FShopInfoData& OutData, FName TargetLabel);
    bool GetPurchaseItemRowDataByID(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FPurchaseItemInfoData& OutData, int32 TargetID);
    bool GetPurchaseItemRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FPurchaseItemInfoData& OutData, FName TargetLabel);
    FName GetPurchaseItemLabelById(int32 ID);
    int32 GetPurchaseItemIdByLable(const FName& Label);
}; // Size: 0x28

class UShopMenuWidgetBase : public UKSUserWidgetWithState
{

    void SetParam(FName ShopLabel, bool ForceDefaultBar, bool FromNPC);
    void OpenExBar();
}; // Size: 0x368

class UShopUtility : public UBlueprintFunctionLibrary
{

    bool IsLineUpItemInShop(const FPurchaseItemInfoData& purchaseItemData);
    ESHOP_CATEGORY_TYPE GetShopCategoryByItemData(const FItemData& ItemData);
    void CreateShopItemListDataForAnimalShop(const FName& ShopLabel, TArray<FMJListWidgetItemData>& outListWidgetDataList, TArray<FName>& outItemLabelList, TArray<FPurchaseItemInfoData>& outPurchaseItemDataList);
    void CreateShopItemListData(const FName& ShopLabel, TArray<FMJListWidgetItemData>& outListWidgetDataList, TArray<FName>& outItemLabelList, TArray<FPurchaseItemInfoData>& outPurchaseItemDataList);
}; // Size: 0x28

class USingleMenuWidgetBase : public UKSUserWidgetWithState
{

    bool StorySelectOpen(FName WorldMapLabel);
    void SetPauseWhileRunning(bool bPause);
    bool GetPauseWhileRunning();
    bool EventFieldCommandBattleOpen(FName NPCLabel);
}; // Size: 0x370

class USoundTableUtility : public UDataTableUtilityBase
{

    bool GetVoiceJaRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSoundVoiceData& OutData, FName TargetLabel, bool LogEnable);
    bool GetVoiceEnRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSoundVoiceData& OutData, FName TargetLabel, bool LogEnable);
    bool GetSoundTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames, ESoundTableType Type);
    bool GetSeRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSoundSEData& OutData, FName TargetLabel, bool LogEnable);
    bool GetCueSheetRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FKSCueSheetData& OutData, FName TargetLabel, bool LogEnable);
    bool GetBgmRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FBgmInfoData& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class USpActMerchantUtility : public UDataTableUtilityBase
{

    bool MakeSpecialActionDataForMenu(FName spActLabel, FSpActionMerchant_MenuData& outSpActData);
    FText MakeDescriptionText(const FSpActionMerchant_Data& spActData);
    void GetSpActionTypeByLabel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSpActionMerchant_Type& outType, FName typeLabel);
    void GetSpActionDataByNpcId(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSpActionMerchant_Data& OutData, int32 NPCID);
    void GetSpActionDataByLabel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSpActionMerchant_Data& OutData, FName dataLabel);
    bool ExecMerchantSpecialAction_WithoutNpc(FSpActMerchantResult& OutResult, ESPACT_MER_TRIGGER_TYPE Trigger, int32 originalPrice);
    bool ExecMerchantSpecialAction_WithNpc(FSpActMerchantResult& OutResult, int32 NPCID, ESPACT_MER_TRIGGER_TYPE Trigger, int32 originalPrice);
    bool CheckMerchantSpecialAction_WithoutNpc(ESPACT_MER_TRIGGER_TYPE Trigger);
}; // Size: 0x28

class USpawnPointBillboardComponent : public UBillboardComponent
{
}; // Size: 0x470

class USpecialActionDataUtility : public UDataTableUtilityBase
{

    int32 SpecialActionLabelToID(FName Label);
    FName SpecialActionIDToLabel(int32 ID);
    bool GetSpecialActionTableRowDataByEnum(FSpecialActionData& OutData, ESpecialActionType SpecialActionType);
    bool GetSpecialActionTableRowData(FSpecialActionData& OutData, FName Label);
    bool GetProcessItemNumData(FProcessItemNum& OutData, int32 ID);
    int32 GetProcessItemNum(int32 ID, int32 remainCallNum);
    int32 GetLegendSeaMonsterIndex(int32 Normal, int32 Awake, int32 awakeAfter);
    FName GetHunterPartnerMonsterLabelById(EHUNTER_PARTNER_ID partnerID, bool ignoreAwakening);
    FName GetHunterPartnerMonsterLabel();
    FName GetHunterPartnerActionLabelById(EHUNTER_PARTNER_ID partnerID);
    FName GetHunterPartnerActionLabel();
}; // Size: 0x28

class USplineMoveComponent : public UActorComponent
{
    bool m_bNearPlayer;                                                               // 0x00B8 (size: 0x1)
    float m_fPathZ;                                                                   // 0x01AC (size: 0x4)
    float m_fPow;                                                                     // 0x01B0 (size: 0x4)
    float m_fBaseCheck;                                                               // 0x01B4 (size: 0x4)
    float m_fOverCheckDistance;                                                       // 0x01B8 (size: 0x4)
    int32 m_nChangeDirCnt;                                                            // 0x01BC (size: 0x4)
    int32 m_nChangeDirCntDef;                                                         // 0x01C0 (size: 0x4)
    int32 m_fArrivalDistance;                                                         // 0x01C4 (size: 0x4)
    float m_fPathDistance;                                                            // 0x01C8 (size: 0x4)
    class UPathSplineComponent* m_pPath;                                              // 0x01D0 (size: 0x8)
    float m_fMoveDiffCheck;                                                           // 0x01E4 (size: 0x4)

    bool SetUpSplineData(class UPathSplineComponent* uGetSpline, EPATH_TYPE eType);
    void SetUpFieldPathData(FFieldPathInfoData InfoData);
    void SetSplineMovePointSetting(const class USplineComponent* uSpline);
    void SetMoveStopEvent(bool Enable);
    void SetFirstPosition(const class USplineComponent* uSpline);
    bool NPCCharacterMoving(const class USplineComponent* uSpline, float fDeltaTime, float fWaitTime, float fSearchRange);
    bool IsEndPointArrived(const class USplineComponent* uSpline);
    bool GetNowMoveSpeed(const class USplineComponent* uSpline);
    FString GetDebugSplineMoveParam();
    float GetCurrentSplinePosition(const class USplineComponent* uSpline);
    bool CheckTalkEffectVisible();
    void CheckNearPlayer(float fWaitTime, float fSearchRange);
    bool CheckContactPlayerInterval(float fDeltaTime);
    bool CalcStartCheck(float fDelatTime);
}; // Size: 0x1F0

class UStaffCreditParent : public UKSUserWidgetWithState
{
    TArray<class UStaffCreditWidgetBase*> CreditPartsList;                            // 0x0368 (size: 0x10)
    class UDataTable* creditTable;                                                    // 0x0378 (size: 0x8)
    float totalStagingTime;                                                           // 0x0380 (size: 0x4)
    float ViewportHeight;                                                             // 0x0384 (size: 0x4)
    float DisolvePartsTime;                                                           // 0x0388 (size: 0x4)

    bool WipeOut(float PlayTime);
    bool WipeIn(float PlayTime);
    bool StartStaging();
    bool SetupStaffCredit();
    void SetTotalStagingTime(float totalStagingTime);
    void SetNextState_Local(EStaffCreditState NextState);
    void SetDataTable(class UDataTable* creditTable);
    bool SetBackground(ECreditBgType bgType, FName imageName);
    bool ReleaseAll();
    bool IsWidgetOutOfViewport(class UStaffCreditWidgetBase* CreditWidget);
    bool IsDisplayDebugInfo();
    EStaffCreditState GetPrevState_Local();
    EStaffCreditState GetCurrentState_Local();
    void DebugUpdate();
    class UStaffCreditWidgetBase* CreateCreditWidget(ECreditWidgetType WidgetType);
    bool CheckCompleteScroll();
    bool AddCreditWidgetToScrollList(class UStaffCreditWidgetBase* CreditWidget);
}; // Size: 0x390

class UStaffCreditWidgetBase : public UAcqUserWidget
{
    FVector2D WidgetSize;                                                             // 0x02C4 (size: 0x8)
    bool m_IsScrollWidget;                                                            // 0x02CD (size: 0x1)

    bool UpdateStaging(float stagingTime);
    bool Setup(TArray<FStaffCreditTable>& itemArray);
    void SetStagingTime(float StartTime, float stagingTime);
    void SetStagingPositionY(float startY, float endY);
    void SetScrollWidget(bool isScroll);
    void SetCreditWidgetType(ECreditWidgetType Type);
    void SetCanvasPosition(FVector2D& Pos);
    void SetActive(bool IsActive);
    bool IsScrollWidget();
    bool IsComplete();
    bool IsActive();
    float GetWidgetWidth();
    FVector2D GetWidgetSize();
    float GetWidgetHeight();
    float GetStartTime();
    ECreditWidgetType GetCreditWidgetType();
    FVector2D GetCanvasPosition();
    void CalcWidgetSize();
}; // Size: 0x2E8

class UStateDataBase : public UObject
{
    EMAINSEQ_TYPE m_SeqType;                                                          // 0x0028 (size: 0x1)
    EMAINSEQ_TYPE m_BeforeSeqType;                                                    // 0x0029 (size: 0x1)
    EMAINSEQ_TYPE m_NextSeqType;                                                      // 0x002A (size: 0x1)
    EREQUEST_TYPE m_ExecRequestType;                                                  // 0x002B (size: 0x1)
    TArray<EREQUEST_TYPE> m_RequestList;                                              // 0x0030 (size: 0x10)
    FMainSequenceStateParam m_Param;                                                  // 0x0040 (size: 0x10)

    bool UpdateState();
    void SetStateParam(FMainSequenceStateParam Param);
    EPRIORITY GetPriority();
    bool ChangeState(EMAINSEQ_TYPE Type);
}; // Size: 0x50

class USteamUtility : public UBlueprintFunctionLibrary
{
}; // Size: 0x28

class UStoryDataUtility : public UDataTableUtilityBase
{

    int32 SubStoryLabelToId(FName subStoryLabel);
    FName SubStoryIdToLabel(int32 subStoryId);
    bool StartMainStoryFromNewGame(int32 PlayerCharaId);
    void RefreshMainStoryRelease(int32 MainStoryId);
    void RefreshAllMainStoryState();
    void RefreshAllMainStoryRelease();
    void NotifySubStoryDB(FName dbName, EDBNoticeType notice);
    void NotifyMainStoryDB(FName dbName, EDBNoticeType notice);
    int32 MainStoryTaskLabelToId(FName mainStoryTaskLabel);
    FName MainStoryTaskIdToLabel(int32 mainStoryTaskId);
    int32 MainStoryLabelToId(FName MainStoryLabel);
    FName MainStoryIdToLabel(int32 MainStoryId);
    bool IsSubStoryDataExists(FName subStoryLabel);
    bool IsStorySealed(EStoryState storyState);
    bool IsStoryCompleted(EStoryState storyState);
    bool IsMerchantSubStory(FName subStoryLabel);
    bool IsMainStoryTaskDataExists(FName mainStoryTaskLabel);
    bool IsMainStoryPrologue(int32 MainStoryId);
    bool IsMainStoryPlayableStateById(int32 MainStoryId);
    bool IsCompletedMainStoryCharacterFinalChapter(int32 PlayerCharaId);
    bool IsAnyCharacterPlayingMainStory();
    TArray<FName> GetTutorailSubStoryLabels();
    FName GetSubStoryTitleTextLabel(FName subStoryLabel);
    bool GetSubStoryRowNames(TArray<FName>& OutRowNames);
    int32 GetSubStoryNumInAllArea();
    int32 GetSubStoryNumByAreaId_WithoutMerchantSubStory(int32 AreaID);
    int32 GetSubStoryNumByAreaId(int32 AreaID);
    int32 GetSubStoryMissionIndex(FName subStoryLabel);
    TArray<FName> GetSubStoryLabelsInAllArea();
    TArray<FName> GetSubStoryLabelsByAreaId(int32 AreaID);
    int32 GetSubStoryLabelsArrayIndex(FName subStoryLabel);
    FName GetSubStoryLabelByAreaIdAndArrayIndex(int32 AreaID, int32 ArrayIndex);
    void GetSubStoryDataByRowName(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSubMissionData& outStoryData, FName subStoryLabel);
    TArray<FName> GetSubStoryCommonLabels();
    int32 GetSubStoryAreaId(FName subStoryLabel);
    FName GetMainStoryTaskTitleTextLabel(FName mainStoryTaskLabel);
    bool GetMainStoryTaskRowNames(TArray<FName>& OutRowNames);
    int32 GetMainStoryTaskProgressValue(FName mainStoryTaskLabel);
    void GetMainStoryTaskLabelsByCharaIdWithBranch(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& outLabelList, int32 PlayerCharaId);
    TArray<FName> GetMainStoryTaskLabelsByCharaId(int32 PlayerCharaId);
    void GetMainStoryTaskLabelList(TArray<FName>& outTaskLabelList, int32 MainStoryId, ESTORY_TASK_TYPE TaskType);
    void GetMainStoryTaskDataByRowName(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FMainMissionData& outStoryData, FName mainStoryTaskLabel);
    FName GetMainStoryNextTask(FName mainStoryTaskLabel);
    FName GetMainStoryLabelFromTask(FName mainStoryTaskLabel);
    void GetMainStoryIdListInWorldMap(TArray<int32>& outMainStoryIdList, FName WorldMapLabel);
    float GetMainStoryGaugeMaxValue(EPlayableCharacterID CharacterID);
    int32 GetMainStoryDifficultyPoint(int32 MainStoryId);
    bool GetMainStoryDataById(int32 MainStoryId, FMainStoryData& OutData);
    void GetMainStoryCurrentTaskData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FMainMissionData& outStoryData, int32 PlayerCharaId);
    int32 GetMainStoryCharacterPrologueId(int32 PlayerCharaId);
    int32 GetMainStoryCharacterFinalChapterId(int32 PlayerCharaId);
    void GetMainStoryCharacterAllPrologueId(TArray<int32>& outPrologueId, int32 PlayerCharaId);
    TArray<FName> GetMainStoryAllLabels();
    void GetFastTravelPermissionByCharaId(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, bool& outUnavailableFastTravel, FName& outAuthorizationFastTravel, int32 PlayerCharaId);
    bool GetExtraStoryIdByExCategory(TArray<int32>& outMainStoryId, EEXTRA_STORY_CATEGORY exCategory);
    float GetExtraStoryGaugeMaxValue(EEXTRA_STORY_CATEGORY extraStory);
    bool GetExtraStoryAllId(TArray<int32>& outMainStoryId);
    bool GetCharacterMainStoryIdForStoryRecord(TArray<int32>& outMainStoryId, int32 PlayerCharaId);
    bool GetCharacterMainStoryAllId(TArray<int32>& outMainStoryId, int32 PlayerCharaId);
    FName GetChapterText(int32 MainStoryId);
    bool GetAllSubStoryIds(TArray<int32>& outIds);
    void Debug_SetReleaseAllStoryRecord(bool bRelease);
    bool Debug_IsReleasedAllStoryRecord();
    bool Debug_IsIgnoreMainStoryReleased();
    void Debug_IgnoreMainStoryReleased(bool bIgnore);
    bool CheckMainStoryReleaseConditionById(int32 MainStoryId);
    bool CheckMainStoryReleaseConditionByData(const FMainStoryData& MainStoryData);
}; // Size: 0x28

class UStoryFunction : public UBlueprintFunctionLibrary
{

    bool UpdateMainStoryProgressOnPlayEvent(FName mainStoryTaskLabel);
    void UpdateMainStoryProgressCount(FName MainStoryLabel, int32 progressCount);
    void UpdateFixedFieldBgmOnChangeLevel(FName MainStoryTask);
    void UpdateExtraStoryProgressCount(EEXTRA_STORY_CATEGORY ExStoryCategory, int32 progressCount);
    void UpdateCharaMainStoryProgressCount(int32 PlayerCharaId, int32 progressCount);
    bool StartSubStory(FName subStoryLabel);
    void SetPlayingEpilogue(bool bPlaying);
    bool SetMainStoryTaskViewFlag(FName mainStoryTaskLabel, bool playingFlag);
    void SetMainStoryEventFlags(int32 MainStoryId, bool bFlag);
    void SetMainStoryAllTaskCleared(int32 MainStoryId, bool bCleared);
    bool ResumeMainStorySpecifiedChara(int32 PlayerCharaId);
    bool ResumeMainStory(int32 MainStoryId);
    void ResetMainStoryData(int32 MainStoryId);
    void RecoveryConnectionOnPrologueTown(EPlayableCharacterID PlayerCharaId);
    void MakeWorldMapDestinationList(TArray<FWorldMapDestinationData>& outDestData);
    FText MakeSubStoryStartConditionFailedText(FName subStoryLabel);
    bool IsSubStoryRecordAreaOpend(int32 AreaID);
    bool IsReleasedMerchantShip();
    bool IsPlayingPrologue(int32 PlayerCharaId);
    bool IsPlayingOverallFinalChapter();
    bool IsPlayingMainScenarioInCurrentLevel(int32 characterScenarioType);
    bool IsPlayingEpilogue();
    bool IsOverallFinalChapterInProgress();
    bool IsMapRelatedCharaPrologue(FName levelName, EPlayableCharacterID CharaID);
    bool IsCompletedSubStory(FName subStoryLabel);
    bool IsCompletedOverallFinalChapter();
    bool IsCompletedAllCouplingStory();
    bool IsAnyCharaPlayingPrologue();
    bool IsAnyCharaCompletedFinalChapter();
    bool IsAllCharaCompletedFinalChapter();
    bool Is1stSelectedCharaCompletedFinalChapter();
    bool InterruptMainStorySpecifiedChara(int32 PlayerCharaId);
    void InterruptMainStoryForSubMembers();
    bool InterruptMainStory(int32 MainStoryId);
    int32 GetSubStoryState(FName subStoryLabel);
    int32 GetPlayingPrologueReminiscenceIndex();
    void GetPlayingMainStoryInLevel(TArray<int32>& outMainStoryIdList, FName levelName);
    int32 GetPlayingMainStoryID(int32 PlayerCharaId);
    bool GetPlayablePrologueList(TArray<int32>& outPlayableCharaID);
    void GetPlayableMainStoryListInWorldMap(TArray<FBarMenuStoryItem>& outMainStoryList, FName WorldMapLabel);
    int32 GetMainStoryTaskTargetCharacterId(FName mainStoryTaskLabel);
    EBARMENU_STORY_SELECT_ITEM_TYPE GetMainStoryStateInStorySelectMenu(int32 MainStoryId);
    float GetMainStoryRecordGaugeLength(int32 PlayerCharaId);
    int32 GetMainStoryProgressCountFromStoryId(int32 MainStoryId);
    int32 GetMainStoryProgressCount(int32 PlayerCharaId);
    FName GetFixedFieldBgm(FName levelName);
    float GetExtraStoryRecordGaugeLength(EEXTRA_STORY_CATEGORY exCategory);
    int32 GetExtraStoryProgressCount(EEXTRA_STORY_CATEGORY ExStoryCategory);
    void GetCharaIdListPlayingMainStoryInLevel(TArray<int32>& outCharaIdList, FName levelName, bool includeInterruption);
    void GetAllCompletedMainStoryIds(TArray<int32>& IDs);
    int32 GetActiveMainStoryID(int32 PlayerCharaId);
    void Debug_SetupJustBeforeFinalChapter(bool bPartnerA);
    void Debug_ModifyMainStoryState(int32 MainStoryId, EStoryState storyState, bool bPlayLastEvent);
    void Debug_CompleteMainStoryInProgress(int32 PlayerCharaId);
    void CreateSubStoryRecordDataListItem(TArray<FMAINMENU_MISSION_RECORD_DATA>& outRecordData, int32 AreaID);
    void CreateSubStoryAllRecordDataListItem(TArray<FMAINMENU_MISSION_RECORD_DATA>& outRecordData);
    void CreateMainStoryRecordDataListItemByStoryId(TArray<FMAINMENU_MISSION_RECORD_DATA>& outTaskInfo, TArray<FMJListWidgetItemData>& outListItemData, int32 MainStoryId, int32 CategoryId);
    void ControlMainStoryEventObjectOnInterruptFromBar(int32 MainStoryId, bool bInterrupt);
    void ControlMainStoryEventObjectOnInterrupt(FName MainStoryLabel, bool bInterrupt, bool bRefreshObject);
    bool CompleteSubStory(FName subStoryLabel, int32 ClearIndex);
    bool CompleteFakeSubStory(FName subStoryLabel);
    bool CheckSubStoryStartCondition(FName subStoryLabel);
    bool CanPlayMainStory(int32 MainStoryId);
    bool CanOpenTutorialByMap(FName WorldMapLabel);
    bool CanOpenStorySelectByBar(FName WorldMapLabel);
    bool CanOpenMainStorySelectMenuByMap(FName WorldMapLabel);
    int32 CalcRecoveryRelationshipCost(int32 TownID);
    float CalcMainStoryTotalProgress();
}; // Size: 0x28

class UStoryNotificationBase : public UKSUserWidgetBase
{

    bool OpenSubStory(FName TitleLabel, FName FormatTextLabel);
    bool OpenMarchant(FName MainStoryLabel, FName TitleLabel, FName FormatTextLabel);
    bool OpenCoupling(FName MainStoryLabel, FName TitleLabel, FName FormatTextLabel);
}; // Size: 0x358

class UStoryRecordBase : public UKSUserWidgetBase
{
    bool PlayPartyChat;                                                               // 0x0358 (size: 0x1)

    void SetPartyChatPlay(bool Flag);
    bool PreCloseAction();
    bool PartyChatStart();
    bool PartyChatReady();
    bool PartyChatFinish();
    bool GetPartyChatPlay();
}; // Size: 0x360

class UStoryRecordPartyChatList : public UAcqUserWidget
{
}; // Size: 0x2C0

class UStoryRecordPartyChatListEntry : public UAcqListViewEntryItemBase
{
    FPartyChat PartyChatData;                                                         // 0x0038 (size: 0x68)

}; // Size: 0xA0

class UStorySaveDataUtil : public USaveDataUtilBase
{

    void SetPlayingMainStoryID(int32 PlayerCharaId, int32 MainStoryId);
    bool SetMainStoryTaskTimeZoneOnPlayed(int32 mainStoryTaskId, int32 TimezoneType, int32 timeZonePosition);
    bool SetMainStoryTaskEventObjectFlag(int32 mainStoryTaskId, int32 Index, int32 FlagID, bool Val);
    void SetMainStoryTaskCleared(int32 mainStoryTaskId, bool bCleared);
    void SetMainStoryState(int32 MainStoryId, EStoryState State);
    void SetMainStoryRecordNew(int32 mainStoryTaskId, bool bNew);
    void SetMainStoryCurrentTaskID(int32 MainStoryId, int32 CurrentTaskID);
    void SetInterruptedMainStoryID(int32 PlayerCharaId, int32 MainStoryId);
    void SetConfirmedMainStory(int32 MainStoryId, bool Flag);
    void SetAutoInterruptMainStoryId_ByPrologue(int32 MainStoryId);
    void SetAutoInterruptMainStoryId(int32 MainStoryId);
    bool IsUnPlayedMainStory(int32 MainStoryId);
    bool IsMainStoryTaskCleared(int32 mainStoryTaskId);
    bool IsConfirmedMainStory(int32 MainStoryId);
    bool IsCompletedMainStory(int32 MainStoryId);
    int32 GetPlayingMainStoryID(int32 PlayerCharaId);
    int32 GetMainStoryTaskTimeZoneTypeOnPlayed(int32 mainStoryTaskId);
    int32 GetMainStoryTaskTimeZonePositionOnPlayed(int32 mainStoryTaskId);
    bool GetMainStoryTaskSaveData(int32 mainStoryTaskId, FMainStoryTaskSaveData& outMainStoryTaskSaveData);
    void GetMainStoryTaskEventObjectFlag(int32 mainStoryTaskId, int32 Index, int32& FlagID, bool& Val);
    EStoryState GetMainStoryState(int32 MainStoryId);
    bool GetMainStorySaveData(int32 MainStoryId, FMainStorySaveData& outMainStorySaveData);
    bool GetMainStoryRecordNew(int32 mainStoryTaskId);
    int32 GetMainStoryCurrentTaskID(int32 MainStoryId);
    int32 GetInterruptedMainStoryID(int32 PlayerCharaId);
    int32 GetAutoInterruptMainStoryId_ByPrologue();
    int32 GetAutoInterruptMainStoryId();
    bool GetAllPlayingMainStoryIDs(TArray<int32>& outMainStoryIds);
    void ClearPlayingMainStoryID(int32 PlayerCharaId);
    void ClearInterruptedMainStoryID(int32 PlayerCharaId);
}; // Size: 0x28

class UStreamingLevels : public UObject
{
    TArray<class ULevelStreamingDynamic*> m_Field;                                    // 0x0028 (size: 0x10)
    TArray<class ULevelStreamingDynamic*> m_Battle;                                   // 0x0038 (size: 0x10)

    bool SetStreamingLevel(ELEVEL_TYPE eLevelType, class ULevelStreamingDynamic* Stream);
    void RemoveLevel(class ULevelStreamingDynamic* UnloadLevel);
    void RemoveAllLevel();
    void RemoveAllFieldLevel();
    void RemoveAllBattleLevel();
    void Init(int32 nFieldArrayBuffer, int32 nBattleArrayBuffer);
    class ULevelStreamingDynamic* GetStreamingLevel(ELEVEL_TYPE eLevelType, int32 nIndex);
    TArray<class ULevelStreamingDynamic*> GetLevels(ELEVEL_TYPE eLevelType);
}; // Size: 0x48

class UStyleChangeComponent : public UActorComponent
{
    class ABattleCharacterBase* m_cOwnerPlayer;                                       // 0x00B0 (size: 0x8)
    class UUserWidget* m_cPlayerStatusUI;                                             // 0x00B8 (size: 0x8)
    EBATTLE_STYLE_TYPE m_eUniqueStyle;                                                // 0x00C0 (size: 0x1)
    EBATTLE_STYLE_TYPE m_eCurrentStyle;                                               // 0x00C1 (size: 0x1)
    int32 m_nStyleChangePoint;                                                        // 0x00C4 (size: 0x4)
    int32 m_nStyleChangePointMax;                                                     // 0x00C8 (size: 0x4)
    int32 m_nResumeBoostPoint;                                                        // 0x00CC (size: 0x4)
    bool m_bStyleChangeReady;                                                         // 0x00D0 (size: 0x1)

    void SetStyleChangePoint(int32 nNewStyleChangePoint, int32& outCurrentPoint);
    void SetPlayerStatusUI(class UUserWidget* cPlayerStatusUI);
    bool RecoveryStyleChangePoint(int32 nValue);
    bool OnStyleChange();
    bool OnBreakStyle();
    bool OnBoostStyle();
    bool OffStyleChange(bool bCancel);
    bool OffBreakStyle(bool bCancel);
    bool OffBoostStyle(bool bCancel);
    bool IsStyleChangeReady();
    bool IsStyleChangePointMax();
    bool IsStyleChangeExec();
    bool IsStyleChangeAvailable();
    void InitStyleChange(EBATTLE_STYLE_TYPE eUniqueStyle, int32 nStyleChangePoint, int32 nStyleChangePointMax);
    EBATTLE_STYLE_TYPE GetUniqueStyle();
    void GetStyleChangePoint(int32& outStyleChangePoint, int32& outStyleChangePointMax);
    EBATTLE_STYLE_TYPE GetCurrentStyle();
    bool FinishStyleChange();
    bool DecisionStyleChange();
    void Debug_SetStyleChangePointMax(int32 nValue);
    void Debug_SetStyleChangePoint(int32 nValue);
    bool CheckEnableBreakStyle();
}; // Size: 0xD8

class USubTitleBase : public UKSUserWidgetBase
{
    FSubTitleDataBase SubTitleData;                                                   // 0x0358 (size: 0x40)
    FName SubTitleLabel;                                                              // 0x0398 (size: 0x8)
    bool EventRequest;                                                                // 0x03A0 (size: 0x1)
    FName AfterEventLabel;                                                            // 0x03A4 (size: 0x8)
    TMap<class FName, class bool> m_ChangeEventFlagOnBegin;                           // 0x03B0 (size: 0x50)
    TMap<class FName, class bool> m_ChangeEventFlagOnEnd;                             // 0x0400 (size: 0x50)
    TMap<class FName, class bool> m_ChangeEventFlagOnPause;                           // 0x0450 (size: 0x50)

    void Stop(bool& IsNext);
    void SetSubTitleLabel(FName Label);
    void SetEventOpenRequest(bool IsEventRequest);
    void SetAfterEventLabel(FName EventLabel);
    void OnFieldChangeFinishCallback(ENOTICE_TYPE eNoticeType, const FNoticeArgs& Args);
    bool IsActive();
    int32 GetCurrentBlock();
    FName GetAfterEventLabel();
    void ForceClose();
}; // Size: 0x4A0

class USubTitleSaveDataUtil : public USaveDataUtilBase
{

    void SetViewFlag(int32 SubTitleId, bool Flag);
    void SetStartIndex(int32 SubTitleId, int32 Index);
    bool GetViewFlag(int32 SubTitleId);
    int32 GetStartIndex(int32 SubTitleId);
}; // Size: 0x28

class USubTitleTableUtility : public UDataTableUtilityBase
{

    void GetSubTitleTable(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSubTitleDataBase& OutData, FName Label);
    bool GetSubTitleRowNames(TArray<FName>& OutRowNames);
}; // Size: 0x28

class USupportAbilityDataTableUtility : public UDataTableUtilityBase
{

    bool GetSupportAbilityRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetSupportAbilityRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSupportAbilityDataBase& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class USupportCharacterDataUtility : public UDataTableUtilityBase
{

    bool GetSupportCharacterTableRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FSupportCharacterData& OutData, FName Label);
    bool GeSupportCharacterTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
}; // Size: 0x28

class USupporterAndEnemyToNpcTableMaker : public UObject
{

    bool GetTable(TMap<class FName, class FName>& outSupporterLabelToNpcLableTable, TMap<class FName, class FName>& outEnemyLabelToNpcLableTable);
    bool GetEnemyLabelsByEnemyGroup(TArray<FName>& outEnemeyLabels, FName EnemyGroupLabel);
    void BeginMakeTable();
}; // Size: 0xC8

class USwitchOverride_PointLightComponent : public UPointLightComponent
{
    float m_OverrideAttenuationRadius;                                                // 0x0358 (size: 0x4)
    float m_OverrideLightFalloffExponent;                                             // 0x035C (size: 0x4)

}; // Size: 0x360

class UTextDataUtility : public UDataTableUtilityBase
{

    bool GetTalkVoiceTextTableRowData(FTalkVoice& OutData, FName TargetLabel);
    bool GetTalkVoiceLabel(FName& outLabel, FName TargetLabel, class UObject* WorldContextObject);
    bool GetTalkTextTableRowData(FTalkText& OutData, FName TargetLabel);
    bool GetItemTextTableRowData(FGameTextItemInfo& OutData, FName TargetLabel);
    bool GetGameTextTableRowData(FGameTextInfoData& OutData, FName TargetLabel);
    void GetGameTextString(FName Label, FString& OutText);
    class UDataTable* GetGameTextDB(EKSLanguage lang);
    void GetGameText(FText& OutText, FName TargetLabel);
    void GetDialogText(FText& DetailText, TArray<FText>& ButtonTexts, FName TargetLabel, EDIALOG_TEXT_TYPE DialogType);
    bool GetCharaTextTableRowData(FGameTextCharaInfo& OutData, FName TargetLabel);
    bool Debug_SeachTargetText(FName& outLabel, FText targetText, EKSLanguage lang);
    void Debug_ResetText();
}; // Size: 0x28

class UTextOperationComponent : public UActorComponent
{
    class UMacroData* m_MacroData;                                                    // 0x0130 (size: 0x8)

    FString ExecMacroOperation(FString InputText);
}; // Size: 0x138

class UTimeChangeButton : public UUserWidget
{
    class UKSTextBlock* m_pMainText;                                                  // 0x0260 (size: 0x8)

    void SetText(FName ButtonLabel, FName MainLabel);
}; // Size: 0x268

class UTimeOperator : public UObject
{
    ETimeZoneType m_eTimeZoneType;                                                    // 0x0054 (size: 0x1)
    ETimeZoneType m_eNextTimeZoneType;                                                // 0x0055 (size: 0x1)
    ELEVEL_DARK_STATE m_eDarkAreaState;                                               // 0x0056 (size: 0x1)
    ETimeZoneType m_eTempTimeZoneType;                                                // 0x0057 (size: 0x1)
    class ALevelSequenceActor* m_pSequencer;                                          // 0x0058 (size: 0x8)

    void SetTimeZoneChangeValueMax(const int32 nNewValue);
    void SetTimeZoneChangeValue(const int32 nNewValue);
    void SetManualAccelerationTime(const float fNewValue);
    void SetAutoAccelerationTime(const float fNewValue);
    ETimeZoneType IsNextTimeZoneCheck();
    int32 GetTimeZoneChangeValueMax();
    int32 GetTimeZoneChangeValue();
    bool GetReserveAutoChange();
    float GetManualAccelerationTime();
    ELEVEL_DARK_STATE GetDarkAreaState();
    float GetCurrentSeaquencerNormalizedTime();
    float GetAutoAccelerationTime();
}; // Size: 0x90

class UTimeZoneChangeUI : public UKSUserWidgetBase
{
    class UTimeChangeButton* m_pTimeChangeButton;                                     // 0x0368 (size: 0x8)
    class UWidgetAnimation* m_pOpenAnimation;                                         // 0x0370 (size: 0x8)
    class UWidgetAnimation* m_pForceCloseAnimation;                                   // 0x0378 (size: 0x8)
    float m_fDeltaTime;                                                               // 0x0388 (size: 0x4)
    float m_fStartTime;                                                               // 0x038C (size: 0x4)

    void StopAllAnimation();
    void OnPlayerInput();
    void ForceClose();
}; // Size: 0x390

class UTimeZoneComponentBase : public UActorComponent
{
    int32 m_nIndex;                                                                   // 0x00B0 (size: 0x4)
    ETimeZoneObjectType m_eType;                                                      // 0x00B4 (size: 0x1)

}; // Size: 0xB8

class UTimeZoneEmitterComponent : public UTimeZoneComponentBase
{
    TArray<class UParticleSystemComponent*> m_lstParticle;                            // 0x00B8 (size: 0x10)
    class ATimeZoneEmitterParam* m_pcParam;                                           // 0x00C8 (size: 0x8)

}; // Size: 0xD0

class UTimeZoneLightComponent : public UTimeZoneComponentBase
{
    TArray<class ULightComponent*> m_apLightList;                                     // 0x00B8 (size: 0x10)
    class ATimeZoneLightParam* m_cParam;                                              // 0x00C8 (size: 0x8)

}; // Size: 0xD0

class UTimeZoneSoundComponent : public UTimeZoneComponentBase
{
    TArray<class USoundAtomCue*> m_apSoundCueList;                                    // 0x00B8 (size: 0x10)
    class UAtomComponent* m_apAtomSound;                                              // 0x00C8 (size: 0x8)
    class ATimeZoneSoundParam* m_pcParam;                                             // 0x00D0 (size: 0x8)
    class UTimeZoneEmitterComponent* m_pcParentEmitterComp;                           // 0x00D8 (size: 0x8)
    class USoundAtomCue* m_pcCurrentSoundAtomCue;                                     // 0x00E0 (size: 0x8)

}; // Size: 0xF0

class UTimeZoneUtility : public UBlueprintFunctionLibrary
{

    bool IsNightTime();
    bool IsDayTime();
    ETimeZoneType GetTimeZoneTypeBeforeLostWay();
    ETimeZoneType GetCurrentTimeZoneType();
}; // Size: 0x28

class UTitleBackSceneBase : public UAcqUserWidget
{
    ETitleMovieState m_State;                                                         // 0x02C0 (size: 0x1)

    void SetState(ETitleMovieState NewState);
    void Debug_SetPrintCurrentTimeText(FString Text);
    bool Debug_GetIsPrintCurrentTime();
}; // Size: 0x2C8

class UTitleBase : public UAcqUserWidget
{

    void Start();
    void SetNextScene(EUITitleFlow Scene);
    void SetCurrentScene(EUITitleFlow Scene);
    void OnFinishedFadeOut();
    void OnFinishedFadeIn();
    bool IsEnd();
    EUITitleFlow GetNextScene();
    EUITitleFlow GetCurrentScene();
    void End();
    bool AllowPushToUIManager();
}; // Size: 0x2C8

class UTownTableUtility : public UDataTableUtilityBase
{

    int32 TownLabelToID(FName Label);
    FName TownIDToLabel(int32 ID);
    bool GetTownTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetTownTableRowDataByID(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FTownInfoData& OutData, int32 TargetID, bool LogEnable);
    bool GetTownTableRowData(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FTownInfoData& OutData, FName TargetLabel, bool LogEnable);
}; // Size: 0x28

class UTutorialDataTableUtility : public UDataTableUtilityBase
{

    int32 TutorialPageLabelToID(FName TutorialListLable);
    FName TutorialPageIDToLabel(int32 TutorialListID);
    int32 TutorialListLabelToID(FName TutorialListLable);
    FName TutorialListIDToLabel(int32 TutorialListID);
    bool GetTutorialPageRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetTutorialPageRowDataByLabel_RC(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FDataTableTutorialPageData& OutData, FName TargetLabel, bool LogEnable);
    bool GetTutorialPageRowDataByLabel(FDataTableTutorialPageData& OutData, FName TargetLabel, bool LogEnable);
    bool GetTutorialPageRowDataByID(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FDataTableTutorialPageData& OutData, int32 TargetID, bool LogEnable);
    bool GetTutorialListRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetTutorialListRowDataByLabel_RC(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FDataTableTutorialList& OutData, FName TargetLabel, bool LogEnable);
    bool GetTutorialListRowDataByLabel(FDataTableTutorialList& OutData, FName TargetLabel, bool LogEnable);
    bool GetTutorialListRowDataByID(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FDataTableTutorialList& OutData, int32 TargetID, bool LogEnable);
    bool GetTutorialFlagPartRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetTutorialFlagPartByID(FTutorialFlagPart& OutData, int32 ID);
    bool GetTutorialFlagPart(FTutorialFlagPart& OutData, FName Label);
    void GetOpenedTutorialFlagPart(TArray<FName>& OutNames, bool CheckCharaSort);
    bool Debug_GetShowAllList();
}; // Size: 0x28

class UTutorialSaveDataUtil : public USaveDataUtilBase
{

    void SetTutorialListFlagFromLabel(FName FlagPartLabel, bool Flag);
    void SetTutorialListFlag(ETUTORIAL_TYPE Type, bool Flag);
    void SetOpenedTutorialFromLabel(FName FlagPartLabel, bool Flag);
    void SetOpenedTutorial(ETUTORIAL_TYPE Type, bool Flag);
    void SetCanDisplayBranchMainStory(int32 CharacterID, bool bDisplay);
    bool IsViewTutorialListFromLabel(FName FlagPartLabel);
    bool IsViewTutorialList(ETUTORIAL_TYPE Type);
    bool IsOpenedTutorial(ETUTORIAL_TYPE Type);
    bool CanDisplayBranchMainStory(int32 CharacterID);
}; // Size: 0x28

class UTutorialStateData : public UStateDataBase
{
}; // Size: 0x58

class UUFieldCommandWidgetFollowBase : public UFieldCommandWidgetBase
{

    bool OpenSwapDialog();
    bool OpenReleaseDialog();
    bool OpenFollowDialog();
    bool OpenFixedFollowNPCReleaseDialog();
    bool OpenFixedFollowNPCDialog();
    bool OpenFailedDialog();
    void GetDialogInput(int32& DialogInput);
    bool CloseDialog();
}; // Size: 0x360

class UUIEventBackgroundFadeBase : public UKSUserWidgetBase
{
    EINNER_SEQUENCE InnerSeq;                                                         // 0x0358 (size: 0x1)
    float EndTime;                                                                    // 0x035C (size: 0x4)
    float UpdateTime;                                                                 // 0x0360 (size: 0x4)

    bool TickInternal(float DeltaTime);
    bool StartFadeOut(FName ResourceLabel, float Time, FLinearColor BaseColor);
    bool StartFadeIn(float Time);
    void SetFadeMaterialParam(FLinearColor Color, FName ResourceLabel);
    void Reset();
    bool IsFadeOutFinish();
    bool IsFadeInFinish();
    EINNER_SEQUENCE GetInnerSquence();
    bool EndFadeOut();
    bool EndFadeIn();
}; // Size: 0x368

class UUIFlashbackBase : public UKSUserWidgetBase
{
    TArray<FName> LabelList;                                                          // 0x0358 (size: 0x10)
    EFlashbackSequence SeqFlashback;                                                  // 0x0368 (size: 0x1)
    float EndTime;                                                                    // 0x036C (size: 0x4)
    float UpdateTime;                                                                 // 0x0370 (size: 0x4)

    bool TickInternal(float DeltaTime);
    bool Start(FName strName, float Time);
    void ResetParam();
    void Reset();
    bool LoadStart();
    bool IsInit();
    bool IsAnimFinish();
    bool InitFlashback(float Alpha, class UTexture2D* Texture, FLinearColor BackColor);
    EFlashbackSequence GetFlashbackSeq();
    bool Finish(float Time);
    bool CheckResourceData(FName ResorceLabel);
    bool AddImage(FName ResourceName);
}; // Size: 0x378

class UUIPartnerSelectBase : public UKSUserWidgetBase
{
    int32 m_PartnerID;                                                                // 0x0358 (size: 0x4)

    int32 GetPartnerID();
}; // Size: 0x360

class UUITutorialBase : public UKSUserWidgetBase
{

    bool OpenTutorial(const TArray<FDataTableTutorialPageData>& TopPageData, ETUTORIAL_TYPE TutorialType, bool IsEndCard, bool IsEpilouge);
    bool ForceTutorialClose();
}; // Size: 0x358

class UUITutorialTemplateBase : public UUserWidget
{
    class UWidgetAnimation* FocusAnimation;                                           // 0x0260 (size: 0x8)
    class UWidgetAnimation* OutFocusAnimation;                                        // 0x0268 (size: 0x8)
    TArray<class UAcqImage*> PageImage;                                               // 0x0270 (size: 0x10)
    TArray<class UKSTextBlock*> PageText;                                             // 0x0280 (size: 0x10)
    TArray<class UWidget*> VisibleList;                                               // 0x0290 (size: 0x10)

    void SetVisibleList(ESlateVisibility Visible, int32 Index);
    void SetUIFocus(bool Focus, bool Fast);
    void SetPageText(FName TextLabel, int32 TextID);
    void SetPageImage(class UTexture2D* SetTexture, int32 TextID);
    void RefreshImage();
    void RefleshText();
    bool GetUseBackGround();
    int32 GetTemplateType();
    void CheckReplaceText(const FDataTableTutorialPageData PageData);
}; // Size: 0x2A0

class UUIWidgetTableUtility : public UBlueprintFunctionLibrary
{

    void GetWidgetDataFromName(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FUIWidgetReferenceData& OutWidgetData, FName Label);
}; // Size: 0x28

class UVibrationDataTableUtil : public UDataTableUtilityBase
{

    bool GetAllPs5VibrationDataRowNames(TArray<FName>& OutRowNames);
    bool GetAllFfeVibrationDataRowNames(TArray<FName>& OutRowNames);
}; // Size: 0x28

class UVibrationStatics : public UBlueprintFunctionLibrary
{

    void UnloadVibration();
    bool StopVibration();
    bool PlayVibrationByLabel(FName vibLabel, float Power, bool Loop, int32 LoopInterval);
    bool PlayVibration2ByLabel(FName vibLabel, EVibrationPower Power, bool Loop, int32 LoopInterval);
    bool LoadVibration(FString PathName);
}; // Size: 0x28

class UWeakSystemComponent : public UActorComponent
{
    class ABattleCharacterBase* m_cOwnerPlayer;                                       // 0x00B0 (size: 0x8)

}; // Size: 0xB8

class UWeaponMasterEventDbUtil : public UDataTableUtilityBase
{

    bool GetWeaponMasterEventLabel(FName& outEventLabel, const FName& RowName);
    bool GetWeaponMasterEventDataByRowName(FWeaponMasterEventDataBase& OutData, const FName& RowName);
    bool GetWeaponMasterDialogTextLabel(FName& outTextLabel, const FName& RowName);
}; // Size: 0x28

class UWidgetTemporaryHiddenComponent : public UActorComponent
{
    class AKSUIManager* m_UiManager;                                                  // 0x00B0 (size: 0x8)

    void TurnOffTemporaryHiddenFlag(EWIDGET_TEMPORARY_HIDE_USER hideUser);
    void Setup(class AKSUIManager* uiManager);
    void ResetAllHiddenFlag();
    void OnStartBattle(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void OnEndBattle(ENOTICE_TYPE eNoticeType, const FNoticeArgs& NoticeArgs);
    void HideWidgetTemporary(bool isHide, EWIDGET_TEMPORARY_HIDE_USER hideUser);
}; // Size: 0x108

class UWorldMapAreaLabelBase : public UAcqUserWidget
{
    bool IsOpenning;                                                                  // 0x02C0 (size: 0x1)

    FVector2D GetPosition();
    FVector2D GetOverlapArea();
    bool GetIsOpenning();
}; // Size: 0x2C8

class UWorldMapCursorBase : public UAcqUserWidget
{
    bool m_IsSnapping;                                                                // 0x02C0 (size: 0x1)
    class UImage* CursorImage;                                                        // 0x02C8 (size: 0x8)
    FVector2D m_CursorPositionLimit;                                                  // 0x02D0 (size: 0x8)
    FVector2D m_FastRotaionLine;                                                      // 0x02D8 (size: 0x8)
    FVector2D m_SnapTargetPos;                                                        // 0x02E0 (size: 0x8)
    FVector2D m_SnapStartPos;                                                         // 0x02E8 (size: 0x8)
    float m_SnapDurationTime;                                                         // 0x02F0 (size: 0x4)
    float m_SnapElapseTime;                                                           // 0x02F4 (size: 0x4)

    bool UpdateSnap(float DeltaTime, FVector2D& outCouldNotMoveValue);
    void StartSnap(FVector2D SnapTargetPos, float SnapDuration);
    FVector2D SnapInterpolation(const FVector2D& Start, const FVector2D& End, float Alpha);
    FVector2D SetPosition(const FVector2D& newPos, bool keepDirection);
    void SetFastRotaionLinet(const FVector2D& FastRotaionLine);
    void SetCursorPositionLimit(const FVector2D& CursorPositionLimit);
    void OverrideSnapPosition(const FVector2D& newCursorPos, const FVector2D& newTargetPos);
    FVector2D MoveSursorToCenter();
    FVector2D GetPosition();
    void CancelSnap();
    FVector2D AddCursorPosition(const FVector2D& deltaPos);
}; // Size: 0x2F8

class UWorldMapDarkAreaEffectParamUtil : public UDataTableUtilityBase
{
}; // Size: 0x28

class UWorldMapFunction : public UBlueprintFunctionLibrary
{

    float RoundByDigit(float A, int32 Digit);
    FRotator RotatorTo360(const FRotator& rot);
    FVector2D LerpVector2D(const FVector2D& Start, const FVector2D& End, const float& Alpha);
    FFrameTime LerpFrameTime(const FFrameTime& Start, const FFrameTime& End, const float& Alpha);
    bool IsVisitedLocation(class UObject* WorldContextObject, const FWorldMapTable& WorldMapData);
    bool IsCurrentLocation(const FWorldMapTable& WorldMapData);
    FFrameTime GetMarkedFrameNumberByLabel(const class UMovieSceneSequence* MovieSceneSequence, FString InLabel, bool& IsFound, float& AsSeconds);
    void Debug_SetIsFlatEarthMode(bool Val);
    void Debug_SetIsDrawDebugLine(bool Val);
    bool Debug_GetIsFlatEarthMode();
    bool Debug_GetIsDrawDebugLine();
    bool ConvertWorldPosToWidgetPosForZoom(class UObject* WorldContextObject, const FVector& WorldPos, FVector2D& outWidgetPos);
    bool ConvertWorldPosToWidgetPosForIcon(class UObject* WorldContextObject, const FVector& WorldPos, FVector2D& outWidgetPos);
    bool ConvertWidgetPosToWorldPosOnWorldMapForZoom(class UObject* WorldContextObject, const FVector2D& WidgetPos, FVector& outWorldPos, bool IsDebugDraw);
    bool CanDisplayLocation(class UObject* WorldContextObject, const FWorldMapTable& WorldMapData);
}; // Size: 0x28

class UWorldMapIconBase : public UAcqUserWidget
{
    FWorldMapTable m_WorldMapData;                                                    // 0x02C0 (size: 0x90)
    FName m_WorldMapDataLabel;                                                        // 0x0350 (size: 0x8)
    TArray<int32> m_GuildIds;                                                         // 0x0358 (size: 0x10)
    bool m_IsCurrentLocation;                                                         // 0x0368 (size: 0x1)
    bool m_IsDestinationLocation;                                                     // 0x0369 (size: 0x1)
    bool m_IsExistsGuild;                                                             // 0x036A (size: 0x1)
    TArray<FWorldMapDestinationData> m_OccurringStoryList;                            // 0x0370 (size: 0x10)
    bool m_IsSelecting;                                                               // 0x0380 (size: 0x1)
    bool m_IsPlayingAnimation;                                                        // 0x0381 (size: 0x1)
    float m_StartOpacity;                                                             // 0x0384 (size: 0x4)
    float m_FinishOpacity;                                                            // 0x0388 (size: 0x4)
    float m_AnimDurationTime;                                                         // 0x038C (size: 0x4)
    float m_AnimElapseTime;                                                           // 0x0390 (size: 0x4)
    TArray<class UWorldMapStoryInfoDisplayBase*> m_StoryInfoDisplays;                 // 0x0398 (size: 0x10)
    class UVerticalBox* m_StoryInfoVerticalBox;                                       // 0x03A8 (size: 0x8)

    bool UpdateVisibility(bool IsInScreen);
    void UpdateAnimation(float DeltaTime);
    void StartStoryInfoDisplayAnimIfNeeded(EWorldMapZoomType ZoomType, bool isFast);
    void StartIcconVisibilityTransitionByZoomType(EWorldMapZoomType ZoomType);
    bool StartFocus(bool IsFocus, bool isFast);
    bool StartEnable(bool isFast);
    bool StartDisable(bool isFast);
    void SetWorldMapData(FName Label);
    void SetupStoryInfoDisplays(const TArray<FWorldMapDestinationData>& StoryList);
    void SetupIconImage();
    void SetupIconColor();
    void SetupIcon();
    FVector2D SetPosition(const FVector2D& newPos);
    void SetIsSelecting(bool IsSelecting);
    void SetIsDestinationLocation(bool IsDestinationLocation);
    void ScrubAnimation(float ElapsedTime);
    bool IsVisitedGuild();
    bool IsVisited();
    bool IsDisplayableIcon(EWorldMapZoomType ZoomType);
    bool InitVisibility(EWorldMapZoomType ZoomType);
    void InitIsFocusOfStoryInfoDisplays(EWorldMapZoomType ZoomType);
    float IconAnimInterpolation(const float& Start, const float& End, float Alpha);
    void HideAllStoryInfoWidget();
    FWorldMapIconData GetWorldMapIconData();
    FName GetWorldMapDataLabel();
    FWorldMapTable GetWorldMapData();
    TArray<class UWorldMapStoryInfoDisplayBase*> GetVisibleStoryInfoWidget();
    FVector2D GetSnapPosition();
    FVector2D GetPosition();
    FVector2D GetOverlapArea();
    bool GetIsSelecting();
    bool GetIsPlayeingAnimation();
    bool GetIsOnlyOccurringMerchantSubStory();
    bool GetIsOccurringStoryByCategory(EMAIN_STORY_CATEGORY StoryCategory);
    bool GetIsOccurringMainStory();
    bool GetIsOccurringAnyStory();
    bool GetIsDestinationLocation();
    bool GetIsCurrentLocation();
}; // Size: 0x3B0

class UWorldMapIconDataUtility : public UDataTableUtilityBase
{

    void NotifyWorldMapIconDb(FName dbName, EDBNoticeType notice);
    FName GetWorldMapIconTextureLabel(EWorldMapIconType icnoType);
    FWorldMapIconData GetWorldMapIconDataByType(EWorldMapIconType icnoType);
    bool GetIsWorldMapIconVisibe(EWorldMapIconType icnoType, EWorldMapZoomType ZoomType);
}; // Size: 0x28

class UWorldMapPivotComponent : public UWorldMapPivotComponentBase
{
}; // Size: 0x480

class UWorldMapPivotComponentBase : public UArrowComponent
{
    float PivotLength;                                                                // 0x0468 (size: 0x4)
    float PivotRadius;                                                                // 0x046C (size: 0x4)
    FName WorldMapLabel;                                                              // 0x0470 (size: 0x8)
    EWorldMapMode WorldMapMode;                                                       // 0x0478 (size: 0x1)

    void SetWorldMapMode(EWorldMapMode Mode);
    void OnOpenWorldMap();
    FName GetWorldMapLabel();
    FVector CalcWorldPositionOnGlobe();
    bool CalcScreenPositionOnMap(FVector2D& outScreenPos);
}; // Size: 0x480

class UWorldMapPivotComponentV2 : public UWorldMapPivotComponentBase
{
}; // Size: 0x480

class UWorldMapShipPivotComponentV2 : public UWorldMapPivotComponentV2
{

    void UpdateShipPosition();
}; // Size: 0x480

class UWorldMapStoryInfoDisplayBase : public UAcqUserWidget
{
    bool m_IsFocus;                                                                   // 0x02C0 (size: 0x1)
    bool m_IsForceHidden;                                                             // 0x02C1 (size: 0x1)
    class UWorldMapStoryInfoText* m_StoryInfoTextWidget;                              // 0x02C8 (size: 0x8)

    void Setup(const FWorldMapDestinationData& StoryInfo);
    void SetForceHidden(bool isHidden);
    void ScrubAnimation(float ElapsedTime);
    void InitIsFocus(EWorldMapZoomType ZoomType);
    bool GetIsForceHidden();
    bool GetIsFocus();
    void ChangeUIFocus(bool IsFocus, bool isFast);
}; // Size: 0x2D0

class UWorldMapStoryInfoText : public UAcqUserWidget
{
    bool m_IsPlayingTextLoopAnim;                                                     // 0x02C0 (size: 0x1)
    class UWidgetAnimation* m_LoopAnim;                                               // 0x02C8 (size: 0x8)

    void SetIsPlayingTextLoopAnim(bool Val);
    void ScrubAnimation(float ElapsedTime);
}; // Size: 0x2D0

class UWorldMapTableUtility : public UDataTableUtilityBase
{

    void NotifyWorldMapDb(FName dbName, EDBNoticeType notice);
    bool GetWorldMapTableRowNames(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, TArray<FName>& OutRowNames);
    bool GetWorldMapRowDataByLabel(TEnumAsByte<EBPFuncReturnCode::Type>& returnCode, FWorldMapTable& OutData, FName TargetLabel, bool LogEnable);
    FName GetWorldMapLabelByLevelLabel(FName levelLabel);
}; // Size: 0x28

class UWorldMapWidgetBase : public UAcqUserWidget
{
    FWorldMapWidgetBaseOnOpenBeginEvent OnOpenBeginEvent;                             // 0x02C0 (size: 0x10)
    void WorldMapEvent();
    FWorldMapWidgetBaseOnOpenEndEvent OnOpenEndEvent;                                 // 0x02D0 (size: 0x10)
    void WorldMapEvent();
    FWorldMapWidgetBaseOnCloseBeginEvent OnCloseBeginEvent;                           // 0x02E0 (size: 0x10)
    void WorldMapEvent();
    FWorldMapWidgetBaseOnCloseEndEvent OnCloseEndEvent;                               // 0x02F0 (size: 0x10)
    void WorldMapEvent();
    EWorldMapMode WorldMapMode;                                                       // 0x0300 (size: 0x1)
    EWorldMapState m_WorldMapState;                                                   // 0x0301 (size: 0x1)
    EWorldMapZoomType m_InitZoomType;                                                 // 0x0302 (size: 0x1)
    TMap<class FName, class UWorldMapIconBase*> m_IconWidgets;                        // 0x0308 (size: 0x50)
    TMap<class FName, class FVectorsToIcon> m_VectorsToIcon;                          // 0x0358 (size: 0x50)
    class AWorldMapActorBase* m_WorldMapActor;                                        // 0x03A8 (size: 0x8)
    class AWorldMapFastTraveler* m_WorldMapFastTraveler;                              // 0x03B0 (size: 0x8)
    bool m_IsBackGroundMode;                                                          // 0x03B8 (size: 0x1)
    float m_ElapsedTime;                                                              // 0x03BC (size: 0x4)
    FVector2D m_CullingMargin;                                                        // 0x03C0 (size: 0x8)
    class UWorldMapCursorBase* m_CursorWidget;                                        // 0x03C8 (size: 0x8)
    class UWorldMapAreaLabelBase* m_AreaLabelWidget;                                  // 0x03D0 (size: 0x8)
    class UWorldMapIconBase* m_SelectedIcon;                                          // 0x03D8 (size: 0x8)
    class UWorldMapIconBase* m_LastActiveSelectedIcon;                                // 0x03E0 (size: 0x8)
    FVector2D m_CursorInputValue;                                                     // 0x03E8 (size: 0x8)
    FVector2D m_PrevCursorInputValue;                                                 // 0x03F0 (size: 0x8)
    FVector2D m_EasedCursorInputValue;                                                // 0x03F8 (size: 0x8)
    float m_CursorMoveTime;                                                           // 0x0400 (size: 0x4)
    float m_CursorStartMovingEaseDuration;                                            // 0x0404 (size: 0x4)
    class UCurveFloat* m_CursorStartMovingEaseCurve;                                  // 0x0408 (size: 0x8)
    float m_CursorStopTime;                                                           // 0x0410 (size: 0x4)
    float m_CursorStopMovingEaseDuration;                                             // 0x0414 (size: 0x4)
    class UCurveFloat* m_CursorStopMovingEaseCurve;                                   // 0x0418 (size: 0x8)
    FVector2D m_LastMoveCursorVector;                                                 // 0x0420 (size: 0x8)
    float m_FastRotateTime;                                                           // 0x0428 (size: 0x4)
    float m_StartFastRotationEaseDuration;                                            // 0x042C (size: 0x4)
    class UCurveFloat* m_StartFastRotationEaseCurve;                                  // 0x0430 (size: 0x8)
    float m_NonFastRotateTime;                                                        // 0x0438 (size: 0x4)
    float m_StartNonFastRotationEaseDuration;                                         // 0x043C (size: 0x4)
    class UCurveFloat* m_StartNonFastRotationEaseCurve;                               // 0x0440 (size: 0x8)
    class UCurveFloat* m_AutoRotateEaseCurve;                                         // 0x0448 (size: 0x8)

    void WorldMapEvent__DelegateSignature();
    void UpdateVectorsToIcon();
    void UpdateOverlapWidgetVisibility();
    void UpdateMapIcon();
    void UpdateAnimation();
    void SetWorldMapState(EWorldMapState NewState);
    void SetupMapIconStoryInfo();
    void OutFocusWorldMap(bool isFast);
    void OpenWorldMapInternal();
    void OpenWorldMap();
    void OnOpened();
    void OnClosed();
    bool IsOpening();
    bool IsClosing();
    bool IsClosed();
    FVector2D GetCenterPosition();
    void FocusWorldMap(bool isFast);
    bool FindNearestIcon(class UWorldMapIconBase*& outIcon, float& outLength);
    bool FindCurrentLocationWorldMapLabel(FName& WorldMapLabel);
    void FastCloseWorldMap();
    void CloseWorldMapInternal();
    void CloseWorldMap();
    void CheckOpenTutorial();
}; // Size: 0x450

#endif
