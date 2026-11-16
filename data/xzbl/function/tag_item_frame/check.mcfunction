# tag frame if player is looking at this one
tag @s add xzbl.candidate
execute \
    as @a[dx=0,tag=xzbl.interactor,limit=1] \
    if predicate xzbl:looking_at_item_frame \
        run tag @e[type=#xzbl:item_frames,distance=..16,tag=xzbl.candidate,limit=1] add xzbl.target_item_frame
tag @s remove xzbl.candidate
