# called by item/carrot_on_a_stick/durability/update

scoreboard players add @s ttb_model_cmd 6830000
execute store result block ~ ~-1 ~ Items[0].tag.CustomModelData int 1 run scoreboard players get @s ttb_model_cmd
scoreboard players reset @s ttb_model_cmd
