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
    
    var delegate: ImageDownloaderDelegate?
    
    init(imageUrl:String) {
        self.imageUrl = imageUrl
    }
 //Va por la imagen para descargar
    func downloadImage(){
        //Aquí va todo para bajar la imagen
        DispatchQueue.global(qos: DispatchQoS.QoSClass.background).async {
            guard
                let imageURL = URL(string: self.imageUrl),
                let imageData = NSData(contentsOf: imageURL),
                let image = UIImage(data: imageData as Data) else{return}
                self.image = image
                print("¡La imagen ya se descargó y se seteo en la instancia!")
            DispatchQueue.main.async {
                self.didDownloadImage()
            }
        }
        
        
    }
    func didDownloadImage(){
        //Aquí va qué hacer después de que se bajó la imagen
        print("Ahora cómo hago el cambio de las propiedades del ViewController")
        self.delegate?.didFinishDownload(self)
    }
}
