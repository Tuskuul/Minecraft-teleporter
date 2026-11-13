scoreboard players set @s wp.redraw -1
function wolfie_portals:menu/save with storage wolfie_portals:tmp ctx
execute if data storage wolfie_portals:tmp ctx{upper:0} run function wolfie_portals:name/lower
execute if data storage wolfie_portals:tmp ctx{upper:1} run function wolfie_portals:name/upper
data modify storage wolfie_portals:tmp dialog.body[0].contents.extra[0].text set from storage wolfie_portals:tmp ctx.buffer
function wolfie_portals:menu/show with storage wolfie_portals:tmp
