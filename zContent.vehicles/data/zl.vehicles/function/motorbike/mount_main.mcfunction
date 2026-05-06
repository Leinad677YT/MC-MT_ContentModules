tag @s add zl.vehicle
tag @s add zl.vehicle.motorbike

data merge entity @s {Silent:true,DeathLootTable:"zl.vehicles:motorbike_break"}

attribute @s minecraft:max_health base set 100
attribute @s minecraft:scale base set 2
attribute @s minecraft:movement_speed base set -1000

effect give @s minecraft:instant_health 1 20 true
effect give @s minecraft:invisibility infinite 0 true

team join zl.vehicle @s

ride @n[type=minecraft:block_display,tag=zl.vehicle.current,distance=0..2,limit=1] mount @s