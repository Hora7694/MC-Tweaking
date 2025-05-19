execute as @e[predicate=mc_tweaking:classic_potion_detection/mainhand] run item modify entity @s weapon.mainhand mc_tweaking:set_stack_16
execute as @e[predicate=mc_tweaking:classic_potion_detection/offhand] run item modify entity @s weapon.offhand mc_tweaking:set_stack_16
execute as @e[predicate=mc_tweaking:classic_potion_detection/cursor] run item modify entity @s player.cursor mc_tweaking:set_stack_16

execute as @e[predicate=mc_tweaking:classic_pattern_detection/mainhand] run item modify entity @s weapon.mainhand mc_tweaking:set_stack_16
execute as @e[predicate=mc_tweaking:classic_pattern_detection/offhand] run item modify entity @s weapon.offhand mc_tweaking:set_stack_16
execute as @e[predicate=mc_tweaking:classic_pattern_detection/cursor] run item modify entity @s player.cursor mc_tweaking:set_stack_16

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

#   wet to dried sponge
execute as @e[type=minecraft:item] at @s if dimension minecraft:the_nether if items entity @s contents minecraft:wet_sponge unless block ~ ~-1 ~ #minecraft:air run particle minecraft:white_smoke ~ ~ ~ 0.1 0 0.1 0 10 normal
execute as @e[type=minecraft:item] at @s if dimension minecraft:the_nether if items entity @s contents minecraft:wet_sponge unless block ~ ~-1 ~ #minecraft:air run item modify entity @s contents mc_tweaking:convert_wet_to_dried_sponge


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









# Compass

# Allow all players to enable or disable the display system.
scoreboard players enable @a mt.compas.toggle.display

# If a player's mt.compas.toggle.display score is 1, enable the system, display a confirmation message and add 1 to scoreboard to move to 2.
execute as @p if score @s mt.compas.toggle.display matches 1 run tellraw @s [{"text":"Warden Warning Alert has been toggled on"}]
execute as @p if score @s mt.compas.toggle.display matches 1 run scoreboard players add @s mt.compas.toggle.display 1

# If a player's mt.compas.toggle.display score is 3, disable the system, display a confirmation message and remove 3 to scoreboard to move to 0.
execute as @p if score @s mt.compas.toggle.display matches 3 run tellraw @s [{"text":"Warden Warning Alert has been toggled off"}]
execute as @p if score @s mt.compas.toggle.display matches 3 run scoreboard players remove @s mt.compas.toggle.display 3

# get player's coords
execute at @a as @a store result score @s mt.compas.posX run data get entity @s Pos[0]
execute at @a as @a store result score @s mt.compas.posY run data get entity @s Pos[1]
execute at @a as @a store result score @s mt.compas.posZ run data get entity @s Pos[2]






# Recovery Compass

# Allow all players to enable or disable the display system.
scoreboard players enable @a mt.reco_compas.toggle.display

# If a player's mt.reco_compas.toggle.display score is 1, enable the system, display a confirmation message and add 1 to scoreboard to move to 2.
execute as @p if score @s mt.reco_compas.toggle.display matches 1 run tellraw @s [{"text":"Warden Warning Alert has been toggled on"}]
execute as @p if score @s mt.reco_compas.toggle.display matches 1 run scoreboard players add @s mt.reco_compas.toggle.display 1

# If a player's mt.reco_compas.toggle.display score is 3, disable the system, display a confirmation message and remove 3 to scoreboard to move to 0.
execute as @p if score @s mt.reco_compas.toggle.display matches 3 run tellraw @s [{"text":"Warden Warning Alert has been toggled off"}]
execute as @p if score @s mt.reco_compas.toggle.display matches 3 run scoreboard players remove @s mt.reco_compas.toggle.display 3

# get player's coords
execute at @a as @a store result score @s mt.reco_compas.posX run data get entity @s LastDeathLocation.pos[0]
execute at @a as @a store result score @s mt.reco_compas.posY run data get entity @s LastDeathLocation.pos[1]
execute at @a as @a store result score @s mt.reco_compas.posZ run data get entity @s LastDeathLocation.pos[2]





# Clock

# Allow all players to enable or disable the display system.
scoreboard players enable @a mt.clock.toggle.display

# If a player's mt.clock.toggle.display score is 1, enable the system, display a confirmation message and add 1 to scoreboard to move to 2.
execute as @p if score @s mt.clock.toggle.display matches 1 run tellraw @s [{"text":"Warden Warning Alert has been toggled on"}]
execute as @p if score @s mt.clock.toggle.display matches 1 run scoreboard players add @s mt.clock.toggle.display 1

