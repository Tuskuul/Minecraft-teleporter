execute store result score #extent wp run data get storage wolfie_portals:tmp volume.width
scoreboard players remove #extent wp 1
execute store result storage wolfie_portals:tmp volume.extent int 1 run scoreboard players get #extent wp
execute store result score #extent wp run data get storage wolfie_portals:tmp volume.height
scoreboard players remove #extent wp 1
execute store result storage wolfie_portals:tmp volume.tall int 1 run scoreboard players get #extent wp
execute positioned ~-0.5 ~ ~ run function wolfie_portals:portal/select_x with storage wolfie_portals:tmp volume
