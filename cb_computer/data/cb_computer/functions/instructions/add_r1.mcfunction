execute if score debug_instructions cbc_settings matches 1 run tellraw @a "ADD R1"

execute store result score address cbc_tmp1 run data get storage cb_computer:storage nonopcode
function cb_computer:fetch

execute store result score value cbc_tmp1 run data get storage cb_computer:storage tmp_mem[0]

execute store result score result cbc_tmp1 run data get storage cb_computer:storage Registers[0]
scoreboard players operation result cbc_tmp1 += value cbc_tmp1

execute store result storage cb_computer:storage Registers[0] int 1 run scoreboard players get result cbc_tmp1