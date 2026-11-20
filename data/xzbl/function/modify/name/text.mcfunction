# make sure there is a lectern or sign below
execute positioned ~ ~-1 ~ unless function xzbl:multiblock/check_valid run return fail

# get text from sign/lectern
execute positioned ~ ~-1 ~ unless function xzbl:multiblock/get_data/main run return fail

# fx
function xzbl:fx/text

# get the current custom_name
function xzbl:modify/name/get_current_name

# set text
data modify storage xzbl:temp custom_name.text set from storage xzbl:temp block_text[0]
execute positioned ~ ~-1 ~ if function xzbl:multiblock/get_current_page_data/main run data modify storage xzbl:temp custom_name.text set from storage xzbl:temp current_page_text

# convert component to string
data modify storage xzbl:temp convert_in set from storage xzbl:temp custom_name
function xzbl:convert_object_to_string
data modify storage xzbl:temp custom_name set from storage xzbl:temp convert_out


data modify entity @s Item.components."minecraft:custom_name" set from storage xzbl:temp custom_name