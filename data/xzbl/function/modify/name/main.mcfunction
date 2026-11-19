# terminate if no name
execute unless data storage xzbl:temp item.components."minecraft:custom_name" run return fail

# otherwise get name 
function xzbl:modify/name/get_current_name

# match item
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 minecraft:name_tag run return run function xzbl:modify/name/text/main

