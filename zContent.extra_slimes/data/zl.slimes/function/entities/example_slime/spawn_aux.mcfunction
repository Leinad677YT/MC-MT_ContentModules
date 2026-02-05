item replace entity @s container.0 with minecraft:poisonous_potato[item_model="zl.entity:entities/example_slime"]

data modify entity @s interpolation_duration set value 5
data modify entity @s teleport_duration set value 3
data modify entity @s transformation.translation[1] set value -1

tag @s add zl.entity.example_slime
return 1