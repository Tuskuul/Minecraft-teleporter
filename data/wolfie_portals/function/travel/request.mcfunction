execute if entity @s[nbt={RootVehicle:{}}] run return run tellraw @s {text:"Dismount before traveling.",color:"yellow"}
execute store result score #a wp run data get storage wolfie_portals:tmp ctx.portal.id
execute store result score #b wp run data get storage wolfie_portals:tmp dest.id
execute if score #a wp = #b wp run return 0
data modify storage wolfie_portals:tmp job set value {}
execute store result storage wolfie_portals:tmp job.pid int 1 run scoreboard players get @s wp.id
data modify storage wolfie_portals:tmp job.source set from storage wolfie_portals:tmp ctx.portal
data modify storage wolfie_portals:tmp job.dest set from storage wolfie_portals:tmp dest
function wolfie_portals:job/save with storage wolfie_portals:tmp job
# Unvisited v1 records do not yet have v2 geometry. Load the original small frame area first.
execute unless data storage wolfie_portals:tmp dest.shape run data modify storage wolfie_portals:tmp dest.shape set value {axis:"x",left:-3,right:3,height:3,width:2}
function wolfie_portals:lease/load with storage wolfie_portals:tmp dest
tag @s add wp.pending
scoreboard players set @s wp.lock 1
scoreboard players set @s wp.wait 10
scoreboard players set @s wp.session 0
scoreboard players set @s wp.redraw -1
dialog clear @s
title @s actionbar {text:"Linking...",color:"aqua"}
