tag @s remove wp.new
execute store result score #next wp run data get storage wolfie_portals:db next
scoreboard players add #next wp 1
scoreboard players operation #new wp = #next wp
execute store result storage wolfie_portals:db next int 1 run scoreboard players get #next wp
execute store result entity @s data.id int 1 run scoreboard players get #next wp
execute store result entity @s data.owner int 1 run scoreboard players get #owner wp
execute store result entity @s data.x int 1 run data get entity @s Pos[0] 1
execute store result entity @s data.y int 1 run data get entity @s Pos[1] 1
execute store result entity @s data.z int 1 run data get entity @s Pos[2] 1
execute if dimension minecraft:overworld run data modify entity @s data.dim set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify entity @s data.dim set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify entity @s data.dim set value "minecraft:the_end"
data modify storage wolfie_portals:db portals append from entity @s data
function wolfie_portals:portal/refresh
