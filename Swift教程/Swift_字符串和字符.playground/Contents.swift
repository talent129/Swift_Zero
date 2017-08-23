//: Playground - noun: a place where people can play

import UIKit

//字符串和字符(Strings and Characters)

//字符串是例如 "hello, world" ， "albatross" 这样的有序的 Character (字符)类型的值的集合。通过 String 类型来表示。 一个 String 的内容可以用许多方式读取，包括作为一个 Character 值的集合。

//Swift 的 String 和 Character 类型提供了快速和兼容 Unicode 的方式供你的代码使用。创建和操作字符串的语 法与 C 语言中字符串操作相似，轻量并且易读。 字符串连接操作只需要简单地通过 + 符号将两个字符串相连即可。与 Swift 中其他值一样，能否更改字符串的值，取决于其被定义为常量还是变量
//尽管语法简易，但 String 类型是一种快速、现代化的字符串实现。 每一个字符串都是由编码无关的 Unicode 字 符组成，并支持访问字符的多种 Unicode 表示形式

/*
 注意:
 Swift 的 String 类型与 Foundation NSString 类进行了无缝桥接。Foundation 也可以对 String 进行扩 展，暴露在 NSString 中定义的方法。 这意味着，如果你在 String 中调用这些 NSString 的方法，将不用进行 转换。
 */

//字符串字面量
//可以在代码中包含一段预定义的字符串值作为字符串字面量。字符串字面量是由双引号 ( "" ) 包裹着的具 有固定顺序的文本字符 。 字符串字面量可以用于为常量和变量提供初始值:

let someString = "Some string literal value"//注意 someString 常量通过字符串字面量进行初始化，Swift 会推断该常量为 String 类型。

//初始化空字符串
//要创建一个空字符串作为初始值，可以将空的字符串字面量赋值给变量，也可以初始化一个新的 String 实例:
var emptyString = "" //空字符串字面量
var anotherEmptyString = String() //初始化方法
//两个字符串均为空并等价

//可以通过检查其 Bool 类型的 isEmpty 属性来判断该字符串是否为空:
if emptyString.isEmpty {
    print("nothing to see here.")
}

//字符串可变性
//可以通过将一个特定字符串分配给一个变量来对其进行修改，或者分配给一个常量来保证其不会被修改:
var variableString = "Horse"
variableString += " and carriage"
// variableString 现在为 "Horse and carriage"
//let constantString = "Highlander"
//constantString += " and another Highlander"
//// 这会报告一个编译错误 (compile-time error) - 常量字符串不可以被修改。

//字符串是值类型 Swift 的 String 类型是值类型。 如果您创建了一个新的字符串，那么当其进行常量、变量赋值操作，或在函数/ 方法中传递时，会进行值拷贝。 任何情况下，都会对已有字符串值创建新副本，并对该新副本进行传递或赋值操 作。
//Swift 默认字符串拷贝的方式保证了在函数/方法中传递的是字符串的值。 很明显无论该值来自于哪里，都是您 独自拥有的。 您可以确信传递的字符串不会被修改，除非你自己去修改它。
//在实际编译时，Swift 编译器会优化字符串的使用，使实际的复制只发生在绝对必要的情况下，这意味着您将字 符串作为值类型的同时可以获得极高的性能。

//使用字符 可通过 for-in 循环来遍历字符串中的 characters 属性来获取每一个字符的值:

for character in "Dog".characters {
    print(character)
}

//通过标明一个 Character 类型并用字符字面量进行赋值，可以建立一个独立的字符常量或变量: 
let exclamationMark: Character = "!"
print(exclamationMark)

//字符串可以通过传递一个值类型为 Character 的数组作为自变量来初始化:
let catCharacters: [Character] = ["C", "a", "t", "!", "?"]
let catString = String(catCharacters)
print(catString)
// 打印输出:"Cat!?"

//连接字符串和字符 字符串可以通过加法运算符( + )相加在一起(或称“连接”)创建一个新的字符串:
let string1 = "Hello"
let string2 = " there"
var welcome = string1 + string2

//也可以通过加法赋值运算符 ( += ) 将一个字符串添加到一个已经存在字符串变量上:
var instruction = "look over"
instruction += string2

