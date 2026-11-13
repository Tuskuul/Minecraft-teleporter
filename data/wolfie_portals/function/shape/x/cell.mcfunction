execute if score #row wp matches 0 if score #col wp matches 0 run return 0
$execute if score #border wp matches 1 unless block ~$(c) ~$(y) ~ #wolfie_portals:frame run scoreboard players set #ok wp 0
$execute if score #border wp matches 0 unless block ~$(c) ~$(y) ~ #wolfie_portals:air run scoreboard players set #ok wp 0
