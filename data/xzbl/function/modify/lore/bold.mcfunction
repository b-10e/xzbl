# fx
execute unless data storage xzbl:temp lore0.bold run function xzbl:fx/bold_true
execute if data storage xzbl:temp lore0{bold:true} run function xzbl:fx/bold_false
execute if data storage xzbl:temp lore0{bold:false} run function xzbl:fx/bold_true

# set data
execute unless data storage xzbl:temp lore0.bold run return run function xzbl:modify/lore/set_lore_value {path:"bold",value:"true"}
execute if data storage xzbl:temp lore0{bold:true} run return run function xzbl:modify/lore/set_lore_value {path:"bold",value:"false"}
return run function xzbl:modify/lore/set_lore_value {path:"bold",value:"true"}