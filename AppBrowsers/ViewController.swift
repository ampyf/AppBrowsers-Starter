//
//  ViewController.swift
//  AppBrowsers
//
//  Created by Ampy 2 on 3/26/16.
//  Copyright © 2016 AF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urlTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        urlTextField.text = "http://meetup.com"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func openWithSafariVC(sender: AnyObject) {
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "openWithWebVC" {
            let webVC = segue.destinationViewController as! WKWebViewController
            webVC.urlString = urlTextField.text
        }

    }

    
}

