data modify storage xzbl:temp temp_line set value {text:"",italic:false}

# handle string
execute unless data storage xzbl:temp temp_lore[0].text run function xzbl:modify/lore/get_current_lore/string

# handle object
execute if data storage xzbl:temp temp_lore[0].text run function xzbl:modify/lore/get_current_lore/object

# loop
data modify storage xzbl:temp lore append from storage xzbl:temp temp_line
data remove storage xzbl:temp temp_lore[0]
execute if data storage xzbl:temp temp_lore[0] run function xzbl:modify/lore/get_current_lore/loop