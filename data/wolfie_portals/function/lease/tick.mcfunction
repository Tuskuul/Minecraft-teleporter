data modify storage wolfie_portals:tmp lease set from storage wolfie_portals:tmp lease_queue[0]
execute store result score #ttl wp run data get storage wolfie_portals:tmp lease.ttl
scoreboard players remove #ttl wp 1
execute store result storage wolfie_portals:tmp lease.ttl int 1 run scoreboard players get #ttl wp
execute if score #ttl wp matches ..0 run function wolfie_portals:lease/release with storage wolfie_portals:tmp lease
execute if score #ttl wp matches 1.. run data modify storage wolfie_portals:db leases append from storage wolfie_portals:tmp lease
data remove storage wolfie_portals:tmp lease_queue[0]
execute if data storage wolfie_portals:tmp lease_queue[0] run function wolfie_portals:lease/tick
