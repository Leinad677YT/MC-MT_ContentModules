execute at @e[ type= minecraft:marker] run particle dust{color:1,scale:2} ~ ~ ~

## ENTITIES
    execute as @e[type=item_display,tag=zl.inf_garden.entity.sculk_slime] at @s run function zl.inf_garden:entities/sculk_slime/tick
##