data modify storage xzbl:temp lore set value []

# load lore
data modify storage xzbl:temp temp_lore set from entity @s Item.components."minecraft:lore"

# convert lore segments
function xzbl:modify/lore/get_current_lore/loop

# cleanup
data remove storage xzbl:temp temp_epart
data remove storage xzbl:temp temp_extra
data remove storage xzbl:temp temp_lore
data remove storage xzbl:temp temp_line
data remove storage xzbl:temp extra