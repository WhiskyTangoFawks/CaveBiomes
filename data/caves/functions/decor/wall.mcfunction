#use a scoreboard to track type to set, 0 is non-recognized, 1 is hasBeenSet=true, 2+ are stone types
scoreboard players set $block_set cave_data 0
execute if score $disable_stalactites cave_data matches 1 run scoreboard players set $block_set cave_data 1
execute if score $block_set cave_data matches 0 if block ~ ~1 ~ minecraft:stone run scoreboard players set $block_set cave_data 2
execute if score $block_set cave_data matches 0 if block ~ ~1 ~ minecraft:andesite run scoreboard players set $block_set cave_data 3
execute if score $block_set cave_data matches 0 if block ~ ~1 ~ minecraft:granite run scoreboard players set $block_set cave_data 4
execute if score $block_set cave_data matches 0 if block ~ ~1 ~ minecraft:diorite run scoreboard players set $block_set cave_data 5
execute if score $block_set cave_data matches 0 if block ~ ~1 ~ minecraft:cobblestone run scoreboard players set $block_set cave_data 6
execute if score $block_set cave_data matches 0 if block ~ ~1 ~ minecraft:mossy_cobblestone run scoreboard players set $block_set cave_data 7
execute if score $block_set cave_data matches 0 if block ~ ~1 ~ minecraft:sandstone run scoreboard players set $block_set cave_data 8
execute if score $block_set cave_data matches 0 if block ~ ~1 ~ minecraft:red_sandstone run scoreboard players set $block_set cave_data 9

execute if score $block_set cave_data matches 2 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone_wall replace #du:air
execute if score $block_set cave_data matches 3 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:andesite_wall replace #du:air
execute if score $block_set cave_data matches 4 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:granite_wall replace #du:air
execute if score $block_set cave_data matches 5 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:diorite_wall replace #du:air
execute if score $block_set cave_data matches 6 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone_wall replace #du:air
execute if score $block_set cave_data matches 7 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:mossy_cobblestone_wall replace #du:air
execute if score $block_set cave_data matches 8 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:sandstone_wall replace #du:air
execute if score $block_set cave_data matches 9 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:red_sandstone_wall replace #du:air