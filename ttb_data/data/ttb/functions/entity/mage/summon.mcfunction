summon zombie ~ ~ ~ {CustomName:'{"translate":"entity.ttb.mage"}',CustomNameVisible:0b,Tags:["ttb_entity","ttb_mage","ttb_sound","ttb_dynamic_model","ttb_fire_immune"],IsBaby:0b,ArmorItems:[{},{},{id:barrier,Count:1b,tag:{Enchantments:[{id:thorns,lvl:20s}]}},{id:barrier,Count:1b,tag:{CustomModelData:6830002}}],HandDropChances:[-500F,-500F],ArmorDropChances:[-500F,-500F,-500F,-500F],Attributes:[{Name:generic.maxHealth,Base:150d},{Name:generic.followRange,Base:0d},{Name:zombie.spawnReinforcements,Base:0d},{Name:generic.attackDamage,Base:6d},{Name:generic.knockbackResistance,Base:1d}],Health:150f,Silent:1b,DeathLootTable:"ttb:entities/mage",ActiveEffects:[{Id:12b,Amplifier:0b,Duration:999999},{Id:14b,Amplifier:0b,Duration:999999}]}
loot replace entity @e[type=zombie,tag=ttb_mage,sort=nearest,limit=1] weapon.mainhand loot ttb:items/mage_staff