//可以用 append() 方法将一个字符附加到一个字符串变量的尾部:
var charac: Character = "!"
welcome.append(charac)

/*
 注意:
 您不能将一个字符串或者字符添加到一个已经存在的字符变量上，因为字符变量只能包含一个字符。
 */

//字符串插值 字符串插值是一种构建新字符串的方式，可以在其中包含常量、变量、字面量和表达式。 您插入的字符串字面量 的每一项都在以反斜线为前缀的圆括号中:
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

/*
 注意:
 插值字符串中写在括号中的表达式不能包含非转义反斜杠 ( \ )，并且不能包含回车或换行符。不过，插值字符 串可以包含其他字面量。
 */

//Unicode Unicode是一个国际标准，用于文本的编码和表示。 它使您可以用标准格式表示来自任意语言几乎所有的字 符，并能够对文本文件或网页这样的外部资源中的字符进行读写操作。 Swift 的 String 和 Character 类型是完 全兼容 Unicode 标准的。

//Unicode 标量 Swift 的 String 类型是基于 Unicode 标量 建立的。 Unicode 标量是对应字符或者修饰符的唯一的21位数字
//注意不是所有的21位 Unicode 标量都代表一个字符，因为有一些标量是留作未来分配的

//字符串字面量的特殊字符
/*
 字符串字面量可以包含以下特殊字符:
 • 转义字符 \0 (空字符)、 \\ (反斜线)、 \t (水平制表符)、 \n (换行符)、 \r (回车符)、 \" (双引 号)、 \' (单引号)。
 • Unicode 标量，写成 \u{n} (u为小写)，其中 n 为任意一到八位十六进制数且可用的 Unicode 位码。
 */

//可扩展的字形群集 每一个 Swift 的 Character 类型代表一个可扩展的字形群。 一个可扩展的字形群是一个或多个可生成人类可读的字符 Unicode 标量的有序排列。

//计算字符数量
//如果想要获得一个字符串中 Character 值的数量，可以使用字符串的 characters 属性的 count 属性:
let charactersCount = "character?"
charactersCount.characters.count

//注意在 Swift 中，使用可拓展的字符群 作为Character值来连接或改变字符串时，并不一定会更改字符串的字 符数量。

/*
 注意:
 可扩展的字符群 可以组成一个或者多个 Unicode 标量。这意味着不同的字符以及相同字符的不同表示方式可 能需要不同数量的内存空间来存储。所以 Swift 中的字符在一个字符串中并不一定占用相同的内存空间数 量。因此在没有获取字符串的可扩展的字符群的范围时候，就不能计算出字符串的字符数量。如果您正在处理一个长字符串，需要注意characters属性必须遍历全部的Unicode标量，来确定字符串的字符数量。
    另外需要注意的是通过characters属性返回的字符数量并不总是与包含相同字符的NSString的length属性相同。NSStrign的length属性是利用UTF-16表示的十六位代码单元数字，而不是Unicode可扩展的字符群集。作为佐证，当一个NSString的length属性被一个Swift的String值访问时，实际上是调用了utf16Count.
 */

//访问和修改字符串 可以通过字符串的属性和方法来访问和修改它，当然也可以用下标语法完成。
//字符串索引 每一个String值都有一个关联的索引(index)类型 String.Index，它对应着字符串中的每一个Character的位置。
//不同的字符可能会占用不同数量的内存空间，所以要知道Character的确定位置，就必须从String开头遍历每一个 Unicode 标量直到结尾。因此，Swift 的字符串不能用整数(integer)做索引。
//使用startIndex属性可以获取一个String的第一个Character的索引。使用endIndex属性可以获取最后一个Character的后一个位置的索引。因此， endIndex属性不能作为一个字符串的有效下标。如果String是空串，startIndex和endIndex是相等的。
//通过调用 String 的 index(before:) 或 index(after:) 方法，可以立即得到前面或后面的一个索引。您还 可以通过调用 index(_:offsetBy:) 方法来获取对应偏移量的索引，这种方式可以避免多次调用 index(befor e:) 或 index(after:) 方法。
//可以使用下标语法来访问 String 特定索引的 Character 。

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a

