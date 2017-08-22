//: Playground - noun: a place where people can play

import UIKit

//常量和变量把一个名字和一个指定类型的值关联起来。常量的值一旦设定就不可改变 变量的值可以随意更改

//声明常量和变量 -常量和变量必须在使用前声明 使用let声明常量 使用var声明变量
let letVariable = 10
var varVariable = 0

//可以在一行中声明多个变量或常量 用逗号隔开
var x = 0.0, y = 0.0, z = 0.0
//注意: 如果代码中不需要改变的值 使用let关键字将它声明为常量 只将需要改变的值声明为变量

//类型标注 -当你声明变量或常量的时候可以加上类型标注 说明常量或变量中要存储的值的类型。如果要添加类型标注，需要在常量或者变量名后面加上一个冒号和空格，然后加上类型名称
var welcomeMessage: String //这行代码可以被理解为: “声明一个类型为 String ，名字为 welcomeMessage 的变量。” “类型为 String ”的意思是“可以存储任意 String 类型的值。”
//现在可以被设置成任意字符串:
welcomeMessage = "Hello"

//可以在一行中定义多个同样类型的变量， 用逗号分割 并在最后一个变量名之后添加类型标注:
var red, green, blue: Double

//注意: 一般来说，你很少需要写类型标注 如果你在声明常量或者变量的时候赋了一个初始值 Swift可以推断出这个常量或者变量的类型

//常量和变量的命名 -可以用你任何喜欢的字符作为常量和变量名 包括Unicode字符
let pi = 3.14
let 你好 = "你好 世界"
let d = "dog"

//常量名与变量名不能包含数学符号 箭头、保留的(非法的)Unicode码位，连线与制表符。也不能以数字开头
//一旦你将变量或常量声明为确定的类型 就不能使用相同的名字再次进行声明，或者改变其存储的值的类型 同时也不能将常量和变量互转
//注意: 如果需要使用与Swift保留关键字相同的名称作为常量或者常量名，可以使用反引号(`)将关键字包围的方式将其作为名字使用。无论如何，你应当避免使用关键字作为常量或变量名 除非你别无选择。

//输出常量和变量
//可以用print(_:separator:terminator:)函数来输出当前常量或变量的值
print(welcomeMessage)

//print(_:separator:terminator:) 是一个用来输出一个或多个值到适当输出区的全局函数
//如果你用 Xcode， int(_:separator:terminator:) 将会输出内容到“console”面板上
//separator 和 terminator 参数具有默认 值，因此你调用这个函数的时候可以忽略它们。默认情况下，该函数通过添加换行符来结束当前行。如果不想换 行，可以传递一个空字符串给 terminator 参数--例如， print(someValue, terminator:"") 。
print(welcomeMessage, terminator:"")

//Swift用字符串插值的方式把常量名或者变量名当做占位符加入到长字符串中，Swift会用当前常量或变量的值替换这些占位符。将常量或变量名放入圆括号中，并在开括号前使用反斜杠将其转义:
print("The current value of welcome is \(welcomeMessage)")

//注释
//Swift的编译器将会在编译代码时自动忽略掉注释部分

//单行注释以双斜杠(//)作为

/* 这是一个
 多行注释 */

//注意: 与C语言的多行注释不同 Swift的多行注释可以嵌套在其他多行注释之中。

/* 这是第一个多行注释的开头
 
 /* 这是第二个被嵌套的多行注释 */
 这是第一个多行注释的结尾 */

//通过运用嵌套多行注释 可以快速方便地注释掉一大段代码，即使这段代码之中已经含有了多行注释块

//分号 -与其他大部分编程语言不同 Swift并不强制你在每句代码的结尾处加分号(;) 不过 也可以按照自己的习惯添加分号。有一种情况下必须使用分号: 即在一行中写多条独立的语句
let car = "car"; print(car)

