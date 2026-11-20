data modify storage xzbl:temp convert_in set from entity @s Item.components."minecraft:custom_name"
function xzbl:convert_string_to_object with storage xzbl:temp

# handle object 
execute if data storage xzbl:temp convert_out.text \
    run return run data modify storage xzbl:temp custom_name set from storage xzbl:temp convert_out

# handle string
data modify storage xzbl:temp custom_name set value {"text":"",italic:false}
data modify storage xzbl:temp custom_name.text set from storage xzbl:temp convert_out