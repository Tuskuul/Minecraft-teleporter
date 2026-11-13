data modify entity @s data.valid set value 0
data modify entity @s data.shape set value {valid:0}
data remove entity @s data.scan
function wolfie_portals:panel/clear with entity @s data
function wolfie_portals:portal/save with entity @s data
scoreboard players set @s wp.poll 1
