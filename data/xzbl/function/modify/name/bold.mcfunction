# fx
execute unless data storage xzbl:temp custom_name.bold run function xzbl:fx/bold_true
execute if data storage xzbl:temp custom_name{bold:true} run function xzbl:fx/bold_false
execute if data storage xzbl:temp custom_name{bold:false} run function xzbl:fx/bold_true

# set data
execute unless data storage xzbl:temp custom_name.bold run return run data modify storage xzbl:temp custom_name.bold set value true
execute if data storage xzbl:temp custom_name{bold:true} run return run data modify storage xzbl:temp custom_name.bold set value false
return run data modify storage xzbl:temp custom_name.bold set value true