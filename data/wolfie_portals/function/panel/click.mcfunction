execute store result storage wolfie_portals:tmp open.id int 1 run scoreboard players get @s wp.id
execute on target run function wolfie_portals:menu/open with storage wolfie_portals:tmp open
data remove entity @s interaction
