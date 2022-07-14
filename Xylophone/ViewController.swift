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

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        //find sender.color
        //call changeColor && delay 2 seconds
        playSound(sounds: sender.currentTitle!);
    }
    func playSound(sounds:String) {
        let url = Bundle.main.url(forResource: sounds , withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()

        }
    // func changeColor by half when pressed
}

