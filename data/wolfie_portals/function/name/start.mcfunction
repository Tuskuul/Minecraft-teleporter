function wolfie_portals:manage/is_owner
execute unless score #owner_ok wp matches 1 run return 0
data modify storage wolfie_portals:tmp ctx.mode set value "name"
data modify storage wolfie_portals:tmp ctx.buffer set value ""
function wolfie_portals:name/show
