data modify storage l.item:data groups append value {gid:zl_helmets, version:1}

data modify storage l.item:data zl_helmets."space_suit_helmet" set value { \
    id:"space_suit_helmet", \
    version: 1, \
    item: "minecraft:iron_helmet", \
    components: { \
        "minecraft:item_model":"minecraft:glass", \
        "max_stack_size": 1, \
        "minecraft:equippable": {slot:"head", camera_overlay:"block/glass"}, \
        "minecraft:item_name": {translate:"leinad.zl.item.space_suit_helmet.name",fallback:"Space suit helmet",color:"#efefef"}, \
        "minecraft:repair_cost": 0, \
        "minecraft:repairable":{items:"minecraft:glass"}, \
        "minecraft:max_damage":76, \
        "minecraft:attribute_modifiers": [ \
            {id:"h-minecraft:gravity", amount: -0.3, operation:"add_multiplied_total", type:"minecraft:gravity", display:{type:"default"}, slot:"head"}, \
            {id:"h-minecraft:armor", amount: 1, operation:"add_value", type:"minecraft:armor", display:{type:"default"}, slot:"head"}, \
            {id:"h-minecraft:armor_toughness", amount: 2, operation:"add_value", type:"minecraft:armor_toughness", display:{type:"default"}, slot:"head"}, \
        ] \
    } \
}