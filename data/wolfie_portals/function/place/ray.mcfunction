execute if block ~ ~ ~ minecraft:lodestone run return run execute align xyz positioned ~0.5 ~ ~0.5 run function wolfie_portals:place/hit
scoreboard players add #ray wp 1
execute if score #ray wp matches ..70 positioned ^ ^ ^0.1 run function wolfie_portals:place/ray
