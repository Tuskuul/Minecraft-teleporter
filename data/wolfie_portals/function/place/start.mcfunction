advancement revoke @s only wolfie_portals:place_core
execute unless score @s wp.id matches 1.. run function wolfie_portals:player_id
scoreboard players operation #owner wp = @s wp.id
scoreboard players set #ray wp 0
execute at @s anchored eyes positioned ^ ^ ^0.1 run function wolfie_portals:place/ray
