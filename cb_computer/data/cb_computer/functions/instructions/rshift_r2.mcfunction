execute if score debug_instructions cbc_settings matches 1 run tellraw @a ">> R2"

execute store result storage cb_computer:storage Registers[1] int 0.5 run data get storage cb_computer:storage Registers[1]
