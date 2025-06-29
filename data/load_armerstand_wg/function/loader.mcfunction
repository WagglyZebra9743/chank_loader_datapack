#もしaというタグが付いていてdoneというタグが付いていない防具立てがあったら
#防具立て(aかつdoneではない)の足の位置に自動作業台を設置する
execute as @e[type=minecraft:armor_stand,tag=a,tag=!done] at @s run setblock ~ ~ ~ minecraft:crafter{CustomName:'"上が顔の向き(地図と同じ)"'}
#防具立て(aかつdoneではない)の頭の位置に音符ブロックを設置する
execute as @e[type=minecraft:armor_stand,tag=a,tag=!done] at @s run setblock ~ ~1 ~ minecraft:note_block[instrument=xylophone,note=24]
#防具立て(aかつdoneではない)の頭の位置にブロックディスプレイ(a)を設置する
execute as @e[type=minecraft:armor_stand,tag=a,tag=!done] at @s run summon minecraft:block_display ~ ~2 ~ {Tags:["a"],block_state: {Name: "minecraft:lodestone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.99999994f, 9.999999E-5f], translation: [-0.5f, 5.0E-5f, -0.5f]}}
#効果音を鳴らす
execute as @e[type=minecraft:armor_stand,tag=a,tag=!done] at @s run playsound minecraft:block.enchantment_table.use ambient @p ~ ~ ~ 1 2
#防具立て(aかつdoneではない)にタグdoneを付与する
execute as @e[type=minecraft:armor_stand,tag=a,tag=!done] at @s run tag @s add done
#その防具立てから(+16,+16)から(-16,-16)の位置を常時読み込みにする
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s run forceload add ~16 ~16 ~-16 ~-16
#自動作業台の無効化されているスロットに応じて常時読み込みを解除する
#配列の[0]をチェックしてそれぞれ読み込み解除
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s store success score @s y run data get block ~ ~ ~ disabled_slots[0]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 store result score @s x run data get block ~ ~ ~ disabled_slots[0]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 0 run forceload remove ~-16 ~-16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 1 run forceload remove ~0 ~-16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 2 run forceload remove ~16 ~-16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 3 run forceload remove ~-16 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 4 run forceload remove ~0 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 5 run forceload remove ~16 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 6 run forceload remove ~-16 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 7 run forceload remove ~0 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 8 run forceload remove ~16 ~16
#配列の[1]をチェックしてそれぞれ読み込み解除
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s store success score @s y run data get block ~ ~ ~ disabled_slots[1]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 store result score @s x run data get block ~ ~ ~ disabled_slots[1]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 1 run forceload remove ~0 ~-16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 2 run forceload remove ~16 ~-16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 3 run forceload remove ~-16 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 4 run forceload remove ~0 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 5 run forceload remove ~16 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 6 run forceload remove ~-16 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 7 run forceload remove ~0 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 8 run forceload remove ~16 ~16
#配列の[2]をチェックしてそれぞれ読み込み解除
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s store success score @s y run data get block ~ ~ ~ disabled_slots[2]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 store result score @s x run data get block ~ ~ ~ disabled_slots[2]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 2 run forceload remove ~16 ~-16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 3 run forceload remove ~-16 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 4 run forceload remove ~0 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 5 run forceload remove ~16 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 6 run forceload remove ~-16 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 7 run forceload remove ~0 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 8 run forceload remove ~16 ~16
#配列の[3]をチェックしてそれぞれ読み込み解除
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s store success score @s y run data get block ~ ~ ~ disabled_slots[3]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 store result score @s x run data get block ~ ~ ~ disabled_slots[3]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 3 run forceload remove ~-16 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 4 run forceload remove ~0 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 5 run forceload remove ~16 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 6 run forceload remove ~-16 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 7 run forceload remove ~0 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 8 run forceload remove ~16 ~16
#配列の[4]をチェックしてそれぞれ読み込み解除
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s store success score @s y run data get block ~ ~ ~ disabled_slots[4]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 store result score @s x run data get block ~ ~ ~ disabled_slots[4]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 4 run forceload remove ~0 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 5 run forceload remove ~16 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 6 run forceload remove ~-16 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 7 run forceload remove ~0 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 8 run forceload remove ~16 ~16
#配列の[5]をチェックしてそれぞれ読み込み解除
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s store success score @s y run data get block ~ ~ ~ disabled_slots[5]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 store result score @s x run data get block ~ ~ ~ disabled_slots[5]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 5 run forceload remove ~16 ~0
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 6 run forceload remove ~-16 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 7 run forceload remove ~0 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 8 run forceload remove ~16 ~16
#配列の[6]をチェックしてそれぞれ読み込み解除
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s store success score @s y run data get block ~ ~ ~ disabled_slots[6]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 store result score @s x run data get block ~ ~ ~ disabled_slots[6]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 6 run forceload remove ~-16 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 7 run forceload remove ~0 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 8 run forceload remove ~16 ~16
#配列の[7]をチェックしてそれぞれ読み込み解除
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s store success score @s y run data get block ~ ~ ~ disabled_slots[7]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 store result score @s x run data get block ~ ~ ~ disabled_slots[7]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 7 run forceload remove ~0 ~16
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 8 run forceload remove ~16 ~16
#配列の[8]をチェックしてそれぞれ読み込み解除
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s store success score @s y run data get block ~ ~ ~ disabled_slots[8]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 store result score @s x run data get block ~ ~ ~ disabled_slots[8]
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s if score @s y matches 1 if score @s x matches 8 run forceload remove ~16 ~16