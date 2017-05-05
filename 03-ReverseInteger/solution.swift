class Solution {
    func reverse(_ x: Int) -> Int {
        let symbol = (x>0) ? 1 : (x == 0) ? 0 : -1
        var s = String(symbol*x)
        s.characters = String.CharacterView(s.characters.reversed())
        let num = Int(s)
        let result = symbol*num!
        return (result > 2147483647||result < -2147483648) ? 0 : result

    }
}
