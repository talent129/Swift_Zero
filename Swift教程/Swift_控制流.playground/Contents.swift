//: Playground - noun: a place where people can play

import UIKit

//Swift提供了多种流程控制结构，包括可以多次执行任务的 while 循环，基于特定条件选择执行不同代码分支的 if 、 guard 和 switch 语句，还有控制流程跳转到其他代码位置的 break 和 continue 语句。

//Swift 还提供了 for-in 循环，用来更简单地遍历数组(array)，字典(dictionary)，区间(range)，字符串(string)和其他序列类型。

//Swift 的 switch 语句比 C 语言中更加强大。在 C 语言中，如果某个 case 不小心漏写了 break ，这个 case 就 会贯穿至下一个 case，Swift 无需写 break ，所以不会发生这种贯穿的情况。case 还可以匹配很多不同的模 式，包括间隔匹配(interval match)，元组(tuple)和转换到特定类型。 switch 语句的 case 中匹配的值可 以绑定成临时常量或变量，在case体内使用，也可以用 where 来描述更复杂的匹配条件。

//for-in 循环 可以使用 for-in 循环来遍历一个集合中的所有元素，例如数字范围、数组中的元素或者字符串中的字符
for index in 1...5 {
    print("\(index) times 5 is \(5 * index)")
}
//index 是一个每次循环遍历开始时被自动赋值的常量。这种情况下， index 在使用前不需要声 明，只需要将它包含在循环的声明中，就可以对其进行隐式声明，而无需使用 let 关键字声明

//如果你不需要区间序列内每一项的值，你可以使用下划线( _ )替代变量名来忽略这个值:
//下划线符号 _ (替代循环中的变量)能够忽略当前值，并且不提供循环遍历时对值的 访问。
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

//使用 for-in 遍历一个数组所有元素:
let names = ["Lucy", "Tom", "Jack"]
for name in names {
    print("name is \(name)")
}

//也可以通过遍历一个字典来访问它的键值对。遍历字典时，字典的每项元素会以 (key, value) 元组的形式返 回，你可以在 for-in 循环中使用显式的常量名称来解读 (key, value) 元组
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print(animalName, legCount)
}

//字典元素的遍历顺序和插入顺序可能不同，字典的内容在内部是无序的，所以遍历元素时不能保证顺序

//while循环
/*
 while 循环会一直运行一段语句直到条件变成 false 。这类循环适合使用在第一次迭代前，迭代次数未知的情况
 下。Swift 提供两种 while 循环形式:
 • while循环，每次在循环开始时计算条件是否符合;
 • repeat-while循环，每次在循环结束时计算条件是否符合。
 */

//while while 循环从计算一个条件开始。如果条件为 true ，会重复运行一段语句，直到条件变为 false 。
/*
 while condition {
    statements
 }
 */

let start = 0
var end = 5
var count = 0
while start <= end {
    count += 1
    end -= 1
    print("打印\(count)次.")
}

print("**********************这是分割线********************")

//repeat-while循环 while 循环的另外一种形式是 repeat-while ，它和 while 的区别是在判断循环条件之前，先执行一次循环的代码 块。然后重复循环直到条件为 false 。

/*
 注意:
 Swift语言的 repeat-while 循环和其他语言中的 do-while 循环是类似的。
 */

/*
 repeat-while 循环的一般格式:
 repeat {
    statements
 } while condition
 */

let start1 = 0
var end1 = 5
var count1 = 0
repeat {
    count1 += 1
    end1 -= 1
    print("打印\(count1)次.")
} while start1 <= end1

//条件语句 Swift 提供两种类型的条件语句: if 语句和 switch 语句。通常，当条件较为简单且可能的情况很少时，使用 i f 语句。而 switch 语句更适用于条件较复杂、有更多排列组合的时候。并且 switch 在需要用到模式匹配(patte rn-matching)的情况下会更有用。

//if if 语句最简单的形式就是只包含一个条件，只有该条件为 true 时，才执行相关代码
var tem = 30
if tem <= 32 {
    print("低于32")
}

//if 语句允许二选一执行，叫做 else 从句。也就是当条件为 false 时，执行 else 语句:
tem = 40
if tem <= 32 {
    print("低于32")
} else {
    print("高于32")
}

//可以把多个 if 语句链接在一起，来实现更多分支:
tem = 80
if tem <= 32 {
    print("低于32")
} else if tem <= 40 {
    print("高于32")
} else {
    print("高于40")
}

