data modify storage wolfie_portals:tmp dialog.body append value {type:"minecraft:plain_message",width:248,contents:"No other completed portals are registered. Finish another frame and refresh this page."}
data modify storage wolfie_portals:tmp dialog.actions append value {"label":"Refresh","width":120,"action":{"type":"run_command","command":"trigger wp.ui set 17"}}
