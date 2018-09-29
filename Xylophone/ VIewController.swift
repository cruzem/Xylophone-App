//
//  ViewController.swift
//  Xylophone
//
//  Created by Manny

import AVFoundation
import UIKit


class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    var selectedSoundFileName = ""
    var soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
       selectedSoundFileName = soundArray[sender.tag]
        
        playSound()
    
    }
    
    func playSound() {
        
            let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }

        
    

}

