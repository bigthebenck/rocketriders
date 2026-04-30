$scoreboard players set $(player) rank 4
$execute as @a[name="$(player)",predicate=custom:team/lobby] run function custom:team/join_lobby
$tellraw @a ["",{"text":"Rank set: ","color":"gray"},{"text":"$(player)","color":"white"},{"text":" → ","color":"gray"},{"text":"2-Methyl-1,3,5-Trinitrobenzene","color":"light_purple","bold":true}]
