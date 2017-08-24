//: Playground - noun: a place where people can play

import UIKit

//Swift 语言提供 Arrays 、 Sets 和 Dictionaries 三种基本的集合类型用来存储集合数据。数组(Arrays)是有序数据的集合。集合(Sets)是无序无重复数据的集。字典(Dictionaries)是无序的键值对的集。

//Swift 语言中的 Arrays 、 Sets 和 Dictionaries 中存储的数据值类型必须明确。这意味着我们不能把不正确的数据类型插入其中。同时这也说明我们完全可以对取回值的类型非常自信

/*
 注意:
 Swift 的 Arrays 、 Sets 和 Dictionaries 类型被实现为泛型 合
 */

//集合的可变性 如果创建一个 Arrays 、 Sets 或 Dictionaries 并且把它分配成一个变量，这个 合将会是可变的。这意味着我们 可以在创建之后添加更多或移除已存在的数据项，或者改变 合中的数据项。如果我们把 Arrays 、 Sets 或 ionaries 分配成常量，那么它就是不可变的，它的大小和内容都不能被改变。

/*
 注意:
 在我们不需要改变 合的时候创建不可变 合是很好的实践
 */

//数组 数组使用有序列表存储同一类型的多个值。相同的值可以多次出现在一个数组的不同位置中。

//数组的简单语法 写 Swift 数组应该遵循像 Array<Element> 这样的形式，其中 Element 是这个数组中唯一允许存在的数据类 型。我们也可以使用像 [Element] 这样的简单语法。尽管两种形式在功能上是一样的，但是推荐较短的那种，而 且在本文中都会使用这种形式来使用数组。

//创建一个空数组 可以使用构造语法来创建一个由特定数据类型构成的空数组:

var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.") // 打印 "someInts is of type [Int] with 0 items."

//通过构造函数的类型， someInts 的值类型被推断为 [Int] 。

//或者，如果代码上下文中已经提供了类型信息，例如一个函数参数或者一个已经定义好类型的常量或者变量，我 们可以使用空数组语句创建一个空数组，它的写法很简单: [] (一对空方括号):
someInts.append(3)
// someInts 现在包含一个 Int 值
someInts = []
// someInts 现在是空数组，但是仍然是 [Int] 类型的。

//创建一个带有默认值的数组

//Swift 中的 Array 类型还提供一个可以创建特定大小并且所有数据都被默认的构造方法。我们可以把准备加入新 数组的数据项数量( count )和适当类型的初始值( repeating )传入数组构造函数:
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)
//// threeDoubles 是一种 [Double] 数组，等价于 [0.0, 0.0, 0.0]

//通过两个数组相加创建一个数组 我们可以使用加法操作符( + )来组合两种已存在的相同类型数组。新数组的数据类型会被从两个数组的数据类 型中推断出来:
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
// anotherThreeDoubles 被推断为 [Double]，等价于 [2.5, 2.5, 2.5]
var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles 被推断为 [Double]，等价于 [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]

//用数组字面量构造数组 可以使用数组字面量来进行数组构造，这是一种用一个或者多个数值构造数组的简单方法。数组字面量是一系列由逗号分割并由方括号包含的数值: [value 1, value 2, value 3] 。

//这个例子创建了一个叫做 shoppingList 并且存储 String 的数组:
var shoppingList: [String] = ["Eggs", "Milk"] // shoppingList 已经被构造并且拥有两个初始项。
//shoppingList 变量被声明为“字符串值类型的数组“，记作 [String] 。 因为这个数组被规定只有 String 一种 数据结构，所以只有 String 类型可以在其中被存取。 在这里， shoppingList 数组由两个 String 值( "Eggs" 和 "Milk" )构造，并且由数组字面量定义。

//由于 Swift 的类型推断机制，当我们用字面量构造只拥有相同类型值数组的时候，我们不必把数组的类型定义清 楚。 shoppingList 的构造也可以这样写:
var shoppingList1 = ["Eggs", "Milk"]
//因为所有数组字面量中的值都是相同的类型，Swift 可以推断出 [String] 是 shoppingList 中变量的正确类型。

