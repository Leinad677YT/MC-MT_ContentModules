## IF SAT => REMOVE MOUNT
    execute store result storage leinad_temp:game sit.id int 1 run scoreboard players get @s l.player.id
    function zl.player_sit:get_playerdata with storage leinad_temp:game sit
    function zl.player_sit:remove_mount with storage leinad_temp:game sit
##

## RESET TAG AND TRIGGER
    tag @s remove zl.player_sit
    scoreboard players reset @s zl.player_sit.time
    data remove storage leinad_temp:game sit
    advancement revoke @s only zl.player_sit:leave_sit
##
