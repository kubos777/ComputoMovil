//: Playground - noun: a place where people can play

import UIKit

//Arreglos(Puros, de un sólo tipo de dato)

let devices = ["iPhone","iPad","iPod","iMac"]

print("Devices[1] " + devices[1])


let tareas = ["Lavar","Aspirar","Barrer","Trapear"]

let minutosPorTarea = 15

let numeroTareas = tareas.count

let tiempoTotal = minutosPorTarea * numeroTareas

print("Tiempo total \(tiempoTotal)")



//Ciclo for

var amigos = ["Papu","Pepe","Moni"]

for friend in amigos {
    let sparklyFriend = ":+\(friend)"
    print("¡Oye, \(sparklyFriend), te invito a mi fiesta el sabado!")
}

//Arreglo vacío
var frutas = [String]()

//Anotación de tipo

var arrayVacio: [String]

frutas.append("Limón")
frutas.append("Durazno")
frutas.append("Banana")
frutas.append("Uva")


frutas.insert("Fresa", at: 2)


for fruta in frutas{
    print(fruta)
}

var numeros = [1,2,3,4,5,6,7,8,9,0]
var suma = Int()

for numero in numeros {
    
    print(numero)
    
    
}

//removeAll,removeFirst y removeLast

//Estructuras


struct Cancion{
    
    let titulo:String
    let artist:String
    let duration:Int
    
    var duracionRea:String{
        let minutes = duration / 60
        let seconds = duration % 60
        
        return "\(minutes)m \(seconds)s"
    }
}

var rola = Cancion(titulo: "La china", artist:"Porter",duration:5)
var rola2 = Cancion(titulo: "Chance", artist:"Ataque 77",duration:4)

print(rola)

print("La rola se llama \(rola.titulo) y es de  \(rola.artist) con una duración de \(rola.duracionRea)")
print("La rola se llama \(rola2.titulo) y es de  \(rola2.artist) con una duración de \(rola2.duration)")

//El var y let son las que mandan a nivel instancia


//Podemos meter métodos a las estructuras



