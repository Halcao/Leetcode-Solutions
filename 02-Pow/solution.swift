class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        if n == 0 {
            return 1
        }
        if n%2 == 0 {
        var nt = n
            if nt < 0 {
                nt = -nt
            }
            var half = myPow(x, nt/2);
            let result = half*half
            return (n > 0) ? result : 1.0/result
        } else {
            var nt = n
            if nt < 0 {
                nt = -nt
            }
            var half = myPow(x, (nt-1)/2);
            let result = half*half*x
            return (n > 0) ? result : 1.0/result
        }
    }
}
