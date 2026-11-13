data modify storage wolfie_portals:tmp chunk.dim set from storage wolfie_portals:tmp dest.dim
$scoreboard players set #minx wp $(x)
$scoreboard players set #minz wp $(z)
$scoreboard players set #maxx wp $(x)
$scoreboard players set #maxz wp $(z)
function wolfie_portals:lease/bounds with storage wolfie_portals:tmp dest.shape
scoreboard players remove #minx wp 2
scoreboard players remove #minz wp 2
scoreboard players add #maxx wp 2
scoreboard players add #maxz wp 2
scoreboard players operation #cx wp = #minx wp
scoreboard players operation #cz wp = #minz wp
function wolfie_portals:lease/grid
