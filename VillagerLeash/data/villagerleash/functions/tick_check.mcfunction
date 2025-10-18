# Pour tous les villageois attachés, les faire suivre le joueur le plus proche
execute as @e[type=minecraft:villager, tag=VillagerLeashed] at @s run tp @s ~ ~ ~ facing entity @p[distance=..10]
execute as @e[type=minecraft:villager, tag=VillagerLeashed] at @s if entity @p[distance=3..10] run tp @s ^ ^ ^0.2

# Si le joueur s'éloigne trop, détacher le villageois
execute as @e[type=minecraft:villager, tag=VillagerLeashed] at @s unless entity @p[distance=..10] run tag @s remove VillagerLeashed
