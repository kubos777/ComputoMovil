//
//  ViewController.swift
//  LabTunes
//
//  Created by Usuario invitado on 11/21/18.
//  Copyright © 2018 kubos777. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MusicController.fetchMusic (search: "Swift") { (items) in
            DispatchQueue.main.async{
            debugPrint(items ?? "No items!")
            }
            }


}

}
