## UPDATE DISPLAYS
    execute on passengers run item modify entity @s container.0 zl.slimes:slime_dmg_on
    execute on passengers run scoreboard players set @s zl.slimes.dmg 10

    ## DEATH ANIMATION
        tag @s add zl.entity.temp_current
        execute at @s unless entity @e[tag=zl.entity.temp_current,distance=0,limit=1] on passengers run data merge entity @s {transformation:{left_rotation:[0f,0f,1f,-1f],translation:[0f,-1f,0f]},interpolation_duration:10,start_interpolation:0}
        execute at @s unless entity @e[tag=zl.entity.temp_current,distance=0,limit=1] on passengers run tag @s add zl.entity.is_dying
        tag @s remove zl.entity.temp_current
    ##
##

## PLAYSOUND
    playsound minecraft:entity.slime.hurt hostile @a ~ ~ ~ 1 1 0
##
