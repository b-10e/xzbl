data modify storage xzbl:temp temp_block_text set from storage xzbl:temp block_text
data modify storage xzbl:temp block_text set value []

function xzbl:modify/lore/set_text/loop

data modify storage xzbl:temp lore set from storage xzbl:temp block_text