scoreboard objectives add cbc_settings dummy
execute unless score init cbc_settings matches 1 run function cb_computer:init

data merge storage cb_computer:storage {input: 0, output:0 ,Memory:[], Registers:[0,0], tmp_mem:[], sr_stack:[], instruction:0, opcode:0, nonopcode:0, status:{running:0,pc:0}, flags:{carry_out:0}}

scoreboard objectives add cbc_tmp1 dummy
scoreboard objectives add cbc_tmp2 dummy
scoreboard objectives add cbc_tmp3 dummy
scoreboard objectives add cbc dummy
scoreboard players set PC cbc 0

scoreboard players operation nonopcode_len cbc = instruction_len cbc_settings
scoreboard players operation nonopcode_len cbc -= opcode_len cbc_settings

scoreboard players set 2 cbc_tmp1 2
scoreboard players set opcode_factor cbc 1
scoreboard players operation nonopcode_len cbc_tmp1 = nonopcode_len cbc
function cb_computer:calc_opcode_factor