//: Playground - noun: a place where people can play

import UIKit

func sum(numbers:[Int]) -> Int{
    var total = 0
    for number in numbers{
        total+=number
    }
    //Código necesario para sumar los números del arreglo
    return total
}


let sumClosure = {(numbers:[Int]) -> Int in
    var total = 0
    for number in numbers{
        total+=number
    }
    //Código necesario para sumar los números del arreglo
    return total
    
}
