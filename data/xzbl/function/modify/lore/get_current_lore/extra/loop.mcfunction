data modify storage xzbl:temp temp_epart set value {text:"",italic:false}

# handle string
execute unless data storage xzbl:temp temp_extra[0].text run function xzbl:modify/lore/get_current_lore/extra/string

# handle object
execute if data storage xzbl:temp temp_extra[0].text run data modify storage xzbl:temp temp_epart set from storage xzbl:temp temp_extra[0]

# loop
data modify storage xzbl:temp extra append from storage xzbl:temp temp_epart
data remove storage xzbl:temp temp_extra[0]
execute if data storage xzbl:temp temp_extra[0] run function xzbl:modify/lore/get_current_lore/extra/loop