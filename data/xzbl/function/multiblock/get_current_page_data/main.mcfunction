# should be run at the lectern

# make sure block is a lectern with a book
execute unless data block ~ ~ ~ Book.components."minecraft:writable_book_content" run return fail

# load page number
data modify storage xzbl:temp page_number set from block ~ ~ ~ Page

# load text
function xzbl:multiblock/get_current_page_data/macro with storage xzbl:temp

return 1