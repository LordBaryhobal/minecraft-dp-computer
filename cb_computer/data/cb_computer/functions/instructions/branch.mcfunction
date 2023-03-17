execute if score debug_instructions cbc_settings matches 1 run tellraw @a "BRANCH"

scoreboard players operation branch cbc = PC cbc
execute store result score PC cbc run data get storage cb_computer:storage nonopcode