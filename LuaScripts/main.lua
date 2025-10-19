require "item_manager"
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
RegisterKeyBind(Key.K, function ()
    KillAllEnemy()
end)
--RegisterConsoleCommandHandler("connect", callback)

LoopAsync(16, function()
   OpenAllChets()
   ChestPopupLoop()
end)

