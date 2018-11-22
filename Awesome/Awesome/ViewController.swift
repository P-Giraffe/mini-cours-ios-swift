//
//  ViewController.swift
//  Awesome
//
//  Created by Maxime Britto on 20/10/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func changeImage(_ sender: Any) {
        if imageView.image == #imageLiteral(resourceName: "photo1.jpg") {
            imageView.image = #imageLiteral(resourceName: "photo2")
        } else {
            imageView.image = #imageLiteral(resourceName: "photo1")
        }
    }
}

