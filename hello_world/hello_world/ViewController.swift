//
//  ViewController.swift
//  hello_world
//
//  Created by Maxime Britto on 23/06/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func repeatButtonTouched() {
        print("Bouton répéter touché par l'utilisateur")
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

