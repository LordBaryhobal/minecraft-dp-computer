execute if score debug_instructions cbc_settings matches 1 run tellraw @a "LOAD R2 ADDR R1"

execute store result score address cbc_tmp1 run data get storage cb_computer:storage Registers[0]
function cb_computer:fetch

data modify storage cb_computer:storage Registers[1] set from storage cb_computer:storage tmp_mem[0]