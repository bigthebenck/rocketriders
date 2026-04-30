## Admin Give UI (typed-name entry point)
## Usage: /function admin:give_ui {target:"PlayerName"}
## Names are case-sensitive here. For a clickable player picker, run /function admin:give_ui_pick instead.

# Check the target exists and is in a match
$execute unless entity @a[name=$(target)] run return run tellraw @s [{"text":"[Admin Give] ","color":"red"},{"text":"'$(target)'","color":"white"},{"text":" not found. Names are case-sensitive (or try /function admin:give_ui_pick).","color":"red"}]
$execute unless entity @a[name=$(target),predicate=custom:team/any_playing_team] run return run tellraw @s [{"text":"[Admin Give] ","color":"red"},{"text":"'$(target)'","color":"white"},{"text":" is not currently in a match.","color":"red"}]

# Tag target (clear any previous first)
tag @a remove adminGiveTarget
$tag @a[name=$(target)] add adminGiveTarget

function admin:give_ui/render
