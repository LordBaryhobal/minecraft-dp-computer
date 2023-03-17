data modify storage cb_computer:storage status.running set value 1
scoreboard players operation address cbc_tmp1 = PC cbc
scoreboard players add PC cbc 1
execute store result storage cb_computer:storage status.pc int 1 run scoreboard players get PC cbc

function cb_computer:fetch

data modify storage cb_computer:storage instruction set from storage cb_computer:storage tmp_mem[0]

function cb_computer:extract_opcode

execute store result score opcode cbc_tmp1 run data get storage cb_computer:storage opcode

#tellraw @a ["PC:",{"score":{"name":"PC","objective":"cbc"}}]



execute if score opcode cbc_tmp1 matches 0 run function cb_computer:instructions/load_r1
execute if score opcode cbc_tmp1 matches 1 run function cb_computer:instructions/store_r1
execute if score opcode cbc_tmp1 matches 2 run function cb_computer:instructions/jump_if_r1
execute if score opcode cbc_tmp1 matches 3 run function cb_computer:instructions/add_r1
execute if score opcode cbc_tmp1 matches 4 run function cb_computer:instructions/lshift_r1
execute if score opcode cbc_tmp1 matches 5 run function cb_computer:instructions/not_r1
execute if score opcode cbc_tmp1 matches 6 run function cb_computer:instructions/jump
execute if score opcode cbc_tmp1 matches 7 run function cb_computer:instructions/stop

execute if score opcode cbc_tmp1 matches 8 run function cb_computer:instructions/load_r2
execute if score opcode cbc_tmp1 matches 9 run function cb_computer:instructions/store_r2
execute if score opcode cbc_tmp1 matches 10 run function cb_computer:instructions/jump_if_r2
execute if score opcode cbc_tmp1 matches 11 run function cb_computer:instructions/add_r2
execute if score opcode cbc_tmp1 matches 12 run function cb_computer:instructions/lshift_r2
execute if score opcode cbc_tmp1 matches 13 run function cb_computer:instructions/not_r2
execute if score opcode cbc_tmp1 matches 14 run function cb_computer:instructions/out_r1
execute if score opcode cbc_tmp1 matches 15 run function cb_computer:instructions/out_r2

execute if score opcode cbc_tmp1 matches 16 run function cb_computer:instructions/load_r1_addr_r2
execute if score opcode cbc_tmp1 matches 17 run function cb_computer:instructions/store_r1_addr_r2
execute if score opcode cbc_tmp1 matches 18 run function cb_computer:instructions/beq
execute if score opcode cbc_tmp1 matches 19 run function cb_computer:instructions/sub_r1
execute if score opcode cbc_tmp1 matches 20 run function cb_computer:instructions/rshift_r1
execute if score opcode cbc_tmp1 matches 21 run function cb_computer:instructions/bgt
execute if score opcode cbc_tmp1 matches 22 run function cb_computer:instructions/blt
execute if score opcode cbc_tmp1 matches 23 run function cb_computer:instructions/branch

execute if score opcode cbc_tmp1 matches 24 run function cb_computer:instructions/load_r2_addr_r1
execute if score opcode cbc_tmp1 matches 25 run function cb_computer:instructions/store_r2_addr_r1
execute if score opcode cbc_tmp1 matches 26 run function cb_computer:instructions/jeq
execute if score opcode cbc_tmp1 matches 27 run function cb_computer:instructions/sub_r2
execute if score opcode cbc_tmp1 matches 28 run function cb_computer:instructions/rshift_r2
execute if score opcode cbc_tmp1 matches 29 run function cb_computer:instructions/jgt
execute if score opcode cbc_tmp1 matches 30 run function cb_computer:instructions/jlt
execute if score opcode cbc_tmp1 matches 31 run function cb_computer:instructions/rbr

execute if score opcode cbc_tmp1 matches 32 run function cb_computer:instructions/mul_r1
execute if score opcode cbc_tmp1 matches 33 run function cb_computer:instructions/div_r1

execute if score opcode cbc_tmp1 matches 40 run function cb_computer:instructions/mul_r2
execute if score opcode cbc_tmp1 matches 41 run function cb_computer:instructions/div_r2



execute store result score running cbc_tmp1 run data get storage cb_computer:storage status.running
execute if score running cbc_tmp1 matches 1 if score speed cbc_settings matches 50 run schedule function cb_computer:exec 1t
execute if score running cbc_tmp1 matches 1 if score speed cbc_settings matches 100 run schedule function cb_computer:exec 0.1s
execute if score running cbc_tmp1 matches 1 if score speed cbc_settings matches 200 run schedule function cb_computer:exec 0.2s
execute if score running cbc_tmp1 matches 1 if score speed cbc_settings matches 500 run schedule function cb_computer:exec 0.5s
execute if score running cbc_tmp1 matches 1 if score speed cbc_settings matches 1000 run schedule function cb_computer:exec 1s