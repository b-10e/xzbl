tag @s remove xzbl.target_item_frame

# terminate if item was (probably) just inserted, rather than interacted
execute if data entity @s {ItemRotation:0b} run return fail
data modify entity @s ItemRotation set value 0b

# store item frame item
data modify storage xzbl:temp item set from entity @s Item

# begin modification
execute if data storage xzbl:temp {sneak_key:true} run return run function xzbl:modify/name/main
function xzbl:modify/lore/main
