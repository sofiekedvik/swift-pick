//
//  ViewController.swift
//  pick
//
//  Created by Sofie Kedvik on 2017-10-22.
//  Copyright © 2017 Sofie Kedvik. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
 
    @IBOutlet weak var number: UILabel!
    var sendToNext = 1;
    
    @IBAction func stepper(_ sender: UIStepper) {
        let roundUp = Int(sender.value)
        number.text =  String(roundUp)
        sendToNext = roundUp
    }
    
    @IBAction func goButton(_ sender: UIButton) {
        let ColorViewController = self.storyboard?.instantiateViewController(withIdentifier: "colors") as! ColorViewController
        _ = ColorViewController.view
        
        ColorViewController.number = self.sendToNext
        self.present(ColorViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

