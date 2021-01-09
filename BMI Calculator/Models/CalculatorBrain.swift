//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Azka Kusuma Edy on 08/01/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    
    var bmi: Float?
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlaces =  String(format: "%.1f", bmi ?? 0.0)
        return bmiTo1DecimalPlaces
    }
    
    mutating func calculateBMI( height: Float,  weight: Float){
         bmi = weight / (height*height)
        
        
    }
    
   
    
}
