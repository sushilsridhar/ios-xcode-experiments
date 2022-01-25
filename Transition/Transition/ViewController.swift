//
//  ViewController.swift
//  Transition
//
//  Created by Sushil  on 19/11/17.
//  Copyright © 2017 Elegant. All rights reserved.
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newView = segue.destination as! CustomVC
        if(segue.identifier == "hello") {
            newView.labelValue = "hello world"
        }
        else if(segue.identifier == "vegas") {
            newView.labelValue = "Vegas Baby"
        }
        else if(segue.identifier == "napa") {
            newView.labelValue = "Napa Valley"
        }
    }

}

