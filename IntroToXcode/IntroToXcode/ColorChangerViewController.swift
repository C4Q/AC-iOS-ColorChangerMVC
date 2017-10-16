//
//  ColorChangerViewController.swift
//  IntroToXcode
//
//  Created by Tom Seymour on 10/16/17.
//  Copyright © 2017 Tom Seymour. All rights reserved.
//

import UIKit

class ColorChangerViewController: UIViewController {
    
    let colorChanger = ColorChangerModel()

    @IBOutlet weak var colorLabel: UILabel!
    
    @IBAction func randomColorTapped(_ sender: UIButton) {
        self.view.backgroundColor = colorChanger.randomColor()
        self.colorLabel.text = colorChanger.currentColor.name
    }
    
    @IBAction func nextColorTapped(_ sender: UIButton) {
        self.view.backgroundColor = colorChanger.nextColor()
        self.colorLabel.text = colorChanger.currentColor.name
    }
    
}
