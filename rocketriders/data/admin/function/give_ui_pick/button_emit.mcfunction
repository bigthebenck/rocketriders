# Macro emitter: sends one button (showing @s's name) to the picker operator. $(lastId) is the candidate's pick ID.

$tellraw @a[tag=adminGivePickOperator,limit=1] [{"text":"  • [","color":"dark_gray"},{"selector":"@s","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"function admin:give_ui_from_pick {id:$(lastId)}"},"hover_event":{"action":"show_text","value":[{"text":"Open the give menu targeting ","color":"gray"},{"selector":"@s","color":"yellow","bold":true}]}},{"text":"]","color":"dark_gray"}]
