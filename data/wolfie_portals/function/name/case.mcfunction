execute unless data storage wolfie_portals:tmp ctx{mode:"name"} run return 0
execute store result score #upper wp run data get storage wolfie_portals:tmp ctx.upper
scoreboard players set #one wp 1
scoreboard players operation #one wp -= #upper wp
execute store result storage wolfie_portals:tmp ctx.upper int 1 run scoreboard players get #one wp
function wolfie_portals:name/show
