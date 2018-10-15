//: Playground - noun: a place where people can play

import UIKit

protocol FullyNamed {
    var fullName: String { get }
    func sayFullName()
}


struct Person: FullyNamed {
    var firstName: String
    var lastName: String
    var fullName: String {
        return "Nombre: \(firstName) Apellido: \(lastName)"
    }
    func sayFullName() {
        print(fullName)
    }
}

let yomero = Person(firstName: "Jorge", lastName: "Chávez")

print(yomero)

