#導入メッセージ
tellraw @p [" ",{"text":"\nloadingchank(日本語バージョン)の読み込みに成功しました\n"},{"text":"これはWagglyZebra9743によって作られました\n使用方法\n1.PCをクラフトする\n2.PCを設置してチャンクローダーを買う\n3.チャンクローダーを設置して設定する\nPCは攻撃で、チャンクローダーは音符ブロックをクリックでアイテム化\n"}]
#チャンクローダー本体のチーム
team add b
#ロード解除用兼インストールチェック
scoreboard objectives add x dummy
#データ存在確認用
scoreboard objectives add y dummy
#インストールメッセージ表示済みかどうか(none or 0)
scoreboard players set @p x 0
#ロードチェック用のスコアボードとそれのリセット
scoreboard objectives add loadcheck dummy
scoreboard players set @p loadcheck 0
#パソコンのレシピ開放
recipe give @p load_armerstand_wg:pc