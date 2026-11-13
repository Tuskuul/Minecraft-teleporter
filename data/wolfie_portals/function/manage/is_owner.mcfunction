scoreboard players set #owner_ok wp 0
execute store result score #who wp run scoreboard players get @s wp.id
function wolfie_portals:manage/read_current with storage wolfie_portals:tmp ctx.portal
execute store result score #owns wp run data get storage wolfie_portals:tmp ctx.portal.owner
execute if score #owns wp matches 0 run function wolfie_portals:manage/claim with storage wolfie_portals:tmp ctx.portal
execute store result score #owns wp run data get storage wolfie_portals:tmp ctx.portal.owner
execute if score #owns wp = #who wp run scoreboard players set #owner_ok wp 1
execute unless score #owner_ok wp matches 1 run tellraw @s {text:"Only the player who placed this core can change its settings.",color:"yellow"}
