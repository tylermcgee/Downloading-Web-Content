//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Syngenta RDIS Mac on 5/11/17.
//  Copyright © 2017 Syngenta GenEx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var webview: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        let url = URL(string: "https://www.stackoverflow.com")!
        
//        webview.loadRequest(URLRequest(url: url))
        
        webview.loadHTMLString("<h1>Hello there!</h1>", baseURL: nil)
        
 
 */
        
        if let url = URL(string: "https://www.stackoverflow.com") {
        
            let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                data, response, error in
                
                if error != nil {
                    
                    print(error)
                    
                } else {
                    
                    if let unwrappedData = data {
                        
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        print(dataString)
                        
                    
                }
                
            }
            
            task.resume()
            
        }
        
        print("Hi there")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

