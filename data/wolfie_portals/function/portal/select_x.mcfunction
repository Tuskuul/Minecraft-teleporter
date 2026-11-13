$tag @a[dx=$(extent),dy=$(tall),dz=0] add wp.inside
$execute as @a[dx=$(extent),dy=$(tall),dz=0,scores={wp.lock=0},tag=!wp.pending] run function wolfie_portals:travel/walk
