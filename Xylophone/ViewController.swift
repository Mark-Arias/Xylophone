//
//  ViewController.swift
//  Xylophone
//
// Mark A.
// 9.6.23

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { _ in
            sender.alpha = 1.0
        }
        sender.alpha = 0.5
        
        playSound(soundName: (sender.titleLabel?.text)!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}


