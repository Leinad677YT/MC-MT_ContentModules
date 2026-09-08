## RETURN IF NOT FOR ME
    execute unless entity @s[tag=zl.inf_garden.in_game] run return fail
##

## IF USER WANTS CONTROL
    scoreboard players set #zl.temp zl.inf_garden.global 0
    execute store result storage leinad_temp:game "zl.inf_garden".death.id int 1 run scoreboard players get @s l.player.id
    execute store result score #zl.temp zl.inf_garden.global run function zl.inf_garden:zaux/died_redirect with storage leinad_temp:game "zl.inf_garden".death
    data remove storage leinad_temp:game "zl.inf_garden".death
    execute unless score #zl.temp zl.inf_garden.global matches 0..1 run return fail
##

## ELSE, KICK FROM INSTANCE
    tag @s remove zl.inf_garden.left_game
    tag @s remove zl.inf_garden.in_game
    tag @s remove l.room.detect
    tag @s remove l.room.inside
    function l.user:instance/kick_self
##
