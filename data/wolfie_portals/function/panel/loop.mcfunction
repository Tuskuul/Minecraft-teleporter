execute store result storage wolfie_portals:tmp panel.c int 1 run scoreboard players get #col wp
function wolfie_portals:panel/column with storage wolfie_portals:tmp panel
scoreboard players add #col wp 1
execute if score #col wp < #right wp run function wolfie_portals:panel/loop
