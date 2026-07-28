## REMOVE FROM WHITELIST
    $scoreboard players reset $(name) zl.$(mode).whitelisted
##

## IF MORE ENTRIES => RETRY
    data remove storage zl.whitelist:query temp_loop[-1]
    execute if data storage zl.whitelist:query temp_loop[0] run function zl.whitelist:zaux/whitelist_loop_remove with storage zl.whitelist:query temp_loop[-1]
##