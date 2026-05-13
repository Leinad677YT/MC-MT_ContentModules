tag @s add zl.vehicle
tag @s add zl.vehicle.motorbike

item replace entity @s armor.feet with minecraft:poisonous_potato[minecraft:equippable={slot:"feet",swappable:false},minecraft:enchantments={"minecraft:vanishing_curse":1,"zl.vehicles:vehicle_type/motorbike":1}]
data merge entity @s {Silent:true,DeathLootTable:"zl.vehicles:motorbike_break",Age:-100,AgeLocked:true}

attribute @s minecraft:max_health base set 100
attribute @s minecraft:scale base set 1.5
attribute @s minecraft:movement_speed base set -1000

effect give @s minecraft:instant_health 1 20 true
#effect give @s minecraft:invisibility infinite 0 true

team join zl.vehicle @s

ride @n[type=minecraft:block_display,tag=zl.vehicle.current,distance=0..2,limit=1] mount @s