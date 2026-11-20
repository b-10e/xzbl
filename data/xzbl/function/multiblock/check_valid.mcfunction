# should be run as the item frame

# if lectern
execute \
    at @s \
    if block ~ ~-1 ~ minecraft:lectern \
        run return 1

# if sign
execute \
    at @s \
    if block ~ ~-1 ~ #minecraft:all_signs \
        run return 1

# no valid block, fail
return fail