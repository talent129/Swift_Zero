//: Playground - noun: a place where people can play

import UIKit

print("Hello, World!")

//  var声明变量 let声明常量
var myVariable = 20
myVariable = 2017

//常量 不可变，一般用于仅需要赋值一次 但可能使用很多次
let myConstant = 2015

//显式指定类型
let floatFour: Float = 4

//值永远不会被隐式转换为其他类型 转换只会显示转换类型
let label = "The label is "
let width = 100
let labelWidth = label + String(width)
print(labelWidth)

//另一种将值转换为字符串方法将值写在括号中 并在前面加上一个反斜杠
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit"

let one = 1.0
let two = 2.0
let name = "Lucy"
let hello = "Hi, \(name), one + two = \(one + two)"
print(hello)

//使用[]创建数组和字典 最后一个元素后面允许有个逗号
var shoppingList = ["chicken", "apple", "water", "orange"]
shoppingList[1] = "pear"

var dictionary = [
    "key1": "CCC",
    "key2": "Lucky",
]
dictionary["key3"] = "Cai"
print(shoppingList)
print(dictionary)

//创建空数组或空字典 使用初始化语法
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

//如果类型信息可以被推断出来 可以用[] 和 [:]创建空数组和空字典
shoppingList = []
dictionary = [:]