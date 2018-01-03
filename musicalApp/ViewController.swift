//
//  ViewController.swift
//  musicalApp
//
//  Created by Suraj B on 12/27/17.
//  Copyright © 2017 CZSM. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    var player:AVAudioPlayer = AVAudioPlayer()
    
    
    @IBAction func play(_ sender: Any) {
        player.play()
        
    }
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func stop(_ sender: Any) {
        player.stop()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let audioPath = Bundle.main.path(forResource: "Mersal", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{}
        
    }
    
}//class
