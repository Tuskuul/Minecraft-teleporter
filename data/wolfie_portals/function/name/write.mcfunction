$data modify storage wolfie_portals:db portals[{id:$(id)}].name set from storage wolfie_portals:tmp ctx.buffer
$execute in $(dim) as @e[type=minecraft:marker,tag=wp.core] if data entity @s {data:{id:$(id)}} run data modify entity @s data.name set from storage wolfie_portals:tmp ctx.buffer
data modify storage wolfie_portals:tmp ctx.portal.name set from storage wolfie_portals:tmp ctx.buffer
