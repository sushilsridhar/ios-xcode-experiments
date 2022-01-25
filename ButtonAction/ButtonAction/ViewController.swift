//
//  ViewController.swift
//  ButtonAction
//
//  Created by Sushil  on 17/09/17.
//  Copyright © 2017 Elegant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayMessage: UILabel!

    func display(msg : String) {
        
        displayMessage.text = msg
    }
    
    @IBAction func displayHello(_ sender: UIButton) {
        display(msg :"Hello World :D")
    }
    
    
    @IBAction func displayThanks(_ sender: UIButton) {
        display(msg :"Thanks World :P")

    }
    
    //var name:String!
    
    var name:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name = "Jobs"
        print(name!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

