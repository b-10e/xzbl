# make sure there is a lectern or sign below
execute positioned ~ ~-1 ~ unless function xzbl:multiblock/check_valid run return fail

# get text from sign/lectern
execute positioned ~ ~-1 ~ unless function xzbl:multiblock/get_data/main run return fail

# fx
function xzbl:fx/text

# get the current lore
function xzbl:modify/lore/get_current_lore/main

# set text
data modify storage xzbl:temp lore set from storage xzbl:temp block_text
data modify entity @s Item.components."minecraft:lore" set from storage xzbl:temp lore