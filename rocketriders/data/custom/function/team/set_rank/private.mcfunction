$scoreboard players set $(player) rank 3
$execute as @a[name="$(player)",predicate=custom:team/lobby] run function custom:team/join_lobby
$tellraw @a ["",{"text":"Rank set: ","color":"gray"},{"text":"$(player)","color":"white"},{"text":" → ","color":"gray"},{"text":"2,4,6-Trinitrotoluene","color":"dark_purple","bold":true}]
