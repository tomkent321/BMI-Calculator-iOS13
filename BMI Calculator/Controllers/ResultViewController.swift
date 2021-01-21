//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Thomas Hurd on 1/19/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        
        let bmiMessage = ["Go have a tasty snack!",
                          "Keep up the good work!",
                          "Let us eat lots of lettuce!",
                          "Is your life insurance paid up?"]
        
        let bmiNum = Double(bmiValue!) ?? 0
        var advice = 0
        
        if bmiNum < 18.5 {
            advice = 0
        } else if bmiNum > 18.4 &&  bmiNum < 25.0 {
            advice = 1
        } else if bmiNum > 24.9 &&  bmiNum < 30.0 {
            advice = 2
        } else {
            advice = 3
        }
        
        adviceLabel.text = bmiMessage[advice]
    }
   
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
