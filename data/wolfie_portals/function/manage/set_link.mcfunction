function wolfie_portals:manage/is_owner
execute unless score #owner_ok wp matches 1 run return 0
data modify storage wolfie_portals:tmp ctx.portal.link set from storage wolfie_portals:tmp dest.id
function wolfie_portals:manage/write_link with storage wolfie_portals:tmp ctx.portal
tellraw @s {text:"Walk-through destination updated. The return route can be different.",color:"aqua"}
function wolfie_portals:manage/page
