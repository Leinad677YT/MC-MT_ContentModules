## load the chunks to fill in
    forceload add -81 -81 81 81
##

## if NOT loaded, retry next tick
    scoreboard players set #temp zl.menu_trigger.delay 0

    # 81 65 49 33 17 1 -1 -17 -33 -49 -65 -81
    execute if loaded -81 0 -81 if loaded -81 0 -65 if loaded -81 0 -49 if loaded -81 0 -33 if loaded -81 0 -17 if loaded -81 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded -81 0 81 if loaded -81 0 65 if loaded -81 0 49 if loaded -81 0 33 if loaded -81 0 17 if loaded -81 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded -65 0 -81 if loaded -65 0 -65 if loaded -65 0 -49 if loaded -65 0 -33 if loaded -65 0 -17 if loaded -65 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded -65 0 81 if loaded -65 0 65 if loaded -65 0 49 if loaded -65 0 33 if loaded -65 0 17 if loaded -65 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded -49 0 -81 if loaded -49 0 -65 if loaded -49 0 -49 if loaded -49 0 -33 if loaded -49 0 -17 if loaded -49 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded -49 0 81 if loaded -49 0 65 if loaded -49 0 49 if loaded -49 0 33 if loaded -49 0 17 if loaded -49 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded -33 0 -81 if loaded -33 0 -65 if loaded -33 0 -49 if loaded -33 0 -33 if loaded -33 0 -17 if loaded -33 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded -33 0 81 if loaded -33 0 65 if loaded -33 0 49 if loaded -33 0 33 if loaded -33 0 17 if loaded -33 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded -17 0 -81 if loaded -17 0 -65 if loaded -17 0 -49 if loaded -17 0 -33 if loaded -17 0 -17 if loaded -17 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded -17 0 81 if loaded -17 0 65 if loaded -17 0 49 if loaded -17 0 33 if loaded -17 0 17 if loaded -17 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded -1 0 -81 if loaded -1 0 -65 if loaded -1 0 -49 if loaded -1 0 -33 if loaded -1 0 -17 if loaded -1 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded -1 0 81 if loaded -1 0 65 if loaded -1 0 49 if loaded -1 0 33 if loaded -1 0 17 if loaded -1 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded 81 0 -81 if loaded 81 0 -65 if loaded 81 0 -49 if loaded 81 0 -33 if loaded 81 0 -17 if loaded 81 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded 81 0 81 if loaded 81 0 65 if loaded 81 0 49 if loaded 81 0 33 if loaded 81 0 17 if loaded 81 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded 65 0 -81 if loaded 65 0 -65 if loaded 65 0 -49 if loaded 65 0 -33 if loaded 65 0 -17 if loaded 65 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded 65 0 81 if loaded 65 0 65 if loaded 65 0 49 if loaded 65 0 33 if loaded 65 0 17 if loaded 65 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded 49 0 -81 if loaded 49 0 -65 if loaded 49 0 -49 if loaded 49 0 -33 if loaded 49 0 -17 if loaded 49 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded 49 0 81 if loaded 49 0 65 if loaded 49 0 49 if loaded 49 0 33 if loaded 49 0 17 if loaded 49 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded 33 0 -81 if loaded 33 0 -65 if loaded 33 0 -49 if loaded 33 0 -33 if loaded 33 0 -17 if loaded 33 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded 33 0 81 if loaded 33 0 65 if loaded 33 0 49 if loaded 33 0 33 if loaded 33 0 17 if loaded 33 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded 17 0 -81 if loaded 17 0 -65 if loaded 17 0 -49 if loaded 17 0 -33 if loaded 17 0 -17 if loaded 17 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded 17 0 81 if loaded 17 0 65 if loaded 17 0 49 if loaded 17 0 33 if loaded 17 0 17 if loaded 17 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute if loaded 1 0 -81 if loaded 1 0 -65 if loaded 1 0 -49 if loaded 1 0 -33 if loaded 1 0 -17 if loaded 1 0 -1 run scoreboard players add #temp zl.menu_trigger.delay 1
    execute if loaded 1 0 81 if loaded 1 0 65 if loaded 1 0 49 if loaded 1 0 33 if loaded 1 0 17 if loaded 1 0 1 run scoreboard players add #temp zl.menu_trigger.delay 1

    execute unless score #temp zl.menu_trigger.delay matches 24 run return run schedule function zl.main_menu:load 1
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
    fillbiome -62 0 -62 62 1 62 zl.main_menu:hub
    fillbiome -62 2 -62 62 3 62 zl.main_menu:hub
    fillbiome -62 4 -62 62 5 62 zl.main_menu:hub
    fillbiome -62 6 -62 62 7 62 zl.main_menu:hub
    fillbiome -62 8 -62 62 9 62 zl.main_menu:hub
    fillbiome -62 10 -62 62 11 62 zl.main_menu:hub
    fillbiome -62 12 -62 62 13 62 zl.main_menu:hub
    fillbiome -62 14 -62 62 15 62 zl.main_menu:hub
    fillbiome -62 16 -62 62 17 62 zl.main_menu:hub
    fillbiome -62 18 -62 62 19 62 zl.main_menu:hub
    fillbiome -62 20 -62 62 21 62 zl.main_menu:hub
    fillbiome -62 22 -62 62 23 62 zl.main_menu:hub
    fillbiome -62 24 -62 62 25 62 zl.main_menu:hub
    fillbiome -62 26 -62 62 27 62 zl.main_menu:hub
    fillbiome -62 28 -62 62 29 62 zl.main_menu:hub
    fillbiome -62 30 -62 62 31 62 zl.main_menu:hub
    fillbiome -62 32 -62 62 33 62 zl.main_menu:hub
    fillbiome -62 34 -62 62 35 62 zl.main_menu:hub
    fillbiome -62 36 -62 62 37 62 zl.main_menu:hub
    fillbiome -62 38 -62 62 39 62 zl.main_menu:hub
    fillbiome -62 40 -62 62 41 62 zl.main_menu:hub
    fillbiome -62 42 -62 62 43 62 zl.main_menu:hub
    fillbiome -62 44 -62 62 45 62 zl.main_menu:hub
    fillbiome -62 46 -62 62 47 62 zl.main_menu:hub
##

## remove unneeded forceloads
    forceload remove -81 -81 81 -17
    forceload remove -81 17 81 81 

    forceload remove 17 -17 81 17
    forceload remove -81 -17 -17 17
##
