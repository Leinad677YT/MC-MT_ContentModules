scoreboard players set #temp_entity zl.inf_garden.aux_content 0
execute on passengers if entity @s[type=item_display,tag=zl.inf_garden.entity.sculk_slime] run scoreboard players set #temp_entity zl.inf_garden.aux_content 1
execute if score #temp_entity zl.inf_garden.aux_content matches 0 run return fail

execute on passengers run item modify entity @s container.0 zl.inf_garden:turn_sculk_slime_dmg
execute on passengers run scoreboard players set @s zl.inf_garden.global 10
execute if data entity @s {Health:0.0f} on passengers run data merge entity @s {transformation:{left_rotation:[0f,0f,1f,-1f],translation:[0f,-1f,0f]},interpolation_duration:10}
playsound minecraft:entity.slime.hurt hostile @a ~ ~ ~ 1 1 0