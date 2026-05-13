## NOT THIS MODE => RETURN
    $execute unless data storage leinad_perm:online session[{id:$(id),mode:"survival"}] run return fail
##

## LOAD
    gamemode survival @s
    attribute @s minecraft:attack_damage base reset
    attribute @s minecraft:block_interaction_range base reset
    effect clear @s night_vision
    effect clear @s saturation
##

## DATA TAGS
    tag @s add l.inventory.save_pos
    tag @s add l.inventory.save_spawn
##
