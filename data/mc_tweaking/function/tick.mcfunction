execute as @e[predicate=mc_tweaking:classic_potion_detection/mainhand] run item modify entity @s weapon.mainhand mc_tweaking:set_stack_16
execute as @e[predicate=mc_tweaking:classic_potion_detection/offhand] run item modify entity @s weapon.offhand mc_tweaking:set_stack_16
execute as @e[predicate=mc_tweaking:classic_potion_detection/cursor] run item modify entity @s player.cursor mc_tweaking:set_stack_16

execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if block ~ ~ ~ lava[level=0] run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if block ~ ~ ~ lava[level=0] run particle minecraft:large_smoke ~ ~1 ~ 1 0 1 0 30 normal

execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone replace minecraft:lava[level=1]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=3]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=2]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=4]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=5]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=6]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=7]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 stone replace minecraft:lava[level=0]

execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone replace minecraft:lava[level=1]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=3]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=2]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=4]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=5]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=6]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=7]
execute as @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 stone replace minecraft:lava[level=0]


#       Convertion

#   magma cream to silme ball
execute as @e[type=minecraft:item] at @s if items entity @s contents minecraft:magma_cream if block ~ ~ ~ minecraft:water_cauldron run particle minecraft:smoke ~ ~1 ~ 0.1 0 0.1 0 300 normal
execute as @e[type=minecraft:item] at @s if items entity @s contents minecraft:magma_cream if block ~ ~ ~ minecraft:water_cauldron run item modify entity @s contents mc_tweaking:convert_magma_cream

#   concrete powder to concrete
execute as @e[type=minecraft:item] at @s if items entity @s contents #mc_tweaking:concrete_powder if block ~ ~ ~ minecraft:water_cauldron run item modify entity @s contents mc_tweaking:convert_concrete_powder

#   dirt to mud
execute as @e[type=minecraft:item] at @s if items entity @s contents dirt if block ~ ~ ~ minecraft:water_cauldron run item modify entity @s contents mc_tweaking:convert_dirt_to_mud



#       Desaturation

#   stained glass to glass
execute as @e[type=minecraft:item] at @s if items entity @s contents #mc_tweaking:stained_glass if block ~ ~ ~ minecraft:water_cauldron run item modify entity @s contents mc_tweaking:convert_stained_glass

#   stained glass pane to glass pane
execute as @e[type=minecraft:item] at @s if items entity @s contents #mc_tweaking:stained_glass_pane if block ~ ~ ~ minecraft:water_cauldron run item modify entity @s contents mc_tweaking:convert_stained_glass_pane

#   colored wool to white wool
execute as @e[type=minecraft:item] at @s if items entity @s contents #mc_tweaking:colored_wool if block ~ ~ ~ minecraft:water_cauldron run item modify entity @s contents mc_tweaking:convert_colored_wool

#   colored carpet to white carpet
execute as @e[type=minecraft:item] at @s if items entity @s contents #mc_tweaking:colored_carpet if block ~ ~ ~ minecraft:water_cauldron run item modify entity @s contents mc_tweaking:convert_colored_carpet

#   colored bed to white bed
execute as @e[type=minecraft:item] at @s if items entity @s contents #mc_tweaking:colored_bed if block ~ ~ ~ minecraft:water_cauldron run item modify entity @s contents mc_tweaking:convert_colored_bed

#   colored banner to white banner
execute as @e[type=minecraft:item] at @s if items entity @s contents #mc_tweaking:colored_banner if block ~ ~ ~ minecraft:water_cauldron run item modify entity @s contents mc_tweaking:convert_colored_banner


schedule function mc_tweaking:tick 1t