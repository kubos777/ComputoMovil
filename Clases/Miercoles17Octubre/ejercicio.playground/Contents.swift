//: Playground - noun: a place where people can play

import Foundation

/////////////////
// CLOSURE MAP //
/////////////////


let names = ["Marduk","Adriana","Rodrigo","Samantha"]
var fullNames: [String] = []
var fullNames2: [String] = []
var fullNames3: [String] = []

for name in names {
    let fullName = name + " Perez"
    fullNames.append((fullName))
}

fullNames2 = names.map{ (cadena) in
    return cadena + " Perez"
}

fullNames3 = names.map{ $0 + " Perez" }

print(fullNames)
print(fullNames2)
print(fullNames3)


////////////////////
// CLOSURE FILTER //
////////////////////

let numbers = [4,8,15,16,32,54,2,5,6]

let filtro = numbers.filter { (numero) -> Bool in
    return numero < 20
}

let filtro2 = numbers.filter { $0 < 20 }

print(filtro)
print(filtro2)

////////////////////
// CLOSURE REDUCE //
////////////////////

let reductor = numbers.reduce(0) { (current,nextValue) -> Int in
    return current + nextValue
    
}

let reductor2 = numbers.reduce("") { (current,nextValue) -> String in
    return "\(current)\(nextValue)"
    
}

let reductor3 = numbers.reduce("") { "\($0)\($1)"}
let reductor4 = numbers.reduce(0) { $0 + $1 }

print(reductor)
print(reductor2)
print(reductor3)
print(reductor4)











