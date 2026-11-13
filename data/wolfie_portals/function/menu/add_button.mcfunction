data modify storage wolfie_portals:tmp button set value {label:{text:""},width:120,action:{type:"run_command",command:""}}
data modify storage wolfie_portals:tmp button.label set from storage wolfie_portals:tmp candidate.name
execute store result score #b wp run data get storage wolfie_portals:tmp candidate.id
scoreboard players add #b wp 1000
execute store result storage wolfie_portals:tmp command.code int 1 run scoreboard players get #b wp
function wolfie_portals:menu/button_command with storage wolfie_portals:tmp command
function wolfie_portals:menu/button_tooltip with storage wolfie_portals:tmp candidate
data modify storage wolfie_portals:tmp dialog.actions append from storage wolfie_portals:tmp button
