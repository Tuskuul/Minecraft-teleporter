scoreboard players operation #cx wp = #maxx wp
function wolfie_portals:lease/coord
scoreboard players operation #cx wp = #minx wp
scoreboard players add #cz wp 16
execute if score #cz wp > #maxz wp run function wolfie_portals:lease/end_z
