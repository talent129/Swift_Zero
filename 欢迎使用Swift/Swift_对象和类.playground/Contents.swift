//: Playground - noun: a place where people can play

import UIKit

//使用class和类名创建一个类。类中属性的声明和常量、变量一样，唯一的区别就是它们的上下文是类。同样，方法和函数声明也一样。
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

//要创建一个类的实例 在类名后加上括号。使用点语法来访问实例的属性和方法
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

//这个版本的Shape类缺少了一些重要的东西: 一个构造函数来初始化类实例。使用init来创建一个构造器
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
//注意self被用来区别实例变量。当创建实例的时候 像传入函数参数一样给类传入构造器的参数 每个属性都需要赋值--无论是通过声明(就像numberOfSides)还是通过构造器(就像name)

//如果需要在删除对象之前进行一些清理工作 使用deinit创建一个析构函数

//子类的定义方法是在它们的类名后面加上父类的名字，用冒号分割。创建类的时候并不需要一个标准的根类 所以可以忽略父类
//子类如果要重写父类的方法的话 需要用override标记--如果没有添加override就重写父类方法的话编译器会报错。编译器同样会检测override标记的方法是否确实在父类中。
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A shape with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 6, name: "正方形")
test.area()
test.simpleDescription()

//创建 NamedShape 的另一个子类 Circle ，构造器接收两个参数，一个是半径一个是名称，在子类 Circl e 中实现 area() 和 simpleDescription() 方法。
class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return 3.14 * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "This is a Circle"
    }
}
let circle = Circle(radius: 2, name: "圆形")
circle.area()
circle.simpleDescription()

//除了存储简单的属性之外，属性可以有getter和setter
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)
//在perimeter的setter中 新值的名字是newValue。可以在set之后显式的设置一个名字

//注意EquilateralTriangle类的构造器执行了三步:
//1. 设置子类声明的属性值
//2. 调用父类的构造器
//3. 改变父类定义的属性值。其他的工作比如调用方法、getters和setters也可以在这个阶段完成

//如果不需要计算属性 但是仍然需要在设置一个新值之前或之后运行代码 使用willSet和didSet

//下面的类确保三角形的边长总是和正方形的边长相同
class TriangeleAndSquare {
    
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangeleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

//处理变量的可选值时， 可以在操作(比如方法、属性和子脚本)之前加?。如果?之前的值是nil, ?后面的东西会被忽略,并且整个表达式返回nil. 否则?之后的都会被运行。在这两种情况下 整个表达式的值也是一个可选值。
let optionalSquare: Square? = Square(sideLength: 10, name: "optional square")
let sideLength = optionalSquare?.sideLength
