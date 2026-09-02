# As all doors inside the currently generating room

## SET FALLBACK TO 0
    data modify storage leinad_temp:game inf_garden.generation.id_2 set value 0
##

## GET ROOM ID OF CONNECTED DOOR
    execute store result score @s l.room.current store result storage leinad_temp:game inf_garden.generation.id_2 int 1 run data get entity @e[type=marker,tag=zl.inf_garden.door,distance=0.1..1,limit=1] data.room_id
##

## SET ID OF GENERATED ROOM INTO THE OTHER SIDE'S DOOR
    execute store result score @e[type=marker,tag=zl.inf_garden.door,distance=0.1..1,limit=1] l.room.current run data get storage leinad_temp:game inf_garden.generation.new_room_id
##

## IF CONNECTED, LINK BOTH ROOMS
    execute if data storage leinad_temp:game inf_garden.generation{id_2:0} run return fail

    data modify storage leinad_temp:game inf_garden.generation.id_1 set from storage leinad_temp:game inf_garden.generation.new_room_id
    function l.user:inf_gen/link_room_twosided with storage leinad_temp:game inf_garden.generation

    tag @s add zl.inf_garden.door.connected
    tag @e[type=marker,tag=zl.inf_garden.door,distance=0.1..1,limit=1] add zl.inf_garden.door.connected
##