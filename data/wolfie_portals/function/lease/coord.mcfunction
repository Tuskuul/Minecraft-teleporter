scoreboard players operation #qx wp = #cx wp
scoreboard players operation #qz wp = #cz wp
# Scoreboard division rounds down, including negative values.
scoreboard players operation #qx wp /= #sixteen wp
scoreboard players operation #qz wp /= #sixteen wp
scoreboard players operation #qx wp *= #sixteen wp
scoreboard players operation #qz wp *= #sixteen wp
execute store result storage wolfie_portals:tmp chunk.x int 1 run scoreboard players get #qx wp
execute store result storage wolfie_portals:tmp chunk.z int 1 run scoreboard players get #qz wp
function wolfie_portals:lease/acquire with storage wolfie_portals:tmp chunk
