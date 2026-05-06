particle dust{color:1,scale:1} ~ ~ ~ 0 0 0 1 1 normal

scoreboard players set #vehicle.is_alive zl.temp 0
execute on vehicle if entity @s[tag=zl.vehicle.motorbike] run scoreboard players set #vehicle.is_alive zl.temp 1

execute if score #vehicle.is_alive zl.temp matches 0 run function zl.vehicles:motorbike/break