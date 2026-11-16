# try to tag item frame that player interacted with
tag @s add xzbl.interactor
execute at @s as @e[type=#xzbl:item_frames,distance=..16,tag=!smithed.strict] run function xzbl:tag_item_frame/check
 
# cleanup
tag @s remove xzbl.interactor
