## ADD TO WHITELIST
    $scoreboard players set $(name) zl.$(mode).whitelisted 1
##

## IF MORE ENTRIES => RETRY
    data remove storage zl.whitelist:query temp_loop[-1]
    execute if data storage zl.whitelist:query temp_loop[0] run function zl.whitelist:zaux/whitelist_loop_add with storage zl.whitelist:query temp_loop[-1]
##