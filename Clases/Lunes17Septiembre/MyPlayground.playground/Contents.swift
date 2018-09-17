//: Playground - noun: a place where people can play

import UIKit

//Enumeraciones
enum LunchChoice{
    case pasta,burger,papas
    
}

func cookLunch(_ choice: LunchChoice) ->String{
    //if choice == .pasta{
    //    return "🍝"
    //} else if choice == .burger {
    //    return "🍔"
    //}
    //return "Nunca entrará aquí prro! >:V"
    switch choice {
    case .burger:
        return "🍔"
    case .pasta:
        return "🍝"
    case .papas:
        return "🍟"
        

    }

}

let choiceOne = cookLunch(.burger)
let choiceTwo = cookLunch(.papas)

//cookLunch(choice: "Fish and Chips")
//cookLunch(choice: "Chocolate")
//cookLunch(choice: "Tu mama prro!")




let choiceCarol: LunchChoice = .pasta
let choiceJorge: LunchChoice = .pasta

import Foundation

enum  Team{
    case red,blue
}
enum Position{
    case quarterback,fullback,tightEnd,wideReceiver
}
//Enumeración jugador

struct Player{
    var name:String
    var skillLevel:Int
    var team: Team
    var position:Position
}

let mPlayer = Player(name: "Jorge", skillLevel: 100,team: .red ,position: .quarterback)


if choiceJorge == choiceCarol{
    print("Comerán lo mismo! :D")
} else{
    print("Comerán cosas diferentes")
}
//Enumeración calidad

enum Quality{
    case bad,poor,acceptable,good,great,horrible
}

let quality = Quality.acceptable


switch quality {
case .bad:
    print("Was terrible")
case .poor:
    print("That's not good enough")
case .great:
    print("Wow this indredible!")
case .acceptable,.good:
    print("Todo chido krnal")
case .horrible:
    print("I'm sorry man!")
}


//Cartas

enum Suit{
    case spades,hearts,diamonds,clubs
    var symbol:String{
        switch self {
        case .spades:
            return "🀄️"
        case .hearts:
            return "♥️"
        case .diamonds:
            return "♦️"
        case .clubs:
            return "♣️"
        }
    }
    var rank: Int{
        switch self {
        case .spades:
            return 9
        case .hearts:
            return 8
        case .diamonds:
            return 3
        case .clubs:
            return 6
        }
    }
    func beats(_ otherSuit: Suit)-> Bool{
        return self.rank > otherSuit.rank
    }
}

let oneSuit = Suit.spades
let otherSuit = Suit.clubs

oneSuit.symbol

oneSuit.beats(.diamonds)

//Juego 21 paps





















