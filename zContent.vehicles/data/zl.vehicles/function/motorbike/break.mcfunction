## SFX
    playsound entity.iron_golem.damage neutral @a[distance=0..40] ~ ~ ~ 1 0.3 0
    playsound entity.generic.explode neutral @a[distance=0..40] ~ ~ ~ 1 0.85 0
##

## VFX
    function zl.vehicles:zaux/explosion_particles
##

## REMOVE ENTTIES
    execute on passengers run kill @s
    kill @s
##