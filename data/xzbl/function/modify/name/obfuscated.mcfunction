# fx
execute unless data storage xzbl:temp custom_name.obfuscated run function xzbl:fx/obfuscated_true
execute if data storage xzbl:temp custom_name{obfuscated:true} run function xzbl:fx/obfuscated_false
execute if data storage xzbl:temp custom_name{obfuscated:false} run function xzbl:fx/obfuscated_true

# set data
execute unless data storage xzbl:temp custom_name.obfuscated run return run data modify storage xzbl:temp custom_name.obfuscated set value true
execute if data storage xzbl:temp custom_name{obfuscated:true} run return run data modify storage xzbl:temp custom_name.obfuscated set value false
return run data modify storage xzbl:temp custom_name.obfuscated set value true