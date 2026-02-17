## TELLRAW
    tellraw @a[tag=l.core.tellraw] [{text:"[+] ",color:"#7c33e2"},{color:"#ed9dff",translate:"leinad.zl.slimes.tellraw.load",fallback:"The example slime variants datapack has been loaded!"}]
##

## SCOREBOARDS
    scoreboard objectives add zl.slimes.dmg dummy
    scoreboard objectives add zl.slimes.air dummy

    # if didnt exist, add temporal data support
    scoreboard objectives add zl.temp dummy
##

## tags
    # zl.entity.on_ground
##