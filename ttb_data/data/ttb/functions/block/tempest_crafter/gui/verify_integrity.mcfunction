#called by block/tempest_crafter/tick

tag @s add ttb_tempest_crafter_gui_disintegral
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:1b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:5b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:6b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:7b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:8b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:10b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:14b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:15b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:17b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:18b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:19b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:23b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:24b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:25b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:26b,tag:{ttb:{gui_item:1b}}}] run tag @s remove ttb_tempest_crafter_gui_disintegral
execute if entity @s[tag=ttb_tempest_crafter_gui_disintegral] run function ttb:block/tempest_crafter/gui/fix_gui_items
