//
//  ViewController.swift
//  Navigations
//
//  Created by Usuario invitado on 24/9/18.
//  Copyright © 2018 kubos777. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Para regresar al menú de la forma correcta
    @IBAction func unwindToFirst(unwindSegue: UIStoryboardSegue){
        
        }

    @IBOutlet weak var textField: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print("Se ejecuto el segue en red")
        segue.destination.navigationItem.title = textField.text
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}

