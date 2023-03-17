execute as @s[tag=!displaying] at @s run function cb_computer:hardware/summon_clearer
scoreboard players operation @s[tag=!displaying] cbc_tmp1 = @s cbc_tmp2
tag @s[tag=!displaying] add displaying

scoreboard players operation @s cbc_tmp2 /= 10 cbc_tmp1
scoreboard players operation @s cbc_tmp2 *= 10 cbc_tmp1
scoreboard players operation @s cbc_tmp1 -= @s cbc_tmp2

execute as @s at @s run function cb_computer:hardware/summon_digit

scoreboard players add @s cbc_tmp3 1
scoreboard players operation @s cbc_tmp2 /= 10 cbc_tmp1
scoreboard players operation @s cbc_tmp1 = @s cbc_tmp2

execute if score @s cbc_tmp2 matches 0 store result score @s cbc_tmp1 run data get storage cb_computer:storage output
execute if score @s cbc_tmp2 matches 0 run tag @s remove displaying

execute as @s[tag=displaying] if score @s cbc_tmp3 > max_digits cbc_settings if score debug_warnings cbc_settings matches 1 run tellraw @a "Max digits limit reached"
execute as @s[tag=displaying] if score @s cbc_tmp3 > max_digits cbc_settings run tag @s remove displaying

execute as @s[tag=displaying] at @s run function cb_computer:hardware/display_output