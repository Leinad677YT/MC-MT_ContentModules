data modify storage l.item:data groups append value {gid:zl_custom_tools, version:1}

# NETHERITE AMETHYST ARMOR

data modify storage l.item:data zl_custom_tools."amethyst_netherite_boots" set value { \
    id:"amethyst_netherite_boots", \
    version: 13, \
    item: "minecraft:chainmail_boots", \
    components: { \
        "minecraft:equippable": {slot:"feet", asset_id:"zl.item:amethyst_netherite"}, \
        "minecraft:item_model":"zl.item:amethyst_netherite_boots", \
        "minecraft:item_name": {translate:"leinad.zl.item.crystallized_netherite_boots.name",fallback:"Crystallized netherite boots",color:"#a340d9"}, \
        "minecraft:damage_resistant":{types: "#minecraft:is_fire"}, \
        "minecraft:repair_cost": 0, \
        "minecraft:repairable":{items:"minecraft:amethyst_shard"}, \
        "minecraft:max_damage":4240, \
        "minecraft:enchantments":{ "minecraft:mending":0, "minecraft:unbreaking":0 }, \
        "minecraft:attribute_modifiers": [ \
            {id:"b-minecraft:explosion_knockback_resistance", amount: 0.25, operation:"add_value", type:"minecraft:explosion_knockback_resistance", display:{type:"default"}, slot:"feet"}, \
            {id:"b-minecraft:knockback_resistance", amount: 0.1, operation:"add_value", type:"minecraft:knockback_resistance", display:{type:"default"}, slot:"feet"}, \
            {id:"b-minecraft:armor", amount: 3, operation:"add_value", type:"minecraft:armor", display:{type:"default"}, slot:"feet"}, \
            {id:"b-minecraft:armor_toughness", amount: 3, operation:"add_value", type:"minecraft:armor_toughness", display:{type:"default"}, slot:"feet"}, \
        ] \
    }, \
    enchantments: { \
        "zl.survival:item/fragmented": 1, \
        "zl.survival:item/reinforced_armor": 1, \
        "zl.survival:fixed/crystallized_prot": 5, \
    }, \
}

data modify storage l.item:data zl_custom_tools."amethyst_netherite_leggings" set value { \
    id:"amethyst_netherite_leggings", \
    version: 13, \
    item: "minecraft:chainmail_leggings", \
    components: { \
        "minecraft:equippable": {slot:"legs", asset_id:"zl.item:amethyst_netherite"}, \
        "minecraft:item_model":"zl.item:amethyst_netherite_leggings", \
        "minecraft:item_name": {translate:"leinad.zl.item.crystallized_netherite_leggings.name",fallback:"Crystallized netherite leggings",color:"#a340d9"}, \
        "minecraft:damage_resistant":{types: "#minecraft:is_fire"}, \
        "minecraft:repair_cost": 0, \
        "minecraft:max_damage":4860, \
        "minecraft:enchantments":{ "minecraft:mending":0, "minecraft:unbreaking":0 }, \
        "minecraft:repairable":{items:"minecraft:amethyst_shard"}, \
        "minecraft:attribute_modifiers": [ \
            {id:"l-minecraft:explosion_knockback_resistance", amount: 0.25, operation:"add_value", type:"minecraft:explosion_knockback_resistance", display:{type:"default"}, slot:"legs"}, \
            {id:"l-minecraft:knockback_resistance", amount: 0.1, operation:"add_value", type:"minecraft:knockback_resistance", display:{type:"default"}, slot:"legs"}, \
            {id:"l-minecraft:armor", amount: 6, operation:"add_value", type:"minecraft:armor", display:{type:"default"}, slot:"legs"}, \
            {id:"l-minecraft:armor_toughness", amount: 3, operation:"add_value", type:"minecraft:armor_toughness", display:{type:"default"}, slot:"legs"}, \
        ] \
    }, \
    enchantments: { \
        "zl.survival:item/fragmented": 1, \
        "zl.survival:item/reinforced_armor": 1, \
        "zl.survival:fixed/crystallized_prot": 5, \
    }, \
}

