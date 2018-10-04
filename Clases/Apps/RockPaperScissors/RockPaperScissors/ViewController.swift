//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Usuario invitado on 19/9/18.
//  Copyright © 2018 kubos777. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Conexion de los botones
    @IBOutlet weak var alien: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func resetBoard(){
    
        alien.text = "👽"
        status.text = "¿Piedra, papel o tijeras?"
        rockButton.isHidden = false
        rockButton.isEnabled = true
        paperButton.isHidden = false
        paperButton.isEnabled = true
        scissorsButton.isHidden = false
        scissorsButton.isEnabled = true
        
    }
    
    func play(_ playerTurn: Sign){
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        
        let opponent = randomSign()
        alien.text = opponent.emoji
        
        let gameResult = playerTurn.takeTurn(opponent)
        
        switch gameResult {
        
        case.start:
            status.text = "¿Piedra, papel o tijeras?"
        case.draw:
            status.text = "It's draw 🤔"
        case.lose:
            status.text = "I'm sorry, you lose 🤪"
        case.win:
            status.text = "Congratulations! You win 😬"
            
        }
        
        switch playerTurn {
        case .rock:
            
            rockButton.isHidden = false
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            paperButton.isHidden = false
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = false
        }
        playAgainButton.isHidden = false
        
 
    }
    
    @IBAction func rockPressed(_ sender: Any) {
        play(Sign.rock)
    }
    
    @IBAction func paperPressed(_ sender: Any) {
        play(Sign.paper)
    }
    
    @IBAction func scissorsPressed(_ sender: Any) {
        play(Sign.scissors)
    }
    
    @IBAction func playAgainPressed(_ sender: Any) {
        resetBoard()
    }
}

