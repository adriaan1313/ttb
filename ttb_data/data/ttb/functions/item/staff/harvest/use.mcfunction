#called by item/staff/check_staff

#audiovisuals
playsound entity.zombie_horse.hurt player @a[distance=..16] ~ ~ ~ 50 0.5 1
particle block magma_block ~ ~ ~ .5 .5 .5 .01 500 normal @a
particle flame ~ ~ ~ .5 .5 .5 1 500 normal @a

#functionality
effect give @s[level=..4] instant_damage 10 0
tellraw @s[level=..4] {"translate":"item.ttb.staff.harvest.regress.took_lifeforce","color":"dark_red","italic":true}

xp add @s -5 levels

execute as @e[type=#ttb:item/staff/harvest/regress,distance=..6] at @s run function ttb:item/staff/harvest/regress

#depletion
scoreboard players operation @s[gamemode=!creative,gamemode=!spectator] ttb_mana_harvest -= $use ttb_mana_harvest
function ttb:item/staff/mana/report