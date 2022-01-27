//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Chris Bond on 1/21/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!", "You Are Da Bomb!", "You Are Great!", "Fabulous? That's You","When the Genius Bar Needs Help they Call You", "You've got the design skills of Johnny Ive"]
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in:0...totalNumberOfImages))")
        
        
//        messageLabel.text = messages[messageNumber]
//        messageNumber += 1
//        if messageNumber == messages.count{
//            messageNumber = 0
//        }

        print(imageNumber)
        //let imageName = "image" + String(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
        if imageNumber == 10 {
            imageNumber = 0
        }
        

            //        let awesomeMessage = "You Are Awesome!"
            //        let bombMessage = "You Are Da Bomb!"
            //        let greatMessage = "You Are Great!"
            //
            //        if messageLabel.text == awesomeMessage {
            //            messageLabel.text = greatMessage
            //            imageView.image = UIImage(named: "image0")
            //        } else if  messageLabel.text == greatMessage{
            //            messageLabel.text = bombMessage
            //            imageView.image = UIImage(named: "image1")
            //        } else {
            //            messageLabel.text = awesomeMessage
            //            imageView.image = UIImage(named: "image2")
            //
            //        }
    }
    
}

