//
//  imageDownloader.swift
//  delegateImage
//
//  Created by Usuario invitado on 22/10/18.
//  Copyright © 2018 kubos. All rights reserved.
//

import Foundation
import UIKit

class ImageDownloader{
    var imageUrl:String
    var image: UIImage?
    var view:ViewController
    
    init(imageUrl:String,view:ViewController) {
        self.imageUrl = imageUrl
        self.view = view
    }
    
    func downloadImage(){
        //Aquí va todo para bajar la imagen
        DispatchQueue.global(qos: DispatchQoS.QoSClass.background).async {
            guard
                let imageURL = URL(string: self.imageUrl),
                let imageData = NSData(contentsOf: imageURL),
                let image = UIImage(data: imageData as Data) else{return}
        }
        
        
    }
    func didDownloadImage(){
        //Aquí va qué hacer después de que se bajó la imagen
    }
}
