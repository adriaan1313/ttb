#called by item/staff/check_staff

execute unless score @s ttb_mana_shatter >= $use ttb_mana_shatter run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_shatter"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.shatter","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_shatter >= $use ttb_mana_shatter run function ttb:item/staff/shatter/use