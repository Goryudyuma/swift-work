typealias 倍精度 = Double
typealias 整数 = Int
typealias 文字列 = String

func 表示(入力: Any) {
	print(入力)
}

func 入力() -> 文字列 {
	return readLine()!
}

func 四乗(入力値: 倍精度) -> 倍精度 {
	return 入力値 * 入力値 * 入力値 * 入力値
}

func 四乗根(入力値: 倍精度) -> 倍精度 {
	var 最小値: 倍精度 = 0
	var 最大値: 倍精度 = 1e9
	for _ in 1...100 {
		let 中間値: 倍精度 = (最大値 + 最小値) / 2 
		if 四乗(中間値) < 入力値 {
			最小値 = 中間値
		} else {
			最大値 = 中間値
		}
	}
	return 最小値
}
表示(整数(四乗根(倍精度(入力())!))+1)
