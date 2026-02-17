## SET ITEM MODEL
    item replace entity @s container.0 with minecraft:poisonous_potato[item_model="zl.entity:entities/example_slime"]
##

## SET COMMON DATA
    data modify entity @s interpolation_duration set value 5
    data modify entity @s teleport_duration set value 3
    data modify entity @s transformation.translation[1] set value 0
##

## SET SCALE FROM ROOT
    execute store result entity @s transformation.scale[0] float 1.0 \ 
            store result entity @s transformation.scale[1] float 1.0 \
            store result entity @s transformation.scale[2] float 1.0 run scoreboard players get #sync.aux zl.temp
##

## SCALE DATA
    execute store result entity @s data.zl_entity.scale_base float 1.0 \
            store result entity @s data.zl_entity.scale_squish float 0.9 \
            store result entity @s data.zl_entity.scale_expand float 1.1 run scoreboard players get #sync.aux zl.temp
##


## TAG AND CONTINUE
    tag @s add zl.entity.example_slime
    return 1
##
