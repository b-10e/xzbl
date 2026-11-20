# fx
execute unless data storage xzbl:temp lore0.underlined run function xzbl:fx/underlined_true
execute if data storage xzbl:temp lore0{underlined:true} run function xzbl:fx/underlined_false
execute if data storage xzbl:temp lore0{underlined:false} run function xzbl:fx/underlined_true

# set data
execute unless data storage xzbl:temp lore0.underlined run return run function xzbl:modify/lore/set_lore_value {path:"underlined",value:"true"}
execute if data storage xzbl:temp lore0{underlined:true} run return run function xzbl:modify/lore/set_lore_value {path:"underlined",value:"false"}
return run function xzbl:modify/lore/set_lore_value {path:"underlined",value:"true"}