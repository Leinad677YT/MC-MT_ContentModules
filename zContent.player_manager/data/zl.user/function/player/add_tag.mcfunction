## IF ONLINE => SET TAG
    $execute if entity $(name) run return run tag $(name) add zl.tag.$(tag)
##

## IF OFFLINE, ADD TO QUERY
    # if exists query to revoke access, remove it
    $data remove storage zl.whitelist:query pending[{name:"$(name)"}].remove_tag[{name:"$(name)",tag:"$(tag)"}]
    # if exists already, do nothing
    $execute if data storage zl.whitelist:query pending[{name:"$(name)"}].add_tag[{name:"$(name)",tag:"$(tag)"}] run return fail
    # if does not exist, but name does, append
    $execute if data storage zl.whitelist:query pending[{name:"$(name)"}] run return run data modify storage zl.whitelist:query pending[{name:"$(name)"}].add_tag append value {name:"$(name)",tag:"$(tag)"}
    # append name and query
    $data modify storage zl.whitelist:query pending append value {name:"$(name)",add_tag:[{name:"$(name)",tag:"$(tag)"}]}
##
