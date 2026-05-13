## NOT THIS MODE => RETURN
    $execute unless data storage leinad_perm:online session[{id:$(id),mode:"hub"}] run return fail
##

## LOAD
    gamemode adventure @s
    attribute @s minecraft:attack_damage base set -1000
    attribute @s minecraft:block_interaction_range base set -1000
    effect give @s night_vision infinite 0 true
    effect give @s saturation infinite 0 true
##

## DATA TAGS
    tag @s remove l.inventory.save_pos
    tag @s remove l.inventory.save_spawn
##

## MENU SCORES
    scoreboard players set @s l.menu.stage_main -677
##