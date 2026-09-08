> [!WARNING]
>  THIS IS STILL BEING WORKED ON, PLEASE STAND BY

zl.inf_garden.exit.hole

# GENERATION LIBRARY

> [!NOTE]
> Remember, this is a standalone library that requires the main library, **this is not a module** so compatibility with external content is not ensured (it should work fine tho).

## Content

This pack is a rewrite of the generator I made for a mapjam (alo gente de la jam :3). It creates an instance inside the specified dimension and moves all players inside the same serverside team there. The main point of this is to infinitely generate a dungeon starting with only 1 room, where the rooms dissapear if you get too far away.

> [!NOTE]
> As you may have guessed, this is complex, so there are some restrictions.

### Specification
- **function**
    > `zl.user:inf_garden/create_game`
        > This creates a game (sends the serverside group of the executing player into an instance)
- **instance type and instance location**
    > `725`
        > By default, there's only 1 instance location for the type, which has the `725` id as well.
        > You can create more locations by adding them to the database [see inside **instance_manager**]
- **function call**  
    - `#zl.user:inf_garden/start_game`  
        > Called with: 
        > - `$(instance_id)`: id of the currently generating instance
        > - `$(dimension)`: string of the target dimension (call execution context is already `in $(dimension)`)  
        > - `$(group)`: group of the inf_room_generator in use 
        >  
        > Used to set the start room and it's generators on instance creation instead of the default.
        > If you set `leinad_temp:game inf_garden.macro.template` to the string of the template you wanna use and return `1`, the starting room will not be the default and you will be granted control after it has been placed. _You **have to** set the starting doors here aswell if that's the case and your generator uses them_.  
    - `#zl.user:inf_garden/manage_post_place`  
        > Called with: 
        > - `$(instance_id)`: id of the currently generating instance
        > - `$(dimension)`: string of the target dimension (call execution context is already `in $(dimension)`)  
        > - `$(group)`: group of the inf_room_generator in use 
        >  
        > Used to execute commands after the template has been placed. Only executed if a non-default generator was used.
    - `#zl.user:inf_garden/manage_player_join`  
        > Called with: 
        > - `$(instance_id)`: id of the currently generating instance
        > - `$(dimension)`: string of the target dimension  
        > - `$(group)`: group of the inf_room_generator in use 
        >  `at` the current player (iterates over all players joining).
        >
        > Used to set the target mode and execute the general joining logic on players, to set a different mode than `inf_garden`, change the string in `leinad_temp:game inf_garden.macro.mode`. If you want to save their data before joining, this is the best place to do so.
    - `zl.user:inf_garden/exit_game`
        > Called with session data of the player.  
        >  
        > Used to decide what to do with a player that has left a game without issues (does not include leaving the rooms in ways like going across the outside walls)

    - `zl.user:inf_garden/died_ingame`
        > Called with session data of the player during the execution of `#l.user:player/died`. If you want other functions related to this to happen before/after you should position them relative to `zl.inf_garden:player_died` inside the main function tag.
        >  
        > Used to decide what to do with players that have died in a game. Returning anything else but `0` (or `fail`) will result in complete access to what happens after the death, as no other succesive calls will be done. Remember that if you take control, players will still have the following state on them by default:
        > \> tag: `zl.inf_garden.ingame`  
        > \> tag: `l.room.detect`  
        > \> tag: `l.room.inside`*  (almost certainly)
        > \> instance status: _ingame_  
        > It is also important to keep in mind that the rooms they were on may have dissapeared because of this call taking place _after_ they respawn. Remember to set safe rooms if you want to move them inside again.  
        > If nobody takes control, the game will kick them.
        > If someone took control but returned `1`, they will still be kicked afterwards, but without others being able to execute something after them.