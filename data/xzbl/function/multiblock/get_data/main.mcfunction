# should be run at the block

# lectern with book
execute \
    if block ~ ~ ~ minecraft:lectern \
    if data block ~ ~ ~ Book.components."minecraft:writable_book_content" \
        run return run function xzbl:multiblock/get_data/lectern

# if sign
execute \
    if block ~ ~ ~ #minecraft:all_signs \
        run return run function xzbl:multiblock/get_data/sign

# no valid block, fail
return fail