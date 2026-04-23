# Admin give: Hypersonic
# Usage: /execute as <player> run function admin:give/missile/hypersonic
# Note: Respects hotbar limits and antidupe checks. Player must be in a match.

execute unless predicate custom:team/any_playing_team run return run tellraw @s {"text":"[Admin Give] This player is not currently in a match.","color":"red"}
function items:missile/special/givehyper
