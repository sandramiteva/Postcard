
//
//  ViewController.swift
//  Postcard
//
//  Created by Sandra Miteva on 10/25/15.
//  Copyright © 2015 Sandra Miteva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var sendMessageButton: UIButton!
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonClick(sender: UIButton) {
        labelMessage.text = messageTextField.text
        labelMessage.hidden = false
        
        sendMessageButton.setTitle("Message Sent", forState: .Normal)
        messageTextField.resignFirstResponder()
        messageTextField.text = ""
        
        labelName.text = nameTextField.text
        labelName.hidden = false
        nameTextField.text = ""
        nameTextField.resignFirstResponder()
        
        sendMessageButton.backgroundColor = UIColor.blueColor()
        sendMessageButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
    }

}

