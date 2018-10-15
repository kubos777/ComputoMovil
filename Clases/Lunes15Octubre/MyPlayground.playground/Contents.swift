//: Playground - noun: a place where people can play
import UIKit

/////////////
//PROTOCOLS//
/////////////

class Shoe: CustomStringConvertible {
    var description: String {
        return "“Shoe(color: \(color), size: \(size), hasLaces: \(hasLaces))"
    }
    
    let color: String
    let size: Int
    let hasLaces: Bool
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
}

let myShoe = Shoe(color: "Black", size: 12, hasLaces: true)
let yourShoe = Shoe(color: "Red", size: 8, hasLaces: false)
let grayShoe = Shoe(color: "Gray", size: 28, hasLaces: true)


print(myShoe)
print(yourShoe)
print(grayShoe)
