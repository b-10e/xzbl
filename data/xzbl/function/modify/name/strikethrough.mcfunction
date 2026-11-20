# fx
execute unless data storage xzbl:temp custom_name.strikethrough run function xzbl:fx/strikethrough_true
execute if data storage xzbl:temp custom_name{strikethrough:true} run function xzbl:fx/strikethrough_false
execute if data storage xzbl:temp custom_name{strikethrough:false} run function xzbl:fx/strikethrough_true

# set data
execute unless data storage xzbl:temp custom_name.strikethrough run return run data modify storage xzbl:temp custom_name.strikethrough set value true
execute if data storage xzbl:temp custom_name{strikethrough:true} run return run data modify storage xzbl:temp custom_name.strikethrough set value false
return run data modify storage xzbl:temp custom_name.strikethrough set value true