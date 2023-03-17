execute if score debug_instructions cbc_settings matches 1 run tellraw @a "STORE R2"

#Copy memory in tmp
data modify storage cb_computer:storage tmp_mem set from storage cb_computer:storage Memory

#Get address
execute store result score address cbc_tmp1 run data get storage cb_computer:storage nonopcode

#Get length of memory
execute store result score address_diff cbc_tmp1 run data get storage cb_computer:storage Memory
scoreboard players operation address_diff cbc_tmp1 -= address cbc_tmp1

#Rotate to address
function cb_computer:rotate_tmp_mem

#Set value
data modify storage cb_computer:storage tmp_mem[0] set from storage cb_computer:storage Registers[1]

#Rotate back to 0
scoreboard players operation address cbc_tmp1 = address_diff cbc_tmp1
function cb_computer:rotate_tmp_mem

#Copy tmp to memory
data modify storage cb_computer:storage Memory set from storage cb_computer:storage tmp_mem