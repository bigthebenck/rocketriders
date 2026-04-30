$scoreboard players set $(player) rank 2
$execute as @a[name="$(player)",predicate=custom:team/lobby] run function custom:team/join_lobby
$tellraw @a ["",{"text":"Rank set: ","color":"gray"},{"text":"$(player)","color":"white"},{"text":" → ","color":"gray"},{"text":"Trinitrotoluol","color":"aqua","bold":true}]
