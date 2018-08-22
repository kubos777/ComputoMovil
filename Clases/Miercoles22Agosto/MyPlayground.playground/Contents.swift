//: Playground - noun: a place where people can play

import UIKit

var str = "Qué hongo?"
//Los prints se utilizan para enviar mensajes de advertencia o error en la consola
//print(str)

//Funciones

func displayNameAge(){
    print("My name is Jorge Chávez 👽")
    print("I'm 22 years old")
}

//displayNameAge()

func firstStrophe(){
    print("""
            Rosemary
            Heaven restores you in life
            You're coming with me
            Through the aging, the fearing, the strife
            It's the smiling on the package
            It's the faces in the sand
            It's the thought that holds you upwards
            Embracing me with two hands
            Right will take you places
            Yeah maybe to the beach
            When your friends they do come crying
            Tell them now your pleasure's set up on slow-release
    """)
}

func chorusSong(){
     print("\n\n")
    print("""
        Hey wait
        Great smile
        Sensitive to faith, not denial
        But hey whose on trial?
""")
    print("\n\n")
}

func secondStrophe(){
    print("""
        It took a life span with no cellmate
        The long way back
        Sandy, why can't we look the other way?
        We speaks about travel
        Yeah, we think about the land
        We smart like all peoples
        Feeling real tan
        I can take you places
        Do you need a new man?
        Wipe the pollen from the faces
        Make revision to a dream while you wait in the van
""")
}

//firstStrophe()
//chorusSong()
//secondStrophe()
//chorusSong()

//Parámetros

func hello(name:String,lastName:String) -> String{
    //print("Hello " + name + lastName + "👻")
    //Con interpolación
    //print("Hello \(name)\(lastName)")
    return "Hello \(name)\(lastName)"+"👽"
}

let name = "Jorge"

let completeName1 = hello(name: "kubOS ",lastName: "777 ")
let completeName2 = hello(name: "Jorge ",lastName: " Chávez ")
let completeName3 = hello(name: "Marduk ",lastName: " Perez de Lara ")

//print(completeName1)
//print(completeName2)
//print(completeName3)


func substract(oneNumber:Int,fromAnotherNumber: Int) -> Int{
    return oneNumber - fromAnotherNumber
}

let result = substract(oneNumber: 999, fromAnotherNumber: 10)

print("Resultado de la resta: \(result)")

//Función que recibe y no devuelve
//Función que no recibe y no devuelve
//Función que recibe pero no devuelve
//Función que recibe y devuelve









































