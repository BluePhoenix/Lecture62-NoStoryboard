//
//  FirstViewController.swift
//  Lecture62-NoStoryboard
//
//  Created by Felix Barros on 12/17/15.
//  Copyright © 2015 Bits That Matter. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
   
    var secondViewController: SecondViewController!
    var thirdViewController: ThirdViewController!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        secondViewController = SecondViewController()
        thirdViewController = ThirdViewController()
        secondViewController.thirdViewController = thirdViewController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToYellow() {
        self.presentViewController(secondViewController, animated: true, completion: nil)
    }
    
    @IBAction func goToGreen() {
        self.presentViewController(thirdViewController, animated: true, completion: nil)
    }

}
