execute if score debug_instructions cbc_settings matches 1 run tellraw @a "LOAD R1 ADDR R2"

execute store result score address cbc_tmp1 run data get storage cb_computer:storage Registers[1]
function cb_computer:fetch

data modify storage cb_computer:storage Registers[0] set from storage cb_computer:storage tmp_mem[0]