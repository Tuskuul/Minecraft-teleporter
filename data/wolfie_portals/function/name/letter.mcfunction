execute unless data storage wolfie_portals:tmp ctx{mode:"name"} run return 0
execute store result score #length wp run data get storage wolfie_portals:tmp ctx.buffer
execute if score #length wp matches 24.. run return 0
scoreboard players operation #letter wp = #action wp
scoreboard players remove #letter wp 100
execute store result storage wolfie_portals:tmp letter.index int 1 run scoreboard players get #letter wp
function wolfie_portals:name/read_letter with storage wolfie_portals:tmp letter
function wolfie_portals:name/append with storage wolfie_portals:tmp ctx
function wolfie_portals:name/dirty
