## "remove" MODE SAVING
    $data modify storage leinad_perm:online session[{id:$(id)}].mode set value "__invalid__"
##

## SEND TO HUB
    function zl.main_menu:send_to {mode:"hub"}
    scoreboard players set @s l.menu.stage_main -677
##
