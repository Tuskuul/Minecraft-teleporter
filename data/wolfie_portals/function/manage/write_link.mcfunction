$data modify storage wolfie_portals:db portals[{id:$(id)}].link set value $(link)
$execute in $(dim) as @e[type=minecraft:marker,tag=wp.core] if data entity @s {data:{id:$(id)}} run data modify entity @s data.link set value $(link)
