function wolfie_portals:lease/release with storage wolfie_portals:tmp lease_queue[0]
data remove storage wolfie_portals:tmp lease_queue[0]
execute if data storage wolfie_portals:tmp lease_queue[0] run function wolfie_portals:lease/clear_all
