function wolfie_portals:panel/clear with entity @s data
execute unless data entity @s {data:{valid:1}} run return 0
data modify storage wolfie_portals:tmp panel set from entity @s data.shape
data modify storage wolfie_portals:tmp panel.id set from entity @s data.id
execute store result score #col wp run data get entity @s data.shape.left
scoreboard players add #col wp 1
execute store result score #right wp run data get entity @s data.shape.right
function wolfie_portals:panel/loop
