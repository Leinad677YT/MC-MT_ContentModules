tag @s add zl.sit.mount
$team join z_p$(name) @s
$ride @a[tag=zl.sit.self,team=z_p$(name),dy=1,limit=1] mount @s
execute on passengers at @s run function #zl.user:player_sit/sit