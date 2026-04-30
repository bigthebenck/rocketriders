# Admin Give UI dispatcher
# Reads the adminGiveChoice trigger and gives the chosen item to the player tagged adminGiveTarget.
# Buttons in admin:give_ui run /trigger adminGiveChoice set <ID>; this routes that ID to the corresponding give function.

execute unless entity @a[scores={adminGiveChoice=1..}] run return 0

# Utilities
execute if entity @a[scores={adminGiveChoice=1}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/splash
execute if entity @a[scores={adminGiveChoice=2}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/vortex
execute if entity @a[scores={adminGiveChoice=3}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/shield
execute if entity @a[scores={adminGiveChoice=4}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/obsidian_shield
execute if entity @a[scores={adminGiveChoice=5}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/canopy
execute if entity @a[scores={adminGiveChoice=6}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/nova_rocket
execute if entity @a[scores={adminGiveChoice=7}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/arrow
execute if entity @a[scores={adminGiveChoice=8}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/fireball
execute if entity @a[scores={adminGiveChoice=9}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/cluster_fireball
execute if entity @a[scores={adminGiveChoice=10}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/icbm
execute if entity @a[scores={adminGiveChoice=11}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/lunging_spear

# Normal missiles
execute if entity @a[scores={adminGiveChoice=12}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/ant
execute if entity @a[scores={adminGiveChoice=13}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/blade
execute if entity @a[scores={adminGiveChoice=14}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/catapult
execute if entity @a[scores={adminGiveChoice=15}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/citadel
execute if entity @a[scores={adminGiveChoice=16}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/elder_guardian
execute if entity @a[scores={adminGiveChoice=17}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/gemini
execute if entity @a[scores={adminGiveChoice=18}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/lifter
execute if entity @a[scores={adminGiveChoice=19}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/chronullifier
execute if entity @a[scores={adminGiveChoice=20}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/slasher
execute if entity @a[scores={adminGiveChoice=21}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/tomatwo

# Heavy missiles
execute if entity @a[scores={adminGiveChoice=22}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/auxiliary
execute if entity @a[scores={adminGiveChoice=23}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/juggerbuster
execute if entity @a[scores={adminGiveChoice=24}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/rifter
execute if entity @a[scores={adminGiveChoice=25}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/warhead

# Lightning missiles
execute if entity @a[scores={adminGiveChoice=26}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/hurricane
execute if entity @a[scores={adminGiveChoice=27}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/thunderbolt

# Special missiles
execute if entity @a[scores={adminGiveChoice=28}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/broadsword
execute if entity @a[scores={adminGiveChoice=29}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/bullet
execute if entity @a[scores={adminGiveChoice=30}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/duplex
execute if entity @a[scores={adminGiveChoice=31}] as @a[tag=adminGiveTarget,limit=1] at @s run function admin:give/missile/hypersonic

# Cancel (ID 99) — drop the target tag so further clicks do nothing
execute if entity @a[scores={adminGiveChoice=99}] run tag @a[tag=adminGiveTarget] remove adminGiveTarget

# Re-enable trigger for the clicker if the menu is still active (lets one menu give multiple items)
execute if entity @a[tag=adminGiveTarget] as @a[scores={adminGiveChoice=1..98}] run scoreboard players enable @s adminGiveChoice

scoreboard players reset @a adminGiveChoice
