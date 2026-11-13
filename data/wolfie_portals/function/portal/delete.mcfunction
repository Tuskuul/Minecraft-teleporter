$kill @e[type=minecraft:interaction,tag=wp.portal.$(id)]
$data remove storage wolfie_portals:db portals[{id:$(id)}]
execute store result score #home wp run data get storage wolfie_portals:db home
$scoreboard players set #id wp $(id)
execute if score #home wp = #id wp run data modify storage wolfie_portals:db home set value 0
