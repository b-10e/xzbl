# fx
execute unless data storage xzbl:temp lore0.italic run function xzbl:fx/italic_true
execute if data storage xzbl:temp lore0{italic:true} run function xzbl:fx/italic_false
execute if data storage xzbl:temp lore0{italic:false} run function xzbl:fx/italic_true

# set data
execute unless data storage xzbl:temp lore0.italic run return run function xzbl:modify/lore/set_lore_value {path:"italic",value:"true"}
execute if data storage xzbl:temp lore0{italic:true} run return run function xzbl:modify/lore/set_lore_value {path:"italic",value:"false"}
return run function xzbl:modify/lore/set_lore_value {path:"italic",value:"true"}