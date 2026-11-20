# store extra
data modify storage xzbl:temp extra set value []
data modify storage xzbl:temp temp_extra set from storage xzbl:temp temp_lore[0].extra

# convert extra
function xzbl:modify/lore/get_current_lore/extra/loop

data modify storage xzbl:temp temp_lore[0].extra set from storage xzbl:temp extra