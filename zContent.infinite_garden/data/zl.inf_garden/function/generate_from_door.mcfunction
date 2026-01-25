## REMOVE MARK
    tag @s remove zl.inf_garden.door.to_generate
##

## SAVE DATA TO USE LATER
    data modify storage leinad_temp:game inf_garden.generation set from entity @s data
    data modify storage leinad_temp:game inf_garden.generation.Rotation set from entity @s Rotation
##

## REDIRECT TO GENERATOR
    $function zl.inf_garden:generation/$(generator)/main with storage leinad_temp:game inf_garden.generation
##

## REMOVE TEMP DATA
    data remove storage leinad_temp:game inf_garden.generation
##