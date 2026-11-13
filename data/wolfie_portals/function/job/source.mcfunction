scoreboard players set #near wp 0
function wolfie_portals:ui/near with storage wolfie_portals:tmp job.source
execute unless score #near wp matches 1 run return 0
$execute in $(dim) positioned $(x).0 $(y).0 $(z).0 positioned ~0.5 ~ ~0.5 as @e[type=minecraft:marker,tag=wp.core,distance=..0.1,limit=1] at @s run function wolfie_portals:portal/refresh
data remove storage wolfie_portals:tmp check
$data modify storage wolfie_portals:tmp check set from storage wolfie_portals:db portals[{id:$(id)}]
execute unless data storage wolfie_portals:tmp check{valid:1} run return 0
function wolfie_portals:job/go with storage wolfie_portals:tmp dest