data modify storage l.item:data zl_custom_tools."amethyst_netherite_chestplate" set value { \
    id:"amethyst_netherite_chestplate", \
    version: 13, \
    item: "minecraft:chainmail_chestplate", \
    components: { \
        "minecraft:equippable": {slot:"chest", asset_id:"zl.item:amethyst_netherite"}, \
        "minecraft:item_model":"zl.item:amethyst_netherite_chestplate", \
        "minecraft:item_name": {translate:"leinad.zl.item.crystallized_netherite_chestplate.name",fallback:"Crystallized netherite chestplate",color:"#a340d9"}, \
        "minecraft:damage_resistant":{types: "#minecraft:is_fire"}, \
        "minecraft:repair_cost": 0, \
        "minecraft:repairable":{items:"minecraft:amethyst_shard"}, \
        "minecraft:max_damage":5140, \
        "minecraft:enchantments":{ "minecraft:mending":0, "minecraft:unbreaking":0 }, \
        "minecraft:attribute_modifiers": [ \
            {id:"c-minecraft:explosion_knockback_resistance", amount: 0.25, operation:"add_value", type:"minecraft:explosion_knockback_resistance", display:{type:"default"}, slot:"chest"}, \
            {id:"c-minecraft:knockback_resistance", amount: 0.1, operation:"add_value", type:"minecraft:knockback_resistance", display:{type:"default"}, slot:"chest"}, \
            {id:"c-minecraft:armor", amount: 8, operation:"add_value", type:"minecraft:armor", display:{type:"default"}, slot:"chest"}, \
            {id:"c-minecraft:armor_toughness", amount: 3, operation:"add_value", type:"minecraft:armor_toughness", display:{type:"default"}, slot:"chest"}, \
        ] \
    }, \
    enchantments: { \
        "zl.survival:item/fragmented":1, \
        "zl.survival:item/reinforced_armor":1, \
        "zl.survival:fixed/crystallized_prot": 5, \
    }, \
}

data modify storage l.item:data zl_custom_tools."amethyst_netherite_helmet" set value { \
    id:"amethyst_netherite_helmet", \
    version: 13, \
    item: "minecraft:chainmail_helmet", \
    components: { \
        "minecraft:equippable": {slot:"head", asset_id:"zl.item:amethyst_netherite"}, \
        "minecraft:item_model":"zl.item:amethyst_netherite_helmet", \
        "minecraft:item_name": {translate:"leinad.zl.item.crystallized_netherite_helmet.name",fallback:"Crystallized netherite helmet",color:"#a340d9"}, \
        "minecraft:damage_resistant":{types: "#minecraft:is_fire"}, \
        "minecraft:repair_cost": 0, \
        "minecraft:repairable":{items:"minecraft:amethyst_shard"}, \
        "minecraft:max_damage":4440, \
        "minecraft:enchantments":{ "minecraft:mending":0, "minecraft:unbreaking":0 }, \
        "minecraft:attribute_modifiers": [ \
            {id:"h-minecraft:explosion_knockback_resistance", amount: 0.25, operation:"add_value", type:"minecraft:explosion_knockback_resistance", display:{type:"default"}, slot:"head"}, \
            {id:"h-minecraft:knockback_resistance", amount: 0.1, operation:"add_value", type:"minecraft:knockback_resistance", display:{type:"default"}, slot:"head"}, \
            {id:"h-minecraft:armor", amount: 3, operation:"add_value", type:"minecraft:armor", display:{type:"default"}, slot:"head"}, \
            {id:"h-minecraft:armor_toughness", amount: 3, operation:"add_value", type:"minecraft:armor_toughness", display:{type:"default"}, slot:"head"}, \
        ] \
    }, \
    enchantments: { \
        "zl.survival:item/fragmented":1, \
        "zl.survival:item/reinforced_armor":1, \
        "zl.survival:fixed/crystallized_prot": 5, \
    }, \
}

