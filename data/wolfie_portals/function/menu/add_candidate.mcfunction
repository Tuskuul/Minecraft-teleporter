execute store result score #a wp run data get storage wolfie_portals:tmp ctx.portal.id
execute store result score #b wp run data get storage wolfie_portals:tmp candidate.id
execute if score #a wp = #b wp run return 0
execute if score #has_home wp matches 1 if score #b wp = #home wp run return 0
execute if score #index wp >= #skip wp if score #index wp < #end wp run function wolfie_portals:menu/add_button
scoreboard players add #index wp 1
