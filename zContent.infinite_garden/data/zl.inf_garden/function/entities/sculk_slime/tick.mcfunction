## THE MAGMA IS DED?
    scoreboard players set #temp_slime zl.inf_garden.global 0
    execute on vehicle if entity @s[tag=zl.inf_garden.entity.sculk_slime.root] run scoreboard players set #temp_slime zl.inf_garden.global 1
    execute if score #temp_slime zl.inf_garden.global matches 0 run return run kill @s
##

## THE MAGMA IS DYING
    execute on vehicle unless data entity @s {Health:0.0f} run scoreboard players set #temp_bool zl.inf_garden.global 1
##

## GO BACK TO NORMAL AFTER BEING HIT
    execute unless score @s zl.inf_garden.global matches ..0 run scoreboard players remove @s zl.inf_garden.global 1
    execute unless score @s zl.inf_garden.aux_content matches ..0 run scoreboard players remove @s zl.inf_garden.aux_content 1
    execute if score @s zl.inf_garden.global matches ..0 if score #temp_bool zl.inf_garden.global matches 1 run item modify entity @s container.0 zl.inf_garden:turn_sculk_slime_dmg_
    execute if score @s zl.inf_garden.global matches ..0 run scoreboard players reset @s zl.inf_garden.global
##

## ROTATE AS MAGMA
    execute on vehicle rotated as @s on passengers run rotate @s ~ ~
##

## JUMPS
    execute if score #temp_bool zl.inf_garden.global matches 1 unless score @s zl.inf_garden.aux_content matches 1.. run data merge entity @s {transformation:{scale:[1.0f,1.0f,1.0f]},interpolation_duration:10}
    execute if score @s zl.inf_garden.aux_content matches ..0 run scoreboard players reset @s zl.inf_garden.aux_content
    execute if score #temp_bool zl.inf_garden.global matches 1 on vehicle if predicate zl.inf_garden:on_ground unless entity @s[tag=zl.inf_garden.entity.on_ground] run function zl.inf_garden:entities/sculk_slime/land
    execute if score #temp_bool zl.inf_garden.global matches 1 on vehicle unless predicate zl.inf_garden:on_ground if entity @s[tag=zl.inf_garden.entity.on_ground] run function zl.inf_garden:entities/sculk_slime/jump
    scoreboard players reset #temp_bool zl.inf_garden.global
##