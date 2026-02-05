## type= minecraft:magma_cube
## size= smol

## should?
    execute unless entity @s[type=magma_cube,tag=zl.entity.example_slime] run return fail
##

## MARK SELF
    tag @s add zl.entity.example_slime.root
    tag @s add zl.entity.example_slime
##

## DISPLAY
    tag @s add zl.entity.temp_current
    execute at @s summon item_display if function zl.slimes:entities/example_slime/spawn_aux run ride @s mount @n[type=minecraft:magma_cube,tag=zl.entity.temp_current,distance=0,limit=1]
    tag @s remove zl.entity.temp_current
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
    data modify entity @s DeathLootTable set value "zl.slimes:entity/example_slime"
##

## hitdet
    #item replace entity @s armor.feet with minecraft:poisonous_potato[minecraft:enchantments={"zl.slimes:example_slime":1}]
    item replace entity @s weapon.mainhand with minecraft:poisonous_potato[minecraft:enchantments={"zl.slimes:example_slime":1,"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}]
##