//整数 -整数就是没有小数部分的数字 整数可以是有符号(正 负 零) 或者无符号(正 零)
//Swift 提供了8，16，32和64位的有符号和无符号整数类型 这些整数类型和 C 语言的命名方式很像，比如8位无 符号整数类型是 UInt8 ，32位有符号整数类型是 Int32 。就像 Swift 的其他类型一样，整数类型采用大写命名 法。

//整数范围 可以访问不同整数类型的 min 和 max 属性来获取对应类型的最小值和最大值
let minValue = UInt8.min
let maxValue = UInt8.max

//Int 一般来说 你不需要专门指定整数的长度 Swift提供了一个特殊的整数类型Int 长度与当前平台的原生字长相同
//在32位平台上 Int和Int32长度相同

//除非你需要特定长度的整数 一般来说使用Int足够 -这可以提高代码的一致性和可复用性

//UInt -Swift也提供了一个特殊的无符号类型 UInt 长度与当前平台的原生字长相同

//注意: 尽量不要使用 UInt ，除非你真的需要存储一个和当前平台原生字长相同的无符号整数。除了这种情况，最好使 用 Int ，即使你要存储的值已知是非负的。统一使用 Int 可以提高代码的可复用性，避免不同类型数字之间的 转换，并且匹配数字的类型推断

//浮点数 -浮点数是有小数部分的数字
//浮点类型比整数类型表示的范围更大 可以存储比Int类型更大或更小的数字
//Swift提供了两种有符号浮点数类型:
//Double 表示64位浮点数。(默认Double)
//Float 表示32位浮点数

//注意:Double 精确度很高，至少有15位数字，而 Float 只有6位数字。选择哪个类型取决于你的代码需要处理的值的范围，在两种类型都匹配的情况下，将优先选择 Double 。

//类型安全和类型推断 -Swift是一个类型安全的语言。类型安全的语言可以让你清楚地知道代码要处理的值的类型 如果代码需要一个String类型 绝对不可以传Int类型
//因为Swift是类型安全的 所以在编译代码时会进行类型检查 并把不匹配的类型标记为错误。
//如果没有指定类型 Swift会使用类型推断类选择合适的类型
//有了类型推断 编译器可以在编译代码的时候自动推断出表达式的类型。原理很简单，只要检查你的赋值就可以了。
//因为有类型推断 与C和Objective-C相比 Swift很少需要声明类型。常量和变量虽然需要明确类型 但是大部分工作并不需要你自己来完成。
//当你声明常量或者变量并赋初值的时候类型推断非常有用。当你在声明常量或者变量的时候赋给它们一个字面 量(literal value 或 literal)即可触发类型推断

let ppi = 3.14159
// ppi 会被推测为 Double 类型
//当推断浮点数的类型时，Swift 总是会选择Double 而不是Float。

//如果表达式中同时出现了整数和浮点数，会被推断为Double
let anotherPi = 3 + 0.14159
// anotherPi 会被推测为 Double 类型

//数值型字面量
//整数字面量可以被写作:
/* 
 一个十进制数，没有前缀
 一个二进制数，前缀是0b
 一个八进制数，前缀是0o
 一个十六进制数，前缀是0x
 */

//浮点字面量可以是十进制(没有前缀)或者是十六进制(前缀是 0x )。小数点两边必须有至少一个十进制数 字(或者是十六进制的数字)。十进制浮点数也可以有一个可选的指数(exponent)，通过大写或者小写的 e 来 指定;十六进制浮点数必须有一个指数，通过大写或者小写的 p 来指定。

    //如果一个十进制数的指数为 exp ，那这个数相当于基数和10^exp的乘积: 
        //1.25e2 表示 1.25 × 10^2，等于 125.0 。
    //1.25e-2 表示 1.25 × 10^-2，等于 0.0125 。 如果一个十六进制数的指数为 exp ，那这个数相当于基数和2^exp的乘积:
    //0xFp2 表示 15 × 2^2，等于 60.0 。
    //0xFp-2 表示 15 × 2^-2，等于 3.75 。

//数值类字面量可以包括额外的格式来增强可读性。整数和浮点数都可以添加额外的零并且包含下划线，并不会影响字面量:
/*
 let paddedDouble = 000123.456
 let oneMillion = 1_000_000
 let justOverOneMillion = 1_000_000.000_000_1
 */

