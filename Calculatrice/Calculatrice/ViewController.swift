//
//  ViewController.swift
//  Calculatrice
//
//  Created by Maxime Britto on 29/06/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var _currentNumber : Double = 0 {
        didSet {
            ui_currentNumberLabel.text = "\(_currentNumber)"
        }
    }
    
    @IBOutlet weak var ui_currentNumberLabel: UILabel!
    
    @IBAction func divide() {
    }
    @IBAction func multiply() {
    }
    @IBAction func substract() {
    }
    @IBAction func add() {
    }
    @IBAction func displayResults() {
    }
    @IBAction func resetValue() {
        _currentNumber = 0
    }
    @IBAction func changeSign() {
        _currentNumber = _currentNumber * -1
    }
    @IBAction func applyPercent() {
        _currentNumber = _currentNumber / 100
    }
    
    @IBAction func digitButtonTouched(_ sender: UIButton) {
        _currentNumber = (_currentNumber * 10) + Double(sender.tag)
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

