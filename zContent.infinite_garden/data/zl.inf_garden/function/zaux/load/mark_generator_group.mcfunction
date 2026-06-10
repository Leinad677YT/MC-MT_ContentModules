$data modify storage leinad_perm:data inf_gen_groups[{id:$(group_id)}].type set value 725
$data modify storage leinad_perm:data inf_gen_groups[{id:$(group_id)}].dimension set value "$(dimension)"
$data modify storage leinad_perm:data instance_db[{id:$(id)}].inf_gen_group set value $(group_id)