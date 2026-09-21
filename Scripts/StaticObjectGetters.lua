---@diagnostic disable: undefined-global
---@diagnostic disable: undefined-field
-- only get it once, lazy instantiation
-- These variables should only be used in this file use the respective Get function instead
DefaultTreasureBox_ = nil
---@class UMJSaveData
SaveGame_ = nil
---@class UMJSaveData[]
SaveGames_ = nil
---@class AKSSaveDataManager
SaveDataManager_ = nil
---@class ALevelManager_Others
LevelManager_ = nil
---@class ADialogManager
DialogManager_ = nil
---@class UTextDataUtility
TextUtil_ = nil
---@class UItemFunction_C
ItemFunction_ = nil
GameTextDB_ = nil
---@class UItemDataUtility
ItemDataUtil_ = nil
---@class ULevelSaveDataUtil
SaveDataUtil_ = nil
---@class UStoryDataUtility
StoryDataUtil_ = nil
---@class UStorySaveDataUtil
SaveStoryUtil_ = nil
---@class UCharacterSaveDataUtil
CharacterSaveDataUtil_ = nil
---@class ULibDialog
LibDialog_ = nil
---@class FItemData
ItemDB_ = nil
---@class UWBP_3DPlayerSelectWidget_C
PlayerSelectWidgets_ = nil
---@class UItemSaveDataUtil
ItemSaveDataUtil_ = nil
---@class KSPlayerControllerBP_C
PlayerController_ = nil

PlacementDataDB_ = nil

LevelSaveDataUtil_ = nil

MainStoryDB_ = nil

EventManager_ = nil

LevelManagerUtil_ = nil

LevelTriggerTable_ = nil

ReminiscenceUtility_ = nil

LibUI_ = nil

---@class ACharacterResourceManager : AAcqManagerBase
CharacterResourceManager_ = nil

PRINT_DEBUG_FLAG = false
function print_debug(text) 
    if PRINT_DEBUG_FLAG == true then
        print(text)
    end
end

-- TreasureBoxBP.hpp
-- Returns the default Chest Object
-- ATreasureBoxBP_C::AKSObjectBP_C
function GetDefaultChest()
    if(DefaultTreasureBox_==nil)then
        DefaultTreasureBox_ = StaticFindObject("/Game/Environment/BP/Object/TreasureBoxBP.Default__TreasureBoxBP_C")
    end
    return DefaultTreasureBox_
end
-- Returns all Chests that are loaded
---@return ATreasureBoxBP_C[]
function GetAllChests()
    local stuff = FindAllOf("TreasureBoxBP_C")
    ---@class ATreasureBoxBP_C[]
    return stuff
end

-- Majesty.hpp
-- Returns SaveGame Object
-- UMJSaveData:::SaveGame
function GetSaveGame()
    --if(SaveGame_==nil)then
    --    SaveGame_ = FindFirstOf("KSSaveGameBP_C")
    --end
    --return SaveGame_
    return GetSaveManager().SaveData
end

function RefreshSaveGame()
    SaveGame_ = FindFirstOf("KSSaveGameBP_C")
    return SaveGame_
end
function GetSaveGames()
    if(SaveGames_ == nil or not SaveGames_:IsValid())then
        SaveGames_ = FindAllOf("KSSaveGameBP_C")
    end
    return SaveGames_
end
function GetItemFunction()
    if(ItemFunction_ == nil or not ItemFunction_:IsValid())then
        ItemFunction_ = StaticFindObject("/Game/Item/BP/ItemFunction.Default__ItemFunction_C")
    end
    return ItemFunction_
end
function GetItemDataUtility()
    if(ItemDataUtil_ == nil or not ItemDataUtil_:IsValid())then
        ItemDataUtil_= StaticFindObject("/Script/Majesty.Default__ItemDataUtility")
    end
    return ItemDataUtil_
end
function GetCharcterSaveDataUtil()
    if (CharacterSaveDataUtil_ == nil or not CharacterSaveDataUtil_:IsValid()) then
        CharacterSaveDataUtil_  = StaticFindObject("/Script/Majesty.Default__CharacterSaveDataUtil")
    end
    return CharacterSaveDataUtil_
end
-- Majesty.hpp
-- Returns SaveDataManager
-- AKSSaveDataManager::AAcqManagerBase
function GetSaveManager()
    -- theres only one loaded but has different object name on runtime
    if(SaveDataManager_ == nil or not SaveDataManager_:IsValid())then
        SaveDataManager_ = FindFirstOf("KSSaveDataManagerBP_C")
    end
    return SaveDataManager_
end
-- Majesty.hpp
-- Returns LevelManager_Others
-- ALevelManager_Others::AActor
function GetLevelManager()
    if(LevelManager_ == nil or not LevelManager_:IsValid()) then 
        LevelManager_ = FindFirstOf("BPC_LevelManager_Others_C")
    end
    return LevelManager_
end
--BPC_LevelManager_Others_C /Game/Level/Persistent.Persistent:PersistentLevel.BPC_LevelManager_Others_C_2147482499
function GetSaveDataUtil() 
    if(SaveDataUtil_ == nil or not SaveDataUtil_:IsValid())then
        SaveDataUtil_ = StaticFindObject("/Script/Majesty.Default__LevelSaveDataUtil")
    end
    return SaveDataUtil_
end

function GetStoryDataUtil() 
    if(StoryDataUtil_ == nil or not StoryDataUtil_:IsValid())then
        StoryDataUtil_ = StaticFindObject("/Script/Majesty.Default__StoryDataUtility")
    end
    return StoryDataUtil_
