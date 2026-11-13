scoreboard players set @s wp.redraw -1
data modify storage wolfie_portals:tmp ctx.mode set value "travel"
data modify storage wolfie_portals:tmp ctx.page set value 0
data modify storage wolfie_portals:tmp dialog set value {"type":"minecraft:multi_action","title":"Portal","pause":false,"after_action":"none","columns":2,"body":[{"type":"minecraft:plain_message","width":248,"contents":{"text":""}},{"type":"minecraft:plain_message","width":248,"contents":"Select a destination or manage this portal."}],"actions":[{"label":"Destinations","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 15"}},{"label":"Home","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 10"}},{"label":"Settings","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 16"}}],"exit_action":{"label":"Close","width":60,"action":{"type":"run_command","command":"trigger wp.ui set 13"}}}
data modify storage wolfie_portals:tmp dialog.body[0].contents set from storage wolfie_portals:tmp ctx.portal.name
function wolfie_portals:menu/save with storage wolfie_portals:tmp ctx
function wolfie_portals:menu/show with storage wolfie_portals:tmp
