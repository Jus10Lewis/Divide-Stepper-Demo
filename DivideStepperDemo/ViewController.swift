//
//  ViewController.swift
//  DivideStepperDemo
//
//  Created by Justin Lewis on 9/24/18.
//  Copyright © 2018 Justin Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1TextField: UITextField!
    @IBOutlet weak var num2Label: UILabel!
    @IBOutlet weak var answerLabel1: UILabel!
    @IBOutlet weak var answerLabel2: UILabel!
    @IBOutlet weak var num2Stepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        num2Label.text = String(Int(sender.value))
        
    }
    
    @IBAction func divideNumbers(_ sender: UIButton) {
        let num1 = Int(num1TextField.text!)!
        let num2 = Int(num2Stepper.value)
        
        if num2 == 0 {
            answerLabel1.text = "Can't Divide By Zero!"
            answerLabel2.text = ""
        } else {
            let answer = num1/num2
            answerLabel1.text = "\(num1) / \(num2) = \(answer)"
            answerLabel2.text = "With a remainder of \(num1 % num2)"
        }
    }
}

