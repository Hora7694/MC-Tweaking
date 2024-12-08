execute as @e[predicate=mc_tweaking:classic_potion_detection/mainhand] run item modify entity @s weapon.mainhand mc_tweaking:set_stack_16
execute as @e[predicate=mc_tweaking:classic_potion_detection/offhand] run item modify entity @s weapon.offhand mc_tweaking:set_stack_16
execute as @e[predicate=mc_tweaking:classic_potion_detection/cursor] run item modify entity @s player.cursor mc_tweaking:set_stack_16

execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if block ~ ~ ~ lava[level=0] run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if block ~ ~ ~ lava[level=0] run particle minecraft:large_smoke ~ ~1 ~ 1 0 1 0 30 normal

execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone replace minecraft:lava[level=1]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=3]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=2]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=4]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=5]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=6]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=7]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:overworld run fill ~1 ~ ~1 ~-1 ~ ~-1 stone replace minecraft:lava[level=0]

execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone replace minecraft:lava[level=1]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=3]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=2]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=4]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=5]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=6]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 cobblestone_slab replace minecraft:lava[level=7]
execute as @e[type=minecraft:potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if dimension minecraft:the_end run fill ~1 ~ ~1 ~-1 ~ ~-1 stone replace minecraft:lava[level=0]


schedule function mc_tweaking:tick 1t