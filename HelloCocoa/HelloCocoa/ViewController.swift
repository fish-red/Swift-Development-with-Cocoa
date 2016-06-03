//
//  ViewController.swift
//  HelloCocoa
//
//  Created by Alastair McCann on 13/06/2015.
//  Copyright (c) 2015 Alastair McCann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloButton: UIButton!
    
    
    @IBAction func showAlert(sender: AnyObject) {
        var alert = UIAlertController(title: "Hello!", message: "Hello, world!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        self.helloButton.setTitle("Clicked", forState: UIControlState.Normal)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

