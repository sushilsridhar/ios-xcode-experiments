//
//  ViewController.swift
//  ToDo
//
//  Created by Sushil  on 12/11/17.
//  Copyright © 2017 Elegant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextInput: UITextField!
    @IBOutlet weak var TextOutput: UITextView!
    
    var items:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Add(_ sender: Any) {
        
        if(TextInput.text! == "") {
            return
        }
        items.append(TextInput.text!)
        TextOutput.text = ""
        
        for item in items {
            TextOutput.text.append("\(item)\n")
        }
        TextInput.text = ""
        TextInput.resignFirstResponder()
    }
   
}

