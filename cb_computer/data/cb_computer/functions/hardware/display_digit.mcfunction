fill ~ ~ ~ ~4 ~4 ~ air
fill ~ ~-1 ~ ~4 ~-1 ~ waxed_oxidized_copper

# 0
execute if score @s cbc_tmp1 matches 0 run fill ~1 ~ ~ ~3 ~4 ~ waxed_copper_block
execute if score @s cbc_tmp1 matches 0 run fill ~2 ~1 ~ ~2 ~3 ~ air

# 1
execute if score @s cbc_tmp1 matches 1 run fill ~1 ~ ~ ~3 ~ ~ waxed_copper_block
execute if score @s cbc_tmp1 matches 1 run fill ~2 ~ ~ ~2 ~4 ~ waxed_copper_block
execute if score @s cbc_tmp1 matches 1 run setblock ~3 ~3 ~ waxed_copper_block

# 2
execute if score @s cbc_tmp1 matches 2 run fill ~1 ~ ~ ~3 ~4 ~ waxed_copper_block
execute if score @s cbc_tmp1 matches 2 run fill ~1 ~1 ~ ~2 ~1 ~ air
execute if score @s cbc_tmp1 matches 2 run fill ~2 ~3 ~ ~3 ~3 ~ air

# 3
execute if score @s cbc_tmp1 matches 3 run fill ~1 ~ ~ ~3 ~4 ~ waxed_copper_block
execute if score @s cbc_tmp1 matches 3 run fill ~2 ~1 ~ ~3 ~3 ~ air
execute if score @s cbc_tmp1 matches 3 run setblock ~2 ~2 ~ waxed_copper_block

# 4
execute if score @s cbc_tmp1 matches 4 run fill ~1 ~ ~ ~3 ~4 ~ waxed_copper_block
execute if score @s cbc_tmp1 matches 4 run fill ~2 ~ ~ ~3 ~1 ~ air
execute if score @s cbc_tmp1 matches 4 run fill ~2 ~3 ~ ~2 ~4 ~ air

# 5
execute if score @s cbc_tmp1 matches 5 run fill ~1 ~ ~ ~3 ~4 ~ waxed_copper_block
execute if score @s cbc_tmp1 matches 5 run fill ~2 ~1 ~ ~3 ~1 ~ air
execute if score @s cbc_tmp1 matches 5 run fill ~1 ~3 ~ ~2 ~3 ~ air

# 6
execute if score @s cbc_tmp1 matches 6 run fill ~1 ~ ~ ~3 ~4 ~ waxed_copper_block
execute if score @s cbc_tmp1 matches 6 run fill ~1 ~3 ~ ~2 ~3 ~ air
execute if score @s cbc_tmp1 matches 6 run setblock ~2 ~1 ~ air

# 7
execute if score @s cbc_tmp1 matches 7 run fill ~1 ~ ~ ~3 ~4 ~ waxed_copper_block
execute if score @s cbc_tmp1 matches 7 run fill ~2 ~ ~ ~3 ~3 ~ air

# 8
execute if score @s cbc_tmp1 matches 8 run fill ~1 ~ ~ ~3 ~4 ~ waxed_copper_block
execute if score @s cbc_tmp1 matches 8 run setblock ~2 ~1 ~ air
execute if score @s cbc_tmp1 matches 8 run setblock ~2 ~3 ~ air

# 9
execute if score @s cbc_tmp1 matches 9 run fill ~1 ~ ~ ~3 ~4 ~ waxed_copper_block
execute if score @s cbc_tmp1 matches 9 run fill ~2 ~1 ~ ~3 ~1 ~ air
execute if score @s cbc_tmp1 matches 9 run setblock ~2 ~3 ~ air

kill @s