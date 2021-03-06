# called by block/tempest_crafter/recipe_validity_check

# make recipe usable
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:2b}] run data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:2b}].Slot set value 0b
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:3b}] run data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:3b}].Slot set value 1b
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:4b}] run data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:4b}].Slot set value 2b
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:11b}] run data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:11b}].Slot set value 3b
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:12b}] run data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:12b}].Slot set value 4b
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:13b}] run data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:13b}].Slot set value 5b
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:20b}] run data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:20b}].Slot set value 6b
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:21b}] run data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:21b}].Slot set value 7b
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:22b}] run data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{Slot:22b}].Slot set value 8b

# tempest crafter
execute if score @s ttb_slot_count matches 9 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{ttb:{crafting:{input:[{tag:{ttb:{item:'amethyst'}},Slot:0b},{id:'minecraft:glass',Slot:1b},{tag:{ttb:{item:'amethyst'}},Slot:2b},{id:'minecraft:crying_obsidian',Slot:3b},{id:'minecraft:end_crystal',Slot:4b},{id:'minecraft:crying_obsidian',Slot:5b},{id:'minecraft:gold_block',Slot:6b},{id:'minecraft:gold_block',Slot:7b},{id:'minecraft:gold_block',Slot:8b}]}}}}]} run function ttb:block/tempest_crafter/craft

# crystals
execute if score @s ttb_slot_count matches 5 if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{ttb:{crafting:{input:[{tag:{ttb:{item:'mysterious_dust'}},Slot:1b},{tag:{ttb:{item:'mysterious_dust'}},Slot:3b},{tag:{ttb:{item:'amethyst'}},Slot:4b},{tag:{ttb:{item:'mysterious_dust'}},Slot:5b},{tag:{ttb:{item:'mysterious_dust'}},Slot:7b}]}}}}]} run function ttb:item/amethyst_crystal/craft
execute if score @s ttb_slot_count matches 5 if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{ttb:{crafting:{input:[{tag:{ttb:{item:'mysterious_dust'}},Slot:1b},{tag:{ttb:{item:'mysterious_dust'}},Slot:3b},{tag:{ttb:{item:'vulcaanium'}},Slot:4b},{tag:{ttb:{item:'mysterious_dust'}},Slot:5b},{tag:{ttb:{item:'mysterious_dust'}},Slot:7b}]}}}}]} run function ttb:item/vulcaanium_crystal/craft

execute if score @s ttb_slot_count matches 9 if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{ttb:{crafting:{input:[{tag:{ttb:{item:'mysterious_dust'}},Slot:0b},{tag:{ttb:{crystal:1b}},Slot:1b},{tag:{ttb:{item:'mysterious_dust'}},Slot:2b},{tag:{ttb:{crystal:1b}},Slot:3b},{tag:{ttb:{item:'amethyst'}},Slot:4b},{tag:{ttb:{crystal:1b}},Slot:5b},{tag:{ttb:{item:'mysterious_dust'}},Slot:6b},{tag:{ttb:{crystal:1b}},Slot:7b},{tag:{ttb:{item:'mysterious_dust'}},Slot:8b}]}}}}]} run function ttb:item/mysterious_crystal/craft

# staff recipes
execute if score @s ttb_slot_count matches 7 if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{ttb:{crafting:{input:[{id:'minecraft:diamond',Slot:0b},{id:'minecraft:ender_eye',Slot:1b},{id:'minecraft:diamond',Slot:2b},{id:'minecraft:diamond',Slot:3b},{id:'minecraft:blaze_rod',Slot:4b},{id:'minecraft:diamond',Slot:5b},{id:'minecraft:blaze_rod',Slot:7b}]}}}}]} run function ttb:item/staff/craft

# relics
execute if score @s ttb_slot_count matches 3 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{ttb:{crafting:{input:[{id:'minecraft:diamond',Slot:3b},{id:'minecraft:sea_lantern',Slot:4b},{id:'minecraft:diamond',Slot:5b}]}}}}]} run function ttb:item/bright_relic/craft
execute if score @s ttb_slot_count matches 3 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{ttb:{crafting:{input:[{id:'minecraft:diamond',Slot:3b},{id:'minecraft:ender_eye',Slot:4b},{id:'minecraft:diamond',Slot:5b}]}}}}]} run function ttb:item/dark_relic/craft

