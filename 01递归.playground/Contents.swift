//小波说雨燕系列
//Swift算法课-主讲人：沈家瑜  目前为在校生
//个人联系方式： 邮箱 s@shenjiayu.cn, 也可以在小波群内进行提问

//第一课：小试牛刀（递归）

//问题： 有以下数列： 1,2,3,4,5,...  求前n个数的和
//循环 方法

// 累加
func func1(_ n : Int) -> Int {
    var sum : Int = 0
    for i in 1...n {
        sum += i
    }
    return sum
}

// 递归
func func2 (_ n : Int) -> Int {
    if n == 1 {
        return 1
    } else {
        return n + func2(n - 1)
    }
}

func2(3)

// 尾递归
func func3(_ n : Int, total : Int = 0) -> Int {
    if n == 1 {
        return total + 1
    } else {
        return func3(n - 1, total : total + n)
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

fibo(7)
