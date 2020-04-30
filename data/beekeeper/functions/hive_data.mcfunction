data remove storage beekeeper:hive bees
data modify storage beekeeper:hive bees set from entity @p SelectedItem.tag.BlockEntityTag.Bees

execute store success score @p beekeeper_hasBee run data get storage beekeeper:hive bees[0]
execute if score @p beekeeper_hasBee matches 1.. run scoreboard players add @p beekeeper_numBee 1
execute store success score @p beekeeper_hasBee run data get storage beekeeper:hive bees[1]
execute if score @p beekeeper_hasBee matches 1.. run scoreboard players add @p beekeeper_numBee 1
execute store success score @p beekeeper_hasBee run data get storage beekeeper:hive bees[2]
execute if score @p beekeeper_hasBee matches 1.. run scoreboard players add @p beekeeper_numBee 1

execute if score @p beekeeper_numBee matches 0 run title @p actionbar {"text":"Contains 0 Bees","color":"gold"}
execute if score @p beekeeper_numBee matches 1 run title @p actionbar {"text":"Contains 1 Bee","color":"gold"}
execute if score @p beekeeper_numBee matches 2 run title @p actionbar {"text":"Contains 2 Bees","color":"gold"}
execute if score @p beekeeper_numBee matches 3 run title @p actionbar {"text":"Contains 3 Bees","color":"gold"}

scoreboard players set @p beekeeper_numBee 0
