function wolfie_portals:manage/is_owner
execute unless score #owner_ok wp matches 1 run return 0
data modify storage wolfie_portals:tmp ctx.mode set value "link"
data modify storage wolfie_portals:tmp ctx.page set value 0
function wolfie_portals:menu/build_common
