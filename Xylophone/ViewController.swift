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
    var player : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(sender)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
        
    }
    
    func playSound(_ x: UIButton) {
        let url = Bundle.main.url(forResource: x.currentTitle, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
        
            player.play()
                    
        }

    }



