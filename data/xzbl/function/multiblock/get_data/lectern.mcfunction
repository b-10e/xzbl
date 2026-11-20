# should be run at the position of the lectern
data modify storage xzbl:temp block_text set value []
data modify storage xzbl:temp block_text append from block ~ ~ ~ Book.components."minecraft:writable_book_content".pages[].raw

return 1