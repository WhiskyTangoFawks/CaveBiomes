
execute if score $gen.out_0 cave_data matches 330..665 run setblock ~ ~ ~ minecraft:dirt
execute if score $gen.out_0 cave_data matches 666..999 run setblock ~ ~ ~ minecraft:coarse_dirt
execute if score $gen.out_1 cave_data matches 000..100 positioned ~ ~-1 ~ if block ~ ~ ~ #caves:cave_decoration-water run function caves:decor/wall
