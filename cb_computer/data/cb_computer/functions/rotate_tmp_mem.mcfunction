execute if score address cbc_tmp1 matches 1.. run data modify storage cb_computer:storage tmp_mem append from storage cb_computer:storage tmp_mem[0]
execute if score address cbc_tmp1 matches 1.. run data remove storage cb_computer:storage tmp_mem[0]
execute if score address cbc_tmp1 matches 1.. run scoreboard players remove address cbc_tmp1 1

execute if score address cbc_tmp1 matches 1.. run function cb_computer:rotate_tmp_mem