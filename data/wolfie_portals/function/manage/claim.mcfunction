execute store result storage wolfie_portals:tmp ctx.portal.owner int 1 run scoreboard players get #who wp
$data modify storage wolfie_portals:db portals[{id:$(id)}].owner set from storage wolfie_portals:tmp ctx.portal.owner
$execute in $(dim) as @e[type=minecraft:marker,tag=wp.core] if data entity @s {data:{id:$(id)}} run data modify entity @s data.owner set from storage wolfie_portals:tmp ctx.portal.owner
