//
//  Sign.swift
//  RockPaperScissors
//
//  Created by kubOS on 03/10/18.
//  Copyright © 2018 kubos777. All rights reserved.
//

import Foundation
import GameplayKit // Nos ayudará a generar el número aleatorio

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2) //Número aleatorio entre 0 y 2 [ya que es piedra papel o tijera]

//Enumerador para las opciones de piedra papel o tijera

enum Sign{
    case rock,paper,scissors
    
    var emoji:String{
        switch self {
        case .rock:
            return "👊🏽"
        case .paper:
            return "🤚🏽"
        case .scissors:
            return "✌🏽"
        //default:
        //    return "No hace nada 👽"
        }
    }
    
    //Para asignar el turno del jugador:
    
    func takeTurn(_ opponent: Sign) -> GameState{
        
        switch self {
        
        case .rock:
            switch opponent{
            case .rock:
                return GameState.draw
            case .paper:
                return GameState.lose
            case .scissors:
                return GameState.win
            }
        case .paper:
            switch opponent{
            case .rock:
                return GameState.win
            case .paper:
                return GameState.draw
            case .scissors:
                return GameState.lose
            }
        case .scissors:
            switch opponent{
            case .rock:
                return GameState.lose
            case .paper:
                return GameState.win
            case .scissors:
                return GameState.draw
            }

        }
        
    }
    
    
}

//Función para generar el tiro/señal aleatoria

func randomSign() -> Sign{
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    }
    else if sign == 1 {
        return .paper
    }
    else {
        return .scissors
    }
}







































