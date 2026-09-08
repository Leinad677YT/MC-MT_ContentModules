## NOT FOR THIS MODULE => RETURN
    execute unless entity @s[tag=zl.inf_garden.left_game] unless score #temp l.room.current matches ..-1073741824 unless score @s l.room.current matches ..-1073741824 run return fail
##
## LEFT A GAME
    execute if entity @s[tag=zl.inf_garden.left_game] store result storage leinad_temp:game "zl.inf_garden".temp_exit.id int 1 run scoreboard players get @s l.player.id
    execute if entity @s[tag=zl.inf_garden.left_game] run function zl.inf_garden:zaux/exit_redirect with storage leinad_temp:game "zl.inf_garden".temp_exit
    execute if entity @s[tag=zl.inf_garden.left_game] run return run function zl.inf_garden:zaux/exit_clear with storage leinad_temp:game "zl.inf_garden".temp_exit
##

## FROM ROOM TO NOTHING
    execute if score #temp l.room.current matches ..-1073741824 unless score @s l.room.current matches -2147483648..2147483647 if entity @s[tag=zl.inf_garden.in_game,scores={l.instance.current=-2147483648..2147483647}] run function l.user:instance/kick_self
    execute if score #temp l.room.current matches ..-1073741824 unless score @s l.room.current matches -2147483648..2147483647 if entity @s[tag=zl.inf_garden.in_game] run tag @s remove l.room.detect
    execute if score #temp l.room.current matches ..-1073741824 unless score @s l.room.current matches -2147483648..2147483647 if entity @s[tag=zl.inf_garden.in_game] run tag @s remove zl.inf_garden.in_game
##
