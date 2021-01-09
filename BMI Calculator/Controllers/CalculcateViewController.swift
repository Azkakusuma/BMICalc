//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculcateViewController: UIViewController {

    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    @IBOutlet weak var weightInfo: UILabel!
    @IBOutlet weak var heightInfo: UILabel!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        heightInfo.text = "\(String(format: "%.2f", sender.value))m"
        
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightInfo.text = "\(String(format: "%.0f", sender.value))kg"
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
       let height =  heightSliderOutlet.value
       let weight =  weightSliderOutlet.value
       
        let bmi = weight / pow(height, 2)
        
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", bmi)
        
        self.present(secondVC, animated: true, completion: nil)
        
    }
    
}

