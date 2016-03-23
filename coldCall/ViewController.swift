//
//  ViewController.swift
//  coldCall
//
//  Created by David Rothschild on 1/7/16.
//  Copyright © 2016 Dave Rothschild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var names = ["Bryant","Jay","Jimmy","Cody","Ryota","Uyanga"]


    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func coldCallButton(sender: UIButton) {
        let num = Int(arc4random_uniform(5) + 1)
        nameLabel.text = names[num]
        let centerNum = String(num)
        if num == 1 || num == 2 {
            numberLabel.textColor = UIColor.redColor()
            numberLabel.text = centerNum
        } else if (num == 3 || num == 4) {
            numberLabel.textColor = UIColor.orangeColor()
            numberLabel.text = centerNum
        } else {
            numberLabel.textColor = UIColor.greenColor()
            numberLabel.text = centerNum
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameLabel.text = "Ready?"
        numberLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