//试图获取越界索引对应的 Character ，将引发一个运行时错误。
//greeting[greeting.endIndex] // error
//greeting.index(after: endIndex) // error

//使用 characters 属性的 indices 属性会创建一个包含全部索引的范围(Range)，用来在一个字符串中访问单 个字符。
for index in greeting.characters.indices {
    print("\(greeting[index]) ", terminator: "")
}
// 打印输出 "G u t e n T a g ! "

/*
 注意:
 您可以使用 startIndex 和 endIndex 属性或者 index(before:) 、 index(after:) 和 index(_:offsetB y:) 方法在任意一个确认的并遵循 Collection 协议的类型里面，如上文所示是使用在 String 中，您也可 以使用在 Array 、 Dictionary 和 Set 中。
 */

//插入和删除
//调用 insert(_:at:) 方法可以在一个字符串的指定索引插入一个字符，调用 insert(contentsOf:at:) 方法可 以在一个字符串的指定索引插入一个段字符串。
var welcomeHello = "hello"
welcomeHello.insert("!", at: welcomeHello.endIndex) // welcomeHello 变量现在等于 "hello!"
welcomeHello.insert(contentsOf:" there".characters, at: welcomeHello.index(before: welcomeHello.endIndex)) // welcomeHello 变量现在等于 "hello there!"

//调用 remove(at:) 方法可以在一个字符串的指定索引删除一个字符，调用 removeSubrange(_:) 方法可以在一 个字符串的指定索引删除一个子字符串。

welcomeHello.remove(at: welcomeHello.index(before: welcomeHello.endIndex)) // welcomeHello 现在等于 "hello there"
let range = welcomeHello.index(welcomeHello.endIndex, offsetBy: -6)..<welcomeHello.endIndex
welcomeHello.removeSubrange(range)
// welcomeHello 现在等于 "hello"

/*
 注意: 您可以使用 insert(_:at:) 、 insert(contentsOf:at:) 、 remove(at:) 和 removeSubrange(_:) 方法 在任意一个确认的并遵循 RangeReplaceableCollection 协议的类型里面，如上文所示是使用在 String 中，您也可以使用在 Array、Dictionary 和 Set 中。
 */

print(terminator: "\n")//换行

//比较字符串 Swift 提供了三种方式来比较文本值:字符串字符相等、前缀相等和后缀相等。

//字符串/字符相等 字符串/字符可以用等于操作符( == )和不等于操作符( != )
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}
// 打印输出 "These two strings are considered equal"

//如果两个字符串(或者两个字符)的可扩展的字形群 是标准相等的，那就认为它们是相等的。在这个情况 下，即使可扩展的字形群 是有不同的 Unicode 标量构成的，只要它们有同样的语言意义和外观，就认为它们标 准相等。
// "Voulez-vous un café?" 使用 LATIN SMALL LETTER E WITH ACUTE 
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
// "Voulez-vous un café?" 使用 LATIN SMALL LETTER E and COMBINING ACUTE ACCENT 
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
// 打印输出 "These two strings are considered equal"

//相反，英语中的 LATIN CAPITAL LETTER A ( U+0041 ，或者 A )不等于俄语中的 CYRILLIC CAPITAL LETTER A ( 0 ，或者 A )。两个字符看着是一样的，但却有不同的语言意义
let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters are not equivalent")
}
// 打印 "These two characters are not equivalent"

//前缀/后缀相等 通过调用字符串的 hasPrefix(_:) / hasSuffix(_:) 方法来检查字符串是否拥有特定前缀/后缀，两个方法均接收一 个 String 类型的参数，并返回一个布尔值。

//下面的例子以一个字符串数组表示莎士比亚话剧《罗密欧与朱丽叶》中前两场的场景位置:
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
//您可以调用 hasPrefix(_:) 方法来计算话剧中第一幕的场景数:
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

//可以用 hasSuffix(_:) 方法来计算发生在不同地方的场景数:
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

/*
 注意:
 hasPrefix(_:) 和 hasSuffix(_:) 方法都是在每个字符串中逐字符比较其可扩展的字符群 是否标准相等
 */

