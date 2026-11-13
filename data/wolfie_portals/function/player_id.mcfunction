execute store result score #next wp run data get storage wolfie_portals:db next
scoreboard players add #next wp 1
scoreboard players operation @s wp.id = #next wp
execute store result storage wolfie_portals:db next int 1 run scoreboard players get #next wp
scoreboard players set @s wp.lock 0
scoreboard players set @s wp.wait -1
recipe give @s wolfie_portals:portal_core
recipe give @s wolfie_portals:reattune_core
