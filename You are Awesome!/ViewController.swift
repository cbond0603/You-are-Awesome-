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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let awesomeMessage = "You Are Awesome!"
        let bombMessage = "You Are Da Bomb!"
        let greatMessage = "You Are Great!"
        
        
        
        if messageLabel.text == awesomeMessage {
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "image0")
        } else if  messageLabel.text == greatMessage{
            messageLabel.text = bombMessage
            imageView.image = UIImage(named: "image1")
        } else {
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "image2")
            
        }
    }
    
}

