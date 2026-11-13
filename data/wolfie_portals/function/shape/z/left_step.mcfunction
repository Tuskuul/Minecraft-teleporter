scoreboard players remove #l wp 1
execute store result storage wolfie_portals:tmp bounds.l int 1 run scoreboard players get #l wp
execute if score #l wp matches -22..22 run function wolfie_portals:shape/z/left with storage wolfie_portals:tmp bounds
