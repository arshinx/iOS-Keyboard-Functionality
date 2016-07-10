//
//  ViewController.swift
//  Controlling the Keyboard
//
//  Created by Arshin Jain on 7/6/16.
//  Copyright © 2016 Arshin Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // Outlets
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    
    // Actions
    @IBAction func buttonPressed(_ sender: AnyObject) {
        // Change Text
        label.text = textField.text
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textField.delegate = self
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // Close Keyboard
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }


}
