$execute on passengers run data merge entity @s {transformation:{scale:[$(scale_squish)f,$(scale_expand)f,$(scale_squish)f]},interpolation_duration:3,start_interpolation:0}
execute on passengers run scoreboard players set @s zl.slimes.air 3
playsound minecraft:entity.slime.jump hostile @a ~ ~ ~ 1 1 0
tag @s remove zl.entity.on_ground