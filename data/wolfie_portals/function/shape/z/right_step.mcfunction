scoreboard players add #r wp 1
execute store result storage wolfie_portals:tmp bounds.r int 1 run scoreboard players get #r wp
execute if score #r wp matches -22..22 run function wolfie_portals:shape/z/right with storage wolfie_portals:tmp bounds
