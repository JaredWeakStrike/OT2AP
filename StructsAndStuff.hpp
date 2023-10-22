using namespace RC;
using namespace RC::Unreal;
namespace Majesty {
    enum class EPlayableCharacterID :uint8_t {
        eNONE = 0,
        eFENCER = 1,
        eHUNTER = 2,
        eALCHEMIST = 3,
        eMERCHANT = 4,
        ePRIEST = 5,
        ePROFESSOR = 6,
        eTHIEF = 7,
        eDANCER = 8,
        eGUEST_000 = 9,
        eGUEST_001 = 10,
        eGUEST_002 = 11,
        eGUEST_003 = 12,
        eGUEST_004 = 13,
        eGUEST_005 = 14,
        eGUEST_006 = 15,
        eGUEST_007 = 16,
        eGUEST_008 = 17,
        eGUEST_009 = 18,
        eGUEST_010 = 19,
        eGUEST_011 = 20,
        eGUEST_012 = 21,
        eGUEST_013 = 22,
        eGUEST_014 = 23,
        eGUEST_015 = 24,
        eGUEST_016 = 25,
        eGUEST_017 = 26,
        eGUEST_018 = 27,
        eGUEST_019 = 28,
        eGUEST_020 = 29,
        eGUEST_021 = 30,
        eGUEST_022 = 31,
        eGUEST_023 = 32,
        eGUEST_024 = 33,
        eGUEST_025 = 34,
        eMAX = 35,
        EPlayableCharacterID_MAX = 36,
    };
    struct FPlayerParty
    {
        TArray<int32> MainMemberID;                                                       // 0x0000 (size: 0x10)
        TArray<int32> SubMemberID;                                                        // 0x0010 (size: 0x10)
        FVector CameraLockPos;                                                            // 0x0020 (size: 0xC)
        int32 LastBgmID;                                                                  // 0x002C (size: 0x4)
        int32 levelId;                                                                    // 0x0030 (size: 0x4)
        FVector Position;                                                                 // 0x0034 (size: 0xC)
        uint8 Dir;                                                                        // 0x0040 (size: 0x1)

    };
    struct FMainStorySaveData
    {
        int32 StoryID;                                                                    // 0x0000 (size: 0x4)
        int32 CurrentTaskID;                                                              // 0x0004 (size: 0x4)
        int32 State;                                                                      // 0x0008 (size: 0x4)
        bool ConfirmedFlag;                                                               // 0x000C (size: 0x1)

    };
    struct FEventData
    {
        int32 Command;                                                                    // 0x0008 (size: 0x4)
        int32 Target;                                                                     // 0x000C (size: 0x4)
        FVector Pos;                                                                      // 0x0010 (size: 0xC)
        int32 Dir;                                                                        // 0x001C (size: 0x4)
        FString Text;                                                                     // 0x0020 (size: 0x10)
        bool Async;                                                                       // 0x0030 (size: 0x1)
        TArray<FString> OptAry;                                                           // 0x0038 (size: 0x10)
    };
    enum class EKSCharacterDir {
        FRONT = 0,
        REAR = 1,
        LEFT = 2,
        RIGHT = 3,
        MAX_DIR = 4,
        EKSCharacterDir_MAX = 5,
    };
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
    };
    enum class EKSSaveSlotName {
        AUTO_SAVE = 0,
        SLOT_1 = 1,
        SLOT_2 = 2,
        SLOT_3 = 3,
        SLOT_4 = 4,
        SLOT_5 = 5,
        SLOT_6 = 6,
        SLOT_7 = 7,
        SLOT_8 = 8,
        SLOT_9 = 9,
        EKSSaveSlotName_MAX = 10,
    };
    struct FMapData
    {
        TArray<uint8> TreasureStateArray;                                                 // 0x0000 (size: 0x10)

    };
}