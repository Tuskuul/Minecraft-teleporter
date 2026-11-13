data modify storage wolfie_portals:tmp lease_queue set from storage wolfie_portals:db leases
data modify storage wolfie_portals:db leases set value []
execute if data storage wolfie_portals:tmp lease_queue[0] run function wolfie_portals:lease/clear_all
execute in minecraft:overworld run kill @e[type=minecraft:interaction,tag=wp.panel]
execute in minecraft:the_nether run kill @e[type=minecraft:interaction,tag=wp.panel]
execute in minecraft:the_end run kill @e[type=minecraft:interaction,tag=wp.panel]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=wp.core]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=wp.core]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=wp.core]
data remove storage wolfie_portals:db portals
data remove storage wolfie_portals:db jobs
data remove storage wolfie_portals:db sessions
data modify storage wolfie_portals:db home set value 0
tellraw @a {text:"Loaded portal markers removed. Remove the pack now. Visit remote portal chunks before running this for full removal.",color:"yellow"}
