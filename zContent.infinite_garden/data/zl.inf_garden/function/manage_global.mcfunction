## NO ROOMS LEFT => REMOVE GROUP AND RETURN
    $execute unless data storage leinad_perm:data inf_gen_groups[{id:$(id),type:725}] run return fail
    $execute unless data storage leinad_perm:data inf_gen_groups[{id:$(id)}].rooms[0] run data remove storage leinad_perm:data instance_db[{inf_gen_group:$(id)}].inf_gen_group
    $execute unless data storage leinad_perm:data inf_gen_groups[{id:$(id)}].rooms[0] run return run function l.user:inf_gen/remove_group {id:$(id)}
##