//字符串的Unicode表示形式
//当一个 Unicode 字符串被写进文本文件或者其他储存时，字符串中的 Unicode 标量会用 Unicode 定义的几种 编码格式 (encoding forms)编码。每一个字符串中的小块编码都被称 代码单元 (code units)。这些包括 UTF-8 编码格式(编码字符串为8位的代码单元)， UTF-16 编码格式(编码字符串位16位的代码单元)，以及 UT F-32 编码格式(编码字符串32位的代码单元)。

//Swift 提供了几种不同的方式来访问字符串的 Unicode 表示形式 可以利用 for-in 来对字符串进行遍历，从 而以 Unicode 可扩展的字符群 的方式访问每一个 Character 值

/*
 另外，能够以其他三种 Unicode 兼容的方式访问字符串的值:
 • UTF-8 代码单元 合 (利用字符串的 utf8 属性进行访问)
 • UTF-16 代码单元 合 (利用字符串的 utf16 属性进行访问)
 • 21位的 Unicode 标量值 合，也就是字符串的 UTF-32 编码格式 (利用字符串的 unicodeScalars 属性进行 访问)
 */

let dogString = "Dog‼🐶"

//UTF-8 表示 可以通过遍历 String 的 utf8 属性来访问它的 UTF-8 表示。 其为 String.UTF8View 类型的属性， UTF8View 是 无符号8位 ( UInt8 ) 值的 合，每一个 UInt8 值都是一个字符的 UTF-8 表示:

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")//68 111 103 226 128 188 240 159 144 182
}
print("")
//前三个10进制 codeUnit 值 ( 68 , 111 , 103 ) 代表了字符 D 、 o 和 g ，它们的 UTF-8 表示 与 ASCII 表示相同。 接下来的三个10进制 codeUnit 值 ( 226 , 128 , 188 ) 是 DOUBLE EXCLAMATION MARK 的3 字节 UTF-8 表示。 最后的四个 codeUnit 值 ( 240 , 159 , 144 , 182 ) 是 DOG FACE 的4字节 UTF-8 表示。

//UTF-16 表示 可以通过遍历 String 的 utf16 属性来访问它的 UTF-16 表示。 其为 String.UTF16View 类型的属性， UTF16Vie w 是无符号16位 ( UInt16 ) 值的 合，每一个 UInt16 都是一个字符的 UTF-16 表示
for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")//68 111 103 8252 55357 56374
//同样，前三个 codeUnit 值 ( 68 , 111 , 103 ) 代表了字符 D 、 o 和 g ，它们的 UTF-16 代码单元和 UTF-8 完全相同(因为这些 Unicode 标量表示 ASCII 字符)。第四个 codeUnit 值 ( 8252 ) 是一个等于十六进制 203C 的的十进制值。这个代表了 DOUBLE EXCLAMATION MARK 字 符的 Unicode 标量值 U+203C 。这个字符在 UTF-16 中可以用一个代码单元表示。第五和第六个 codeUnit 值 ( 55357 和 56374 ) 是 DOG FACE 字符的 UTF-16 表示。 第一个值为 U+D83D (十进制 值为 55357 )，第二个值为 U+DC36 (十进制值为 56374 )。

//Unicode 标量表示 可以通过遍历 String 值的 unicodeScalars 属性来访问它的 Unicode 标量表示。 其为 UnicodeScalarView 类型 的属性， UnicodeScalarView 是 UnicodeScalar 类型的值的 合。 UnicodeScalar 是21位的 Unicode 代码点。
//每一个 UnicodeScalar 拥有一个 value 属性，可以返回对应的21位数值
for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")//68 111 103 8252 128054
}
print("")
//前三个 UnicodeScalar 值( 68 , 111 , 103 )的 value 属性仍然代表字符 D 、 o 和 g 。 第四个 codeUnit 值( 8252 )仍然是一个等于十六进制 203C 的十进制值。这个代表了 DOUBLE EXCLAMATION MARK 字符的 Unicode 标量 U+2 03C 。第五个 UnicodeScalar 值的 value 属性， 128054 ，是一个十六进制 1F436 的十进制表示。其等同于 DOG FACE 的 Unicode 标量 U+1F436 。

//作为查询它们的 value 属性的一种替代方法，每个 UnicodeScalar 值也可以用来构建一个新的 String 值，比如在 字符串插值中使用:
for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
