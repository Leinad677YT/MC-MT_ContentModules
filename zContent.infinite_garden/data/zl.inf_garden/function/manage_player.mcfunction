## GET IDS
    execute store result storage leinad_temp:game inf_garden.macro.player_id int 1 run scoreboard players get @s l.player.id
    execute store result storage leinad_temp:game inf_garden.macro.session int 1 run scoreboard players get @s l.login.session_id
##

## BEFORE CHANGING MODE
    data modify storage leinad_temp:game inf_garden.macro.mode set value "inf_garden"

    execute at @s run function #zl.user:inf_garden/manage_player_join

    attribute @s minecraft:block_interaction_range base reset
    attribute @s minecraft:entity_interaction_range base reset
    attribute @s minecraft:max_health base reset
##


## LOAD MODE
    
    ## CHANGE SESSION DATA
        function zl.inf_garden:zaux/mark_session with storage leinad_temp:game inf_garden.macro
    ##

    tag @s remove l.inventory.save_pos
    tag @s remove l.inventory.save_spawn
    function l.user:inventory/load/items with storage leinad_temp:game inf_garden.macro
    tp 8.0 8.0 8.0
    tag @s add zl.inf_garden.in_game
    tag @s add l.room.detect
##