$execute unless block ~0 ~$(top) ~ #wolfie_portals:air run return 0
scoreboard players add #top wp 1
execute store result storage wolfie_portals:tmp bounds.top int 1 run scoreboard players get #top wp
execute if score #top wp matches ..22 run function wolfie_portals:shape/x/top with storage wolfie_portals:tmp bounds
