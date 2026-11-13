function wolfie_portals:manage/is_owner
execute unless score #owner_ok wp matches 1 run return 0
execute store result score #home wp run data get storage wolfie_portals:db home
execute store result score #here wp run data get storage wolfie_portals:tmp ctx.portal.id
execute if score #home wp matches 1.. unless score #home wp = #here wp run return run tellraw @s {text:"A shared Home already exists. An operator can clear it with /function wolfie_portals:clear_home before changing it.",color:"yellow"}
data modify storage wolfie_portals:db home set from storage wolfie_portals:tmp ctx.portal.id
tellraw @s {text:"This portal is now the shared Home. Every portal can travel here independently of its outgoing link.",color:"aqua"}
function wolfie_portals:manage/page
