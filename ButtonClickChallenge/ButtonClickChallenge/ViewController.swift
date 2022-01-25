//
//  ViewController.swift
//  ButtonClickChallenge
//
//  Created by Sushil  on 17/09/17.
//  Copyright © 2017 Elegant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var message: UILabel!
    
    var noOfHits:Int = 0

    @IBAction func buttonClick(_ sender: UIButton) {
        
        noOfHits = noOfHits + 1
        
        if(noOfHits >= 10)
        {
            message.text = "Happy New Year :D"
        }
        else
        {
            return
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

