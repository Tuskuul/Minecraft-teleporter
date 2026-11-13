scoreboard players set #clock wp 0
data modify storage wolfie_portals:tmp lease_queue set from storage wolfie_portals:db leases
data modify storage wolfie_portals:db leases set value []
execute if data storage wolfie_portals:tmp lease_queue[0] run function wolfie_portals:lease/tick
