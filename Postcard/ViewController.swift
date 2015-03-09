//
//  ViewController.swift
//  Postcard
//
//  Created by Maor Leger on 3/5/15.
//  Copyright (c) 2015 MaorLeger. All rights reserved.
//

/*
    Note here:
    1. If you have outlet problems I feel bad for you son , but just inspect the outlet connections and remove any outlets that dont make sense
    2. enterMessagetextField.resignFirstResponder() - makes the keyboard go away somehow
    3. To make a label multiline - give it more space and set the lines = 0
*/

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        if (enterMessageTextField.hasText())
        {
            messageLabel.text = enterMessageTextField.text
            enterMessageTextField.text = ""
            messageLabel.hidden = false
            // remove the keyboard somehow... need to look into that a bit
            enterMessageTextField.resignFirstResponder()
            messageLabel.textColor = UIColor.redColor() // set the color to red
            mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        }
    }


}
