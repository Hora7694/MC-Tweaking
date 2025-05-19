advancement revoke @s only mc_tweaking:action/hurt_squid_with_white_wool

execute if items entity @s weapon.mainhand minecraft:white_wool run function mc_tweaking:action/transform/transform_white_wool_into_black
execute if items entity @s weapon.offhand minecraft:white_wool run function mc_tweaking:action/transform/transform_white_wool_into_black