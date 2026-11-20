# make sure there is a lectern or sign below
execute positioned ~ ~-1 ~ unless function xzbl:multiblock/check_valid run return fail

# get text from sign/lectern
execute positioned ~ ~-1 ~ unless function xzbl:multiblock/get_data/main run return fail

# fx
function xzbl:fx/text

# get the current lore
function xzbl:modify/lore/get_current_lore/main

# get current lore settings
data modify storage xzbl:temp lore_settings set from storage xzbl:temp lore[0]
execute unless data storage xzbl:temp lore_settings.text run data remove storage xzbl:temp lore_settings
data remove storage xzbl:temp lore_settings.text
data remove storage xzbl:temp lore_settings.extra

# set text
function xzbl:modify/lore/set_text/main

# reapply old lore settings
data modify storage xzbl:temp lore[] merge from storage xzbl:temp lore_settings
data modify storage xzbl:temp lore[].extra[] merge from storage xzbl:temp lore_settings

# copy back to item
data modify entity @s Item.components."minecraft:lore" set from storage xzbl:temp lore