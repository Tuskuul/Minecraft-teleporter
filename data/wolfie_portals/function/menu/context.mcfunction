execute unless score @s wp.id matches 1.. run function wolfie_portals:player_id
data modify storage wolfie_portals:tmp ctx set value {page:0,mode:"travel",upper:0,buffer:""}
execute store result storage wolfie_portals:tmp ctx.pid int 1 run scoreboard players get @s wp.id
$data modify storage wolfie_portals:tmp ctx.portal set from storage wolfie_portals:db portals[{id:$(id)}]
execute unless data storage wolfie_portals:tmp ctx.portal run return 0
function wolfie_portals:menu/save with storage wolfie_portals:tmp ctx
scoreboard players set @s wp.lock 1
scoreboard players set @s wp.session 1200
scoreboard players enable @s wp.ui
