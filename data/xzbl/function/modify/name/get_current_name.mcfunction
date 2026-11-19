# handle object 
execute if data entity @s Item.components."minecraft:custom_name".text \
    run return run data modify storage xzbl:temp custom_name set from entity @s Item.components."minecraft:custom_name"

# handle just a string
data modify storage xzbl:temp custom_name set value {"text":""}
data modify storage xzbl:temp custom_name.text set from entity @s Item.components."minecraft:custom_name"