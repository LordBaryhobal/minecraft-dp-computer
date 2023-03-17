execute if score nonopcode_len cbc_tmp1 matches 1.. run scoreboard players operation opcode_factor cbc *= 2 cbc_tmp1
execute if score nonopcode_len cbc_tmp1 matches 1.. run scoreboard players remove nonopcode_len cbc_tmp1 1
execute if score nonopcode_len cbc_tmp1 matches 1.. run function cb_computer:calc_opcode_factor