# should be run at the position of the sign
data modify storage xzbl:temp block_text set value []

data modify storage xzbl:temp block_text append from block ~ ~ ~ front_text.messages[]

# make sure list is just strings
data modify storage xzbl:temp block_text[0] set from storage xzbl:temp block_text[0].text
data modify storage xzbl:temp block_text[1] set from storage xzbl:temp block_text[1].text
data modify storage xzbl:temp block_text[2] set from storage xzbl:temp block_text[2].text
data modify storage xzbl:temp block_text[3] set from storage xzbl:temp block_text[3].text

return 1