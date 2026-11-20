tag @s remove xzbl.target_item_frame

# terminate if no sign or lectern beneath
execute unless function xzbl:multiblock/check_valid run return fail

# terminate if item was (probably) just inserted, rather than interacted
# not foolproof, but false positives/negatives aren't a big deal so it's fine
execute if data entity @s {ItemRotation:0b} run return fail
data modify entity @s ItemRotation set value 0b

# store item frame item
data modify storage xzbl:temp item set from entity @s Item

# begin modification
execute if data storage xzbl:temp {sneak_key:true} run return run function xzbl:modify/lore/main
function xzbl:modify/name/main
