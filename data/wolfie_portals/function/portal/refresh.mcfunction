execute unless block ~ ~ ~ minecraft:lodestone run return run function wolfie_portals:portal/remove
execute unless data entity @s {data:{version:2}} run function wolfie_portals:portal/migrate
data modify storage wolfie_portals:tmp old_shape set from entity @s data.shape
data modify entity @s data.valid set value 0
data modify entity @s data.shape set value {valid:0}
execute if block ~ ~1 ~ #wolfie_portals:air run function wolfie_portals:shape/x/start
execute unless data entity @s {data:{valid:1}} if block ~ ~1 ~ #wolfie_portals:air run function wolfie_portals:shape/z/start
execute store success score #changed wp run data modify storage wolfie_portals:tmp old_shape set from entity @s data.shape
execute if score #changed wp matches 1 run data remove entity @s data.scan
execute if score #changed wp matches 1 run function wolfie_portals:panel/rebuild
function wolfie_portals:portal/save with entity @s data
