# Runs as @s = a candidate player. Assigns them an incrementing ID and emits a chat button for the operator.

scoreboard players add $adminGivePickCount var 1
scoreboard players operation @s adminGivePickID = $adminGivePickCount var

execute store result storage rocketriders:main adminGivePick.lastId int 1 run scoreboard players get @s adminGivePickID
function admin:give_ui_pick/button_emit with storage rocketriders:main adminGivePick
