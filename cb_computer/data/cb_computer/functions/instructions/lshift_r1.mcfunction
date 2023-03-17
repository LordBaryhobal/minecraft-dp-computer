execute if score debug_instructions cbc_settings matches 1 run tellraw @a "<< R1"

execute store result storage cb_computer:storage Registers[0] int 2 run data get storage cb_computer:storage Registers[0]