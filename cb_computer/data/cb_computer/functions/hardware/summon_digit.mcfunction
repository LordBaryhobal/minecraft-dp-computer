summon armor_stand ~ ~ ~ {Tags:["cbc_output_num","init"],NoGravity:1b,Small:1b}
execute as @e[type=armor_stand,tag=cbc_output_num,tag=init,distance=..1,limit=1,sort=nearest] at @s run scoreboard players operation @s cbc_tmp1 = @e[type=armor_stand,tag=cbc_output,distance=..1,limit=1,sort=nearest] cbc_tmp1
execute as @e[type=armor_stand,tag=cbc_output_num,tag=init,distance=..1,limit=1,sort=nearest] at @s run scoreboard players operation @s cbc_tmp3 = @e[type=armor_stand,tag=cbc_output,distance=..1,limit=1,sort=nearest] cbc_tmp3
#scoreboard players set @e[type=armor_stand,tag=cbc_output_num,tag=init,tag=!init2] cbc_tmp2 2
tag @e[type=armor_stand,tag=cbc_output_num,tag=init] add init2
tag @e[type=armor_stand,tag=cbc_output_num,tag=init] remove init