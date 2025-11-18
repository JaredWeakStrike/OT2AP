require "ItemManager"
require "StaticObjectGetters"
require "DatabaseInfo"
require "QOL"
require "archipelago"

RegisterKeyBind(Key.V,function()
    GoNormalSpeed()
end)
RegisterKeyBind(Key.B,function()
   --OnItemRecieve("Shady Inspiriting Plum","Player1")
   --OnItemRecieve("Desert Spear","Player1")
   --OnItemRecieve("Frost Axe","Player2")
   --OnItemRecieve("Vest of Joy","Player3")
    GoZoom()
    
end)
RegisterKeyBind(Key.L,function()
   --OnItemRecieve("Shady Inspiriting Plum","Player1")
   --OnItemRecieve("Desert Spear","Player1")
   --OnItemRecieve("Frost Axe","Player2")
   --OnItemRecieve("Vest of Joy","Player3")
    UnlockAllWarps()
    
end)
RegisterKeyBind(Key.P, function()
    MaxLevel()
    OnItemRecieve("Spurning Ribbon","debug")
end)
RegisterKeyBind(Key.K, function ()
    KillAllEnemy()
end)

RegisterKeyBind(Key.O,function ()
    OpenAllChets()
end)

RegisterKeyBind(Key.J, function()
    StartStoryFlag()
    print("we have started story flag")
end)
--RegisterConsoleCommandHandler("connect", callback)

--LoopAsync(16, function()
--   OpenAllChets()
--   ChestPopupLoop()
--end)

