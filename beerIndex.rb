# coding: utf-8

# ビール指数の値をスクレイピングにより取得し、指数値を元にビールがうまい日等とコメントを
# 付けて文章化するモジュール。

def get_beer_comment(beer_value)
	# ビール指数値からいい感じのコメントでその日ビールがおいしいかアドバイスする文章を生成する関数
	# 引数にbeer_value(ビール指数値)を渡すと、ビールがうまい等とアドバイスを行います。

	beer_value_to_comment = {
		10 => "今日は暖かい部屋で、温かい熱燗でも飲んでまったりしましょう。",
		20 => "おつまみがあるとよりビールがすすみますよ！",
		30 => "いつもと違うビールを買って帰りませんか？",
		40 => "TVでも見ながらビールでもどうですか？",
		50 => "ビールがおいしい日です。飲みすぎないように！",
		60 => "ビールが飲みたくなるビール日和です。帰りに買って帰りませんか？",
		70 => "こんな日はビールがおいしいはずです。家にない？コンビニで買って帰りましょう！",
		80 => "暑い！今日はビールを飲んで、疲れを吹き飛ばしましょう。",
		90 => "今日は暑かったですね！冷えたビールを飲んで生き返りましょう！！",
		100 => "キンッキンに冷やしたビールを飲みましょう！冷凍庫で冷やして飲む際には忘れずに1時間以内に取り出してくださいね！"
	}

	return beer_value_to_comment[beer_value]
end

def get_today_beer(weather_index)
	# 取得した今日のビール指数を整形して文章にして渡す関数
	# 例：	今日のビール指数：60
	# 		ビールが飲みたくなるビール日和です。帰りに買って帰りませんか？

	# 今日のビール指数の値を代入
	beer_value = weather_index['beer']['today']
	# 値とコメントをいい感じに整形
	today_beer_main = "今日のビール指数：#{beer_value}\n" +
					  "#{get_beer_comment(beer_value)}"

	return today_beer_main
end

def get_tomorrow_beer(weather_index)
	# 取得した明日のビール指数を整形して文章にして渡す関数
	# 例：	明日のビール指数：70
	# 		こんな日はビールがおいしいはずです。家にない？コンビニで買って帰りましょう！

	# 明日のビール指数の値を代入
	beer_value = weather_index['beer']['tomorrow']
	# 値とコメントをいい感じに整形
	tomorrow_beer_main = "明日のビール指数：#{beer_value}\n" +
						 "#{get_beer_comment(beer_value)}"

	return tomorrow_beer_main
end