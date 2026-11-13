scoreboard players set @s wp.redraw -1
data modify storage wolfie_portals:tmp dialog set value {"type":"minecraft:multi_action","title":"Destinations","pause":false,"after_action":"none","columns":2,"body":[{"type":"minecraft:plain_message","width":248,"contents":"Choose a completed portal to travel to it."}],"actions":[{"label":"Loading...","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 5"}},{"label":"Back","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 5"}}],"exit_action":{"label":"Close","width":60,"action":{"type":"run_command","command":"trigger wp.ui set 13"}}}
data modify storage wolfie_portals:tmp dialog.actions set value []
execute if data storage wolfie_portals:tmp ctx{mode:"link"} run data modify storage wolfie_portals:tmp dialog.title set value "Set walk-through link"
execute if data storage wolfie_portals:tmp ctx{mode:"link"} run data modify storage wolfie_portals:tmp dialog.body[0].contents set value "Choose where walking into this portal will send players."
scoreboard players set #has_home wp 0
function wolfie_portals:menu/home_button
execute store result score #skip wp run data get storage wolfie_portals:tmp ctx.page
scoreboard players set #page_size wp 6
scoreboard players operation #skip wp *= #page_size wp
scoreboard players operation #end wp = #skip wp
scoreboard players add #end wp 6
data modify storage wolfie_portals:tmp scan set from storage wolfie_portals:db portals
scoreboard players set #index wp 0
execute if data storage wolfie_portals:tmp scan[0] run function wolfie_portals:menu/scan
execute if score #skip wp matches 1.. if score #skip wp >= #index wp run return run function wolfie_portals:menu/reset_page
execute if score #index wp matches 0 if score #has_home wp matches 0 run function wolfie_portals:menu/empty
execute if score #skip wp matches 1.. run data modify storage wolfie_portals:tmp dialog.actions append value {"label":"Previous","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 12"}}
execute if score #index wp > #end wp run data modify storage wolfie_portals:tmp dialog.actions append value {"label":"Next","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 11"}}
data modify storage wolfie_portals:tmp dialog.actions append value {"label":"Back","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 5"}}
function wolfie_portals:menu/save with storage wolfie_portals:tmp ctx
function wolfie_portals:menu/show with storage wolfie_portals:tmp
