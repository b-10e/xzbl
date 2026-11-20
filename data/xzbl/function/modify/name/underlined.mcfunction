# fx
execute unless data storage xzbl:temp custom_name.underlined run function xzbl:fx/underlined_true
execute if data storage xzbl:temp custom_name{underlined:true} run function xzbl:fx/underlined_false
execute if data storage xzbl:temp custom_name{underlined:false} run function xzbl:fx/underlined_true

# set data
execute unless data storage xzbl:temp custom_name.underlined run return run data modify storage xzbl:temp custom_name.underlined set value true
execute if data storage xzbl:temp custom_name{underlined:true} run return run data modify storage xzbl:temp custom_name.underlined set value false
return run data modify storage xzbl:temp custom_name.underlined set value true