# NETHERITE QUARTZ ARMOR

data modify storage l.item:data zl_custom_tools."quartz_netherite_boots" set value { \
    id:"quartz_netherite_boots", \
    version: 13, \
    item: "minecraft:netherite_boots", \
    components: { \
        "minecraft:equippable": {slot:"feet", asset_id:"zl.item:quartz_netherite"}, \
        "minecraft:item_model":"zl.item:quartz_netherite_boots", \
        "minecraft:item_name": {translate:"leinad.zl.item.crystallized_netherite_boots.name",fallback:"Crystallized netherite boots",color:"#eeeddd"}, \
        "minecraft:damage_resistant":{types: "#minecraft:is_fire"}, \
        "minecraft:repair_cost": 0, \
        "minecraft:repairable":{items:"minecraft:quartz"}, \
        "minecraft:max_damage": 720, \
        "minecraft:attribute_modifiers": [ \
            {"id":"b-minecraft:explosion_knockback_resistance", "amount": 0.1, "operation":"add_value", "type":"minecraft:explosion_knockback_resistance", "display":{"type":"default"}, "slot":"feet"}, \
            {"id":"b-minecraft:safe_fall_distance", "amount": 5, "operation":"add_value", "type":"minecraft:safe_fall_distance", "display":{"type":"default"}, "slot":"feet"}, \
            {"id":"b-minecraft:knockback_resistance", "amount": 0.1, "operation":"add_value", "type":"minecraft:knockback_resistance", "display":{"type":"default"}, "slot":"feet"}, \
            {"id":"b-minecraft:armor", "amount": 4, "operation":"add_value", "type":"minecraft:armor", "display":{"type":"default"}, "slot":"feet"}, \
            {"id":"b-minecraft:armor_toughness", "amount": 5, "operation":"add_value", "type":"minecraft:armor_toughness", "display":{"type":"default"}, "slot":"feet"} \
        ] \
    }, \
    enchantments: { \
        "zl.survival:fixed/crystallized_fall": 4, \
    }, \
}

data modify storage l.item:data zl_custom_tools."quartz_netherite_leggings" set value { \
    id:"quartz_netherite_leggings", \
    version: 13, \
    item: "minecraft:netherite_leggings", \
    components: { \
        "minecraft:equippable": {slot:"legs", asset_id:"zl.item:quartz_netherite"}, \
        "minecraft:item_model":"zl.item:quartz_netherite_leggings", \
        "minecraft:item_name": {translate:"leinad.zl.item.crystallized_netherite_leggings.name",fallback:"Crystallized netherite leggings",color:"#eeeddd"}, \
        "minecraft:damage_resistant":{types: "#minecraft:is_fire"}, \
        "minecraft:repair_cost": 0, \
        "minecraft:repairable":{items:"minecraft:quartz"}, \
        "minecraft:max_damage": 880, \
        "minecraft:attribute_modifiers": [ \
            {id:"b-minecraft:explosion_knockback_resistance", "amount": 0.1, "operation":"add_value", "type":"minecraft:explosion_knockback_resistance", "display":{"type":"default"}, "slot":"legs"}, \
            {id:"b-minecraft:safe_fall_distance", "amount": 5, "operation":"add_value", "type":"minecraft:safe_fall_distance", "display":{"type":"default"}, "slot":"legs"}, \
            {id:"b-minecraft:knockback_resistance", "amount": 0.1, "operation":"add_value", "type":"minecraft:knockback_resistance", "display":{"type":"default"}, "slot":"legs"}, \
            {id:"b-minecraft:armor", "amount": 7, "operation":"add_value", "type":"minecraft:armor", "display":{"type":"default"}, "slot":"legs"}, \
            {id:"b-minecraft:armor_toughness", "amount": 5, "operation":"add_value", "type":"minecraft:armor_toughness", "display":{"type":"default"}, "slot":"legs"} \
        ] \
    }, \
    enchantments: { \
        "zl.survival:fixed/crystallized_springs": 3, \
    }, \
}

