$tag @a[dx=0,dy=$(tall),dz=$(extent)] add wp.inside
$execute as @a[dx=0,dy=$(tall),dz=$(extent),scores={wp.lock=0},tag=!wp.pending] run function wolfie_portals:travel/walk
