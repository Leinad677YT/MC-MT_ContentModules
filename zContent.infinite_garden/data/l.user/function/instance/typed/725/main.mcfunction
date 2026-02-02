## AVOID REPEATING ON RELOAD
    $execute if data storage leinad_perm:data instance_db[{id:$(id)}].finished run return -1
##

## LOAD DIMENSION
    forceload add 0 0

    ## IF NOT DONE REITERATE
        execute unless loaded 0 0 0 run return 1
    ##
##

## CREATE GENERATOR GROUP
    
    ## MAKE IT
        execute store result storage leinad_temp:game inf_garden.macro.depth int 1 run scoreboard players get #config.depth zl.inf_garden.global
        data modify storage leinad_temp:game inf_garden.macro.on_disconnection set value 0
        $data modify storage leinad_temp:game inf_garden.macro.dimension set value "$(dimension)"
        execute store result storage leinad_temp:game inf_garden.macro.group_id int 1 run function l.user:inf_gen/new_group with storage leinad_temp:game inf_garden.macro
        data modify storage leinad_temp:game inf_garden.macro.group set from storage leinad_temp:game inf_garden.macro.group_id
    ##
    
    ## MARK IT
        function zl.inf_garden:zaux/load/mark_generator_group with storage leinad_temp:game inf_garden.macro
    ##
##

## PLACE ROOM
    

    ## DATABASE
        data modify storage leinad_temp:game inf_garden.macro.safe set value 0b
        execute store result score #create_id l.room.current store result storage leinad_temp:game inf_garden.macro.room_id int 1 run function l.user:inf_gen/new_room with storage leinad_temp:game inf_garden.macro
    ##

    ## ROOM VOLUME
        # scaled by 1000 (16x32x16 room)
        scoreboard players set #create_width l.room.current 16000
        scoreboard players set #create_height l.room.current 32000
        # ID is given before
        execute positioned 8.0 0.0 8.0 run function l.user:room/create
        $data modify storage leinad_temp:game inf_garden.macro.instance_id set value $(id)
        data modify storage leinad_temp:game inf_garden.macro.generator set value "start"
        function zl.inf_garden:zaux/load/add_clear_to_start
        function zl.inf_garden:zaux/load/mark_room with storage leinad_temp:game inf_garden.macro
    ##
##

## PLAYERS AND START ROOM

    ## PHYSICAL
        function l.user:instance/typed/725/start_game with storage leinad_temp:game inf_garden.macro
        function zl.inf_garden:zaux/place_room with storage leinad_temp:game inf_garden.macro
        execute if score #start_room zl.inf_garden.global matches 1 run function #zl.user:inf_garden/manage_post_place with storage leinad_temp:game inf_garden.macro
    ##
    
    ## PLAYERS
        $execute as @a[scores={l.instance.current=$(id)}] run function zl.inf_garden:manage_player
    ##
##


## EXIT LOAD STATUS
    forceload remove 0 0
    $data modify storage leinad_perm:data instance_db[{id:$(id)}].finished set value 1b
    tellraw @a {storage:"leinad_temp:game",nbt:"inf_garden.macro"}
    return -1
##

################################### DEBUGGING ########################################
### 1 > LOAD CHUNK
###
### 2 > START GENERADOR
###
### 3 > PLACE 0 0 ROOM
###   > MOVE PLAYERS