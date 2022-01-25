//
//  ViewController.swift
//  FirstApp
//
//  Created by Sushil  on 17/09/17.
//  Copyright © 2017 Elegant. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //CHALLENGE
    @IBOutlet weak var challengeInt: UILabel!
    @IBOutlet weak var challengeString: UILabel!
    
    @IBOutlet weak var Name: UILabel!

    var myName:String = "Steve"
    
    var intialScore:Int = 0
    
    func addScore(_ points:Int) {
        
        intialScore = intialScore + points
        challengeInt.text = "Score: \(intialScore)"
    }
    
    @IBAction func hitShip(_ sender: UIButton) {
        
        addScore(1)
    }
    
    @IBAction func hitAlien(_ sender: UIButton) {
        
        addScore(5)
    }
    
    enum modes {
        case add
        case sub
        case mul
        case no_mode
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(myName)
        
        // var score:Int = 10
       //Name.text = "Hello World :D"
        
        let score:Int = 10
        
        Name.text = "\(score)"
        
        var mode:modes = .no_mode
        mode = .add
        mode = .sub
        mode = .mul
        
        // CHALLENGE
        challengeInt.text = "\(10)"
        challengeString.text = "DONE :P"
        
       // self.addScore(2)
        //addScore(5)
    }
    
    @IBOutlet weak var Test: UITextField!
    @IBOutlet weak var TestOne: UITextField!
    
    // CLOSE KEYBOARD
    /*override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    } */
    
    // DELEGATING --> CLOSE BUTTON FOR THE KEYBOARD
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        Test.resignFirstResponder()
        return false
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

