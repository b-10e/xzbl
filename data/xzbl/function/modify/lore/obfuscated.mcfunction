# fx
execute unless data storage xzbl:temp lore0.obfuscated run function xzbl:fx/obfuscated_true
execute if data storage xzbl:temp lore0{obfuscated:true} run function xzbl:fx/obfuscated_false
execute if data storage xzbl:temp lore0{obfuscated:false} run function xzbl:fx/obfuscated_true

# set data
execute unless data storage xzbl:temp lore0.obfuscated run return run function xzbl:modify/lore/set_lore_value {path:"obfuscated",value:"true"}
execute if data storage xzbl:temp lore0{obfuscated:true} run return run function xzbl:modify/lore/set_lore_value {path:"obfuscated",value:"false"}
return run function xzbl:modify/lore/set_lore_value {path:"obfuscated",value:"true"}