//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Thomas Hurd on 1/21/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi : Float?
  
    func getbmiValue() -> String {
        return String(format: "%0.1f", bmi ?? 0.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / pow(height,2)
    }
}

