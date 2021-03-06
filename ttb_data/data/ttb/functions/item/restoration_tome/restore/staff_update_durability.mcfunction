#called by item/restoration_tome/restore/staff

#update copy
## custom durability
### item data
scoreboard players operation @s ttb_durab = @s ttb_durab_max
execute store result block ~ ~-1 ~ Items[{Slot:0b}].tag.ttb.durability int 1 run scoreboard players get @s ttb_durab
### item lore
setblock ~ ~ ~ oak_sign{Text1:'[{"text":"","italic":false,"color":"gray"},[{"translate":"item.durability","with":[{"nbt":"Items[{Slot:0b}].tag.ttb.durability","block":"~ ~-1 ~"},{"nbt":"Items[{Slot:0b}].tag.ttb.max_durability","block":"~ ~-1 ~"}]}]]'}
data modify block ~ ~-1 ~ Items[{Slot:0b}].tag.display.Lore[0] set from block ~ ~ ~ Text1
setblock ~ ~ ~ air
# vanilla damage value
scoreboard players operation @s ttb_durab_max -= @s ttb_durab
scoreboard players operation @s ttb_durab_max *= #100 ttb_gamerules
execute store result score @s ttb_durab run data get entity @s Items[{Slot:0b}].tag.ttb.durability
scoreboard players operation @s ttb_durab_max /= @s ttb_durab
scoreboard players operation @s ttb_durab_max *= $carrot_on_a_stick_dur ttb_durab
scoreboard players operation @s ttb_durab_max /= #100 ttb_gamerules
execute store result block ~ ~-1 ~ Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get @s ttb_durab_max

#debug
tellraw @a[tag=ttb_debug,distance=..6] ["Staff durability: ",[{"nbt":"Items[{Slot:0b}].tag.ttb.durability","entity":"@s"},"/",{"nbt":"Items[{Slot:0b}].tag.ttb.max_durability","entity":"@s"}]]
