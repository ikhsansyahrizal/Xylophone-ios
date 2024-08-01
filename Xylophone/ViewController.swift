//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        
        switch sender.currentTitle {
        case "C" : playSound(sound: "C")
        case "D" : playSound(sound: "D")
        case "E" : playSound(sound: "E")
        case "F" : playSound(sound: "F")
        case "G" : playSound(sound: "G")
        case "A" : playSound(sound: "A")
        case "B" : playSound(sound: "B")
        default : break
        }
        
    }
    
    
    func playSound(sound: String) {
        guard let path = Bundle.main.path(forResource: sound, ofType:"wav") else {return}
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }

}