//访问和修改数组 可以通过数组的方法和属性来访问和修改数组，或者使用下标语法。
//可以使用数组的只读属性 count 来获取数组中的数据项数量:
print("The shopping list contains \(shoppingList.count) items.") // 输出 "The shopping list contains 2 items."(这个数组有2个项)

//使用布尔属性 isEmpty 作为一个缩写形式去检查 count 属性是否为 0 :
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}

//也可以使用 append(_:) 方法在数组后面添加新的数据项:
shoppingList.append("Flour")
// shoppingList 现在有3个数据项，有人在摊煎饼

//除此之外，使用加法赋值运算符( += )也可以直接在数组后面添加一个或多个拥有相同类型的数据项:
shoppingList += ["Baking Powder"]
// shoppingList 现在有四项了
shoppingList += ["Chocolate Spread", "Cheese", "Butter"] // shoppingList 现在有七项了

//可以直接使用下标语法来获取数组中的数据项，把我们需要的数据项的索引值放在直接放在数组名称的方括号中:
var firstItem = shoppingList[0] // 第一项是 "Eggs"

/*
 注意:
 第一项在数组中的索引值是 0 而不是 1 。 Swift 中的数组索引总是从零开始。
 */

//也可以用下标来改变某个已有索引值对应的数据值:
shoppingList[0] = "Six eggs"
// 其中的第一项现在是 "Six eggs" 而不是 "Eggs"

//还可以利用下标来一次改变一系列数据值，即使新数据和原有数据的数量是不一样的。下面的例子把 "Chocolate Spread" ， "Cheese" ，和 "Butter" 替换为 "Bananas" 和 "Apples" :
shoppingList[4...6] = ["Bananas", "Apples"] // shoppingList 现在有6项

/*
 注意:
 不可以用下标访问的形式去在数组尾部添加新项。
 */

//调用数组的 insert(_:at:) 方法来在某个具体索引值之前添加数据项:
shoppingList.insert("Maple Syrup", at: 0) // shoppingList 现在有7项
// "Maple Syrup" 现在是这个列表中的第一项

//这次 insert(_:at:) 方法调用把值为 "Maple Syrup" 的新数据项插入列表的最开始位置，并且使用 0 作为索引 值。

//类似的我们可以使用 remove(at:) 方法来移除数组中的某一项。这个方法把数组在特定索引值中存储的数据项移 除并且返回这个被移除的数据项(我们不需要的时候就可以无视它):
let mapleSyrup = shoppingList.remove(at: 0)
// 索引值为0的数据项被移除
// shoppingList 现在只有6项，而且不包括 Maple Syrup
// mapleSyrup 常量的值等于被移除数据项的值 "Maple Syrup"

/*
 注意: 如果我们试着对索引越界的数据进行检索或者设置新值的操作，会引发一个运行期错误。我们可以使用索引值和 数组的 count 属性进行比较来在使用某个索引之前先检验是否有效。除了当 count 等于 0 时(说明这是个空数 组)，最大索引值一直是 count - 1 ，因为数组都是零起索引。
 */

//数据项被移除后数组中的空出项会被自动填补，所以现在索引值为 0 的数据项的值再次等于 "Six eggs" :
firstItem = shoppingList[0]
// firstItem 现在等于 "Six eggs"

//如果我们只想把数组中的最后一项移除，可以使用 removeLast() 方法而不是 remove(at:) 方法来避免我们需要获 取数组的 count 属性。就像后者一样，前者也会返回被移除的数据项:
let apples = shoppingList.removeLast()
// 数组的最后一项被移除了
// shoppingList 现在只有5项，不包括 Apples // apples 常量的值现在等于 "Apples" 字符串

//数组的遍历 可以使用 for-in 循环来遍历所有数组中的数据项
for item in shoppingList {
    print(item)
}

//如果我们同时需要每个数据项的值和索引值，可以使用 enumerated() 方法来进行数组遍历。 enumerated() 返回 一个由每一个数据项索引值和数据值组成的元组。我们可以把这个元组分解成临时常量或者变量来进行遍历
for (index, value) in shoppingList.enumerated() {
    print("item\(String(index + 1)): \(value)")
}

//集合  集合(Set)用来存储相同类型并且没有确定顺序的值。当集合元素顺序不重要时或者希望确保每个元素只出现一次 时可以使用集合而不是数组。

