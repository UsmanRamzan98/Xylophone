//
//  ViewController.swift
//  EggTimer
//
//  Created by Usman Ramzan on 08/07/2019.


import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

  
    @IBAction func keyButtonPressed(_ sender: UIButton) {
        print(sender.currentTitle!)
        
        playSound(SoundName: sender.currentTitle!)
    }
    
    func playSound(SoundName: String){
        let url = Bundle.main.url(forResource: SoundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    
    
    

}

