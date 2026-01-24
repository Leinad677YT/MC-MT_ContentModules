> [!WARNING]
>  THIS IS STILL BEING WORKED ON, PLEASE STAND BY

zl.inf_garden.exit.hole

# GENERATION LIBRARY

> [!NOTE]
> Remember, this is a standalone library that requires the main library, **this is not a module** so compatibility with external content is not ensured.

## Content

This pack is a rewrite of the generator I made for a mapjam (Alo gente de la jam :3). It creates an instance inside the specified dimension and moves all players inside the same serverside team there. The main point of this is to infinitely generate a dungeon starting with only 1 room.

> [!NOTE]
> As you may have guessed, this is complex, so there are some restrictions.

### Specification
- **function**
    > `zl.user:inf_garden/create_game`
        > This creates a game (sends the group of the executing player into an instance)
- **instance type and location**
    > `725`
        > By default, there's only 1 instance location for it, which has the `725` id as well.
        > You can create more locations by adding them to the database [see inside **instance_manager**]
- **function call**  
    - `#zl.user:inf_garden/start_game`  
        > Called with: 
        > - `$(instance_id)`: id of the currently generating instance
        > - `$(dimension)`: string of the target dimension (call execution is already `in $(dimension)`)  
        > - `$(group)`: group of the inf_room_generator  
        >  
        > Used to set the start room and it's generators on instance creation.
        > If you set `leinad_temp:game inf_garden.macro.template` to the string of the template you wanna use and return `1`, the starting room will not be the default. You _have to_ set the starting doors here aswell if that's the case.  
    - `#zl.user:inf_garden/manage_player_join`  
    - `#zl.user:inf_garden/manage_post_place`  
