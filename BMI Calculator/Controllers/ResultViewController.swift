//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Thomas Hurd on 1/19/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        backGround.backgroundColor  = color
        
    }
   
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
