//
//  ViewController.swift
//  calculator
//
//  Created by 劉淞煒 on 2017/12/18.
//  Copyright © 2017年 EddieLiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var stillTyping = false
    var operation = ""
    
    @IBOutlet weak var digitalLabel: UILabel!
    
    @IBAction func number(_ sender: UIButton) {
        let inputNumber = sender.currentTitle!
        if digitalLabel.text != nil {
            if digitalLabel.text == "0" || digitalLabel.text == "+" || digitalLabel.text == "-" || digitalLabel.text == "x" || digitalLabel.text == "÷" {
                digitalLabel.text = "\(inputNumber)"
            }
            else {
                digitalLabel.text = digitalLabel.text! + "\(inputNumber)"
            }
        }
        numberOnScreen = Double(digitalLabel.text!) ?? 0
    }
    
    @IBAction func clear(_ sender: UIButton) {
        digitalLabel.text = "0"
        numberOnScreen = 0
        previousNumber = 0
        stillTyping = false
    }
    
    @IBAction func add(_ sender: UIButton) {
        stillTyping = true
        digitalLabel.text = sender.currentTitle!
        operation = sender.currentTitle!
        previousNumber = numberOnScreen
    }
    
    @IBAction func subtract(_ sender: UIButton) {
        stillTyping = true
        digitalLabel.text = sender.currentTitle!
        operation = sender.currentTitle!
        previousNumber = numberOnScreen
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        stillTyping = true
        digitalLabel.text = sender.currentTitle!
        operation = sender.currentTitle!
        previousNumber = numberOnScreen
    }
    
    @IBAction func divide(_ sender: UIButton) {
        stillTyping = true
        digitalLabel.text = sender.currentTitle!
        operation = sender.currentTitle!
        previousNumber = numberOnScreen
    }
    
    @IBAction func answer(_ sender: UIButton) {
        if stillTyping == true {
            switch operation {
                
                case "+":
                    digitalLabel.text = "\(previousNumber + numberOnScreen)"
                case "-":
                    digitalLabel.text = "\(previousNumber - numberOnScreen)"
                case "x":
                    digitalLabel.text = "\(previousNumber * numberOnScreen)"
                case "÷":
                    digitalLabel.text = "\(previousNumber / numberOnScreen)"
                default:
                    break
            }
            stillTyping = false
            numberOnScreen = Double(digitalLabel.text!) ?? 0
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

