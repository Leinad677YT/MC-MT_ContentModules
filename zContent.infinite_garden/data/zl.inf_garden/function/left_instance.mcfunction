## WHEN A PLAYER DISCONNECTS FROM A GAME
    $data remove storage leinad_perm:online session[{id:$(id)}].instance_id
    $data remove storage leinad_perm:online session[{id:$(id)}].instance_type
    $tag @a[scores={l.player.id = $(id)}] remove zl.inf_garden.in_game
##
