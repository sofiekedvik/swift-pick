//
//  ShowSignViewController.swift
//  pick
//
//  Created by Sofie Kedvik on 2017-10-23.
//  Copyright © 2017 Sofie Kedvik. All rights reserved.
//

import UIKit

class ShowSignViewController: UIViewController {

    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var quote: UILabel!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var emoji: UILabel!
    
    @IBAction func playMore(_ sender: UIButton) {
        let returnToStartController = self.storyboard?.instantiateViewController(withIdentifier: "start") as! ViewController
        
        self.present(returnToStartController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