//数值型类型转换
//通常来讲，即使代码中的整数常量和变量已知非负，也请使用 Int 类型。总是使用默认的整数类型可以保证你的 整数常量和变量可以直接被复用并且可以匹配整数类字面量的类型推断。

//只有在必要的时候才使用其他整数类型，比如要处理外部的长度明确的数据或者为了优化性能、内存占用等等。使用显式指定长度的类型可以及时发现值溢出并且可以暗示正在处理特殊数据。

//整数转换
//不同整数类型的变量和常量可以存储不同范围的数字。 Int8 类型的常量或者变量可以存储的数字范围是 -128 ~ 1 27 ，而 UInt8 类型的常量或者变量能存储的数字范围是 0 ~ 255 。如果数字超出了常量或者变量可存储的范 围，编译的时候会报错:

/*
let cannotBeNegative: UInt8 = -1
// UInt8 类型不能存储负数，所以会报错
let tooBig: Int8 = Int8.max + 1
// Int8 类型不能存储超过最大值的数，所以会报错
*/

//要将一种数字类型转换成另一种，你要用当前值来初始化一个期望类型的新数字，这个数字的类型就是你的目标 类型。在下面的例子中，常量 twoThousand 是 UInt16 类型，然而常量 one 是 UInt8 类型。它们不能直接相 加，因为它们类型不同。所以要调用 UInt16(one) 来创建一个新的 UInt16 数字并用 one 的值来初始化，然后使用 这个新数字来计算:
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
print(twoThousandAndOne)

//整数和浮点数转换 整数和浮点数的转换必须显式指定类型
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pppi = Double(three) + pointOneFourOneFiveNine // pppi 等于 3.14159，所以被推测为 Double 类型

//浮点数到整数的反向转换同样行，整数类型可以用 Double 或者 Float 类型来初始化: 
let integerPi = Int(pppi)
// integerPi 等于 3，所以被推测为 Int 类型
//当用这种方式来初始化一个新的整数值时，浮点值会被截断。也就是说 4.75 会变成 4 ， -3.9 会变成 -3 。
//注意: 结合数字类常量和变量不同于结合数字类字面量。字面量 3 可以直接和字面量 0.14159 相加，因为数字字面量 本身没有明确的类型。它们的类型只在编译器需要求值的时候被推测。
var res = 3 + 0.14159
print(res)

//类型别名 类型别名就是给现有类型定义另一个名字 可以使用typealias关键字来定义类型别名
//当你想要给现有类型起一个更有意义的名字时，类型别名非常有用
//假设你正在处理特定长度的外部资源的数据:
typealias AudioSample = UInt16
//定义了一个类型别名之后，你可以在任何使用原始名的地方使用别名:
var maxAmplitudeFound = AudioSample.min // maxAmplitudeFound 现在是 0
//本例中， AudioSample 被定义为 UInt16 的一个别名。因为它是别名， AudioSample.min 实际上是 UInt16.min ，所以会给 maxAmplitudeFound 赋一个初值 0 。

//布尔值 Swift有一个基本的布尔类型 叫Bool 布尔值指逻辑上的值 它们只能是真或假。Swift有两个布尔常量 true和false。
let orangesAreOrange = true
let turnipsAreDelicious = false

//orangesAreOrange和turnipsAreDelicious的类型会被推断为 ，因为它们的初值是布尔字面量

//当编写条件语句比如if语句的时候布尔值非常有用:
if orangesAreOrange {
    print("tasty good")
} else {
    print("tasty bad")
}

//如果你在需要使用 Bool 类型的地方使用了非布尔值，Swift 的类型安全机制会报错
/*
let i = 1
if i {
// 这个例子不会通过编译，会报错 
}
*/

let i = 1
if i == 1 {
// 这个例子会编译成功 
}

//元组 -元组将多个值组合成一个复合值。 元组内的值可以是任意类型 并不要求是相同类型

