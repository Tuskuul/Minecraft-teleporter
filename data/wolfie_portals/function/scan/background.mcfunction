execute unless block ~ ~ ~ minecraft:lodestone run return run function wolfie_portals:portal/remove
execute unless data entity @s {data:{version:2}} run return run function wolfie_portals:portal/refresh
execute unless score @s wp.poll matches 0.. run function wolfie_portals:scan/init
scoreboard players remove @s wp.poll 1
execute if score @s wp.poll matches 1.. run return 0
execute if data entity @s {data:{valid:1}} run return run function wolfie_portals:scan/valid
scoreboard players set @s wp.poll 100
function wolfie_portals:portal/refresh
