$summon minecraft:interaction ~ ~1 ~$(c) {width:1f,height:$(height)f,response:1b,Tags:["wp.panel","wp.newpanel","wp.portal.$(id)"]}
$scoreboard players set @e[type=minecraft:interaction,tag=wp.newpanel,distance=..24] wp.id $(id)
tag @e[type=minecraft:interaction,tag=wp.newpanel,distance=..24] remove wp.newpanel
