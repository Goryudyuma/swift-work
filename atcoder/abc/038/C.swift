extension String: CollectionType {}
let N = Int(readLine()!)!
let a = readLine()!.split(" ").map { Int($0) }
var prev: Int = 0
var count: Int = 0
var ans: Int = 0

for	i in a {
	if prev < i {
		count = count + 1
	} else {
		count = 1
	}
	ans += count
	prev = i!
}
print(ans)
