//
//  ViewController.swift
//  BMI Rechner
//
//  Created by Monique Shaqiri on 07.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var resultBMILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enterButtonTapped(_ sender: UIButton) {
        print("Test Enter Button")
        calculateBMI()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func calculateBMI() {
        if nameTextField.text != "" && heightTextField.text != "" && weightTextField.text != "" {
            let height = Double(heightTextField.text!)!
            let weight = Double(weightTextField.text!)!
            let heightSquare = height * height
            let resultBMI = weight / heightSquare
           printUIElements(result: resultBMI)
             print (resultBMI)
        }
        
    }
    func printUIElements(result: Double) {
        let stringResultBMI = String(format: "%0.2f", result)
        if result <= 20 {
            resultBMILabel.text = "Hallo, \(nameTextField.text!) dein BMI ist : \(stringResultBMI)du bist Untergewichtig"
        }else if result >= 20 && result <= 25 {
             resultBMILabel.text = "Hallo, \(nameTextField.text!) dein BMI ist : \(stringResultBMI)du bist Normalgewichtig"
        }else if result >= 26 && result <= 30 {
             resultBMILabel.text = "Hallo, \(nameTextField.text!) dein BMI ist : \(stringResultBMI)du bist übergewichtig"
        }else {
             resultBMILabel.text = "Hallo, \(nameTextField.text!) dein BMI ist : \(stringResultBMI)du hast Adipositas"
        }
    
    }
}

