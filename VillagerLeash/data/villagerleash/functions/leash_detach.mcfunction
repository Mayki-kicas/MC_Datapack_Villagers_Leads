# Détacher le villageois le plus proche
execute as @s at @s run tag @e[type=minecraft:villager, distance=..5, tag=VillagerLeashed, limit=1, sort=nearest] remove VillagerLeashed

# Message de confirmation
execute as @s at @s run tellraw @s ["",{"text":"Villageois détaché.","color":"red"}]
