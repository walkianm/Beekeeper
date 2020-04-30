execute store result score @p beekeeper_slot run data get entity @p SelectedItemSlot

execute unless score @p beekeeper_prSlot = @p beekeeper_slot run function beekeeper:holding_hive

scoreboard players operation @p beekeeper_prSlot = @p beekeeper_slot
