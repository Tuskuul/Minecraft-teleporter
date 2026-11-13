scoreboard players operation #b wp = #action wp
scoreboard players remove #b wp 1000
execute store result storage wolfie_portals:tmp selection.id int 1 run scoreboard players get #b wp
data remove storage wolfie_portals:tmp dest
function wolfie_portals:menu/read_dest with storage wolfie_portals:tmp selection
execute unless data storage wolfie_portals:tmp dest{valid:1} run return 0
execute if data storage wolfie_portals:tmp ctx{mode:"link"} run return run function wolfie_portals:manage/set_link
function wolfie_portals:travel/request
