##Gives executor a Lunging Spear
#Antidupe check
execute store result score @s HasLungingSpear run clear @s *[custom_data~{id:"lunging_spear"}] 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasLungingSpear=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Lunging Spear already obtained.","color":"aqua"}
execute if entity @s[scores={HasLungingSpear=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Lunging Spear already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasLungingSpear=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Lunging Spear obtained.","color":"aqua"}
execute if entity @s[scores={HasLungingSpear=0},tag=!fullHotbar] run function items:give/lunging_spear {count:1}

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenLungingSpear
