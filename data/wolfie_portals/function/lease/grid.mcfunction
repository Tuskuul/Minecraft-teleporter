function wolfie_portals:lease/coord
scoreboard players add #cx wp 16
execute if score #cx wp > #maxx wp run function wolfie_portals:lease/end_x
execute if score #cz wp <= #maxz wp run function wolfie_portals:lease/grid