//switch
//switch 语句会尝试把某个值与若干个模式(pattern)进行匹配。根据第一个匹配成功的模式， switch 语句会执 行对应的代码。当有可能的情况较多时，通常用 switch 语句替换 if 语句。
/*
 switch 语句最简单的形式就是把某个值与一个或若干个相同类型的值作比较:
 switch some value to consider {
 case value 1:
 respond to value 1
 case value 2,
 value 3:
 respond to value 2 or 3
 default:
 otherwise, do something else
 }
 */
//switch 语句由多个 case 构成，每个由 case 关键字开始

//与 if 语句类似，每一个 case 都是代码执行的一条分支。 switch 语句会决定哪一条分支应该被执行，这个流程 被称作根据给定的值切换(switching)。

//switch 语句必须是完备的。这就是说，每一个可能的值都必须至少有一个 case 分支与之对应。在某些不可能涵 盖所有值的情况下，你可以使用默认( default )分支来涵盖其它所有没有对应的值，这个默认分支必须在 switch 语句的最后面。

let someCharacter: Character = "a"
switch someCharacter {
case "a":
    print("first letter")
case "z":
    print("last letter")
default:
    print("other letter")
}

//不存在隐式的贯穿 与 C 和 Objective-C 中的 switch 语句不同，在 Swift 中，当匹配的 case 分支中的代码执行完毕后，程序会 终止 switch 语句，而不会继续执行下一个 case 分支。这也就是说，不需要在 case 分支中显式地使用 break 语 句。这使得 switch 语句更安全、更易用，也避免了因忘记写 break 语句而产生的错误

/*
 注意: 虽然在Swift中 break 不是必须的，但你依然可以在 case 分支中的代码执行完毕前使用 break 跳出
 */

//每一个 case 分支都必须包含至少一条语句

/*
 let anotherCharacter: Character = "a" switch anotherCharacter {
 case "a": // 无效，这个分支下面没有语句 case "A":
 print("The letter A")
 default:
 print("Not the letter A")
 }
 // 这段代码会报编译错误
 */

//不像 C 语言里的 switch 语句，在 Swift 中， switch 语句不会一起匹配 "a" 和 "A" 。相反的，上面的代码会引 起编译期错误: case "a": 不包含任何可执行语句

//为了让单个case同时匹配 a 和 A ，可以将这个两个值组合成一个复合匹配，并且用逗号分开:

let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A": //为了可读性，符合匹配可以写成多行形式
    print("letter -A")
default:
    print("another letter")
}

//区间匹配 case 分支的模式也可以是一个值的区间
let score = 88
var level: String
switch score {
case 0:
    level = "零"
case 1..<60:
    level = "不及格"
case 60..<80:
    level = "及格不优秀"
case 80...100:
    level = "优秀"
default:
    level = "非正常分数"
}
print(level)

//元组 我们可以使用元组在同一个 switch 语句中测试多个值。元组中的元素可以是值，也可以是区间。另外，使用下划 线( _ )来匹配所有可能的值。
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("原点")
case (_, 0):
    print("x轴")
case (0, _):
    print("y轴")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) 在此范围")
default:
    print("不在此范围")
}

//不像 C 语言，Swift 允许多个 case 匹配同一个值。实际上，在这个例子中，点(0, 0)可以匹配所有四个 cas e。但是，如果存在多个匹配，那么只会执行第一个被匹配到的 case 分支。考虑点(0, 0)会首先匹配 case (0, 0) ，因此剩下的能够匹配的分支都会被忽视掉

//值绑定(Value Bindings)

//case 分支允许将匹配的值绑定到一个临时的常量或变量，并且在case分支体内使用 —— 这种行为被称为值绑 定(value binding)，因为匹配的值在case分支体内，与临时的常量或变量绑定。
let anotherSomePoint = (2, 0)
switch anotherSomePoint {
case (let x, 0):
    print("x轴上 value是: \(x)")
case (0, let y):
    print("y轴上 value是: \(y)")
case (let x, let y):
    print("x: \(x), y: \(y)")
}
//请注意，这个 switch 语句不包含默认分支。这是因为最后一个 case —— case let(x, y) 声明了一个可以匹配 余下所有值的元组。这使得 switch 语句已经完备了，因此不需要再书写默认分支。

//Where case分支的模式可以使用where语句来判断额外的条件。

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

