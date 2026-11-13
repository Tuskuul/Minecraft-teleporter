data modify storage wolfie_portals:tmp candidate set from storage wolfie_portals:tmp scan[0]
execute if data storage wolfie_portals:tmp candidate{valid:1} run function wolfie_portals:menu/add_candidate
data remove storage wolfie_portals:tmp scan[0]
execute if data storage wolfie_portals:tmp scan[0] run function wolfie_portals:menu/scan
