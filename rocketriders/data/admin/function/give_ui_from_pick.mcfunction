# Callback from the picker: tag the chosen candidate as adminGiveTarget and open the give menu.
# $(id) = the candidate's adminGivePickID assigned during give_ui_pick.

tag @a remove adminGiveTarget
$tag @a[scores={adminGivePickID=$(id)}] add adminGiveTarget

# Verify the chosen candidate is still online and still in a match
execute unless entity @a[tag=adminGiveTarget,limit=1] run return run tellraw @s [{"text":"[Admin Give] ","color":"red"},{"text":"That player is no longer available.","color":"red"}]
execute unless entity @a[tag=adminGiveTarget,predicate=custom:team/any_playing_team,limit=1] run return run tellraw @s [{"text":"[Admin Give] ","color":"red"},{"text":"That player is no longer in a match.","color":"red"}]

# Clean up picker state now that a target is locked in
tag @a remove adminGivePickCandidate
tag @a remove adminGivePickOperator
scoreboard players reset @a adminGivePickID
scoreboard players reset $adminGivePickCount var

# Render the give menu in the operator's chat (@s = whoever clicked the picker button)
function admin:give_ui/render
