data modify entity @s data.version set value 2
data modify entity @s data.owner set value 0
data modify entity @s data.link set value 0
execute unless data entity @s data.name run data modify entity @s data.name set value "Legacy portal"
data modify entity @s data.shape set value {}
data remove entity @s data.dest
