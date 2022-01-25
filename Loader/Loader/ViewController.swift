//
//  ViewController.swift
//  Loader
//
//  Created by Sushil  on 16/11/17.
//  Copyright © 2017 Elegant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func didSwitchChange(_ sender: UISwitch) {
        if indicator.isAnimating {
            indicator.stopAnimating()
        }
        else {
            indicator.startAnimating()
        }
    }
    
    @IBAction func didSegmentChange(_ sender: UISegmentedControl) {
        
        let selectedSegment = sender.selectedSegmentIndex
        label.text = sender.titleForSegment(at: selectedSegment)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

