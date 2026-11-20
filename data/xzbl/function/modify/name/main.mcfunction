# changing text check
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 minecraft:name_tag run function xzbl:modify/name/text

# otherwise handle other items
execute unless data entity @s Item.components."minecraft:custom_name" run return fail

# load current custom_name
function xzbl:modify/name/get_current_name

execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 #minecraft:axes run function xzbl:modify/name/bold
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 #minecraft:pickaxes run function xzbl:modify/name/italic
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 #minecraft:shovels run function xzbl:modify/name/underlined
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 #minecraft:swords run function xzbl:modify/name/strikethrough
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 minecraft:ender_pearl run function xzbl:modify/name/obfuscated
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 #xzbl:dyes run function xzbl:modify/name/color
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 minecraft:water_bucket run function xzbl:modify/name/clear

# set new custom_name data
data modify entity @s Item.components."minecraft:custom_name" set from storage xzbl:temp custom_name

