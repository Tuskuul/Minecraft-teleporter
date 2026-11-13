scoreboard players set @s wp.redraw -1
execute unless score @s wp.session matches 1.. run return 0
function wolfie_portals:ui/context
execute if data storage wolfie_portals:tmp ctx{mode:"name"} run function wolfie_portals:name/show
