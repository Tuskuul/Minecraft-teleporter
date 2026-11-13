execute store result score #home wp run data get storage wolfie_portals:db home
execute store result score #here wp run data get storage wolfie_portals:tmp ctx.portal.id
execute unless score #home wp matches 1.. run return 0
execute if score #home wp = #here wp run return 0
data modify storage wolfie_portals:tmp selection.id set from storage wolfie_portals:db home
data remove storage wolfie_portals:tmp dest
function wolfie_portals:menu/read_dest with storage wolfie_portals:tmp selection
execute unless data storage wolfie_portals:tmp dest{valid:1} run return 0
data modify storage wolfie_portals:tmp button set value {label:"Home",tooltip:"Shared Home; independent of its outgoing link",width:120,action:{type:"run_command",command:""}}
scoreboard players operation #b wp = #home wp
scoreboard players add #b wp 1000
execute store result storage wolfie_portals:tmp command.code int 1 run scoreboard players get #b wp
function wolfie_portals:menu/button_command with storage wolfie_portals:tmp command
data modify storage wolfie_portals:tmp dialog.actions append from storage wolfie_portals:tmp button
scoreboard players set #has_home wp 1
