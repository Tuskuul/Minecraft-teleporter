execute store result score #page wp run data get storage wolfie_portals:tmp ctx.page
scoreboard players add #page wp 1
execute store result storage wolfie_portals:tmp ctx.page int 1 run scoreboard players get #page wp
function wolfie_portals:menu/build_common