//集合类型的哈希值
//一个类型为了存储在集合中，该类型必须是可哈希化的--也就是说，该类型必须提供一个方法来计算它的哈希值。一个哈希值是 Int 类型的，相等的对象哈希值必须相同，比如 a==b ,因此必须 a.hashValue == b.hashValue。

//Swift 的所有基本类型(比如 String , Int , Double 和 Bool )默认都是可哈希化的，可以作为集合的值的类型或 者字典的键的类型。没有关联值的枚举成员值(在枚举有讲述)默认也是可哈希化的。

/*
 注意: 你可以使用你自定义的类型作为 合的值的类型或者是字典的键的类型，但你需要使你的自定义类型符合 Swift 标准库中的 Hashable 协议。符合 Hashable 协议的类型需要提供一个类型为 Int 的可读属性 hashValue 。由类 型的 hashValue 属性返回的值不需要在同一程序的不同执行周期或者不同程序之间保持相同。
 因为 Hashable 协议符合 Equatable 协议，所以遵循该协议的类型也必须提供一个"是否相等"运算符( == )的实 现。这个 Equatable 协议要求任何符合 == 实现的实例间都是一种相等的关系。也就是说，对于 a,b,c 三个值来 说， == 的实现必须满足下面三种情况:
 • a == a (自反性)
 • a == b 意味着 b == a (对称性)
 • a == b && b == c 意味着 a == c (传递性)
 */

//集合类型语法 Swift 中的 Set 类型被写为 Set<Element> ，这里的 Element 表示 Set 中允许存储的类型，和数组不同的是，集合没有等价的简化形式。

//创建和构造一个空的集合

//可以通过构造器语法创建一个特定类型的空集合:
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
//注意: 通过构造器，这里的 letters 变量的类型被推断为 Set<Character> 。

//如果上下文提供了类型信息，比如作为函数的参数或者已知类型的变量或常量，我们可以通过一个空的数 组字面量创建一个空的 Set :

letters.insert("a")
// letters 现在含有1个 Character 类型的值
letters = []
// letters 现在是一个空的 Set, 但是它依然是 Set<Character> 类型

//用数组字面量创建集合 可以使用数组字面量来构造 合，并且可以使用简化形式写一个或者多个值作为 合元素。

//创建一个称之为 favoriteGenres 的 合来存储 String 类型的值:
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"] // favoriteGenres 被构造成含有三个初始值的 合

//这个 favoriteGenres 变量被声明为“一个 String 值的 合”，写为 Set<String> 。由于这个特定的 合含有指 定 String 类型的值，所以它只允许存储 String 类型值。这里的 favoriteGenres 变量有三个 String 类型的初始 值( "Rock" ， "Classical" 和 "Hip hop" )，并以数组字面量的方式出现。

//一个 Set 类型不能从数组字面量中被单独推断出来，因此 Set 类型必须显式声明 然而，由于 Swift 的类型推 断功能，如果你想使用一个数组字面量构造一个 Set 并且该数组字面量中的所有元素类型相同，那么你无须写出Set 的具体类型。 favoriteGenres 的构造形式可以采用简化的方式代替:
var favoriteGenres1: Set = ["Rock", "Classical", "Hip hop"]

//由于数组字面量中的所有元素类型相同，Swift 可以推断出 Set<String> 作为 favoriteGenres 变量的正确类型。

//访问和修改一个集合 可以通过 Set 的属性和方法来访问和修改一个 Set 。

//Set 中元素的数量，可以使用其只读属性 count :
print("I have \(favoriteGenres.count) favorite music genres.") // 打印 "I have 3 favorite music genres."

//使用布尔属性 isEmpty 作为一个缩写形式去检查 count 属性是否为 0 :
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
// 打印 "I have particular music preferences."

//可以通过调用 Set 的 insert(_:) 方法来添加一个新元素:
favoriteGenres.insert("Jazz")
// favoriteGenres 现在包含4个元素
print(favoriteGenres)

//可以通过调用 Set 的 remove(_:) 方法去删除一个元素，如果该值是该 Set 的一个元素则删除该元素并且返回 被删除的元素值，否则如果该 Set 不包含该值，则返回 nil 。另外， Set 中的所有元素可以通过它的 removeAl l() 方法删除。
if let removeRock = favoriteGenres.remove("Rock") {
    print("remove--\(removeRock)")
} else {
    print("no have")
}

