//
//  ViewController.swift
//  ColorMix
//
//  Created by kubos777 on 3/9/18.
//  Copyright © 2018 kubos777. All rights reserved.
//
//Outlet: Crea referencia, en la que se nombra al elemento con un id y a través de el
//se va a poder modificar sus atributos(background, tamaño, forma etc.)
//Accion: El usuario hace algo para que funcione
import UIKit

class ViewController:
    UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    //Se ejecuta cuando ya esta pintada/construida la interfaz
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        updateControls()
        updateColor()
        
    }
    
    func updateControls(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    func updateColor(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn{
            //I'ts not a cast
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        
        
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)

    }
    
    @IBAction func switchChanged(_ sender: Any) {
        
        updateControls()
        updateColor()
        
        
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    
    
    @IBAction func resetColor(_ sender: Any) {
        
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        updateControls()
        updateColor()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

