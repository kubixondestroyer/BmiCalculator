

import Foundation
import UIKit



struct CalculatorBrain{
    
    var sliderValue: Float = 0.0
    var sliderWeightValue: Float = 0.0
    var bmi: BMI?

    
    
    mutating func updateSliderValue(_ value: Float) {
            sliderValue = value
        }
    func formatedSliderValue() -> String {
           return String(format: "%.2f m", sliderValue)
       }
    mutating func updateWeightSliderValue(_ value: Float){
        sliderWeightValue = value
    }
    func formatedWeightSliderValue()-> Int{
        return Int(sliderWeightValue)
    }

    func getBMIValue()-> String{
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        }
    mutating func calculateBmi(height:Float, weight:Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            print("underweight")
            bmi = BMI(value: bmiValue, advice: "underweight", color: UIColor.orange )
        }
        else if bmiValue >= 18.5 && bmiValue <= 25{
            print("goodweight")
            bmi = BMI(value: bmiValue, advice: "normal weight", color: UIColor.green)
        }
        else {
            print("overweight")
            bmi = BMI(value: bmiValue, advice: "over weight", color: UIColor.red)
            
        }
        
        
    }
    func addStatus()-> Float{
//        return("\((bmi?.advice)!) costam")
        return (bmi?.value)!
        
    }
    func addAdvice()-> String{
        return (bmi?.advice)!
    }
    func addColor()-> UIColor{
        return (bmi?.color)!
    }
    
    
    
    
}
