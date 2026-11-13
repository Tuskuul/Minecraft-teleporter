execute unless score #ok wp matches 1 run return 0
execute store result storage wolfie_portals:tmp cell.c int 1 run scoreboard players get #col wp
execute store result storage wolfie_portals:tmp cell.y int 1 run scoreboard players get #row wp
scoreboard players set #border wp 0
execute if score #col wp = #l wp run scoreboard players set #border wp 1
execute if score #col wp = #r wp run scoreboard players set #border wp 1
execute if score #row wp matches 0 run scoreboard players add #border wp 1
execute if score #row wp = #top wp run scoreboard players add #border wp 1
execute unless score #border wp matches 2 run function wolfie_portals:shape/z/cell with storage wolfie_portals:tmp cell
scoreboard players add #row wp 1
execute if score #row wp <= #top wp run function wolfie_portals:scan/z/row
