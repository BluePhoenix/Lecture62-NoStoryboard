//
//  SecondViewController.swift
//  Lecture62-NoStoryboard
//
//  Created by Felix Barros on 12/17/15.
//  Copyright © 2015 Bits That Matter. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var thirdViewController: ThirdViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func goBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func goToGreen(sender: AnyObject) {
        presentViewController(thirdViewController, animated: true, completion: nil)
    }
    
}
