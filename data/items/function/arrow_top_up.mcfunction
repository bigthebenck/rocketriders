##Top up each playing-team player's arrows to 4 if they have less
execute as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator] store result score @s HasArrows run clear @s arrow 0
execute as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={HasArrows=0}] run function items:give/arrow {count:4}
execute as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={HasArrows=1}] run function items:give/arrow {count:3}
execute as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={HasArrows=2}] run function items:give/arrow {count:2}
execute as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,scores={HasArrows=3}] run function items:give/arrow {count:1}
