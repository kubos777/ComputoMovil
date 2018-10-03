//
//  ViewController.swift
//  TableView
//
//  Created by Usuario invitado on 3/10/18.
//  Copyright © 2018 kubos777. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var listaAlumnos: [String] = ["Jorge", "Luis","Marduk","German","Yo otra vez"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //¿Cuántos renglones quiéres?
        //return 4
        return listaAlumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //IndexPath contiene la dirección de la celda
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath )
        
        cell.textLabel?.text = listaAlumnos[indexPath.row]
        
        //cell.backgroundColor = UIColor.black
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath.row)
        let celda = tableView.cellForRow(at: indexPath)
        
        celda?.accessoryType = .checkmark
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            //Borrar del arreglo
            listaAlumnos.remove(at: indexPath.row)
            //Actualizar la tabla
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //Closure
        let shareAction = UIContextualAction(style: .normal, title: "Compartir") { (UIContextualAction, UIView, (Bool) -> Void) in
            
        }
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [shareAction])
        
        return swipeConfiguration
    }

    @IBAction func unwindprepare(for segue: UIStoryboardSegue){
        
    }

}
























