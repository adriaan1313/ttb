#called by item/staff/check_staff

#audiovisuals
playsound block.grass.break voice @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound block.grass.break voice @a[distance=..16] ~ ~ ~ 2 0.6 1
playsound block.grass.break voice @a[distance=..16] ~ ~ ~ 2 0.7 1
particle block packed_ice ~ ~ ~ 2 0 2 0.01 1000 normal @a

#functionality
effect give @s slowness 10 100 true
effect give @s resistance 10 4 true
effect give @s fire_resistance 10 2 true
effect give @s strength 10 4 true

#depletion
scoreboard players operation @s[gamemode=!creative,gamemode=!spectator] ttb_mana_blight -= $use ttb_mana_blight
function ttb:item/staff/mana/report
