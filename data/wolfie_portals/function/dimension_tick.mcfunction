execute as @e[type=minecraft:interaction,tag=wp.panel] at @s if data entity @s interaction run function wolfie_portals:panel/click
execute as @e[type=minecraft:marker,tag=wp.core] at @s run function wolfie_portals:portal/tick
