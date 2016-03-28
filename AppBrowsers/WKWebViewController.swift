//
//  WKWebViewController.swift
//  AppBrowsers
//
//  Created by Ampy 2 on 3/26/16.
//  Copyright © 2016 AF. All rights reserved.
//

import Foundation
import UIKit

class WKWebViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var progressIndicator: UIProgressView!
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var forwardButton: UIBarButtonItem!
    
    var reloadCancelButton : UIBarButtonItem?
    var urlString : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // "Done" button to dismiss
        self.enableCustomBackButtom()
        
        // Reload/Cancel
        reloadCancelButton = UIBarButtonItem(image: UIImage(named: "icon_refresh"), style: .Plain, target: self, action: #selector(WKWebViewController.tappedReloadCancelButton))
        navigationItem.setRightBarButtonItem(reloadCancelButton, animated: false)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func tappedBackButton(sender: AnyObject) {
    }
    
    @IBAction func tappedForwardButton(sender: AnyObject) {
    }
    
    
    func tappedReloadCancelButton() -> () {
        
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        titleTextField.frame = CGRect(x:0, y: 0, width: size.width, height: 30)
    }

}


extension UIViewController: UIGestureRecognizerDelegate {
    func didTapDone() {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func enableCustomBackButtom() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Done", style: .Plain, target: self, action: #selector(UIViewController.didTapDone))

        // Do this so you don't break the swipe to go back gesture when customizing back button
        self.navigationController?.interactivePopGestureRecognizer!.delegate = self
    }
}