# If a player's mt.clock.toggle.display score is 3, disable the system, display a confirmation message and remove 3 to scoreboard to move to 0.
execute as @p if score @s mt.clock.toggle.display matches 3 run tellraw @s [{"text":"Warden Warning Alert has been toggled off"}]
execute as @p if score @s mt.clock.toggle.display matches 3 run scoreboard players remove @s mt.clock.toggle.display 3


# Allow all players to enable or disable the display system.
scoreboard players enable @a mt.clock.toggle.format

# If a player's mt.clock.toggle.format score is 1, enable the system, display a confirmation message and add 1 to scoreboard to move to 2.
execute as @p if score @s mt.clock.toggle.format matches 1 run tellraw @s [{"text":"Warden Warning Alert has been toggled on"}]
execute as @p if score @s mt.clock.toggle.format matches 1 run scoreboard players add @s mt.clock.toggle.format 1

# If a player's mt.clock.toggle.format score is 3, disable the system, display a confirmation message and remove 3 to scoreboard to move to 0.
execute as @p if score @s mt.clock.toggle.format matches 3 run tellraw @s [{"text":"Warden Warning Alert has been toggled off"}]
execute as @p if score @s mt.clock.toggle.format matches 3 run scoreboard players remove @s mt.clock.toggle.format 3


#get day time
execute at @a as @a store result score @s mt.clock.time run time query daytime

# convert ticks to hours

# copie tick from mt.clock.time to mt.clock.time.hours.brut
execute at @a as @a store result score @s mt.clock.time.hours.brut run scoreboard players get @s mt.clock.time
execute at @a as @a run scoreboard players operation @s mt.clock.time.hours.brut /= mt.opera.1000 mt.clock.time.opera

# copie hours from mt.clock.time.hours.brut to mt.clock.time.hours.divided
execute at @a as @a store result score @s mt.clock.time.hours.divided run scoreboard players get @s mt.clock.time.hours.brut
execute at @a as @a run scoreboard players operation @s mt.clock.time.hours.divided += mt.opera.6 mt.clock.time.opera

# copie hours from mt.clock.time.hours.divided to mt.clock.time.hours
execute at @a as @a store result score @s mt.clock.time.hours run scoreboard players get @s mt.clock.time.hours.divided
execute at @a as @a run scoreboard players operation @s mt.clock.time.hours %= mt.opera.24 mt.clock.time.opera

execute at @a as @a store result score @s mt.clock.time.hours.ampm run scoreboard players get @s mt.clock.time.hours
execute at @a as @a run scoreboard players operation @s mt.clock.time.hours.ampm %= mt.opera.12 mt.clock.time.opera

# convert ticks to minutes

# copie tick from mt.clock.time to mt.clock.time.min.brut
execute at @a as @a store result score @s mt.clock.time.min.brut run scoreboard players get @s mt.clock.time
execute at @a as @a run scoreboard players operation @s mt.clock.time.min.brut %= mt.opera.1000 mt.clock.time.opera

# copie min from mt.clock.time.min.brut to mt.clock.time.min.divided
execute at @a as @a store result score @s mt.clock.time.min.divided run scoreboard players get @s mt.clock.time.min.brut
execute at @a as @a run scoreboard players operation @s mt.clock.time.min.divided *= mt.opera.60 mt.clock.time.opera

# copie min from mt.clock.time.min.divided to mt.clock.time.min
execute at @a as @a store result score @s mt.clock.time.min run scoreboard players get @s mt.clock.time.min.divided
execute at @a as @a run scoreboard players operation @s mt.clock.time.min /= mt.opera.1000 mt.clock.time.opera







# Placeable block
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_name":"Placeable"},count:1},OnGround:1b},nbt=!{Age:6000s}] at @s if items entity @s contents #mc_tweaking:placeable_block if block ~ ~-.5 ~ #minecraft:eligible_block_for_placeable run function mc_tweaking:place_placeable_block with entity @s Item
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_name":"Placeable"},count:1},OnGround:1b},nbt=!{Age:6000s}] at @s if items entity @s contents #mc_tweaking:placeable_block if block ~ ~-.5 ~ #minecraft:eligible_small_block_for_placeable run function mc_tweaking:place_small_placeable_block with entity @s Item


# Give Slowness Effect if the player has an Heavy core in their Inventory or in Offhand
execute as @a at @a if data entity @s Inventory[{count:1,id:"minecraft:heavy_core"}] run effect give @s minecraft:slowness 1 1 false
execute as @a at @a if data entity @s equipment{offhand:{count:1,id:"minecraft:heavy_core"}} run effect give @s minecraft:slowness 1 1 false



schedule function mc_tweaking:tick 1t