//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Chris Bond on 1/21/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 10
    var audioplayer: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
            do {
                try audioplayer = AVAudioPlayer(data: sound.data)
                audioplayer.play()
                
            } catch {
                print("😢 Error: \(error.localizedDescription) could not read")
            }
        } else {
            print("😢 Error could not read")
        }
    }
    func nonRepeatingRandoms(originalNumber: Int, upperLimit: Int)-> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!", "You Are Da Bomb!", "You Are Great!", "Fabulous? That's You","When the Genius Bar Needs Help they Call You", "You've got the design skills of Johnny Ive"]
        
        
        messageNumber = nonRepeatingRandoms(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]

        imageNumber = nonRepeatingRandoms(originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandoms(originalNumber: soundNumber, upperLimit: totalNumberOfImages-1)
        playSound(name: "sound\(soundNumber)")
    }
}

