## IF ONLINE => SET SCORE
    $execute if entity $(name) run return run scoreboard players set $(name) zl.$(mode).whitelisted 1
##

## IF OFFLINE, ADD TO QUERY
    # if exists query to revoke access, remove it
    $data remove storage zl.whitelist:query pending[{name:"$(name)"}].remove_whitelist[{name:"$(name)",mode:"$(mode)"}]
    # if exists already, do nothing
    $execute if data storage zl.whitelist:query pending[{name:"$(name)"}].add_whitelist[{name:"$(name)",mode:"$(mode)"}] run return fail
    # if does not exist, but name does, append
    $execute if data storage zl.whitelist:query pending[{name:"$(name)"}] run return run data modify storage zl.whitelist:query pending[{name:"$(name)"}].add_whitelist append value {name:"$(name)",mode:"$(mode)"}
    # append name and query
    $data modify storage zl.whitelist:query pending append value {name:"$(name)",add_whitelist:[{name:"$(name)",mode:"$(mode)"}]}
##
