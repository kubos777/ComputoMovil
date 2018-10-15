//: Playground - noun: a place where people can play

import UIKit

struct Employee: Equatable, Comparable {
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    static func ==(lhs: Employee, rhs: Employee) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName ==
            rhs.lastName && lhs.jobTitle == rhs.jobTitle &&
            lhs.phoneNumber == rhs.phoneNumber
    }
    static func < (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.lastName < rhs.lastName
    }
}


let employee1 = Employee(firstName: "Jorge",lastName: "Chávez",jobTitle: "Software Engineering",phoneNumber: "123456789")
let employee2 = Employee(firstName: "Jorge",lastName: "Bávez",jobTitle: "Software Engineering",phoneNumber: "123456789")

print(employee1>employee2)
