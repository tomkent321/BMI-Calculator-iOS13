//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//  Forked by Thomas Hurd on 18/01/2021
//

import UIKit




class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChangedSlider(_ sender: UISlider) {
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
    }
}

func testFunc() {
    print("This is only a test function")
}
