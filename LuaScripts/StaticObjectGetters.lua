---@diagnostic disable: undefined-global
-- only get it once, lazy instantiation
-- These variables should only be used in this file use the respective Get function instead
DefaultTreasureBox = nil
SaveGame = nil
SaveDataManager = nil
LevelManager = nil
DialogManager = nil
TextUtil = nil
ItemFunction = nil
GameTextDB = nil

-- TreasureBoxBP.hpp
-- Returns the default Chest Object
-- ATreasureBoxBP_C::AKSObjectBP_C
function GetDefaultChest()
    if(DefaultTreasureBox==nil)then
        DefaultTreasureBox = StaticFindObject("/Game/Environment/BP/Object/TreasureBoxBP.Default__TreasureBoxBP_C")
    end
    return DefaultTreasureBox
end
-- Returns all Chests that are loaded
function GetAllChests()
    return FindAllOf("TreasureBoxBP_C")
end

-- Majesty.hpp
-- Returns SaveGame Object
-- UMJSaveData:::SaveGame
function GetSaveGame()
    if(SaveGame==nil)then
        SaveGame = FindFirstOf("KSSaveGameBP_C")
    end
    return SaveGame
end
function GetItemFunction()
    if(ItemFunction==nil)then
        ItemFunction = StaticFindObject("/Game/Item/BP/ItemFunction.Default__ItemFunction_C")
    end
    return ItemFunction
end
-- Majesty.hpp
-- Returns SaveDataManager
-- AKSSaveDataManager::AAcqManagerBase
function GetSaveManager()
    -- theres only one loaded but has different object name on runtime
    if(SaveDataManager==nil)then
        SaveDataManager = FindFirstOf("KSSaveDataManagerBP_C")
    end
    return SaveDataManager
end
-- Majest.hpp
-- Returns LevelManager_Others
-- ALevelManager_Others::AActor
function GetLevelManager()
    if(LevelManager==nil) then 
        LevelManager = FindFirstOf("LevelManager_Others_C")
    end
    return LevelManager
end
function GetDialogManager()
    if(DialogManager==nil)then
        DialogManager = FindFirstOf("BPC_DialogManager_C")
    end
end
-- Majesty.hpp
-- Returns default TextDataUtil
-- UTextDataUtility::UDataTableUtilityBase
function GetTextUtils()
    if(TextUtil==nil) then
        StaticFindObject("/Script/Majesty.Default__TextDataUtility")
    end
    return TextUtil
end

-- GameTextDB
-- Rows of: FGameTextInfoData
-- int32 ID;   
-- FText Text;
function GetGameTextDB()
    local TextUtils = GetTextUtils()
    if(GameTextDB==nil and TextUtils~=nil) then
        GameTextDB = TextUtils:GetGameTextDB(1) -- EKSLanguage:eEN = 1
    end
    return GameTextDB
end
