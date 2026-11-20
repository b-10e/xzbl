# changing text check
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 minecraft:name_tag run function xzbl:modify/lore/text

# otherwise handle other items
execute unless data entity @s Item.components."minecraft:lore" run return fail

# load current lore
function xzbl:modify/lore/get_current_lore/main
data modify storage xzbl:temp lore0 set from storage xzbl:temp lore[0]

execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 #minecraft:axes run function xzbl:modify/lore/bold
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 #minecraft:pickaxes run function xzbl:modify/lore/italic
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 #minecraft:shovels run function xzbl:modify/lore/underlined
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 #minecraft:swords run function xzbl:modify/lore/strikethrough
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 minecraft:ender_pearl run function xzbl:modify/lore/obfuscated
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 #xzbl:dyes run function xzbl:modify/lore/color
execute if items entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 minecraft:water_bucket run function xzbl:modify/lore/clear

# set new custom_name data
data modify entity @s Item.components."minecraft:lore" set from storage xzbl:temp lore