//下面是一个描述 HTTP 状态码(HTTP status code)的元组
let http404Error = (404, "Not Found")
// http404Error 的类型是 (Int, String)，值是 (404, "Not Found")

//(404, "Not Found")元组把一个Int值和一个String值组合起来表示 HTTP 状态码的两个部分:一个数字 和一个人类可读的描述。这个元组可以被描述为“一个类型为(Int, String)的元组”。

//可以把任意顺序的类型组合成一个元组，这个元组可以包含所有类型

//可以将一个元组的内容分解(decompose)成单独的常量和变量，然后你就可以正常使用它们了:
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// 输出 "The status code is 404"
print("The status message is \(statusMessage)")
// 输出 "The status message is Not Found"

//如果你只需要一部分元组值，分解的时候可以把要忽略的部分用下划线( _ )标记:
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)") // 输出 "The status code is 404"

//此外，你还可以通过下标来访问元组中的单个元素，下标从零开始:
print("The status code is \(http404Error.0)")
// 输出 "The status code is 404"
print("The status message is \(http404Error.1)")
// 输出 "The status message is Not Found"

//你可以在定义元组的时候给单个元素命名:
let http200Status = (statusCode: 200, description: "OK")
//给元组中的元素命名后，你可以通过名字来获取这些元素的值:
print("The status code is \(http200Status.statusCode)")
// 输出 "The status code is 200"
print("The status message is \(http200Status.description)")
// 输出 "The status message is OK"

//作为函数返回值时，元组非常有用。
//注意: 元组在临时组织值的时候很有用，但是并不适合创建复杂的数据结构。如果你的数据结构并不是临时使用，请使用类或者结构体而不是元组

//可选类型 使用可选类型来处理值可能缺失的情况。
/* 可选类型表示:
    1. 有值, 等于x
    2. 没有值
*/

/*
 注意:
 C 和 Objective-C 中并没有可选类型这个概念。最接近的是 Objective-C 中的一个特性，一个方法要不返回一 个对象要不返回 nil ， nil 表示“缺少一个合法的对象”。然而，这只对对象起作用——对于结构体，基本的 C 类型或者枚举类型不起作用。对于这些类型，Objective-C 方法一般会返回一个特殊值(比如 NSNotFoun
 d )来暗示值缺失。这种方法假设方法的调用者知道并记得对特殊值进行判断。然而，Swift 的可选类型可以让 你暗示任意类型的值缺失，并不需要一个特殊值
 */

//Swift 的 Int 类型有一种构造器，作用是将一个 String 值转换成一个 Int 值。然而，并 不是所有的字符串都可以转换成一个整数。字符串 "123" 可以被转换成数字 123 ，但是字符串 "hello, wor ld" 不行。

//使用这种构造器来尝试将一个 String 转换成 Int :
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber ?? 0)
// convertedNumber 被推测为类型 "Int?"， 或者类型 "optional Int"
//因为该构造器可能会失败，所以它返回一个可选类型(optional) Int ，而不是一个 Int 。一个可选的 Int 被写作 Int? 而不是 Int 。问号暗示包含的值是可选类型，也就是说可能包含 Int 值也可能不包含值。(不 能包含其他任何值比如 Bool 值或者 String 值。只能是 Int 或者什么都没有。)

//nil
//可以给可选变量赋值为nil 表示它没有值
var serverResponseCode: Int? = 404
// serverResponseCode 包含一个可选的 Int 值 404
serverResponseCode = nil
// serverResponseCode 现在不包含值

//注意:nil 不能用于非可选的常量和变量。如果你的代码中有常量或者变量需要处理值缺失的情况，请把它们声明成对应的可选类型。

//如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为 nil :
var surveyAnswer: String?
// surveyAnswer 被自动设置为 nil

/*
 注意:
 Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中， nil 是一个指向不存在对象的指 针。在 Swift 中， nil 不是指针——它是一个确定的值，用来表示值缺失。任何类型的可选状态都可以被设 置为 nil ，不只是对象类型。
 */

