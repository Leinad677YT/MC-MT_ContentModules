## REMOVE TAGS
    tag @s remove zl.inf_garden.in_game
    tag @s remove l.room.detect
    tag @s remove l.room.inside
    scoreboard players reset @s l.room.current
##

## GET SESSION DATA
    $data modify storage leinad_temp:game "zl.inf_garden".temp_exit set from storage leinad_perm:online session[{id:$(id)}]
##

## GRANT CONTROL TO USERS
    return run function #zl.user:inf_garden/exit_game with storage leinad_temp:game "zl.inf_garden".temp_exit
##