# breaker
execute if score @s ttb_slot_count matches 9 if score @s ttb_slot_size matches 1 if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{ttb:{item:'vulcaanium'}},Count:4b} ,{Slot:1b,tag:{ttb:{crafting:{input:[{id:'minecraft:red_nether_bricks',Slot:0b},{id:'minecraft:red_nether_bricks',Slot:1b},{id:'minecraft:red_nether_bricks',Slot:2b},{id:'minecraft:red_nether_bricks',Slot:3b},{id:'minecraft:lava_bucket',Slot:4b},{id:'minecraft:iron_bars',Slot:5b},{id:'minecraft:red_nether_bricks',Slot:6b},{id:'minecraft:red_nether_bricks',Slot:7b},{id:'minecraft:red_nether_bricks',Slot:8b}]}}}}]} run function ttb:block/breaker/craft
# acronite cage
execute if score @s ttb_slot_count matches 9 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{ttb:{item:'vulcaanium'}},Count:2b} ,{Slot:1b,tag:{ttb:{crafting:{input:[{id:'minecraft:blackstone',Slot:0b},{id:'minecraft:blackstone',Slot:1b},{id:'minecraft:blackstone',Slot:2b},{id:'minecraft:blackstone',Slot:3b},{id:'minecraft:dispenser',Slot:4b},{id:'minecraft:iron_bars',Slot:5b},{id:'minecraft:blackstone',Slot:6b},{id:'minecraft:blackstone',Slot:7b},{id:'minecraft:blackstone',Slot:8b}]}}}}]} run function ttb:block/acronite_cage/craft
# eckspei locker
execute if score @s ttb_slot_count matches 9 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{ttb:{item:'vulcaanium'}},Count:1b} ,{Slot:1b,tag:{ttb:{crafting:{input:[{id:'minecraft:iron_ingot',Slot:0b},{id:'minecraft:iron_ingot',Slot:1b},{id:'minecraft:iron_ingot',Slot:2b},{id:'minecraft:glass_pane',Slot:3b},{id:'minecraft:glass_bottle',Slot:4b},{id:'minecraft:observer',Slot:5b},{id:'minecraft:iron_ingot',Slot:6b},{id:'minecraft:hopper',Slot:7b},{id:'minecraft:iron_ingot',Slot:8b}]}}}}]} run function ttb:block/eckspei_locker/craft
# alchemy chamber
execute if score @s ttb_slot_count matches 9 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{ttb:{item:'vulcaanium'}},Count:5b} ,{Slot:1b,tag:{ttb:{crafting:{input:[{id:'minecraft:iron_ingot',Slot:0b},{id:'minecraft:iron_ingot',Slot:1b},{id:'minecraft:iron_ingot',Slot:2b},{id:'minecraft:iron_ingot',Slot:3b},{id:'minecraft:cobblestone',Slot:4b},{id:'minecraft:blaze_rod',Slot:5b},{id:'minecraft:iron_ingot',Slot:6b},{id:'minecraft:iron_ingot',Slot:7b},{id:'minecraft:iron_ingot',Slot:8b}]}}}}]} run function ttb:block/alchemy_chamber/craft

# eckspei rod
execute if score @s ttb_slot_count matches 9 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{ttb:{crafting:{input:[{id:'minecraft:quartz',Slot:0b},{id:'minecraft:quartz',Slot:1b},{id:'minecraft:quartz',Slot:2b},{id:'minecraft:quartz',Slot:3b},{id:'minecraft:blaze_rod',Slot:4b},{id:'minecraft:quartz',Slot:5b},{id:'minecraft:quartz',Slot:6b},{tag:{ttb:{item:'vulcaanium'}},Slot:7b},{id:'minecraft:quartz',Slot:8b}]}}}}]} run function ttb:item/eckspei_rod/craft

# restoration tome
execute if score @s ttb_slot_count matches 1 if score @s ttb_slot_size matches 1 if data block ~ ~ ~ Items[{Slot:9b,tag:{ttb:{item:'restoration_tome'}},Count:1b}] if data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[].tag.Damage unless data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[].tag.ttb.staff run function ttb:item/restoration_tome/restore/item_check
execute if score @s ttb_slot_count matches 1 if score @s ttb_slot_size matches 1 if data block ~ ~ ~ Items[{Slot:9b,tag:{ttb:{item:'restoration_tome'}},Count:1b}] if data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[].tag.ttb.staff run function ttb:item/restoration_tome/restore/staff_check
