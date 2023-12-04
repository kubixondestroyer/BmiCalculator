//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    //var bmiValue = "0.0"
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightShow: UILabel!
    @IBOutlet weak var weightShow: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func slideHeight(_ sender: UISlider) {
        
        calculatorBrain.updateSliderValue(sender.value)
        heightShow.text = calculatorBrain.formatedSliderValue()
        
    }
    @IBAction func slideWeight(_ sender: UISlider) {
        calculatorBrain.updateWeightSliderValue(sender.value)
        weightShow.text = "\(calculatorBrain.formatedWeightSliderValue()) kg"
        
        
    }
    @IBAction func calculateBMI(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        print("nacisniety przycisk")
        
//        let bmiCalculatorModel = CalculatorBrain(height: height, weight: weight)
//        let bmiValuev1 = bmiCalculatorModel.calculateBmiValue()
//        bmiValue =  String(format: "%.1f", bmiValuev1)
//        print ("BMI ma wartść \(bmiValue)")
//        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        calculatorBrain.calculateBmi(height:height, weight:weight)
        performSegue(withIdentifier: "goToResult", sender: self)
        
        print(calculatorBrain.addStatus())
        
        
        
        
        
    }
    // to ponizej nie ma az takiego znaczenia
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            //destinationVC.bmiValue = bmiValue
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.adviceText = calculatorBrain.addAdvice()
            destinationVC.colorValue = calculatorBrain.addColor()
        }
    }

}

