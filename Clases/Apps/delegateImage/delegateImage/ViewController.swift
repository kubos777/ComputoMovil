//
//  ViewController.swift
//  delegateImage
//
//  Created by Usuario invitado on 22/10/18.
//  Copyright © 2018 kubos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var loadingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isHidden = true
        loadingLabel.isHidden = true
        let imageUrl: String = "https://www.cinemascomics.com/wp-content/uploads/2018/08/preocupacion-rick-y-morty-temporada-4.jpg"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

