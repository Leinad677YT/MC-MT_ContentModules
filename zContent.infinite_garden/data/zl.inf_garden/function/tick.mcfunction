## DEBUGGING
    execute at @e[ type= minecraft:marker] run particle dust{color:1,scale:2} ~ ~ ~
##

## ENTITIES
    execute as @e[type=item_display,tag=zl.entity.sculk_slime] at @s run function zl.inf_garden:entities/sculk_slime/tick with entity @s data.zl_entity
    execute at @e[type= minecraft:marker , tag= zl.inf_garden.exit.hole] positioned ~-0.75 ~ ~-0.75 as @a[dx=1.5, dy=1.5,dz=1.5] run function zl.inf_garden:exit
##