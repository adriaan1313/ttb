#called by block/tempest_crafter/recipe_check

playsound entity.zombie_villager.converted player @a[distance=..16] ~ ~ ~ 1 2 1
playsound entity.zombie_villager.converted player @a[distance=..16] ~ ~ ~ 1 0 1

function ttb:block/tempest_crafter/gui/remove_recipe
loot replace block ~ ~ ~ container.16 loot ttb:items/staff/random
data modify block ~ ~ ~ Items[{Slot:16b}].tag.ttb.crafting.multiplier set value 1
