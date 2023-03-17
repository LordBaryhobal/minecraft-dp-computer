execute as @e[type=armor_stand,tag=cbc_output] at @s store result score @s cbc_tmp2 run data get storage cb_computer:storage output

scoreboard players set 10 cbc_tmp1 10
execute as @e[type=armor_stand,tag=cbc_output] at @s unless score @s cbc_tmp1 = @s cbc_tmp2 run scoreboard players set @s cbc_tmp3 0
execute as @e[type=armor_stand,tag=cbc_output] at @s unless score @s cbc_tmp1 = @s cbc_tmp2 run function cb_computer:hardware/display_output