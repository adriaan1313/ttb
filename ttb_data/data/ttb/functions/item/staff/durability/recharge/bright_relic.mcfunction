#called by entity/function/holding/bright_relic

#audiovisuals
playsound entity.endermite.death player @s ~ ~ ~ 2 0.5 1
particle soul_fire_flame ~ ~ ~ 0 0 0 0.25 50 normal @a
particle end_rod ~ ~ ~ .25 1 .25 .1 100 normal @a

#functionality
execute store result score @s ttb_durab run data get entity @s SelectedItem.tag.ttb.durability
scoreboard players add @s ttb_durab 3

execute in overworld positioned 29999984 255 29999984 run function ttb:item/carrot_on_a_stick/durability/update

scoreboard players operation @s ttb_relic_damage -= $threshold ttb_relic_damage
