## Admin Give UI - player picker
## Usage: /function admin:give_ui_pick
## Lists every online in-match player as a clickable button. Clicking one opens the give menu in your chat targeting that player.

# Reset prior picker state
tag @a remove adminGivePickCandidate
tag @a remove adminGivePickOperator
scoreboard players reset @a adminGivePickID
scoreboard players reset $adminGivePickCount var

# Mark the operator (so per-candidate buttons know where to send the tellraw)
tag @s add adminGivePickOperator

# Mark candidates
tag @a[predicate=custom:team/any_playing_team] add adminGivePickCandidate

# Bail if there's nobody to pick
execute unless entity @a[tag=adminGivePickCandidate,limit=1] run return run tellraw @s [{"text":"[Admin Give] ","color":"red"},{"text":"No players are currently in a match.","color":"red"}]

# Header
tellraw @s [{"text":"──────────────────────\n","color":"dark_gray"},{"text":" ☆ ","color":"gold"},{"text":"Pick a Target","color":"yellow","bold":true},{"text":" ☆\n","color":"gold"},{"text":"──────────────────────","color":"dark_gray"}]

# Per-candidate button (runs as @s = each candidate, sends a tellraw line back to the operator)
execute as @a[tag=adminGivePickCandidate] run function admin:give_ui_pick/button

# Footer + cancel
tellraw @s [{"text":"──────────────────────\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"✗ Cancel","color":"red","bold":true,"click_event":{"action":"run_command","command":"function admin:give_ui_pick/cancel"},"hover_event":{"action":"show_text","value":{"text":"Close picker","color":"gray"}}},{"text":"]","color":"dark_gray"},{"text":"\n──────────────────────","color":"dark_gray"}]
