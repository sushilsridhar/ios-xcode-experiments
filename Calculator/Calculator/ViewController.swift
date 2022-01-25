//
//  ViewController.swift
//  Calculator
//
//  Created by Sushil  on 17/09/17.
//  Copyright © 2017 Elegant. All rights reserved.
//

import UIKit

enum modes {
    case not_set
    case addition
    case subraction
    case multiply
}

class ViewController: UIViewController {

    @IBOutlet weak var lable: UILabel!
    
    var labelString:String = "0"
    var currentMode:modes = .not_set
    var savedNum:Int = 0
    var lastButtonWasMode:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didPressPlus(_ sender: Any) {
        changeMode(newMode: .addition)
        
    }
    @IBAction func didPressSubtract(_ sender: Any) {
        changeMode(newMode: .subraction)
    }
    
    @IBAction func didPressMultiply(_ sender: UIButton) {
        changeMode(newMode: .multiply)
    }
    
    @IBAction func didPressEquals(_ sender: Any) {
        
        guard let lableInt:Int = Int(labelString) else {
            return
        }
        
        if(currentMode == .not_set || lastButtonWasMode) {
            return
        }
        else if(currentMode == .addition) {
            savedNum += lableInt
        }
        else if(currentMode == .subraction) {
            savedNum -= lableInt
        }
        else if(currentMode == .multiply) {
            savedNum *= lableInt
        }
        
        currentMode = .not_set
        lastButtonWasMode = true
        labelString = "\(savedNum)"
        
        updateText()
    }
    @IBAction func didPressClear(_ sender: Any) {
        
        labelString = "0"
        currentMode = .not_set
        savedNum = 0
        lastButtonWasMode = false
        
        lable.text = "0"
    }
    
    @IBAction func didPressNumber(_ sender: UIButton) {
        
        let stringValue:String? = sender.titleLabel?.text
        
        if(lastButtonWasMode) {
            lastButtonWasMode = false
            labelString = "0"
        }
        labelString = labelString.appending(stringValue!)
        
        updateText()
    }
    
    func updateText() {
        
        guard let lableInt:Int = Int(labelString) else {
            return
        }
        
        if(currentMode == .not_set) {
            savedNum = lableInt
        }
        
        let formatter:NumberFormatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        let num:NSNumber = NSNumber(value : lableInt)
        lable.text = formatter.string(from: num)
    }

    func changeMode(newMode:modes) {
        if(savedNum == 0){
            return
        }
        currentMode = newMode
        lastButtonWasMode = true
    }
}

