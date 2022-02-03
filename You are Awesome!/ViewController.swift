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
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    var audioplayer: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!", "You Are Da Bomb!", "You Are Great!", "Fabulous? That's You","When the Genius Bar Needs Help they Call You", "You've got the design skills of Johnny Ive"]
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]

        var newImageNumber: Int
         repeat {
            newImageNumber = Int.random(in:0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "sound0"){
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
    
}

