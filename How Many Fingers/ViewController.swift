//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Wei lun Lai on 12/6/15.
//  Copyright © 2015 DigitalCrafts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet var userGuessTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func guess(sender: AnyObject) {
        let diceRoll = String(arc4random_uniform(6))
        
        if diceRoll == userGuessTextField.text{
            resultLabel.text = "You're right!"
        }else{
            resultLabel.text = "Wrong! it was a " + diceRoll
        }
        
    }
    
}

