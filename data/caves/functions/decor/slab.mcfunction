#use a scoreboard to track type to set, 0 is non-recognized, 1 is hasBeenSet=true, 2+ are stone types

scoreboard players set $block_set cave_data 0
execute if score $block_set cave_data matches 0 if block ~ ~-1 ~ minecraft:stone run scoreboard players set $block_set cave_data 2
execute if score $block_set cave_data matches 0 if block ~ ~-1 ~ minecraft:andesite run scoreboard players set $block_set cave_data 3
execute if score $block_set cave_data matches 0 if block ~ ~-1 ~ minecraft:granite run scoreboard players set $block_set cave_data 4
execute if score $block_set cave_data matches 0 if block ~ ~-1 ~ minecraft:diorite run scoreboard players set $block_set cave_data 5
execute if score $block_set cave_data matches 0 if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players set $block_set cave_data 6
execute if score $block_set cave_data matches 0 if block ~ ~-1 ~ minecraft:mossy_cobblestone run scoreboard players set $block_set cave_data 7
execute if score $block_set cave_data matches 0 if block ~ ~-1 ~ minecraft:sandstone run scoreboard players set $block_set cave_data 8
execute if score $block_set cave_data matches 0 if block ~ ~-1 ~ minecraft:red_sandstone run scoreboard players set $block_set cave_data 9
execute if score $block_set cave_data matches 0 if block ~ ~-1 ~ minecraft:stone_bricks run scoreboard players set $block_set cave_data 10


#0.3 chance to set cobblestone slab on top of stone
execute if score $block_set cave_data matches 2 if predicate du:random/0.5 store result score $block_set cave_data run scoreboard players set $block_set cave_data 6

execute if score $block_set cave_data matches 2 if predicate du:random/0.5 store result score $block_set cave_data run setblock ~ ~-1 ~ minecraft:stone_slab
execute if score $block_set cave_data matches 2 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:stone_slab replace #du:air

execute if score $block_set cave_data matches 3 if predicate du:random/0.5 store result score $block_set cave_data run setblock ~ ~-1 ~ minecraft:andesite_slab
execute if score $block_set cave_data matches 3 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:andesite_slab replace #du:air

execute if score $block_set cave_data matches 4 if predicate du:random/0.5 store result score $block_set cave_data run setblock ~ ~-1 ~ minecraft:granite_slab
execute if score $block_set cave_data matches 4 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:granite_slab replace #du:air

execute if score $block_set cave_data matches 5 if predicate du:random/0.5 store result score $block_set cave_data run setblock ~ ~-1 ~ minecraft:diorite_slab
execute if score $block_set cave_data matches 5 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:diorite_slab replace #du:air

execute if score $block_set cave_data matches 6 if predicate du:random/0.5 store result score $block_set cave_data run setblock ~ ~-1 ~ minecraft:cobblestone_slab
execute if score $block_set cave_data matches 6 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone_slab replace #du:air

execute if score $block_set cave_data matches 7 if predicate du:random/0.5 store result score $block_set cave_data run setblock ~ ~-1 ~ minecraft:mossy_cobblestone_slab
execute if score $block_set cave_data matches 7 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:mossy_cobblestone_slab replace #du:air

execute if score $block_set cave_data matches 8 if predicate du:random/0.5 store result score $block_set cave_data run setblock ~ ~-1 ~ minecraft:sandstone_slab
execute if score $block_set cave_data matches 8 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:sandstone_slab replace #du:air

execute if score $block_set cave_data matches 9 if predicate du:random/0.5 store result score $block_set cave_data run setblock ~ ~-1 ~ minecraft:red_sandstone_slab
execute if score $block_set cave_data matches 9 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:red_sandstone_slab replace #du:air

execute if score $block_set cave_data matches 10 if predicate du:random/0.5 store result score $block_set cave_data run setblock ~ ~-1 ~ minecraft:stone_brick_slab
execute if score $block_set cave_data matches 10 store result score $block_set cave_data run fill ~ ~ ~ ~ ~ ~ minecraft:stone_brick_slab replace #du:air