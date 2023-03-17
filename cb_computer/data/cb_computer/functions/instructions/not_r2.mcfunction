execute if score debug_instructions cbc_settings matches 1 run tellraw @a "NOT R2"

scoreboard players set 2 cbc_tmp1 2
scoreboard players set 10 cbc_tmp1 10

scoreboard players set not_step cbc_tmp1 0
scoreboard players set not_step_factor cbc_tmp1 1
scoreboard players set not_result cbc_tmp1 0
execute store result score to_not cbc_tmp1 run data get storage cb_computer:storage Registers[1]

function cb_computer:instructions/not_step

execute store result storage cb_computer:storage Registers[1] int 1 run scoreboard players get not_result cbc_tmp1