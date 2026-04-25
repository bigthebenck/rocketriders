##Give each playing-team player 8 stained glass blocks matching their team color

##Default blue/yellow teams when custom team colors are off
execute unless predicate game:match_components/custom_team_colors run give @a[x=0,predicate=custom:team/blue,gamemode=!spectator] minecraft:blue_stained_glass 8
execute unless predicate game:match_components/custom_team_colors run give @a[x=0,predicate=custom:team/yellow,gamemode=!spectator] minecraft:yellow_stained_glass 8

##Custom team colors: map the per-player custom_team_color score (see custom:update_player_text/self/custom_N)
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=0}] run give @s minecraft:white_stained_glass 8
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=1}] run give @s minecraft:blue_stained_glass 8
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=2}] run give @s minecraft:yellow_stained_glass 8
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=3}] run give @s minecraft:red_stained_glass 8
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=4}] run give @s minecraft:green_stained_glass 8
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=5}] run give @s minecraft:purple_stained_glass 8
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=6}] run give @s minecraft:pink_stained_glass 8
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=7}] run give @s minecraft:orange_stained_glass 8
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=8}] run give @s minecraft:magenta_stained_glass 8
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=9}] run give @s minecraft:cyan_stained_glass 8
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=10}] run give @s minecraft:lime_stained_glass 8
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=11}] run give @s minecraft:yellow_stained_glass 8
execute if predicate game:match_components/custom_team_colors as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={custom_team_color=12}] run give @s minecraft:light_blue_stained_glass 8
