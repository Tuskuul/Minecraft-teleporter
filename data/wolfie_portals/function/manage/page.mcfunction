function wolfie_portals:manage/is_owner
execute unless score #owner_ok wp matches 1 run return run function wolfie_portals:menu/build
scoreboard players set @s wp.redraw -1
data modify storage wolfie_portals:tmp ctx.mode set value "settings"
data modify storage wolfie_portals:tmp dialog set value {"type":"minecraft:multi_action","title":"Portal settings","pause":false,"after_action":"none","columns":2,"body":[{"type":"minecraft:plain_message","width":248,"contents":{"text":""}},{"type":"minecraft:plain_message","width":248,"contents":"Only this core's owner can change its settings."}],"actions":[{"label":"Name / rename","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 6"}},{"label":"Walk-through link","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 8"}},{"label":"Clear link","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 9"}},{"label":"Set as Home","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 7"}},{"label":"Back","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 5"}}],"exit_action":{"label":"Close","width":60,"action":{"type":"run_command","command":"trigger wp.ui set 13"}}}
data modify storage wolfie_portals:tmp dialog.body[0].contents set from storage wolfie_portals:tmp ctx.portal.name
function wolfie_portals:menu/save with storage wolfie_portals:tmp ctx
function wolfie_portals:menu/show with storage wolfie_portals:tmp
