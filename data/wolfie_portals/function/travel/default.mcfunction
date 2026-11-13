data modify storage wolfie_portals:tmp selection.id set from storage wolfie_portals:tmp ctx.portal.link
data remove storage wolfie_portals:tmp dest
function wolfie_portals:menu/read_dest with storage wolfie_portals:tmp selection
execute if data storage wolfie_portals:tmp dest{valid:1} run function wolfie_portals:travel/request

execute unless entity @s[tag=wp.pending] run function wolfie_portals:menu/build