//复合匹配 当多个条件可以使用同一种方法来处理时，可以将这几种可能放在同一个 case 后面，并且用逗号隔开。当case后 面的任意一种模式匹配的时候，这条分支就会被匹配。并且，如果匹配列表过长，还可以分行书写

let someCharacter1: Character = "e"
switch someCharacter1 {
case "a", "e", "i", "o", "u":
    print("\(someCharacter1) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter1) is a consonant")
default:
    print("\(someCharacter1) is not a vowel or a consonant")
}

let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}

//控制转移语句
/*
 控制转移语句改变你代码的执行顺序，通过它可以实现代码的跳转。Swift 有五种控制转移语句:
 • continue
 • break
 • fallthrough 
 • return
 • throw
 */

//Continue continue 语句告诉一个循环体立刻停止本次循环，重新开始下次循环。就好像在说“本次循环我已经执行完 了”，但是并不会离开整个循环体。

//把一个小写字符串中的元音字母和空格字符移除，生成了一个含义模糊的短句:
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
for character in puzzleInput.characters {
    switch character {
    case "a", "e", "i", "0", "u", " ":
        continue
    default:
        puzzleOutput.append(character)
    }
}
print(puzzleOutput)

//Break break 语句会立刻结束整个控制流的执行。当你想要更早的结束一个 switch 代码块或者一个循环体时，你都可以 使用 break 语句。

//循环语句中的 break
//当在一个循环体中使用 break 时，会立刻中断该循环体的执行，然后跳转到表示循环体结束的大括号( } )后的第 一行代码。不会再有本次循环的代码被执行，也不会再有下次的循环产生。

//Switch 语句中的 break 当在一个 switch 代码块中使用 break 时，会立即中断该 switch 代码块的执行，并且跳转到表示 switch 代码块 结束的大括号( } )后的第一行代码。

//这种特性可以被用来匹配或者忽略一个或多个分支。因为 Swift 的 switch 需要包含所有的分支而且不允许有为 空的分支，有时为了使你的意图更明显，需要特意匹配或者忽略某个分支。那么当你想忽略某个分支时，可以在 该分支内写上 break 语句。当那个分支被匹配到时，分支内的 break 语句立即结束 switch 代码块。

/*
 注意: 当一个 switch 分支仅仅包含注释时，会被报编译时错误。注释不是代码语句而且也不能让 switch 分支 达到被忽略的效果。你应该使用 break 来忽略某个分支。
 */

//通过 switch 来判断一个 Character 值是否代表下面四种语言之一。为了简洁，多个值被包含在了同一 个分支情况中。
let numberSymbol: Character = "三" // 简体中文里的数字 3 
var possibleIntegerValue: Int?

switch numberSymbol {
case "1", "?", "一", "?":
    possibleIntegerValue = 1
case "2", "?", "二", "?":
    possibleIntegerValue = 2
case "3", "?", "三", "?":
    possibleIntegerValue = 3
case "4", "?", "四", "?":
    possibleIntegerValue = 4
default:
    break
}

if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSymbol).")
}
//如果被匹配到，该 switch 分 支语句给 Int? 类型变量 possibleIntegerValue 设置一个整数值。当 switch 代码块执行完后，接下来的代码通过使用可选绑定来判断 possibleIntegerValue 是否曾经被设置过 值。因为是可选类型的缘故， possibleIntegerValue 有一个隐式的初始值 nil ，所以仅仅当 possibleIntegerValu e 曾被 switch 代码块的前四个分支中的某个设置过一个值时，可选的绑定才会被判定为成功。在上面的例子中，想要把 Character 所有的的可能性都枚举出来是不现实的，所以使用 default 分支来包含所有 上面没有匹配到字符的情况。由于这个 default 分支不需要执行任何动作，所以它只写了一条 break 语句。一旦 落入到 default 分支中后， break 语句就完成了该分支的所有代码操作，代码继续向下，开始执行 if let 语句。

//贯穿 Swift 中的 switch 不会从上一个 case 分支落入到下一个 case 分支中。相反，只要第一个匹配到的 case 分支 完成了它需要执行的语句，整个 switch 代码块完成了它的执行。相比之下，C 语言要求你显式地插入 break 语句 到每个 case 分支的末尾来阻止自动落入到下一个 case 分支中。Swift 的这种避免默认落入到下一个分支中的 特性意味着它的 switch 功能要比 C 语言的更加清晰和可预测，可以避免无意识地执行多个 case 分支从而引发 的错误。

