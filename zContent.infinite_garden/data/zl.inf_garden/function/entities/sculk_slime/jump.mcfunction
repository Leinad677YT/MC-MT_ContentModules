execute on passengers run data merge entity @s {transformation:{scale:[0.9f,1.05f,0.9f]},interpolation_duration:3,start_interpolation:0}
execute on passengers run scoreboard players set @s zl.inf_garden.aux_content 3
playsound minecraft:entity.slime.jump hostile @a ~ ~ ~ 1 1 0
tag @s remove zl.inf_garden.entity.on_ground