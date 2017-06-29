//
//  ViewController.swift
//  Calculatrice
//
//  Created by Maxime Britto on 29/06/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var _shouldResetCurrentNumber = true
    var _operationType : Character = " "
    var _previousNumber : Double = 0
    var _currentNumber : Double = 0 {
        didSet {
            ui_currentNumberLabel.text = "\(_currentNumber)"
        }
    }
    
    @IBOutlet weak var ui_currentNumberLabel: UILabel!
    
    func performWaitingCalculous() {
        let result:Double
        if _operationType == "+" {
            result = _previousNumber + _currentNumber
        } else if _operationType == "-" {
            result = _previousNumber - _currentNumber
        } else if _operationType == "*" {
            result = _previousNumber * _currentNumber
        } else if _operationType == "/" {
            result = _previousNumber / _currentNumber
        } else {
            result = _currentNumber
        }
        _previousNumber = result
        _shouldResetCurrentNumber = true
        ui_currentNumberLabel.text = "\(result)"
    }
    
    @IBAction func divide() {
        if _shouldResetCurrentNumber == false {
            performWaitingCalculous()
        }
        _operationType = "/"
    }
    @IBAction func multiply() {
        if _shouldResetCurrentNumber == false {
            performWaitingCalculous()
        }
        _operationType = "*"
    }
    @IBAction func substract() {
        if _shouldResetCurrentNumber == false {
            performWaitingCalculous()
        }
        _operationType = "-"
    }
    @IBAction func add() {
        if _shouldResetCurrentNumber == false {
            performWaitingCalculous()
        }
        _operationType = "+"
    }
    @IBAction func displayResults() {
        performWaitingCalculous()
    }
    @IBAction func resetValue() {
        _previousNumber = 0
        _currentNumber = 0
        _operationType = " "
    }
    @IBAction func changeSign() {
        _currentNumber = _currentNumber * -1
    }
    @IBAction func applyPercent() {
        _currentNumber = _currentNumber / 100
    }
    
    @IBAction func digitButtonTouched(_ sender: UIButton) {
        if _shouldResetCurrentNumber == true {
            _currentNumber = Double(sender.tag)
            _shouldResetCurrentNumber = false
        } else {
            _currentNumber = (_currentNumber * 10) + Double(sender.tag)
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

