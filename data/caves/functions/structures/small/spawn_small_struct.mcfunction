
#generate random struct
scoreboard players set in_0 du_data 4
function du:math/random

execute if score out_0 du_data matches 0 run setblock ~ ~ ~ minecraft:structure_block{posX: 0, posY: 0, posZ: 0, name: "caves:caves/cavern_1", mode: "LOAD", showboundingbox: 0b}
execute if score out_0 du_data matches 1 run setblock ~ ~ ~ minecraft:structure_block{posX: 0, posY: 0, posZ: 0, name: "caves:caves/cavern_2", mode: "LOAD", showboundingbox: 0b}

execute if score out_0 du_data matches 2 run setblock ~ ~ ~ minecraft:structure_block{posX: 0, posY: 0, posZ: 0, name: "caves:caves/sinkhole_1", mode: "LOAD", showboundingbox: 0b}
execute if score out_0 du_data matches 3 run setblock ~ ~ ~ minecraft:structure_block{posX: 0, posY: 0, posZ: 0, name: "caves:caves/sinkhole_2", mode: "LOAD", showboundingbox: 0b}

setblock ~ ~1 ~ minecraft:redstone_block

setblock ~ ~0 ~ minecraft:stone
setblock ~ ~1 ~ minecraft:stone

scoreboard players set out_0 du_data -1