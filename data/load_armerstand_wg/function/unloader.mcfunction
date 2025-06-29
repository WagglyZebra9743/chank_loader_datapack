#防具立ての上の音符ブロックがクリックされたらremoveを付ける(以下のコマンドが実行される)
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s unless block ~ ~1 ~ minecraft:note_block[note=24] run tag @s add remove
#防具立ての自動作業台が無かったらremoveを付ける(以下のコマンドが実行される)
execute as @e[type=minecraft:armor_stand,tag=a,tag=done] at @s unless block ~ ~ ~ minecraft:crafter run tag @s add remove
#もしaというタグが付いていてdoneというタグが付いていてremoveというタグが付いている防具立てがあったら
#効果音を鳴らす
execute as @e[type=minecraft:armor_stand,tag=a,tag=done,tag=remove] at @s run playsound minecraft:block.note_block.xylophone ambient @p ~ ~ ~ 1 0
#防具立ての上の方にあるブロックディスプレイ(a)をキルする
execute as @e[type=minecraft:armor_stand,tag=a,tag=done,tag=remove] at @s run execute positioned ~ ~1 ~ run kill @e[type=minecraft:block_display,sort=nearest,distance=..1]
#防具立ての座標の音符ブロックを一部空気にする
execute as @e[type=minecraft:armor_stand,tag=a,tag=done,tag=remove] at @s run setblock ~ ~1 ~ air
#防具立ての座標の自動作業台を空気にしてドロップさせる
#中にアイテムが入っていた場合でもドロップするようにする
execute as @e[type=minecraft:armor_stand,tag=a,tag=done,tag=remove] at @s run setblock ~ ~ ~ air destroy
#防具立ての付近の音符ブロックをキルする
execute as @e[type=minecraft:armor_stand,tag=a,tag=done,tag=remove] at @s run kill @e[type=item,sort=nearest,distance=..2,nbt={Item:{id:"minecraft:note_block"}}]
#防具立ての付近の自動作業台をキルする
execute as @e[type=minecraft:armor_stand,tag=a,tag=done,tag=remove] at @s run kill @e[type=item,sort=nearest,distance=..2,nbt={Item:{id:"minecraft:crafter"}}]
#防具立てから(+16,+16)から(-16,-16)の位置の常時読み込みを解除する
execute as @e[type=minecraft:armor_stand,tag=a,tag=done,tag=remove] at @s run forceload remove ~16 ~16 ~-16 ~-16
#強制読み込みチャンクの再確認
execute if entity @e[type=minecraft:armor_stand,tag=a,tag=done,tag=remove] run tag @e[type=armor_stand,tag=a,tag=done,tag=!remove] remove done
#防具立てを与える
execute as @e[type=minecraft:armor_stand,tag=a,tag=done,tag=remove] at @s run function load_armerstand_wg:getloader
#防具立て(aかつdoneかつremove)をキルする
execute as @e[type=minecraft:armor_stand,tag=a,tag=done,tag=remove] at @s run kill @s