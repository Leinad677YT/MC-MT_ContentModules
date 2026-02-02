$data remove storage storage leinad_perm:room $(id).doors[0]
$function zl.inf_garden:generation/start/check_connection/remove_connection with storage leinad_perm:room $(id).doors[0]
$execute if data storage leinad_perm:room $(id).doors[0] run function zl.inf_garden:generation/start/check_connection/removal_loop {id:$(id)}
