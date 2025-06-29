#メモ(サーチ検知アイテム)
#enchanted_book[item_model="minecraft:ender_eye",lore=['{"color":"white","italic":false,"text":"右クリックすると"}','{"color":"white","italic":false,"text":"今いるチャンクが常時読み込みかどうかを確認できる"}'],item_name='{"color":"white","text":"ロードチェッカー"}',consumable={consume_seconds:1000,animation:"block",has_consume_particles:false}] 
#サーチ検知アイテムを持っている場合
#現在のチャンクが常時読み込みかどうかを判定する
execute if items entity @s weapon.* enchanted_book[item_model="minecraft:ender_eye",lore=['{"color":"white","italic":false,"text":"右クリックすると"}','{"color":"white","italic":false,"text":"今いるチャンクが常時読み込みかどうかを確認できる"}'],item_name='{"color":"white","text":"ロードチェッカー"}',consumable={consume_seconds:1000,animation:"block",has_consume_particles:false}] store success score @s loadcheck run forceload query ~ ~
#成功時メッセージ
execute if items entity @s weapon.* enchanted_book[item_model="minecraft:ender_eye",lore=['{"color":"white","italic":false,"text":"右クリックすると"}','{"color":"white","italic":false,"text":"今いるチャンクが常時読み込みかどうかを確認できる"}'],item_name='{"color":"white","text":"ロードチェッカー"}',consumable={consume_seconds:1000,animation:"block",has_consume_particles:false}] if score @s loadcheck matches 1.. run title @s actionbar [{"bold":true,"color":"green","text":"👍"},{"bold":false,"color":"white","text":"このチャンクは"},{"color":"green","text":"常時読み込み"},{"color":"white","text":"になっています"}]
#失敗時メッセージ
execute if items entity @s weapon.* enchanted_book[item_model="minecraft:ender_eye",lore=['{"color":"white","italic":false,"text":"右クリックすると"}','{"color":"white","italic":false,"text":"今いるチャンクが常時読み込みかどうかを確認できる"}'],item_name='{"color":"white","text":"ロードチェッカー"}',consumable={consume_seconds:1000,animation:"block",has_consume_particles:false}] if score @s loadcheck matches 0 run title @s actionbar [{"bold":true,"color":"red","text":"⚠"},{"bold":false,"color":"white","text":"このチャンクは常時読み込みになって"},{"bold":true,"color":"red","text":"いません"}]
#進捗リセット
advancement revoke @s only load_armerstand_wg:search