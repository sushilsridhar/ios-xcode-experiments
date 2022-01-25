//
//  ViewController.swift
//  Alerts
//
//  Created by Sushil  on 16/11/17.
//  Copyright © 2017 Elegant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progBar: UIProgressView!
    
    @IBAction func didChange(_ sender: UISlider) {
        let percent:Float = sender.value / sender.maximumValue
        progBar.progress = percent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert(_ sender: Any) {
        let alert:UIAlertController = UIAlertController(title: "title", message: "message", preferredStyle: .actionSheet)
        
        let action1:UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { (_:UIAlertAction) in
            print("Cancelled!")
        }
        let action2:UIAlertAction = UIAlertAction(title: "Delete", style: .destructive)
        { (_:UIAlertAction) in
            print("you deleted the stuff")
        }
        alert.addAction(action1)
        alert.addAction(action2)
        
        self.present(alert, animated: true) {
            print("present complete")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

