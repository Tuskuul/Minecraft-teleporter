execute unless data storage wolfie_portals:tmp ctx{mode:"name"} run return 0
function wolfie_portals:manage/is_owner
execute unless score #owner_ok wp matches 1 run return 0
execute store result score #length wp run data get storage wolfie_portals:tmp ctx.buffer
execute unless score #length wp matches 1..24 run return run function wolfie_portals:name/show
function wolfie_portals:name/write with storage wolfie_portals:tmp ctx.portal
function wolfie_portals:menu/build
