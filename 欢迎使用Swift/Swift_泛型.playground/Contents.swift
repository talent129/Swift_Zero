//: Playground - noun: a place where people can play

import UIKit

//在尖括号里写一个名字来创建一个泛型函数或者类型
func repeatItem<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0 ..< numberOfTimes {
        result.append(item)
    }
    return result
}
repeatItem(repeating: "knock", numberOfTimes: 3)

//也可以创建泛型函数、方法、类、枚举和结构体

//重新实现Swift标准库中的可选类型
enum OptionalValue<Wrapped> {
    case None
    case Some(Wrapped)
}

var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)

//在类型名后面使用where来指定对类型的需求，比如，限定类型实现某一个协议 限定两个类型是相同的 或者限定某个类必须有一个特定的父类
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])

//<T: Equatable>和<T>...where T: Equatable>是等价的
