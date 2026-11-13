function wolfie_portals:lease/coord
scoreboard players add #cx wp 16
execute if score #cx wp <= #maxx wp run function wolfie_portals:lease/last_row
scoreboard players operation #cx wp = #maxx wp
function wolfie_portals:lease/coord
