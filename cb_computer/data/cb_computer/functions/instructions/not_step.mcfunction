#Continue if not enough bits
execute if score to_not cbc_tmp1 matches 0 if score not_step cbc_tmp1 < instruction_len cbc run scoreboard players operation not_result cbc_tmp1 += not_step_factor cbc_tmp1
execute if score to_not cbc_tmp1 matches 0 if score not_step cbc_tmp1 < instruction_len cbc run scoreboard players operation not_step_factor cbc_tmp1 *= 2 cbc_tmp1
execute if score to_not cbc_tmp1 matches 0 if score not_step cbc_tmp1 < instruction_len cbc run scoreboard players add not_step cbc_tmp1 1

# bit = x
execute if score to_not cbc_tmp1 matches 1.. run scoreboard players operation not_bit cbc_tmp1 = to_not cbc_tmp1

# bit += 1 (invert)
execute if score to_not cbc_tmp1 matches 1.. run scoreboard players add not_bit cbc_tmp1 1

# bit %= 2
execute if score to_not cbc_tmp1 matches 1.. run scoreboard players operation not_bit cbc_tmp1 %= 2 cbc_tmp1

# bit *= factor
execute if score to_not cbc_tmp1 matches 1.. run scoreboard players operation not_bit cbc_tmp1 *= not_step_factor cbc_tmp1

# result += bit
execute if score to_not cbc_tmp1 matches 1.. run scoreboard players operation not_result cbc_tmp1 += not_bit cbc_tmp1

# factor *= 10
execute if score to_not cbc_tmp1 matches 1.. run scoreboard players operation not_step_factor cbc_tmp1 *= 2 cbc_tmp1

execute if score to_not cbc_tmp1 matches 1.. run scoreboard players add not_step cbc_tmp1 1
# x /= 2
execute if score to_not cbc_tmp1 matches 1.. run scoreboard players operation to_not cbc_tmp1 /= 2 cbc_tmp1

execute if score to_not cbc_tmp1 matches 1.. run function cb_computer:instructions/not_step
execute if score to_not cbc_tmp1 matches 0 if score not_step cbc_tmp1 < instruction_len cbc run function cb_computer:instructions/not_step