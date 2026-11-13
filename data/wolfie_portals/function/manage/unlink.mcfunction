function wolfie_portals:manage/is_owner
execute unless score #owner_ok wp matches 1 run return 0
data modify storage wolfie_portals:tmp ctx.portal.link set value 0
function wolfie_portals:manage/write_link with storage wolfie_portals:tmp ctx.portal
function wolfie_portals:manage/page
