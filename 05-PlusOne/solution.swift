class Solution {
        func plusOne(_ digits: [Int]) -> [Int] {
        var arr = digits.reversed() as [Int]
        var last = 1
        for i in 0..<arr.count {
            arr[i] += last
            if arr[i] == 10 {
                arr[i] %= 10
                last = 1
            } else {
                last = 0
            }
        }
        if last == 1 {
            arr.append(1)
        }
        return arr.reversed()
    }
}
