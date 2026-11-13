function wolfie_portals:scan/background
execute unless data entity @s {data:{valid:1}} run return 0
data modify storage wolfie_portals:tmp source set from entity @s data
data modify storage wolfie_portals:tmp volume set from entity @s data.shape
function wolfie_portals:portal/volume with storage wolfie_portals:tmp volume
execute if score #clock wp matches 5 run particle minecraft:portal ~ ~2 ~ 0.3 1 0.3 0.05 8 normal
