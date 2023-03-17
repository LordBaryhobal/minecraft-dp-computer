#Opcode
execute store result score opcode cbc_tmp1 run data get storage cb_computer:storage instruction
scoreboard players operation opcode cbc_tmp1 /= opcode_factor cbc
execute store result storage cb_computer:storage opcode int 1 run scoreboard players get opcode cbc_tmp1

#Nonopcode
execute store result score nonopcode cbc_tmp1 run data get storage cb_computer:storage instruction
scoreboard players operation opcode cbc_tmp1 *= opcode_factor cbc
scoreboard players operation nonopcode cbc_tmp1 -= opcode cbc_tmp1
execute store result storage cb_computer:storage nonopcode int 1 run scoreboard players get nonopcode cbc_tmp1