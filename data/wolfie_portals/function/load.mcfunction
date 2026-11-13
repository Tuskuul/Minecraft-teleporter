scoreboard objectives add wp dummy
scoreboard objectives add wp.id dummy
scoreboard objectives add wp.wait dummy
scoreboard objectives add wp.lock dummy
scoreboard objectives add wp.session dummy
scoreboard objectives add wp.ui trigger
scoreboard objectives add wp.redraw dummy
scoreboard objectives add wp.poll dummy
execute unless data storage wolfie_portals:db next run data modify storage wolfie_portals:db next set value 0
execute unless data storage wolfie_portals:db portals run data modify storage wolfie_portals:db portals set value []
execute unless data storage wolfie_portals:db leases run data modify storage wolfie_portals:db leases set value []
execute unless data storage wolfie_portals:db jobs run data modify storage wolfie_portals:db jobs set value []
execute unless data storage wolfie_portals:db sessions run data modify storage wolfie_portals:db sessions set value []
execute unless data storage wolfie_portals:db home run data modify storage wolfie_portals:db home set value 0
scoreboard players set #clock wp 0
scoreboard players set #sixteen wp 16
data modify storage wolfie_portals:db alphabet set value ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9"," ","-","_"]
data modify storage wolfie_portals:db upper set value ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9"," ","-","_"]
tellraw @a {text:"[Wolfie Portals] v2.2 loaded. Keep only the newest portal pack installed.",color:"aqua"}

scoreboard players set #hundred wp 100
scoreboard players set @a wp.redraw -1
