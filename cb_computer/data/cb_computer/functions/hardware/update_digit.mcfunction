execute as @e[type=armor_stand,tag=cbc_output_clearer] at @s unless block ~ ~-1 ~ waxed_oxidized_copper run kill @s
execute as @e[type=armor_stand,tag=cbc_output_clearer] at @s if block ~ ~-1 ~ waxed_oxidized_copper run fill ~ ~ ~ ~4 ~4 ~ air
execute as @e[type=armor_stand,tag=cbc_output_clearer] at @s if block ~ ~-1 ~ waxed_oxidized_copper run fill ~ ~-1 ~ ~4 ~-1 ~ waxed_oxidized_cut_copper
execute as @e[type=armor_stand,tag=cbc_output_clearer] at @s run tp @s ~5 ~ ~

execute as @e[type=armor_stand,tag=cbc_output_num,tag=!init,tag=!init2] at @s if score @s cbc_tmp3 matches 1.. run tp @s ~5 ~ ~
execute as @e[type=armor_stand,tag=cbc_output_num,tag=!init,tag=!init2] at @s if score @s cbc_tmp3 matches 1.. run scoreboard players remove @s cbc_tmp3 1
execute as @e[type=armor_stand,tag=cbc_output_num,tag=!init,tag=!init2] at @s if score @s cbc_tmp3 matches 0 run function cb_computer:hardware/display_digit

#execute as @e[type=armor_stand,tag=cbc_output_num,tag=!init,tag=init2] if score @s cbc_tmp2 matches 0 run tag @s remove init2
#execute as @e[type=armor_stand,tag=cbc_output_num,tag=!init,tag=init2] run scoreboard players remove @s cbc_tmp2 1
tag @e[type=armor_stand,tag=cbc_output_num,tag=!init,tag=init2] remove init2