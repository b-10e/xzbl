# should be run at the position of the lectern
data remove storage xzbl:temp sign_text
data modify storage xzbl:temp sign_text set from block ~ ~ ~ front_text.messages

# make sure list is just strings
data modify storage xzbl:temp sign_text[0] set from storage xzbl:temp sign_text[0].text
data modify storage xzbl:temp sign_text[1] set from storage xzbl:temp sign_text[1].text
data modify storage xzbl:temp sign_text[2] set from storage xzbl:temp sign_text[2].text
data modify storage xzbl:temp sign_text[3] set from storage xzbl:temp sign_text[3].text