# fx
execute unless data storage xzbl:temp lore0.strikethrough run function xzbl:fx/strikethrough_true
execute if data storage xzbl:temp lore0{strikethrough:true} run function xzbl:fx/strikethrough_false
execute if data storage xzbl:temp lore0{strikethrough:false} run function xzbl:fx/strikethrough_true

# set data
execute unless data storage xzbl:temp lore0.strikethrough run return run function xzbl:modify/lore/set_lore_value {path:"strikethrough",value:"true"}
execute if data storage xzbl:temp lore0{strikethrough:true} run return run function xzbl:modify/lore/set_lore_value {path:"strikethrough",value:"false"}
return run function xzbl:modify/lore/set_lore_value {path:"strikethrough",value:"true"}