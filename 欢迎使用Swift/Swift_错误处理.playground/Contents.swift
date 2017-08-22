//: Playground - noun: a place where people can play

import UIKit

//使用采用Error协议的类型来表示错误
enum PrinterError: Error {
    case OutOfPaper
    case NoToner
    case OnFire
}

//使用throw来抛出一个错误并使用throws来表示一个可以抛出错误的函数。如果在函数中抛出一个错误，这个函数会立刻返回并且调用该函数的代码会进行错误处理。
func send(job: Int, printerName: String) throws -> String {
    if printerName == "Never has NoToner" {
        throw PrinterError.NoToner
    } else if printerName == "outOfPaper" {
        throw PrinterError.OutOfPaper
    } else if printerName == "onFire" {
        throw PrinterError.OnFire
    }
    return "Job sent"
}

//有多种方式可以用来进行错误处理。一种方式是使用do-catch。 在do代码块中，使用try来标记可以抛出错误的代码。在catch代码中，除非你另外命名，否则错误会自动命名为error。
do {
    let printerResponse = try send(job: 1040, printerName: "打印机")
    print(printerResponse)
} catch {
    print(error)
}

//可以使用多个catch块来处理特定的错误。参照switch中的case风格来写catch
do {
    let printerResponse = try send(job: 22, printerName: "onFire")
    print(printerResponse)
} catch PrinterError.OnFire {
    print("onFire----")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError)")
} catch {
    print(error)
}

//另一种处理错误的方式使用try?将结果转换为可选的。如果函数抛出错误，该错误会被抛弃并且结果为nil。 否则的话，结果会是一个包含函数返回值的可选值。
let printerSuccess = try? send(job: 55, printerName: "大街上")
let printerFailure = try? send(job: 42512, printerName: "Never has NoToner")

//使用defer代码块来表示在函数返回前，函数中最后执行的代码。无论函数是否会返回错误，这段代码都将执行。使用defer，可以把函数调用之初就要执行的代码和函数调用结束时的扫尾代码写在一起，虽然这两者的执行时机截然不同。
var fridgeIsOpen = false
let fridgeContent = ["eggs", "milk", "leftovers"]

func fridgeContains(food: String) -> Bool {
    
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    
    return result
}
fridgeContains(food: "banana")
print(fridgeIsOpen)
