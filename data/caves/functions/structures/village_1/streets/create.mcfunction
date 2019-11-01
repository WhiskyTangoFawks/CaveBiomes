
#get random street
#scoreboard players set in_0 du_data 1
#function du:math/random
scoreboard players set out_0 du_data 0

#place structure block
execute if score out_0 du_data matches 0 if block ~ ~ ~ minecraft:command_block[facing=south] run setblock ~ ~ ~ minecraft:structure_block{mirror: "NONE", rotation: "CLOCKWISE_180", mode: "LOAD", posX: 3, posY: 0, posZ: 21, showboundingbox: 0b, ignoreEntities: 0b, name: "caves:village_1/streets/street_1"}
execute if score out_0 du_data matches 0 if block ~ ~ ~ minecraft:command_block[facing=east] run setblock ~ ~ ~ minecraft:structure_block{mirror: "NONE", rotation: "CLOCKWISE_90", mode: "LOAD", posX: 21, posY: 0, posZ: -3, showboundingbox: 0b, ignoreEntities: 0b, name: "caves:village_1/streets/street_1"}
execute if score out_0 du_data matches 0 if block ~ ~ ~ minecraft:command_block[facing=north] run setblock ~ ~ ~ minecraft:structure_block{mirror: "NONE", rotation: "NONE", mode: "LOAD", posX: -3, posY: 0, posZ: -21, showboundingbox: 0b, ignoreEntities: 0b, name: "caves:village_1/streets/street_1"}
execute if score out_0 du_data matches 0 if block ~ ~ ~ minecraft:command_block[facing=west] run setblock ~ ~ ~ minecraft:structure_block{mirror: "NONE", rotation: "COUNTERCLOCKWISE_90", mode: "LOAD", posX: -21, posY: 0, posZ: 3, showboundingbox: 0b, ignoreEntities: 0b, name: "caves:village_1/streets/street_1"}

#cleanup
setblock ~ ~1 ~ minecraft:redstone_block
setblock ~ ~1 ~ minecraft:air
setblock ~ ~ ~ minecraft:spruce_planks
