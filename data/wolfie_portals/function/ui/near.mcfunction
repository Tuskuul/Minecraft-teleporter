$execute at @s if dimension $(dim) positioned $(x).0 $(y).0 $(z).0 if entity @s[distance=..32] if block ~ ~ ~ minecraft:lodestone run scoreboard players set #near wp 1
