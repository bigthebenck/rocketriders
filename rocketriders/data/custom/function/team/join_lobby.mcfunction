execute if score @s rank matches 4 run team join rocketriders.sort_303.Premium
execute if score @s rank matches 3 run team join rocketriders.sort_302.Private
execute if score @s rank matches 2 run team join rocketriders.sort_301.Prime
execute if score @s rank matches 1 run team join rocketriders.sort_300.Pristine
execute unless score @s rank matches 1..4 run team join rocketriders.sort_200.lobby
execute unless score @s rank matches 4 run effect clear @s glowing
scoreboard players reset @s custom_team_color
function custom:update_player_text/self
scoreboard players reset @s was_on_arena_team
execute store result score $players_in_lobby global if entity @a[x=0,predicate=custom:team/lobby]
