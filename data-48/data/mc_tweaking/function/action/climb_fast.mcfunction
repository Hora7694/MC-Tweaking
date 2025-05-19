advancement revoke @s only mc_tweaking:action/is_able_to_fast_climb

execute at @s[x_rotation=-100..-90] if block ~ ~2 ~ #minecraft:climbable run tp ~ ~1 ~
execute at @s[x_rotation=80..90] if block ~ ~-1 ~ #minecraft:climbable run tp ~ ~-1 ~