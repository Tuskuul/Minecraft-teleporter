$execute in $(dim) positioned $(x).0 $(y).0 $(z).0 positioned ~0.5 ~1 ~0.5 run tp @s ~ ~ ~
scoreboard players set @s wp.lock 1
scoreboard players set #arrived wp 1
execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 0.6 1.2
execute at @s run particle minecraft:portal ~ ~1 ~ 0.3 0.6 0.3 0.1 30 normal