data modify storage l.item:data zl_custom_tools."quartz_netherite_chestplate" set value { \
    id:"quartz_netherite_chestplate", \
    version: 13, \
    item: "minecraft:netherite_chestplate", \
    components: { \
        "minecraft:equippable": {slot:"chest", asset_id:"zl.item:amethyst_netherite"}, \
        "minecraft:item_model":"zl.item:quartz_netherite_chestplate", \
        "minecraft:item_name": {translate:"leinad.zl.item.crystallized_netherite_chestplate.name",fallback:"Crystallized netherite chestplate",color:"#eeeddd"}, \
        "minecraft:damage_resistant":{types: "#minecraft:is_fire"}, \
        "minecraft:repair_cost": 0, \
        "minecraft:repairable":{items:"minecraft:quartz"}, \
        "minecraft:max_damage": 960, \
        "minecraft:attribute_modifiers": [ \
            {"id":"c-minecraft:explosion_knockback_resistance", "amount": 0.1, "operation":"add_value", "type":"minecraft:explosion_knockback_resistance", "display":{"type":"default"}, "slot":"chest"}, \
            {"id":"c-minecraft:knockback_resistance", "amount": 0.1, "operation":"add_value", "type":"minecraft:knockback_resistance", "display":{"type":"default"}, "slot":"chest"}, \
            {"id":"c-minecraft:armor", "amount": 10, "operation":"add_value", "type":"minecraft:armor", "display":{"type":"default"}, "slot":"chest"}, \
            {"id":"c-minecraft:armor_toughness", "amount": 5, "operation":"add_value", "type":"minecraft:armor_toughness", "display":{"type":"default"}, "slot":"chest"} \
        ] \
    }, \
    enchantments: { \
    }, \
}

data modify storage l.item:data zl_custom_tools."quartz_netherite_helmet" set value { \
    id:"quartz_netherite_helmet", \
    version: 13, \
    item: "minecraft:netherite_helmet", \
    components: { \
        "minecraft:equippable": {slot:"head", asset_id:"zl.item:quartz_netherite"}, \
        "minecraft:item_model":"zl.item:quartz_netherite_helmet", \
        "minecraft:item_name": {translate:"leinad.zl.item.crystallized_netherite_helmet.name",fallback:"Crystallized netherite helmet",color:"#eeeddd"}, \
        "minecraft:damage_resistant":{types: "#minecraft:is_fire"}, \
        "minecraft:repair_cost": 0, \
        "minecraft:repairable":{items:"minecraft:quartz"}, \
        "minecraft:max_damage": 780, \
        "minecraft:attribute_modifiers": [ \
            {"id":"h-minecraft:explosion_knockback_resistance", "amount": 0.1, "operation":"add_value", "type":"minecraft:explosion_knockback_resistance", "display":{"type":"default"}, "slot":"head"}, \
            {"id":"h-minecraft:knockback_resistance", "amount": 0.1, "operation":"add_value", "type":"minecraft:knockback_resistance", "display":{"type":"default"}, "slot":"head"}, \
            {"id":"h-minecraft:armor", "amount": 4, "operation":"add_value", "type":"minecraft:armor", "display":{"type":"default"}, "slot":"head"}, \
            {"id":"h-minecraft:armor_toughness", "amount": 3, "operation":"add_value", "type":"minecraft:armor_toughness", "display":{"type":"default"}, "slot":"head"} \
        ] \
    }, \
    enchantments: { \
    }, \
}


return 1

give @s stone[minecraft:custom_data={l:{item_version:-1,item_group:"zl_custom_tools",item_id:"amethyst_netherite_boots"}}]
