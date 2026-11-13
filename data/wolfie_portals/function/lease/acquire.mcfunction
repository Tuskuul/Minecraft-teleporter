$execute if data storage wolfie_portals:db leases[{dim:"$(dim)",x:$(x),z:$(z)}] run return run data modify storage wolfie_portals:db leases[{dim:"$(dim)",x:$(x),z:$(z)}].ttl set value 10
$execute in $(dim) store success score #forced wp run forceload query $(x) $(z)
execute if score #forced wp matches 1 run return 0
$execute in $(dim) store success score #forced wp run forceload add $(x) $(z)
execute unless score #forced wp matches 1 run return 0
data modify storage wolfie_portals:tmp chunk.ttl set value 10
data modify storage wolfie_portals:db leases append from storage wolfie_portals:tmp chunk
