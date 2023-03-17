execute if score debug_instructions cbc_settings matches 1 run tellraw @a "JUMP IF R2"

execute store result score r2 cbc_tmp1 run data get storage cb_computer:storage Registers[1]

execute if score r2 cbc_tmp1 matches 0 store result score PC cbc run data get storage cb_computer:storage nonopcode