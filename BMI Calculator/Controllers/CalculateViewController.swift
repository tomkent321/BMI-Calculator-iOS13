//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//  Forked by Thomas Hurd on 18/01/2021
//

import UIKit




class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChangedSlider(_ sender: UISlider) {
        let heightInFeet = Int(sender.value * 3.28084)
        let heightInches = Int(((Double(sender.value) * 3.28084) - Double(heightInFeet)) * 12)
        let height = String(format: "%.1f", sender.value) + "m          " +  String(heightInFeet) + "ft " + String(heightInches) + "in"
        
        heightLabel.text = height
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let pounds = Int(sender.value * 2.20462)
        let weight = String(format: "%.1f", sender.value) + "k          " + String(pounds) + "lbs"
        weightLabel.text = weight
    }
    @IBAction func caclulatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%0.1f", bmi)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
           
        }
    }
}
