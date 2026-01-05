---@diagnostic disable: undefined-global
---@diagnostic disable: undefined-field
-- only get it once, lazy instantiation
-- These variables should only be used in this file use the respective Get function instead
DefaultTreasureBox_ = nil
---@class UMJSaveData
SaveGame_ = nil
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
    if(SaveGame_==nil)then
        SaveGame_ = FindFirstOf("KSSaveGameBP_C")
    end
    return SaveGame_
end
function GetItemFunction()
    if(ItemFunction_==nil)then
        ItemFunction_ = StaticFindObject("/Game/Item/BP/ItemFunction.Default__ItemFunction_C")
    end
    return ItemFunction_
end
function GetItemDataUtility()
    if(ItemDataUtil_ == nil)then
        ItemDataUtil_= StaticFindObject("/Script/Majesty.Default__ItemDataUtility")
    end
    return ItemDataUtil_
end
function GetCharcterSaveDataUtil()
    if (CharacterSaveDataUtil_ == nil) then
        CharacterSaveDataUtil_  = StaticFindObject("/Script/Majesty.Default__CharacterSaveDataUtil")
    end
    return CharacterSaveDataUtil_
end
-- Majesty.hpp
-- Returns SaveDataManager
-- AKSSaveDataManager::AAcqManagerBase
function GetSaveManager()
    -- theres only one loaded but has different object name on runtime
    if(SaveDataManager_==nil)then
        SaveDataManager_ = FindFirstOf("KSSaveDataManagerBP_C")
    end
    return SaveDataManager_
end
-- Majesty.hpp
-- Returns LevelManager_Others
-- ALevelManager_Others::AActor
function GetLevelManager()
    if(LevelManager_==nil) then 
        LevelManager_ = FindFirstOf("LevelManager_Others_C")
    end
    return LevelManager_
end

function GetSaveDataUtil() 
    if(SaveDataUtil_==nil)then
        SaveDataUtil_ = StaticFindObject("/Script/Majesty.Default__LevelSaveDataUtil")
    end
    return SaveDataUtil_
end

function GetStoryDataUtil() 
    if(StoryDataUtil_==nil)then
        StoryDataUtil_ = StaticFindObject("/Script/Majesty.Default__StoryDataUtility")
    end
    return StoryDataUtil_
end

function GetSaveStoryDataUtil() 
    if(SaveStoryUtil_==nil)then
        SaveStoryUtil_ = StaticFindObject("/Script/Majesty.Default__StorySaveDataUtil")
    end
    return SaveStoryUtil_
end

function GetDialogManager()
    if(DialogManager_==nil)then
        DialogManager_ = FindFirstOf("BPC_DialogManager_C")
    end
    return DialogManager_
end
-- Majesty.hpp
-- Returns default TextDataUtil
-- UTextDataUtility::UDataTableUtilityBase
function GetTextUtils()
    if(TextUtil_==nil) then
        TextUtil_ = StaticFindObject("/Script/Majesty.Default__TextDataUtility")
    end
    return TextUtil_
end
function GetLibDialog()
    if(LibDialog_ == nil)then
        LibDialog_ = StaticFindObject("/Script/Majesty.Default__LibDialog")
    end
    return LibDialog_
end
-- GameTextDB
-- Rows of: FGameTextInfoData
-- int32 ID;   
-- FText Text;
function GetGameTextDB()
    local TextUtils = GetTextUtils()
    if(GameTextDB_==nil and TextUtils~=nil) then
        GameTextDB_ = TextUtils:GetGameTextDB(1) -- EKSLanguage:eEN = 1
    end
    return GameTextDB_
end


--function GetManagerDB()
--    print("getting database manager")
--    if(DatabaseManager_==nil)then
--        DatabaseManager_ = FindFirstOf("DatabaseManager")
--    end
--    return DatabaseManager_
--end

function GetItemDB()
    if(ItemDB_==nil)then
        ItemDB_ = StaticFindObject("/Game/Item/Database/ItemDB.ItemDB")
    end
    return ItemDB_
end