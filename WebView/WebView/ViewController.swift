//
//  ViewController.swift
//  WebView
//
//  Created by Sushil  on 17/11/17.
//  Copyright © 2017 Elegant. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,UITextFieldDelegate {
    var webView:WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        //webView = WKWebView(frame: CGRect(x :0, y: 20, width: 300, height: 300))
        //view.addSubview(webView)
        
        // Directly adding html
        //webView.loadHTMLString("<h1>Title</h1><p>hello</p>", baseURL: nil)
        
        // LOADING FILE
       //let url:URL = Bundle.main.url(forResource: "myWebsite/public/index", withExtension: "html")!
        
       /* let url:URL = URL(string: "https://www.google.com")!
        
        let req:URLRequest = URLRequest(url: url)
        webView.load(req) */
        
       /* webView.translatesAutoresizingMaskIntoConstraints = false
        let width = NSLayoutConstraint(item: webView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1.0, constant: 0)
        let height = NSLayoutConstraint(item: webView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1.0, constant: -20)
        let top = NSLayoutConstraint(item: webView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 20)
        
        view.addConstraints([width,height,top]) */
        
        // Browser Code 
        
        webView = WKWebView(frame: CGRect())
        view.addSubview(webView)
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        let width = NSLayoutConstraint(item: webView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1.0, constant: 0)
        let height = NSLayoutConstraint(item: webView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1.0, constant: -60)
        let top = NSLayoutConstraint(item: webView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 60)
        
        view.addConstraints([width,height,top])
        
        
        //searchBox.becomeFirstResponder()
        
    }

    @IBOutlet weak var searchBox: UITextField!
    
    @IBAction func goBack(_ sender: Any) {
        webView.goBack()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchBox.resignFirstResponder()
        
         let url:URL = URL(string: textField.text!)!
         let req:URLRequest = URLRequest(url: url)
         webView.load(req)
    
        return false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

