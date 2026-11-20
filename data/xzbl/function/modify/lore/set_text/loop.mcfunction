execute unless data storage xzbl:temp temp_block_text[0] run return fail

data modify storage xzbl:temp temp_line set value {text:""}
data modify storage xzbl:temp temp_line.text set from storage xzbl:temp temp_block_text[0]

data modify storage xzbl:temp block_text append from storage xzbl:temp temp_line
data remove storage xzbl:temp temp_block_text[0]

function xzbl:modify/lore/set_text/loop
