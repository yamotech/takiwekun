# coding: utf-8

# 星空指数の値をスクレイピングにより取得し、指数値を元に星空が見える等とコメントを
# 付けて文章化するモジュール。

def get_star_comment(star_value)
	# 星空指数値からいい感じのコメントでその日星空が見えるのかどうかアドバイスする文章を生成する関数
	# 引数にstar_value(星空指数値)を渡すと、星空が見える等とアドバイスを行います。

	star_value_to_comment = {
		10 => "雲が空を覆い尽くしているので星は見えません。残念です。",
		20 => "雲が多いから星は見えないです。明日はきっと見れますよ！",
		30 => "雲と雲の隙間から少しだけ星が見えるかも。じっくり見つめていればいつか星が見えるはず。",
		40 => "雲が多い空だけど、星が見えないこともなさそう。",
		50 => "雲が多めだけど、星は確認できます。",
		60 => "雲のところどころにある隙間から星が見えます。",
		70 => "夜空を見てみてください。星が見えますよ。",
		80 => "外に出かけるなら少しだけ上を見てみてください。星がたくさん見えるはずです。",
		90 => "外にいますか？オウチにいるあなたも外に出てみてください。そして夜空に目を向けてください。たくさんの星が見れますよ。",
		100 => "ぜひ夜空を見上げてみてください！きょうは雲がないので、星がきれいに見れますよ！！"
	}

	return star_value_to_comment[star_value]
end

def get_today_star(weather_index)
	# 取得した今日の星空指数を整形して文章にして渡す関数
	# 例：	今日の星空指数：40
	# 		雲が多い空だけど、星が見えないこともなさそう。

	# 今日の星空指数の値を代入
	star_value = weather_index['starry_sky']['today']
	# 値とコメントをいい感じに整形
	today_star_main = "今日の星空指数：#{star_value}\n" +
					  "#{get_star_comment(star_value)}"

	return today_star_main
end

def get_tomorrow_star(weather_index)
	# 取得した明日の星空指数を整形して文章にして渡す関数
	# 例：	明日の星空指数：30
	# 		雲と雲の隙間から少しだけ星が見えるかも。じっくり見つめていればいつか星が見えるはず。

	# 明日の星空指数の値を代入
	star_value = weather_index['starry_sky']['tomorrow']
	# 値とコメントをいい感じに整形
	tomorrow_star_main = "明日の星空指数：#{star_value}\n" +
						 "#{get_star_comment(star_value)}"

	return tomorrow_star_main
end