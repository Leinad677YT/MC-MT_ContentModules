## type= minecraft:magma_cube
## size= smol

## should?
    execute unless entity @s[type=magma_cube,tag=zl.inf_garden.entity.sculk_slime] run return fail
##

## MARK SELF
    tag @s add zl.inf_garden.entity.sculk_slime.root
    tag @s add zl.inf_garden.entity.sculk_slime
    #tag @s remove zl.inf_garden.entity.sculk_slime.spawn
##

## DISPLAY
    tag @s add zl.inf_garden.temp_current
    execute at @s summon item_display run function zl.inf_garden:entities/sculk_slime/aux_spawn
    tag @s remove zl.inf_garden.temp_current
##

## ATRIB
    # atk
    attribute @s attack_damage base set 6
    # health
    attribute @s max_health base set 12
    effect give @s instant_health 1 10 true
    # hide_self
    effect give @s invisibility infinite 0 true
    data modify entity @s Silent set value true
    # size
    data modify entity @s Size set value 0
    attribute @s scale base set 3
##

## LOOT
    data modify entity @s DeathLootTable set value "zl.inf_garden:entity/sculk_slime"
##

## hitdet
    function l.user:hit_det/prepare_entity
##
