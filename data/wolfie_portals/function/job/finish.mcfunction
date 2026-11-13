scoreboard players set @s wp.wait -1
tag @s remove wp.pending
$data modify storage wolfie_portals:tmp job set from storage wolfie_portals:db jobs[{pid:$(pid)}]
execute unless data storage wolfie_portals:tmp job.dest run return 0
scoreboard players set #arrived wp 0
function wolfie_portals:job/validate with storage wolfie_portals:tmp job.dest
execute unless score #arrived wp matches 1 run tellraw @s {text:"Travel canceled. The destination is unavailable or blocked, or you moved away from the source.",color:"red"}
$data remove storage wolfie_portals:db jobs[{pid:$(pid)}]
