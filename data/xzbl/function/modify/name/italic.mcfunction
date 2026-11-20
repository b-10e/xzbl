# fx
execute unless data storage xzbl:temp custom_name.italic run function xzbl:fx/italic_true
execute if data storage xzbl:temp custom_name{italic:true} run function xzbl:fx/italic_false
execute if data storage xzbl:temp custom_name{italic:false} run function xzbl:fx/italic_true

# set data
execute unless data storage xzbl:temp custom_name.italic run return run data modify storage xzbl:temp custom_name.italic set value true
execute if data storage xzbl:temp custom_name{italic:true} run return run data modify storage xzbl:temp custom_name.italic set value false
return run data modify storage xzbl:temp custom_name.italic set value true