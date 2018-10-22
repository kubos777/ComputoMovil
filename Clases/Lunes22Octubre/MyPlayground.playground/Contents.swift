//: Playground - noun: a place where people can play

import UIKit

class Button{
    let title:String
    var delegate:ButtonDelegate?
    init(title:String) {
        self.title = title
    }
    func tapped(){
        //print(self.title)
        //Código cuando esto pase(Delegando al controller
        self.delegate?.userTappedButton(self)
    }
}



protocol ButtonDelegate{
    func userTappedButton(_ button:Button)
    
}

class Song{
    var title:String
    init(title:String) {
        self.title=title
    }
}

class MusicController: ButtonDelegate{
    //Implementación de la delegación
    func userTappedButton(_ button: Button) {
        if button.title == "Play"{
            playSong(playlist.last!)
        } else if button.title == "Pause"{
            pauseSong()
        }
    }
    
    func playSong(_ song:Song){
        print("Now playing \(song.title)")
    }
    func pauseSong(){
        print("Paused current song")
    }
    
}



let playlist:[Song] = [Song(title: "La chona"),Song(title: "Pasito perrón"),Song(title: "La cumbia del marcianito")]

let musicController = MusicController()

let startMusicButton = Button(title: "Play")
startMusicButton.delegate = musicController

let pauseMusicButton = Button(title: "Pause")
pauseMusicButton.delegate = musicController


startMusicButton.tapped()
pauseMusicButton.tapped()























