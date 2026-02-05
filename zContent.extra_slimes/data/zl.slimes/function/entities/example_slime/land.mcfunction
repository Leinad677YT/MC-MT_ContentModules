execute on passengers run data merge entity @s {transformation:{scale:[1.1f,0.9f,1.1f]},interpolation_duration:3,start_interpolation:1}
execute on passengers run scoreboard players set @s zl.slimes.air 3
playsound minecraft:entity.slime.squish hostile @a ~ ~ ~ 1 1 0
tag @s add zl.entity.on_ground