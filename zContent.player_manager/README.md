# Management module

## Content

This pack adds functions to control the access/tags that players have, regardless of if they have joined before or if they are offline.

> [!WARNING]
> Everything here that happens when a player is not online does not work with internal IDs, so if they change their nickname while having a pending whitelist/tag query, it will not update for them, and, **in the case that someone else joins under their old nick, they will be the ones tagged/whitelisted**. Be careful with queried updates! 

### Specification
- **function**
    > `zl.user:player/add_tag`
        > Tags `$(name)` with `zl.tag.$(tag)`. If they are not online, it will query the addition to happen on the next `#l.user:login/joined` call.
        > If a query to remove the tag exists, this will override it with an additive one.
    > `zl.user:player/remove_tag`
        > Removes from `$(name)` the `zl.tag.$(tag)` tag. If they are not online, it will query the removal to happen on the next `#l.user:login/joined` call.
        > If a query to add the tag exists, this will override it with a removal one.
    > `zl.user:player/add_whitelist`
        > _Set_ `$(name)`'s score inside `zl.$(mode).whitelisted` score to `1`. If they are not online, it will query the operation to happen on the next `#l.user:login/joined` call.
        > If a query to remove their whitelist score exists, this will override it with one that sets it.
    > `zl.user:player/remove_whitelist`
        > _Reset_ `$(name)`'s score inside `zl.$(mode).whitelisted` score. If they are not online, it will query the operation to happen on the next `#l.user:login/joined` call.
        > If a query to set their whitelist score exists, this will override it with one that resets it.
