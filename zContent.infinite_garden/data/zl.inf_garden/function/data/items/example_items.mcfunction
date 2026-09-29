data modify storage l.item:data groups append value {gid:zl_infinite_garden, version:1}

# SCULK DROPS

data modify storage l.item:data zl_infinite_garden."sculk_ball" set value { \
    id:"sculk_ball", \
    version: 1, \
    item: "minecraft:slime_ball", \
    components: { \
        "minecraft:item_model": "zl.inf_garden:sculk_ball", \
        "minecraft:item_name": { \
            translate: "leinad.zl.inf_garden.item.sculk_ball.name", \
            fallback: "Sculk ball", \
            color: "#05506b", \
            italic: false \
        }, \
    }, \
    enchantments: { \
        \
    }, \
}

data modify storage l.item:data zl_infinite_garden."sculk_ball_clear" set value { \
    id: "sculk_ball_clear", \
    version: 1, \
    item: "minecraft:slime_ball", \
    components: { \
        "minecraft:item_model": "zl.inf_garden:sculk_ball_clear", \
        "minecraft:item_name": { \
            translate: "leinad.zl.inf_garden.item.sculk_ball_clear.name", \
            fallback: "Sculk ball", \
            color: "#10789d", \
            italic: false \
        }, \
    }, \
    enchantments: { \
        \
    }, \
}
