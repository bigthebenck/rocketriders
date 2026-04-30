$scoreboard players reset $(player) rank
$execute as @a[name="$(player)",predicate=custom:team/lobby] run function custom:team/join_lobby
$tellraw @a ["",{"text":"Rank cleared: ","color":"gray"},{"text":"$(player)","color":"white"}]
