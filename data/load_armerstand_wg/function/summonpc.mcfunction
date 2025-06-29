#ここに村人やその他パソコンを召喚するコマンドを入れる
#本体を出す
summon minecraft:block_display ~ ~0.13 ~ {Tags:["pc"],Passengers: [{block_state: {Name: "minecraft:iron_block"}, id: "minecraft:block_display", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.75f, 0.25f], translation: [-0.5f, -0.125f, 0.25f]}}, {block_state: {Name: "minecraft:black_stained_glass_pane", Properties: {east: "true", north: "false", south: "false", waterlogged: "false", west: "true"}}, id: "minecraft:block_display", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.8733796f, 0.57279074f, 0.25f], translation: [-0.4366898f, -0.0080612f, 0.125f]}}], block_state: {Name: "minecraft:daylight_detector", Properties: {inverted: "false", power: "0"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.25f, 0.5f], translation: [-0.5f, -0.125f, -0.25f]}}
#タグを付けなおす
tag @e[type=minecraft:block_display,sort=nearest,limit=3,distance=..1,tag=!a] add pc
#位置調整
tp @e[type=minecraft:block_display,tag=pc,distance=..1] @s
#向き調整
tp @e[type=minecraft:block_display,tag=pc,distance=..1] ~ ~0.13 ~ ~180 ~