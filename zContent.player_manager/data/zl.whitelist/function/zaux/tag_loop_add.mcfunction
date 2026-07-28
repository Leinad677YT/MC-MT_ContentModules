## ADD TAG
    $tag $(name) add zl.tag.$(tag)
##

## IF MORE ENTRIES => RETRY
    data remove storage zl.whitelist:query temp_loop[-1]
    execute if data storage zl.whitelist:query temp_loop[0] run function zl.whitelist:zaux/tag_loop_add with storage zl.whitelist:query temp_loop[-1]
##