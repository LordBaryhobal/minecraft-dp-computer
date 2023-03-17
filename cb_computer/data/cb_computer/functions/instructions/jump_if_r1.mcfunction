execute if score debug_instructions cbc_settings matches 1 run tellraw @a "JUMP IF R1"

execute store result score r1 cbc_tmp1 run data get storage cb_computer:storage Registers[0]

execute if score r1 cbc_tmp1 matches 0 store result score PC cbc run data get storage cb_computer:storage nonopcode