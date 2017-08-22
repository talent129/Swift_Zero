//: Playground - noun: a place where people can play

import UIKit

//使用enum来创建一个枚举。 就像类和其他所有命名类型一样，枚举可以包含方法。
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue

//默认情况下， Swift按照从0开始每次加1的方式为原始值赋值，不过也可以通过显式赋值进行改变。 上面的例子中 Ace被显式赋值为1， 剩下的原始值会按照顺序赋值。 也可使用浮点数或字符串作为枚举的原始值。使用rawValue来访问一个枚举成员的原始值。

//使用init?(rawValue:)初始化构造器在枚举值和原始值之间进行转换
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

//枚举的成员值是实际值 并不是原始值的另一种表达方法。实际上，如果没有比较有意义的原始值 就不需要提供原始值
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
    //给Suit增加color()方法 对Spades Clubs返回black 对Hearts Diamonds返回red
    func color() -> String {
        switch self {
        case .Spades, .Clubs:
            return "black"
        case .Hearts, .Diamonds:
            return "red"
        }
    }
    
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
let redColor = hearts.color()

let clubs = Suit.Clubs
let blackColor = clubs.color()

//注意, 有两种方式可以引用Hearts成员: 给hearts常量赋值时, 枚举成员Suit.Hearts需要用全名来引用 因为常量没有显式指定类型。 在switch里， 枚举成员使用.Hearts来引用，因为self的值已经知道是一个suit. 已知变量类型的情况下可以使用缩写

//一个枚举成员的实例可以有实例值. 相同枚举成员的实例可以有不同的值 创建实例的时候传入值即可。实例值和原始值是不同的: 枚举成员的原始值对于所有实例都是相同的 而且是在定义枚举的时候设置原始值

//考虑从服务器获取日出、日落时间 服务器会返回正常结果或错误信息
enum ServerResponse {
    case Unknown(String)
    case Result(String, String)
    case Failure(String)
}
let unknown = ServerResponse.Unknown("unknown")
let success = ServerResponse.Result("6:00 am", "7:00 pm")
let failure = ServerResponse.Failure("server failure")
switch unknown {
case let .Unknown(unk):
    print("Unknown...\(unk)")
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)"
case let .Failure(message):
    print("Failure...\(message)")
}
//注意日升 日落时间是如何从ServerResponse中提取到并与Swift的case相匹配的

//使用struct来创建一个结构体。 结构体和类有很多相同的地方 比如方法和构造器。它们之间最大的一个区别就是结构体是传值，类是传引用。
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
