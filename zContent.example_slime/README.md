# EXAMPLE LIBRARY

## Content

This pack is an example on how to implement custom slime variants with just item displays and an enchantment.

As of right now, the only thing that it doesn't mimic is changing the appearance of the slimes to being damaged when the damage source is not an entity.

To properly set a 3d model to the slimes that has the vanilla hitbox, you have to make an item model that's 0.5x0.5x0.5, whose bottom is touching y=0 and is centered at x=8, z=8 [pixels].

## How to make it work

To test out the example slime, you need to:
1. summon a magmacube with the tag `zl.entity.example_slime`
2. execute as the magmacube `function zl.slimes:entities/example_slime/spawn`

To recursively apply the custom aspects to it's childs, you will need to:
1. execute as all magmacubes with the tag `zl.entity.example_slime.child` `function zl.slimes:entities/example_slime/spawn_child` 

This, gets automated by the Multiplayer Template new_entity module, so if you have it installed, don't worry about it!