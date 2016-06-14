func sqrt(N: Double) -> Double {
	var minnum: Double = 0
	var maxnum: Double = 1e9
	for _ in 1...1000 {
		let midnum: Double = (minnum + maxnum) / 2 
		if midnum * midnum < N {
			minnum = midnum
		} else {
			maxnum = midnum
		}
	}
	return minnum
}
print(Int(sqrt(sqrt(Double(readLine()!)!)))+1)
