//
//  ViewController.swift
//  Postcardd
//
//  Created by Igneous on 11/12/14.
//  Copyright (c) 2014 Igneous Fire. All rights reserved.
//

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
      messageLabel.hidden = false /* unhiding the label */
      messageLabel.text = enterMessageTextField.text /* display message from text field as label */
        messageLabel.textColor = UIColor.redColor()
        
      enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
     
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        /* messageLabel.text = "Hello World" */
    }
}