//if语句以及强制解析

//你可以使用 if 语句和 nil 比较来判断一个可选值是否包含值。你可以使用“相等”(==)或“不 等”( != )来执行比较。
//如果可选类型有值，它将不等于 nil :
if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// 输出 "convertedNumber contains some integer value."

//当你确定可选类型确实包含值之后，你可以在可选的名字后面加一个感叹号( ! )来获取值。这个惊叹号表 示“我知道这个可选有值，请使用它。”这被称为可选值的强制解析(forced unwrapping):
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
// 输出 "convertedNumber has an integer value of 123."

/*
 注意:
 使用 ! 来获取一个不存在的可选值会导致运行时错误。使用 ! 来强制解析值之前，一定要确定可选包含一 个非 nil 的值。
 */

//可选绑定 使用可选绑定(optional binding)来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变 量。可选绑定可以用在 if 和 while 语句中，这条语句不仅可以用来判断可选类型中是否有值，同时可以将 可选类型中的值赋给一个常量或者变量

//像下面这样在 if 语句中写一个可选绑定:
/*
 if let constantName = someOptional {
 statements
 }
 */

if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    print("\'\(possibleNumber)\' could not be converted to an integer")
}
// 输出 "'123' has an integer value of 123"

//这段代码可以被理解为: “如果 Int(possibleNumber) 返回的可选 Int 包含一个值，创建一个叫做 actualNumber 的新常量并将可选 包含的值赋给它。”
//如果转换成功， actualNumber 常量可以在 if 语句的第一个分支中使用。它已经被可选类型 包含的 值初始化 过，所以不需要再使用 ! 后缀来获取它的值。在这个例子中，actualNumber 只被用来输出转换结果。
//你可以在可选绑定中使用常量和变量。如果你想在if语句的第一个分支中操作 actualNumber 的值，你可以改 成 if var actualNumber ，这样可选类型包含的值就会被赋给一个变量而非常量。

//你可以包含多个可选绑定或多个布尔条件在一个 if 语句中，只要使用逗号分开就行。只要有任意一个可选绑定 的值为nil，或者任意一个布尔条件为false，则整个if条件判断为false，这时你就需要使用嵌套 if 条 件语句来处理，如下所示:
if let firstNumber = Int("3"), let secondNumber = Int("66"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNumber = Int("3") {
    if let secondNumber = Int("66") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        } }
}

//注意: 在 if 条件语句中使用常量和变量来创建一个可选绑定，仅在 if 语句的句中( body )中才能获取到 值

//隐式解析可选类型
//可选类型暗示了常量或者变量可以“没有值”。可选可以通过 if 语句来判断是否有值，如果有值的 话可以通过可选绑定来解析值。

//有时候在程序架构中，第一次被赋值之后，可以确定一个可选类型总会有值。在这种情况下，每次都要判断和解析可选值是非常低效的，因为可以确定它总会有值。

//这种类型的可选状态被定义为隐式解析可选类型(implicitly unwrapped optionals)。把想要用作可选的类型 的后面的问号( String? )改成感叹号( String! )来声明一个隐式解析可选类型。
//当可选类型被第一次赋值之后就可以确定之后一直有值的时候，隐式解析可选类型非常有用。

//一个隐式解析可选类型其实就是一个普通的可选类型，但是可以被当做非可选类型来使用，并不需要每次都使用 解析来获取可选值

//下面的例子展示了可选类型 String 和隐式解析可选类型 String 之间的区别:
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // 需要感叹号来获取值
let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // 不需要感叹号

//你可以把隐式解析可选类型当做一个可以自动解析的可选类型。你要做的只是声明的时候把感叹号放到类型的结尾，而不是每次取值的可选名字的结尾。

/*
 注意:
 如果你在隐式解析可选类型没有值的时候尝试取值，会触发运行时错误。和你在没有值的普通可选类型后面加一个惊叹号一样。
 */

//你仍然可以把隐式解析可选类型当做普通可选类型来判断它是否包含值:
if assumedString != nil {
    print(assumedString)
}
// 输出 "An implicitly unwrapped optional string."

