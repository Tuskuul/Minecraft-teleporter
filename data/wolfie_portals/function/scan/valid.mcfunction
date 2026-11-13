scoreboard players set @s wp.poll 2
data modify storage wolfie_portals:tmp slice set from entity @s data.shape
execute store result score #l wp run data get entity @s data.shape.left
execute store result score #r wp run data get entity @s data.shape.right
execute store result score #top wp run data get entity @s data.shape.height
scoreboard players add #top wp 1
execute unless data entity @s data.scan run data modify entity @s data.scan set from entity @s data.shape.left
execute store result score #col wp run data get entity @s data.scan
execute if score #col wp < #l wp run scoreboard players operation #col wp = #l wp
execute if score #col wp > #r wp run scoreboard players operation #col wp = #l wp
scoreboard players set #row wp 0
scoreboard players set #ok wp 1
function wolfie_portals:scan/column with storage wolfie_portals:tmp slice
execute unless score #ok wp matches 1 run return run function wolfie_portals:scan/invalidate
scoreboard players add #col wp 1
execute if score #col wp > #r wp run scoreboard players operation #col wp = #l wp
execute store result entity @s data.scan int 1 run scoreboard players get #col wp
