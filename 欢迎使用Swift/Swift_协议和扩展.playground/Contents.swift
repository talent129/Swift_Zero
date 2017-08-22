//: Playground - noun: a place where people can play

import UIKit

//使用protocol来声明一个协议
//在使用 class 来实现带有 mutating 的方法的协议时，具体实现的前面是不需要加 mutating 修饰的，因为 class 可以随意更改自己的成员变量。所以说在协议里用 mutating 修饰方法，对于 class 的实现是完全透明，可以当作不存在的。
//所有协议中的方法都用mutating修饰 扩展性
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

//类、枚举和结构体都可以实现协议
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A simple class"
    var anotherProperty: Int = 100
    
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
print(aDescription)

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    
    //使用 mutating 关键字修饰方法是为了能在该方法中修改 struct 或是 enum 的变量
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

//注意声明SimpleStructure时候mutating关键字用来标记一个会修改结构体的方法。SimpleClass的声明不需要标记任何方法 因为类中的方法通常可以修改类属性(类的性质)

//使用extension来为现有的类型添加功能, 比如新的方法和计算属性。你可以使用扩展在别处修改定义,甚至是从外部库或者框架引入的一个类型, 使得这个类型遵循某个协议
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 6
    }
}
print(3.simpleDescription)

//给 Double 类型写一个扩展，添加 absoluteValue 功能。
extension Double: ExampleProtocol {
    var simpleDescription: String {
        return "Double \(self)"
    }
    
    func absoluteValue() -> Double {
        return (self + 3.0)
    }
    
    mutating func adjust() {
        self += 2
    }
}
print(66.0.absoluteValue())
print(22.0.simpleDescription)

//可以像使用其他命名类型一样使用协议名 -- 例如，创建一个有不同类型但是都实现一个协议的对象集合。 当你处理类型是协议的值时，协议外定义的方法不可用。
let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
//print(protocolValue.anotherProperty) //去掉注释看到错误 -error: value of type 'ExampleProtocol' has no member 'anotherProperty'
//即使protocolValue变量运行时的类型是SimpleClass, 编译器会把它的类型当做ExampleProtocol。这表示你不能调用类在它实现的协议之外实现的方法或者属性。
