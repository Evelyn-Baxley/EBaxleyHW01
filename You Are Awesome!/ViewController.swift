//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by CSOM on 1/21/17.
//  Copyright © 2017 CSOM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
 
    @IBOutlet weak var messageButton: UIButton!
    
    var lastIndex = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Fantastic!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "You Are Awesome!",
                        "When the Genius Bar needs help, they call you!",
                        "You Brighten My Day!",
                        "I can't wait to use your app!",
                        "You are da Bomb"]
        
        var randomIndex: Int = Int(arc4random_uniform(UInt32(messages.count)))
        
        while randomIndex == lastIndex {
            randomIndex = Int(arc4random_uniform(UInt32(messages.count)))
        }
        messageLabel.text = messages[randomIndex]
        
        lastIndex=randomIndex
        
        /*
        messageLabel.text = messages[index]
        
        if index == messages.count - 1 {
            index = 0
        } else {
            index = index + 1
        }
        */
        
        /*
        let message1 = "You Are Fantastic!!!!"
        let message2 = "You Are Great!"
        let message3 = "You Are Amazing!"
        
        if messageLabel.text == message1 {
            messageLabel.text = message2
        } else if messageLabel.text == message2 {
            messageLabel.text = message3
        } else {
            messageLabel.text = message1
        }
 */
    }
 
    }
