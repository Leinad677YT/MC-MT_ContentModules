## GET PLAYERDATA
    execute store result storage leinad_temp:game main_menu.id int 1 run scoreboard players get @s l.player.id
    function zl.main_menu:zaux/get_playerdata with storage leinad_temp:game main_menu
##

## CHECK IF AVAILABLE
    $data modify storage leinad_temp:game main_menu._aux_mode set value "$(mode)"
    $execute store success score #bool l.core.temp_condition run function zl.user:_mode/not_allow_$(mode) with storage leinad_temp:game main_menu
    execute if score #bool l.core.temp_condition matches 1 run data remove storage leinad_temp:game main_menu
    execute if score #bool l.core.temp_condition matches 1 run tellraw @s [{text:"[!] ",color:"red"},{translate:"leinad.mode.tellraw.not_whitelisted","fallback":"You are not whitelisted on this mode!",color:"gray"}]
    execute if score #bool l.core.temp_condition matches 1 run return fail
##

## REDIRECT
    function l.user:player/save with storage leinad_temp:game main_menu
    scoreboard players reset @s l.menu.stage_main
    scoreboard players reset @s l.menu.stage_secondary
    $function l.user:player/load {mode:"$(mode)"}
##

## REMOVE TEMP DATA
    data remove storage leinad_temp:game main_menu
##
