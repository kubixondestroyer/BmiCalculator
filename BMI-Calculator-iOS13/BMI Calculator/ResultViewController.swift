//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Jakub Chrobok on 28/10/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var adviceText: String?
    var colorValue: UIColor?
    
    
    
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = adviceText
        view.backgroundColor = colorValue
        
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        
        print("Dziala")
        // wraca do poprzedniego widoku
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
   }
