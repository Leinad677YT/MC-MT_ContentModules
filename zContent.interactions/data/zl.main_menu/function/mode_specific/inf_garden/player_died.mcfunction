## REMOVE INSTANCE DATA
    tag @s remove zl.inf_garden.in_game
    tag @s remove l.room.detect
    tag @s remove l.room.inside
    scoreboard players reset @s l.room.current
    execute if score @s l.instance.current matches -2147483648..2147483647 run function l.user:instance/kick_self
##

## SEND TO HUB
    function zl.main_menu:send_to {mode:"hub"}
    scoreboard players set @s l.menu.stage_main -677
##


say im ded
## REMOVE OTHER PACKS FROM ACCESS TO THE CALL
    return 2
##