end

function GetSaveStoryDataUtil() 
    if(SaveStoryUtil_ == nil or not SaveStoryUtil_:IsValid())then
        SaveStoryUtil_ = StaticFindObject("/Script/Majesty.Default__StorySaveDataUtil")
    end
    return SaveStoryUtil_
end

function GetItemSaveDataUtil()
    if (ItemSaveDataUtil_ == nil or not ItemSaveDataUtil_:IsValid()) then
        ItemSaveDataUtil_ = StaticFindObject("/Script/Majesty.Default__ItemSaveDataUtil")
    end
    return ItemSaveDataUtil_
end

function GetDialogManager()
    if(DialogManager_ == nil or not DialogManager_:IsValid())then
        DialogManager_ = FindFirstOf("BPC_DialogManager_C")
    end
    return DialogManager_
end
-- Majesty.hpp
-- Returns default TextDataUtil
-- UTextDataUtility::UDataTableUtilityBase
function GetTextUtils()
    if(TextUtil_ == nil or not TextUtil_:IsValid()) then
        TextUtil_ = StaticFindObject("/Script/Majesty.Default__TextDataUtility")
    end
    return TextUtil_
end

function GetLibDialog()
    if(LibDialog_ == nil or not LibDialog_:IsValid())then
        LibDialog_ = StaticFindObject("/Script/Majesty.Default__LibDialog")
    end
    return LibDialog_
end
-- GameTextDB
-- Rows of: FGameTextInfoData
-- int32 ID;   
-- FText Text;
function GetGameTextDB()
    --local TextUtils = GetTextUtils()
    if(GameTextDB_ == nil or not GameTextDB_:IsValid()) then
        --GameTextDB_ = TextUtils:GetGameTextDB(1) -- EKSLanguage:eEN = 1
        GameTextDB_ = StaticFindObject("/Game/GameText/Database/GameTextEN.GameTextEN")
    end
    return GameTextDB_
end

function GetPlacementDB()
    if (PlacementDataDB_ == nil or not PlacementDataDB_:IsValid())then
        PlacementDataDB_ = StaticFindObject("/Game/Placement/Database/PlacementData.PlacementData")
    end
    return PlacementDataDB_
end

function GetMainStoryDB()
    if (MainStoryDB_ == nil or not MainStoryDB_:IsValid())then
        MainStoryDB_ = StaticFindObject("/Game/Story/Database/MainStory.MainStory")
    end
    return MainStoryDB_
end
--function GetManagerDB()
--    print("getting database manager")
--    if(DatabaseManager_==nil)then
--        DatabaseManager_ = FindFirstOf("DatabaseManager")
--    end
--    return DatabaseManager_
--end

function GetEventManager()
    if (EventManager_ == nil or not EventManager_:IsValid()) then
        EventManager_ = FindFirstOf("EventManagerBP_C")
    end
    return EventManager_
end

function GetItemDB()
    if(ItemDB_ == nil or not ItemDB_:IsValid())then
        ItemDB_ = StaticFindObject("/Game/Item/Database/ItemDB.ItemDB")
    end
    return ItemDB_
end

function GetTitlePlayerIcons()
    if(PlayerSelectWidgets_ == nil or not PlayerSelectWidgets_:IsValid())then
        PlayerSelectWidgets_ = FindAllOf("WBP_3DPlayerSelectIcon_C")
    end
    return PlayerSelectWidgets_
end

function GetLevelSaveDataUtil()
    if(LevelSaveDataUtil_ == nil or not LevelSaveDataUtil_:IsValid())then
        LevelSaveDataUtil_ = StaticFindObject("/Script/Majesty.Default__LevelSaveDataUtil")
    end
    return LevelSaveDataUtil_
end

function GetLevelManagerUtil()
    if (LevelManagerUtil_ == nil or not LevelManagerUtil_:IsValid()) then
        LevelManagerUtil_ = StaticFindObject("/Script/Majesty.Default__LevelManagerUtility")
    end
    return LevelManagerUtil_
end

function GetReminiscenceUtility()
    if (ReminiscenceUtility_ == nil or not ReminiscenceUtility_:IsValid()) then
        ReminiscenceUtility_ = StaticFindObject("/Script/Majesty.Default__ReminiscenceUtility")
    end
    return ReminiscenceUtility_
end

function GetPlayerController()
    if(PlayerController_ == nil or not PlayerController_:IsValid()) then
        PlayerController_ = FindFirstOf("KSPlayerControllerBP_C")
    end
    return PlayerController_
end

function GetLevelTriggerTable()
    if (LevelTriggerTable_ == nil or not LevelTriggerTable_:IsValid()) then
        LevelTriggerTable_ = StaticFindObject("/Game/Level/Database/LevelTriggerTable.LevelTriggerTable")
    end
    return LevelTriggerTable_
end 

function GetLibUI()
    if (LibUI_ == nil or not LibUI_:IsValid()) then
        LibUI_ = StaticFindObject("/Script/Majesty.Default__LibUI")
    end
    return LibUI_
end 

function GetUIManager()
    if (UIManager_ == nil or not UIManager_:IsValid()) then
        UIManager_ = FindFirstOf("KSUIManager")
    end
    return UIManager_
end

function GetCharacterResourceManager()
    if (CharacterResourceManager_ == nil or not CharacterResourceManager_:IsValid()) then
        CharacterResourceManager_ = FindFirstOf("CharacterResourceManager")
    end
    return CharacterResourceManager_
end