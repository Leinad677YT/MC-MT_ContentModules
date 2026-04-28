execute store result score #bool zl.survival.whitelisted run scoreboard players get @s zl.survival.whitelisted
execute if entity @s[tag=zl.tag.nutria] run scoreboard players set #bool zl.survival.whitelisted 1
execute if entity @s[tag=zl.tag.vip] run scoreboard players set #bool zl.survival.whitelisted 1
execute if entity @s[tag=zl.tag.donor] run scoreboard players set #bool zl.survival.whitelisted 1
execute if entity @s[tag=zl.tag.fic] run scoreboard players set #bool zl.survival.whitelisted 1
execute if entity @s[tag=zl.tag.ingles] run scoreboard players set #bool zl.survival.whitelisted 1
return run execute if score #bool zl.survival.whitelisted matches 0