execute if score debug_instructions cbc_settings matches 1 run tellraw @a "OUT R1"

data modify storage cb_computer:storage output set from storage cb_computer:storage Registers[0]
execute if score output_chat cbc_settings matches 1 run tellraw @a {"storage":"cb_computer:storage","nbt":"Registers[0]"}

execute store result score output cbc_tmp1 run data get storage cb_computer:storage output
execute if entity @e[type=armor_stand,tag=cbc_output] unless score output cbc_tmp1 matches 0.. if score debug_warnings cbc_settings matches 1 run tellraw @a "Can't display negative numbers"
execute if score output cbc_tmp1 matches 0.. run function cb_computer:hardware/update_outputs