data modify storage wolfie_portals:tmp bounds set value {l:0,r:0,top:1}
scoreboard players set #l wp 0
scoreboard players set #r wp 0
scoreboard players set #top wp 1
function wolfie_portals:shape/z/left_step
function wolfie_portals:shape/z/right_step
function wolfie_portals:shape/z/top with storage wolfie_portals:tmp bounds
scoreboard players operation #width wp = #r wp
scoreboard players operation #width wp -= #l wp
scoreboard players remove #width wp 1
scoreboard players operation #height wp = #top wp
scoreboard players remove #height wp 1
execute unless score #width wp matches 2..21 run return 0
execute unless score #height wp matches 3..21 run return 0
scoreboard players set #ok wp 1
scoreboard players operation #col wp = #l wp
scoreboard players set #row wp 0
function wolfie_portals:shape/z/loop
execute unless score #ok wp matches 1 run return 0
data modify entity @s data.valid set value 1
data modify entity @s data.shape set value {valid:1,axis:"z"}
execute store result entity @s data.shape.left int 1 run scoreboard players get #l wp
execute store result entity @s data.shape.right int 1 run scoreboard players get #r wp
execute store result entity @s data.shape.height int 1 run scoreboard players get #height wp
execute store result entity @s data.shape.width int 1 run scoreboard players get #width wp
