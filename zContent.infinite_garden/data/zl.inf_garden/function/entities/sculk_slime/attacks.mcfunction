scoreboard players set #temp_entity zl.inf_garden.aux_content 0
execute on passengers if entity @s[type=item_display,tag=zl.inf_garden.entity.sculk_slime] run scoreboard players set #temp_entity zl.inf_garden.aux_content 1
execute if score #temp_entity zl.inf_garden.aux_content matches 0 run return fail

playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 1 1 0