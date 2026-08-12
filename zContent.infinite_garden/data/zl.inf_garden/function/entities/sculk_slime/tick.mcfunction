## THE MAGMA IS DED?
    scoreboard players set #sync.has_passenger zl.temp 0
    execute on vehicle if entity @s[tag=zl.entity.sculk_slime.root] run scoreboard players set #sync.has_passenger zl.temp 1
    execute if score #sync.has_passenger zl.temp matches 0 run return run kill @s
##

## THE MAGMA IS DYING
    execute unless entity @s[tag=zl.entity.is_dying] run scoreboard players set #sync.bool zl.temp 1
##

## MANAGE HIT FRAMES
    execute unless score @s zl.slimes.dmg matches ..0 run scoreboard players remove @s zl.slimes.dmg 1
    execute if score @s zl.slimes.dmg matches ..0 if score #sync.bool zl.temp matches 1 run item modify entity @s container.0 zl.inf_garden:turn_sculk_slime_dmg_
    execute if score @s zl.slimes.dmg matches ..0 run scoreboard players reset @s zl.slimes.dmg
##

## ROTATE AS MAGMA
    execute on vehicle rotated as @s on passengers run rotate @s ~ ~
##

## MANAGE AIR ANIMATION (back to normal shape)
    execute unless score @s zl.slimes.air matches ..0 run scoreboard players remove @s zl.slimes.air 1
    $execute if score #sync.bool zl.temp matches 1 unless score @s zl.slimes.air matches 1.. run data merge entity @s {transformation:{scale:[$(scale_base)f,$(scale_base)f,$(scale_base)f]},interpolation_duration:10}
    execute if score @s zl.slimes.air matches ..0 run scoreboard players reset @s zl.slimes.air
##

## MANAGE JUMPS (squish)
    execute if score #sync.bool zl.temp matches 1 on vehicle if predicate zl.inf_garden:on_ground unless entity @s[tag=zl.entity.on_ground] run function zl.inf_garden:entities/sculk_slime/land with entity @s data.zl_entity
    execute if score #sync.bool zl.temp matches 1 on vehicle unless predicate zl.inf_garden:on_ground if entity @s[tag=zl.entity.on_ground] run function zl.inf_garden:entities/sculk_slime/jump with entity @s data.zl_entity
    scoreboard players reset #sync.bool zl.temp
##