//使用 contains(_:) 方法去检查 Set 中是否包含一个特定的值:
if favoriteGenres.contains("Jazz") {
    print("contain")
} else {
    print("no contain")
}

//遍历一个集合 可以在一个 for-in 循环中遍历一个 Set 中的所有值

for item in favoriteGenres {
    print(item)
}

//Swift 的 Set 类型没有确定的顺序，为了按照特定顺序来遍历一个 Set 中的值可以使用 sorted() 方法，它将返回一个有序数组，这个数组的元素排列顺序由操作符'<'对元素进行比较的结果来确定.

for item in favoriteGenres.sorted() {
    print(item)
}

//集合操作 可以高效地完成 Set 的一些基本操作，比如把两个集合组合到一起，判断两个集合共有元素，或者判断两个集合是否全包含，部分包含或者不相交

//基本集合操作
/*
 • 使用 intersection(_:) 方法根据两个集合中都包含的值创建的一个新的 合。
 • 使用 symmetricDifference(_:) 方法根据在一个集合中但不在两个集合中的值创建一个新的集合。
 • 使用 union(_:) 方法根据两个 合的值创建一个新的 合。
 • 使用 subtracting(_:) 方法根据不在该集合中的值创建一个新的集合。
 */

let oneSet: Set = [1, 3, 5, 7, 9]
let twoSet: Set = [0, 2, 4, 6, 8]
let threeSet: Set = [3, 5, 8]

oneSet.union(twoSet).sorted()   //并集
oneSet.intersection(threeSet).sorted()  //交集

oneSet.subtracting(threeSet).sorted() //差集

oneSet.symmetricDifference(twoSet).sorted()
oneSet.symmetricDifference(threeSet).sorted()

//集合成员关系和相等

/*
 
 • 使用“是否相等”运算符( == )来判断两个集合是否包含全部相同的值。
 • 使用 isSubset(of:) 方法来判断一个集合中的值是否也被包含在另外一个集合中。
 • 使用 isSuperset(of:) 方法来判断一个集合中包含另一个集合中所有的值。
 • 使用 isStrictSubset(of:) 或者 isStrictSuperset(of:) 方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等。
 • 使用 isDisjoint(with:) 方法来判断两个集合是否不含有相同的值(是否没有交集)。
 */

//集合: 无序性 互异性 确定性
let houseAnimals: Set = ["?", "??"]
let farmAnimals: Set = ["?", "??", "???", "????", "?????"]
let cityAnimals: Set = ["?", "??"]
houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// false

if houseAnimals == farmAnimals {
    print("相等")
} else {
    print("不相等")
}

//字典 字典是一种存储多个相同类型的值的容器。每个值(value)都关联唯一的键(key)，键作为字典中的这个值数 据的标识符。和数组中的数据项不同，字典中的数据项并没有具体顺序

//字典类型简化语法
//Swift 的字典使用 Dictionary<Key, Value> 定义，其中 Key 是字典中键的数据类型， Value 是字典中对应于这些 键所存储值的数据类型。

/*
 注意:
 一个字典的 Key 类型必须遵循 Hashable 协议，就像 Set 的值类型。
 */

//也可以用 [Key: Value] 这样简化的形式去创建一个字典类型。虽然这两种形式功能上相同，但是后者是首选

//创建一个空字典

//可以像数组一样使用构造语法创建一个拥有确定类型的空字典:
var namesOfIntegers = [Int: String]()
print(type(of: namesOfIntegers))
// namesOfIntegers 是一个空的 [Int: String] 字典 //创建了一个 [Int: String] 类型的空字典来储存整数的英语命名。它的键是 Int 型，值是 String 型。

//如果上下文已经提供了类型信息，我们可以使用空字典字面量来创建一个空字典，记作 [:] (中括号中放一个冒 号):
namesOfIntegers[15] = "fifteen"// namesOfIntegers 现在包含一个键值对
print(namesOfIntegers)
namesOfIntegers = [:]// namesOfIntegers 又成为了一个 [Int: String] 类型的空字典

