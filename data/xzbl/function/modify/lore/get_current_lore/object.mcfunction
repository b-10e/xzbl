# handle extra
execute if data storage xzbl:temp temp_lore[0].extra run function xzbl:modify/lore/get_current_lore/extra/main

data modify storage xzbl:temp temp_line set from storage xzbl:temp temp_lore[0]