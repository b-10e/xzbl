# should be run at the position of the sign
data modify storage xzbl:temp block_text set value []

data modify storage xzbl:temp block_text append from block ~ ~ ~ front_text.messages[]
data modify storage xzbl:temp block_text append from block ~ ~ ~ back_text.messages[]

# make sure list is just strings
data modify storage xzbl:temp block_text[0] set from storage xzbl:temp block_text[0].text
data modify storage xzbl:temp block_text[1] set from storage xzbl:temp block_text[1].text
data modify storage xzbl:temp block_text[2] set from storage xzbl:temp block_text[2].text
data modify storage xzbl:temp block_text[3] set from storage xzbl:temp block_text[3].text
data modify storage xzbl:temp block_text[4] set from storage xzbl:temp block_text[4].text
data modify storage xzbl:temp block_text[5] set from storage xzbl:temp block_text[5].text
data modify storage xzbl:temp block_text[6] set from storage xzbl:temp block_text[6].text
data modify storage xzbl:temp block_text[7] set from storage xzbl:temp block_text[7].text

return 1