//: Playground - noun: a place where people can play

import UIKit

//使用if、switch进行条件操作，使用for-in、for、while和repeat-while进行循环 包裹条件和循环变量括号可以省略，但是语句体的大括号是必须的
//if语句中 条件必须是一个布尔表达式 例如 if score { ... } score并不会隐式的与0作对比
let individalScores = [43, 23, 88, 54, 105]
var teamScore = 0
for score in individalScores {
    if score > 50 {
        teamScore += 3
    }else {
        teamScore += 1
    }
}
print(teamScore)

//可以一起使用if、let处理值缺失情况，这些值可由可选值来代表。一个可选的值是一个具体的值或者是nil以表示缺失。在类型后面加一个问号来标记这个变量的值是可选的。
var optionalString: String? = "Hello"
print(optionalString == nil)

//如果变量的可选值是nil 条件判断会为false 大括号中的代码会被跳过。如果不是nil 会将值解包并赋给let后面的常量，这样代码块中就可以使用这个值了。
var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}else {
    greeting = "Hi, "
}
print(greeting)

//另一种处理可选值的方法是通过使用??操作符来提供一个默认值。如果可选值缺失的话，可以使用默认值来代替。
let nickName: String? = nil
let fullName: String = "Lucy"
let informationGreeting = "Hello, \(nickName ?? fullName)"
print(informationGreeting)

//switch支持任意类型的数据以及各种比较操作 -- 不仅仅是整数
let fruit = "red apple"
switch fruit {
case "orange":
    print("不是orange")
case "pear", "banana":
    print("也不是---")
case let x where x.hasSuffix("apple"):
    print("是的 它是 \(x)")//注意这里let的使用 它将等式中匹配的值赋给常量x
default:
    print("没有找到")
}
//如果删除default语句:Playground execution failed: error: Swift_控制流.playground:48:1: error: 'default' label can only appear inside a 'switch' statement
//运行switch中匹配到的字句之后 程序会退出switch语句 不会向下继续执行 所以不需要在每个子句结尾写break

//可以使用for-in遍历字典 需要两个变量来表示每个键值对。字典是一个无序的集合 所以他们的键和值以任意顺序迭代结束
let numbers = [
    "key1": [12, 5, 15, 2, 0],
    "key2":[1, 4, 9, 16, 25],
    "key3":[1, 1, 2, 3, 5, 8],
]
var largest = 0
var largest_kind = ""
for (kind, number) in numbers {
    for num in number {
        if num > largest {
            largest = num
            largest_kind = kind
        }
    }
}
print("largest is \(largest), The kind is \(largest_kind)")

//使用while来重复运行一段代码直到不满足条件。循环条件也可以在结尾 保证能至少运行一次
var n = 2
while n < 10 {
    n = n * 2
}
print(n)

var m = 2
repeat {
    m = m * 2
}while m < 10
print(m)

//可以使用 ..< 表示范围
var total = 0
for i in 0 ..< 4 {
    total += i
}
print(total)
//使用 ..< 创建的范围不包含上边界 如果想包含的话需要使用 ...