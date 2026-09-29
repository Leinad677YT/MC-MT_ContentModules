$execute on passengers run data merge entity @s {transformation:{scale:[$(scale_expand)f,$(scale_squish)f,$(scale_expand)f]},interpolation_duration:3,start_interpolation:1}
execute on passengers run scoreboard players set @s zl.slimes.air 3
playsound minecraft:entity.slime.squish hostile @a ~ ~ ~ 1 1 0
$execute positioned as @s run particle dust{color:[0.2,0.8,0.8],scale:$(scale_squish)} ~ ~ ~ $(scale_particle) 0.3 $(scale_particle) 0 30 normal
tag @s add zl.entity.on_ground