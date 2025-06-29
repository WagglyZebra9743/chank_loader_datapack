#もしpcかつsetの防具立ての座標に村人がいなかったら
#ブロックディスプレイをキルする
execute as @e[type=minecraft:armor_stand,tag=pc,tag=set] at @s run execute unless entity @e[type=minecraft:villager,tag=pc,distance=..0.5] run kill @e[type=minecraft:block_display,distance=..1,tag=pc]
#効果音を鳴らす
execute as @e[type=minecraft:armor_stand,tag=pc,tag=set] at @s run execute unless entity @e[type=minecraft:villager,tag=pc,distance=..0.5] run playsound minecraft:block.beacon.deactivate ambient @p ~ ~ ~ 1 2
#パソコンをアイテム化
execute as @e[type=minecraft:armor_stand,tag=pc,tag=set] at @s run execute unless entity @e[type=minecraft:villager,tag=pc,distance=..0.5] run function load_armerstand_wg:getpc
#防具立てをキルする
execute as @e[type=minecraft:armor_stand,tag=pc,tag=set] at @s run execute unless entity @e[type=minecraft:villager,tag=pc,distance=..0.5] run kill @s