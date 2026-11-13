execute store result score @s wp.poll run data get entity @s data.id
scoreboard players operation @s wp.poll %= #hundred wp
scoreboard players add @s wp.poll 1
