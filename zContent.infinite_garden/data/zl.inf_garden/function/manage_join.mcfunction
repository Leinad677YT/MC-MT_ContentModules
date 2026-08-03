## REMOVE FROM GAME
    tag @s remove zl.inf_garden.in_game
    tag @s remove l.room.detect
##

## NOT PLAYED INF_GARDEN => RETURN
    $execute if data storage z_p$(lower):root data.mode.inf_garden run return fail
##

## SET DEFAULT
    $function l.user:player/set_mode_to_default {lower:$(lower),mode:"inf_garden"}
##