//也可以在可选绑定中使用隐式解析可选类型来检查并解析它的值:
if let definiteString = assumedString {
    print(definiteString)
}
// 输出 "An implicitly unwrapped optional string."

/*
 注意:
 如果一个变量之后可能变成 nil 的话请不要使用隐式解析可选类型。如果你需要在变量的生命周期中判断是否 是 nil 的话，请使用普通可选类型。
 */

//错误处理 你可以使用 错误处理(error handling) 来应对程序执行中可能会遇到的错误条件。
//相对于可选中运用值的存在与缺失来表达函数的成功与失败，错误处理可以推断失败的原因，并传播至程序的其他部分。
//当一个函数遇到错误条件，它能报错。调用函数的地方能抛出错误消息并合理处理。
func canThrowAnError() throws {
    //这个函数有可能抛出错误
}

//一个函数可以通过在声明中添加throws关键词来抛出错误消息。当你的函数能抛出错误消息时, 你应该在表达式 中前置try关键词。
do {
    try canThrowAnError()
    //没有错误消息抛出
} catch {
    //有一个错误消息抛出
}

//一个do语句创建了一个新的包含作用域，使得错误能被传播到一个或多个catch从句

//这里有一个错误处理如何用来应对不同错误条件的例子。

/*
func makeASandwich() throws {
    // ...
}
do {
    try makeASandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients)
}
*/

/*
 在此例中，makeASandwich()(做一个三明治)函数会抛出一个错误消息如果没有干净的盘子或者某个原料缺 失。因为makeASandwich()抛出错误，函数调用被包裹在try表达式中。将函数包裹在一个do语句中，任何被抛出的错误会被传播到提供的catch从句中。
 */

//断言 可选类型可以让你判断值是否存在，你可以在代码中优 地处理值缺失的情况。然而，在某些情况下，如果值缺 失或者值并不满足特定的条件，你的代码可能没办法继续执行。这时，你可以在你的代码中触发一个 断言(asse rtion) 来结束代码运行并通过调试来找到值缺失的原因。

//使用断言进行调试
//断言会在运行时判断一个逻辑条件是否为 true 。从字面意思来说，断言“断言”一个条件是否为真。你可以使 用断言来保证在运行其他代码之前，某些重要的条件已经被满足。如果条件判断为 true ，代码运行会继续进 行;如果条件判断为 false ，代码执行结束，你的应用被终止。
//如果你的代码在调试环境下触发了一个断言，比如你在 Xcode 中构建并运行一个应用，你可以清楚地看到不合法 的状态发生在哪里并检查断言被触发时你的应用的状态。此外，断言允许你附加一条调试信息。

//你可以使用全局 assert(_:_:file:line:) 函数来写一个断言。向这个函数传入一个结果为 true 或者 false 的表达式以及一条信息，当表达式的结果为 false 的时候这条信息会被显示:
let age = -3
assert(age >= 0, "A person's age cannot be less than zero") // 因为 age < 0，所以断言会触发

//如果不需要断言信息，可以省略，就像这样: 
assert(age >= 0)

/*
 注意:
 当代码使用优化编译的时候，断言将会被禁用，例如在 Xcode 中，使用默认的 target Release 配置选项来 build 时，断言会被禁用。
 */

//何时使用断言

/*
 当条件可能为假时使用断言，但是最终一定要保证条件为真，这样你的代码才能继续运行。断言的适用情景:
 • 整数类型的下标索引被传入一个自定义下标实现，但是下标索引值可能太小或者太大。 
 • 需要给函数传入一个值，但是非法的值可能导致函数不能正常执行。
 • 一个可选值现在是 nil ，但是后面的代码运行需要一个非 nil 值。
 */

/*
 注意:
 断言可能导致你的应用终止运行，所以你应当仔细设计你的代码来让非法条件不会出现。然而，在你的应用发布
 之前，有时候非法条件可能出现，这时使用断言可以快速发现问题。
 */
