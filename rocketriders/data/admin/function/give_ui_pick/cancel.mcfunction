# Picker cancel: clear all picker state.

tag @a remove adminGivePickCandidate
tag @a remove adminGivePickOperator
scoreboard players reset @a adminGivePickID
scoreboard players reset $adminGivePickCount var

tellraw @s {"text":"[Admin Give] Picker closed.","color":"gray"}
