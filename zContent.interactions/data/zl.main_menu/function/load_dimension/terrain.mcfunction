## load the chunks to fill in
    forceload add -50 -50 50 50
##

## if NOT loaded, retry next tick
    scoreboard players set #temp zl.menu_trigger.delay 0

    # 49 33 17 1 -1 -17 -33 -49
    execute if loaded -49 0 -49 if loaded -49 0 -33 if loaded -49 0 -17 if loaded -49 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded -49 0 49 if loaded -49 0 33 if loaded -49 0 17 if loaded -49 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded -33 0 -49 if loaded -33 0 -33 if loaded -33 0 -17 if loaded -33 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded -33 0 49 if loaded -33 0 33 if loaded -33 0 17 if loaded -33 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded -17 0 -49 if loaded -17 0 -33 if loaded -17 0 -17 if loaded -17 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded -17 0 49 if loaded -17 0 33 if loaded -17 0 17 if loaded -17 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded -1 0 -49 if loaded -1 0 -33 if loaded -1 0 -17 if loaded -1 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded -1 0 49 if loaded -1 0 33 if loaded -1 0 17 if loaded -1 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded 49 0 -49 if loaded 49 0 -33 if loaded 49 0 -17 if loaded 49 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded 49 0 49 if loaded 49 0 33 if loaded 49 0 17 if loaded 49 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded 33 0 -49 if loaded 33 0 -33 if loaded 33 0 -17 if loaded 33 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded 33 0 49 if loaded 33 0 33 if loaded 33 0 17 if loaded 33 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded 17 0 -49 if loaded 17 0 -33 if loaded 17 0 -17 if loaded 17 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded 17 0 49 if loaded 17 0 33 if loaded 17 0 17 if loaded 17 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded 1 0 -49 if loaded 1 0 -33 if loaded 1 0 -17 if loaded 1 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded 1 0 49 if loaded 1 0 33 if loaded 1 0 17 if loaded 1 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute unless score #temp zl.menu_trigger.delay matches 16 run return run schedule function zl.main_menu:load_dimension/terrain 1
##

## place the templates
    place template zl.main_menu:hub/center -16 0 -16 none none 1 0 strict
    place template zl.main_menu:hub/center 16 0 -16 clockwise_90 none 1 0 strict
    place template zl.main_menu:hub/center 16 0 16 180 none 1 0 strict
    place template zl.main_menu:hub/center -16 0 16 counterclockwise_90 none 1 0 strict

    place template zl.main_menu:hub/side -64 0 16 counterclockwise_90 none 1 0 strict
    place template zl.main_menu:hub/side -16 0 -64 none none 1 0 strict
    place template zl.main_menu:hub/side 64 0 -16 clockwise_90 none 1 0 strict
    place template zl.main_menu:hub/side 16 0 64 180 none 1 0 strict

    place template zl.main_menu:hub/corner -64 0 -16 counterclockwise_90 none 1 0 strict
    place template zl.main_menu:hub/corner -16 0 64 180 none 1 0 strict
    place template zl.main_menu:hub/corner 16 0 -64 none none 1 0 strict
    place template zl.main_menu:hub/corner 64 0 16 clockwise_90 none 1 0 strict
##

## change biomes
    fillbiome -62 0 -62 62 2 62 zl.main_menu:hub
    fillbiome -62 3 -62 62 5 62 zl.main_menu:hub
    fillbiome -62 6 -62 62 8 62 zl.main_menu:hub
    fillbiome -62 9 -62 62 11 62 zl.main_menu:hub
    fillbiome -62 12 -62 62 14 62 zl.main_menu:hub
    fillbiome -62 15 -62 62 17 62 zl.main_menu:hub
    fillbiome -62 18 -62 62 20 62 zl.main_menu:hub
    fillbiome -62 21 -62 62 23 62 zl.main_menu:hub
    fillbiome -62 24 -62 62 26 62 zl.main_menu:hub
    fillbiome -62 27 -62 62 29 62 zl.main_menu:hub
    fillbiome -62 30 -62 62 32 62 zl.main_menu:hub
    fillbiome -62 33 -62 62 35 62 zl.main_menu:hub
    fillbiome -62 36 -62 62 38 62 zl.main_menu:hub
    fillbiome -62 39 -62 62 41 62 zl.main_menu:hub
    fillbiome -62 42 -62 62 44 62 zl.main_menu:hub
    fillbiome -62 45 -62 62 47 62 zl.main_menu:hub
##

## remove unneeded forceloads
    forceload remove -50 -50 50 -17
    forceload remove -50 17 50 50 

    forceload remove 17 -17 50 17
    forceload remove -50 -17 -17 17
##
