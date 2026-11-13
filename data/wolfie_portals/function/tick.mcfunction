execute as @a unless score @s wp.id matches 1.. run function wolfie_portals:player_id
scoreboard players add #clock wp 1
execute if score #clock wp matches 20.. run function wolfie_portals:second
execute as @a[scores={wp.wait=1..}] run scoreboard players remove @s wp.wait 1
execute as @a[scores={wp.wait=0}] run function wolfie_portals:job/context
execute as @a[scores={wp.ui=13}] run function wolfie_portals:ui/close
execute as @a[scores={wp.session=1..,wp.ui=1..}] at @s run function wolfie_portals:ui/dispatch
scoreboard players remove @a[scores={wp.session=1..}] wp.session 1
scoreboard players enable @a wp.ui
execute as @a[scores={wp.ui=1..}] run scoreboard players set @s wp.ui 0
tag @a remove wp.inside
execute in minecraft:overworld run function wolfie_portals:dimension_tick
execute in minecraft:the_nether run function wolfie_portals:dimension_tick
execute in minecraft:the_end run function wolfie_portals:dimension_tick
scoreboard players set @a[tag=!wp.inside] wp.lock 0
