//
//  ViewController.swift
//  Compatibility
//
//  Created by Sushil  on 12/11/17.
//  Copyright © 2017 Elegant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var picker: UIDatePicker!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DateChanged(picker) // sending picker just to match method argument
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DateChanged(_ sender: Any) {
        
        let date:Date = picker.date
        
        let formatter:DateFormatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        
        let dayOfWeek:String = formatter.string(from: date)
        label.text = "The day is \(dayOfWeek)"
    }

}

