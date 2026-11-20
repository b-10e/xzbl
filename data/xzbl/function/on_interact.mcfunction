# called from the interact_with_item_frame advancement
advancement revoke @s only xzbl:interact_with_item_frame

# terminate if player not holding a valid tool
execute \
    unless items entity @s weapon.* #xzbl:valid_lectern_tools \
        run return fail

# store player sneaking
data modify storage xzbl:temp sneak_key set value false
execute if predicate xzbl:sneak_key run data modify storage xzbl:temp sneak_key set value true

# tag the interacted item frame
function xzbl:tag_item_frame/main

# store player held item
summon minecraft:item_display ~ ~ ~ {\
    UUID:[I; -1595177414, 951207039, -1074838156, 1369253454],\
}
execute \
    if items entity @s weapon.offhand #xzbl:valid_lectern_tools \
        run item replace entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 from entity @s weapon.offhand
execute \
    if items entity @s weapon.mainhand #xzbl:valid_lectern_tools \
        run item replace entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 from entity @s weapon.mainhand
data modify storage xzbl:temp held_item set from entity a0eb863a-38b2-447f-bfef-4574519d264e item

# run interaction logic
execute \
    at @s \
    as @n[type=#xzbl:item_frames,tag=xzbl.target_item_frame,distance=..16] \
    at @s \
    align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
        run function xzbl:interact/main

# cleanup
kill a0eb863a-38b2-447f-bfef-4574519d264e