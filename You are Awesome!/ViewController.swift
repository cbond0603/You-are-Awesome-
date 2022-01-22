//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Chris Bond on 1/21/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🇨🇮ViewDidLoad has run")
        messageLabel.text = "Fabulous Thats You!"
        // Do any additional setup after loading the view.
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("🦅 The Message Button was pressed")
        messageLabel.text = "You Are Awesome!"
    }
    
}

