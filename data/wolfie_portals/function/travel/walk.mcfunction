scoreboard players set @s wp.lock 1
data modify storage wolfie_portals:tmp open.id set from storage wolfie_portals:tmp source.id
function wolfie_portals:menu/context with storage wolfie_portals:tmp open
execute store result score #link wp run data get storage wolfie_portals:tmp ctx.portal.link
execute if score #link wp matches 1.. run return run function wolfie_portals:travel/default
function wolfie_portals:travel/home
execute unless entity @s[tag=wp.pending] run function wolfie_portals:menu/build
