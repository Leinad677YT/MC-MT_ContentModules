ride @s mount @e[type=magma_cube,tag=zl.inf_garden.temp_current,distance=0..5,limit=1]

item replace entity @s container.0 with minecraft:poisonous_potato[item_model="zl.inf_garden:entities/sculk_slime"]

data modify entity @s interpolation_duration set value 5
data modify entity @s teleport_duration set value 3
data modify entity @s transformation.translation[1] set value -1
tag @s add zl.inf_garden.entity.sculk_slime
