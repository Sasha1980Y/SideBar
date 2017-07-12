//
//  ViewController.swift
//  SideBar
//
//  Created by AlexanderYakovenko on 7/12/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menuShowing = false
    
    @IBOutlet weak var mainView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.shadowOpacity = 1
        mainView.layer.shadowRadius = 10
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMenu(_ sender: Any) {
        
        if menuShowing {
            leadingConstraint.constant = 0
            trailingConstraint.constant = 0
        } else {
            leadingConstraint.constant = 100
            trailingConstraint.constant = -100
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        
        
        
        menuShowing = !menuShowing
        
        
    }

}

