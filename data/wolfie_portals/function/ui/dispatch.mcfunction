scoreboard players operation #action wp = @s wp.ui
scoreboard players set @s wp.ui 0
execute if score #action wp matches 13 run return run function wolfie_portals:ui/close
function wolfie_portals:ui/context
execute unless data storage wolfie_portals:tmp ctx.portal run return 0
scoreboard players set #near wp 0
function wolfie_portals:ui/near with storage wolfie_portals:tmp ctx.portal
execute unless score #near wp matches 1 run return run tellraw @s {text:"Move back to that portal to use its controls.",color:"yellow"}
scoreboard players set @s wp.session 1200
execute if score #action wp matches 1 run function wolfie_portals:name/save
execute if score #action wp matches 2 run function wolfie_portals:name/backspace
execute if score #action wp matches 3 run function wolfie_portals:name/clear
execute if score #action wp matches 4 run function wolfie_portals:name/case
execute if score #action wp matches 5 run function wolfie_portals:menu/build
execute if score #action wp matches 6 run function wolfie_portals:name/start
execute if score #action wp matches 7 run function wolfie_portals:manage/home
execute if score #action wp matches 8 run function wolfie_portals:manage/link_mode
execute if score #action wp matches 9 run function wolfie_portals:manage/unlink
execute if score #action wp matches 10 run function wolfie_portals:travel/home
execute if score #action wp matches 11 run function wolfie_portals:menu/next
execute if score #action wp matches 12 run function wolfie_portals:menu/previous
execute if score #action wp matches 13 run function wolfie_portals:ui/close
execute if score #action wp matches 14 run function wolfie_portals:name/preview
execute if score #action wp matches 15 run function wolfie_portals:menu/destinations
execute if score #action wp matches 16 run function wolfie_portals:manage/page
execute if score #action wp matches 17 run function wolfie_portals:menu/refresh_page
execute if score #action wp matches 100..138 run function wolfie_portals:name/letter
execute if score #action wp matches 1001.. run function wolfie_portals:menu/choose
