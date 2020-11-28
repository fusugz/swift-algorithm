
/// 累加
func accumulate(_ n : Int) -> Int {
    var res = 0
    for i in 1...n {
        res += i
    }
    return res
}

// 递归
func sum (_ n : Int) -> Int {
    if n == 1 {
        return 1
    } else {
        return n + accumulate(n - 1)
    }
}

sum(100)

// 尾递归
func func3(_ n : Int, _ total : Int = 0) -> Int {
    if n == 1 {
        return total + 1
    } else {
        return func3(n - 1, total + n)
    }
}

func3(10)


// 斐波纳切数列 1,1,2,3,5,8,13......
func fibo(_ n : Int) -> Int {
    if (n == 1 || n == 2) {
        return 1
    } else {
        return fibo(n - 1) + fibo(n - 2)
    }
}

fibo(12)
