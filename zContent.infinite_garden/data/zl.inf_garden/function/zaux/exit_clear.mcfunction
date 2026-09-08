## REMOVE REMAINING CONTROL DATA
    data remove storage leinad_temp:game "zl.inf_garden".temp_exit##
    tag @s remove zl.inf_garden.left_game
    $data remove storage leinad_perm:online session[{id:$(id)}].instance_type
    $ata remove storage leinad_perm:online session[{id:$(id)}].instance_id
    function l.user:instance/kick_self
##
