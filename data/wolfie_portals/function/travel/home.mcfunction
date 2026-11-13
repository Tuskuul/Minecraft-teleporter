data modify storage wolfie_portals:tmp selection.id set from storage wolfie_portals:db home
execute store result score #home wp run data get storage wolfie_portals:db home
execute store result score #here wp run data get storage wolfie_portals:tmp ctx.portal.id
execute unless score #home wp matches 1.. run return run tellraw @s {text:"No shared Home has been set yet.",color:"yellow"}
execute if score #home wp = #here wp run return 0
data remove storage wolfie_portals:tmp dest
function wolfie_portals:menu/read_dest with storage wolfie_portals:tmp selection
execute unless data storage wolfie_portals:tmp dest{valid:1} run return run tellraw @s {text:"Home is not currently available.",color:"yellow"}
function wolfie_portals:travel/request
