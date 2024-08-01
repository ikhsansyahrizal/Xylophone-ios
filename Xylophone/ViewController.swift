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

    @IBAction func keyPressedC(_ sender: UIButton) {
        playSound(sound: "C")
    }
    
    
    @IBAction func keyPressedD(_ sender: UIButton) {
        playSound(sound: "D")
    }
    
    @IBAction func keyPressedE(_ sender: UIButton) {
        playSound(sound: "E")
    }
    
    @IBAction func keyPressedF(_ sender: UIButton) {
        playSound(sound: "F")
    }
    
    @IBAction func keyPressedG(_ sender: UIButton) {
        playSound(sound: "G")
    }
    
    @IBAction func keyPressedA(_ sender: UIButton) {
        playSound(sound: "A")
    }
    
    @IBAction func keyPressedB(_ sender: UIButton) {
        playSound(sound: "B")
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