//如果你确实需要 C 风格的贯穿的特性，你可以在每个需要该特性的 case 分支中使用 fallthrough 关键字

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
// 输出 "The number 5 is a prime number, and also an integer."

/*
 注意: fallthrough 关键字不会检查它下一个将会落入执行的 case 中的匹配条件。 fallthrough 简单地使代 码继续连接到下一个 case 中的代码，这和 C 语言标准中的 switch 语句特性是一样的。
 */

//带标签的语句 在 Swift 中，你可以在循环体和条件语句中嵌套循环体和条件语句来创造复杂的控制流结构。并且，循环体和条 件语句都可以使用 break 语句来提前结束整个代码块。因此，显式地指明 break 语句想要终止的是哪个循环体或 者条件语句，会很有用。类似地，如果你有许多嵌套的循环体，显式指明 continue 语句想要影响哪一个循环体也 会非常有用。

//为了实现这个目的，你可以使用标签(statement label)来标记一个循环体或者条件语句
//对于一个条件语句，你可以使用 break 加标签的方式，来结束这个被标记的语句。
//对于一个循环语句，你可以使用 break 或者 continue 加标签，来结束或者继续这条被标记语句的执行。

/*
 声明一个带标签的语句是通过在该语句的关键词的同一行前面放置一个标签，作为这个语句的前导关键字(introd ucor keyword)，并且该标签后面跟随一个冒号。下面是一个针对 while 循环体的标签语法，同样的规则适用于所 有的循环体和条件语句。
 
 label name : while condition { statements }
 */

//提前退出 像 if 语句一样， guard 的执行取决于一个表达式的布尔值。我们可以使用 guard 语句来要求条件必须为真 时，以执行 guard 语句后的代码。不同于 if 语句，一个 guard 语句总是有一个 else 从句，如果条件不为真则执行 else 从句中的代码

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello, \(name)")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice")
        return
    }
    print("I hope the weather is nice in \(location)")
}

greet(person: ["name": "Lucy"])
greet(person: ["name": "Tom", "location": "Beijing"])

/*
 如果 guard 语句的条件被满足，则继续执行 guard 语句大括号后的代码。将变量或者常量的可选绑定作为 语句的条件，都可以保护 guard 语句后面的代码。
 如果条件不被满足，在 else 分支上的代码就会被执行。这个分支必须转移控制以退出 guard 语句出现的代码 段。它可以用控制转移语句如 return , break , continue 或者 throw 做这件事，或者调用一个不返回的方法或函 数，例如 fatalError() 。
 相比于可以实现同样功能的 if 语句，按需使用 guard 语句会提升我们代码的可读性。它可以使你的代码连贯的 被执行而不需要将它包在 else 块中，它可以使你在紧邻条件判断的地方，处理违规的情况。
 */

//检测 API 可用性 Swift内置支持检查 API 可用性，这可以确保我们不会在当前部署机器上，不小心地使用了不可用的API。编译器使用 SDK 中的可用信息来验证我们的代码中使用的所有 API 在项目指定的部署目标上是否可用。如果我 们尝试使用一个不可用的 API，Swift 会在编译时报错。

//在 if 或 guard 语句中使用 可用性条件(availability condition) 去有条件的执行一段代码，来在运行时判 断调用的API是否可用。编译器使用从可用性条件语句中获取的信息去验证，在这个代码块中调用的 API 是否可 用
if #available(iOS 10, macOS 10.12, *) {
    // 在 iOS 使用 iOS 10 的 API, 在 macOS 使用 macOS 10.12 的 API
} else {
    // 使用先前版本的 iOS 和 macOS 的 API
}
//以上可用性条件指定，在iOS中， if 语句的代码块仅仅在 iOS 10 及更高的系统下运行;在 macOS中，仅在 macO S 10.12 及更高才会运行。最后一个参数， * ，是必须的，用于指定在所有其它平台中，如果版本号高于你的设 备指定的最低版本，if语句的代码块将会运行。

//在它一般的形式中，可用性条件使用了一个平台名字和版本的列表。平台名字可以是 iOS ， macOS ， watchOS 和 tvOS

//除了指定像 iOS 8的主板本号，我们可以指定像iOS 8.3 以及 macOS10.10.3的子版本号。
/*
if #available(platform name version, ..., *) { APIs 可用，语句将执行
} else {
    APIs 不可用，语句将不执行
}
*/