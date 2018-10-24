//
//  ViewController.swift
//  delegateImage
//
//  Created by Usuario invitado on 22/10/18.
//  Copyright © 2018 kubos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ImageDownloaderDelegate {
    
    func didFinishDownload(_ sender: ImageDownloader) {
        
        imageView.image = sender.image
        imageView.isHidden = false
        loadingLabel.isHidden = false
        activityIndicator.isHidden = true
        loadingLabel.text = "Imagen chidori"
    }
    

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var loadingLabel: UILabel!
    var imageDownloader: ImageDownloader?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isHidden = true
        loadingLabel.isHidden = true
        //let imageUrl: String = "https://www.cinemascomics.com/wp-content/uploads/2018/08/preocupacion-rick-y-morty-temporada-4.jpg"
        let imageUrl: String = "https://images.wallpaperscraft.com/image/dog_spotted_mountains_129256_1280x720.jpg"
        imageDownloader = ImageDownloader(imageUrl: imageUrl)
        imageDownloader?.delegate = self
        imageDownloader?.downloadImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

