//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdulmajit Kubatbekov on 21.11.22.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Ear more pies!", color: UIColor.gray)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.red
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "Every time we have to look at our health"
    }
}
