$scoreboard players set #lo wp $(left)
$scoreboard players set #hi wp $(right)
execute if data storage wolfie_portals:tmp dest.shape{axis:"x"} run scoreboard players operation #minx wp += #lo wp
execute if data storage wolfie_portals:tmp dest.shape{axis:"x"} run scoreboard players operation #maxx wp += #hi wp
execute if data storage wolfie_portals:tmp dest.shape{axis:"z"} run scoreboard players operation #minz wp += #lo wp
execute if data storage wolfie_portals:tmp dest.shape{axis:"z"} run scoreboard players operation #maxz wp += #hi wp