//用字典字面量创建字典 字典字面量是一种将一个或多个键值对写作 Dictionary 集合的快捷途径。

//一个键值对是一个 key 和一个 value 的结合体。在字典字面量中，每一个键值对的键和值都由冒号分割。这些键 值对构成一个列表，其中这些键值对由方括号包含、由逗号分割:
//[key 1: value 1, key 2: value 2, key 3: value 3]

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]//airports 字典被声明为一种 [String: String] 类型，这意味着这个字典的键和值都是 String 类型

//和数组一样，我们在用字典字面量构造字典时，如果它的键和值都有各自一致的类型，那么就不必写出字典的类 型。 airports 字典也可以用这种简短方式定义:
var airports1 = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//因为这个语句中所有的键和值都各自拥有相同的数据类型，Swift 可以推断出 Dictionary<String, String> 是 ports 字典的正确类型。

//访问和修改字典 可以通过字典的方法和属性来访问和修改字典，或者通过使用下标语法。

//字典的只读属性获取字典的数据项数量:
print("The dictionary of airports contains \(airports.count) items.")

//使用布尔属性 isEmpty 作为一个缩写形式去检查 count 属性是否为 0 :
if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}

//也可以在字典中使用下标语法来添加新的数据项。可以使用一个恰当类型的键作为下标索引，并且分配恰当类型的新值:
airports["LHR"] = "London"
print(airports)
print(type(of: airports))

//也可以使用下标语法来改变特定键对应的值:
airports["LHR"] = "London ---"

//作为另一种下标方法，字典的 updateValue(_:forKey:) 方法可以设置或者更新特定键对应的值。就像上面所示的 下标示例， updateValue(_:forKey:) 方法在这个键不存在对应值的时候会设置新值或者在存在时更新已存在的 值。和上面的下标方法不同的， updateValue(_:forKey:) 这个方法返回更新值之前的原值。这样使得我们可以检 查更新是否成功。
//updateValue(_:forKey:) 方法会返回对应值的类型的可选值
//举例来说:对于存储 String 值的字典，这个函数会 返回一个 String? 或者“可选 String ”类型的值。
if let oldValue = airports.updateValue("Doubin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue)")
}
print(airports)

airports.updateValue("TestValue", forKey: "TestKey")
print(airports)

//也可以使用下标语法来在字典中检索特定键对应的值。因为有可能请求的键没有对应的值存在，字典的下标 访问会返回对应值的类型的可选值。如果这个字典包含请求键所对应的值，下标会返回一个包含这个存在值的可 选值，否则将返回 nil :
if let airportName = airports["DUB"] {
    print(airportName)
} else {
    print("no exist")
}

//还可以使用下标语法来通过给某个键的对应值赋值为 nil 来从字典里移除一个键值对:
airports["Delete"] = "DeleteValue"
print(airports)
airports["Delete"] = nil
print(airports)

//此外， removeValue(forKey:) 方法也可以用来在字典中移除键值对。这个方法在键值对存在的情况下会移除该键 值对并且返回被移除的值或者在没有值的情况下返回 nil :
if let removeValue = airports.removeValue(forKey: "TestKey") {
    print(removeValue)
} else {
    print("no exist")
}

//字典遍历 可以使用 for-in 循环来遍历某个字典中的键值对 每一个字典中的数据项都以 (key, value) 元组形式返 回，并且我们可以使用临时常量或者变量来分解这些元组
for (airportCode, airportName) in airports {
    print("airportCode: \(airportCode), airportName: \(airportName)")
}

//通过访问keys或者values属性，我们也可以遍历字典的键或者值:
for airportCode in airports.keys {
    print(airportCode)
}

for airportName in airports.values {
    print(airportName)
}

//Swift 的字典类型是无序集合类型。为了以特定的顺序遍历字典的键或值，可以对字典的keys或   values属性使用sorted()方法。
for airportCode in airports.keys.sorted() {
    print(airportCode)
}

for airportName in airports.values.sorted() {
    print(airportName)
}

//keys
var airportArray = [String]()
print(airportArray)

for airportCode in airports.keys {
    airportArray.append(airportCode)
}
print(airportArray)

//values
var airportValues = [String]()
print(airportValues)
for airportName in airports.values {
    airportValues.append(airportName)
}
print(airportValues)
