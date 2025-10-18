# Attacher le villageois le plus proche
execute as @s at @s run tag @e[type=minecraft:villager, distance=..5, limit=1, sort=nearest] add VillagerLeashed

# Message de confirmation
execute as @s at @s run tellraw @s ["",{"text":"Villageois attaché !","color":"green"}]

# Révoquer l'advancement pour pouvoir le réutiliser
advancement revoke @s only villagerleash:attach_lead
