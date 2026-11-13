execute if entity @e[type=minecraft:marker,tag=wp.core,distance=..0.1] run return 0
summon minecraft:marker ~ ~ ~ {Tags:["wp.core","wp.new"],data:{version:2,valid:0,shape:{},name:"Unnamed portal",link:0,owner:0}}
execute as @e[type=minecraft:marker,tag=wp.new,distance=..0.1,limit=1] at @s run function wolfie_portals:place/register
execute store result storage wolfie_portals:tmp open.id int 1 run scoreboard players get #new wp
function wolfie_portals:menu/open with storage wolfie_portals:tmp open
function wolfie_portals:name/start
