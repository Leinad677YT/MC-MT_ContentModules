## IS IT FOR THIS?
    $execute unless data storage leinad_perm:data inf_gen_groups[{id:$(group),type:725}] run return fail
##

## REMOVE ALL CONNECTIONS ON DOORS RELATED TO THE REMOVED ROOM
    # generation skip
    $tag @e[type=marker,tag=zl.inf_garden.door.connected,scores={l.room.current=$(id)}] remove zl.inf_garden.door.connected
    # target room
    $scoreboard players set @e[type=marker,tag=zl.inf_garden.door,scores={l.room.current=$(id)}] l.room.current 0
    # door connections
    $data modify storage leinad_perm:room $(id).doors[].inf_garden_aux set value $(id)
    $function zl.inf_garden:generation/start/check_connection/remove_connection with storage leinad_perm:room $(id).doors[0]
    $function zl.inf_garden:generation/start/check_connection/remove_connection with storage leinad_perm:room $(id).doors[1]
    $function zl.inf_garden:generation/start/check_connection/remove_connection with storage leinad_perm:room $(id).doors[2]
    $function zl.inf_garden:generation/start/check_connection/remove_connection with storage leinad_perm:room $(id).doors[3]
    $execute if data storage leinad_perm:room $(id).doors[4] run function zl.inf_garden:generation/start/check_connection/removal_loop {id:$(id)}
##
