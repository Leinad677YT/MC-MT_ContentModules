tag @s add zl.vehicle
tag @s add zl.vehicle.motorbike
tag @s add zl.vehicle.motorbike.display

item replace entity @s container.0 with minecraft:poisonous_potato[minecraft:item_model="zl.vehicle:motorbike"]
data merge entity @s {Silent:true,DeathLootTable:"zl.vehicles:motorbike_break",Age:-100,AgeLocked:true}

ride @s mount @n[type=minecraft:block_display,tag=zl.vehicle.current,distance=0..2,limit=1]