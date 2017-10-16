//
//  ColorChangerModel.swift
//  IntroToXcode
//
//  Created by Tom Seymour on 10/16/17.
//  Copyright © 2017 Tom Seymour. All rights reserved.
//

import UIKit

struct MyColor {
    let color: UIColor
    let name: String
}

class ColorChangerModel {
    
    var colors: [MyColor] = [
        MyColor(color: .white, name: "white"),
        MyColor(color: .blue, name: "blue"),
        MyColor(color: .green, name: "green"),
        MyColor(color: .red, name: "red"),
        MyColor(color: .yellow, name: "yellow"),
        MyColor(color: .purple, name: "purple"),
        MyColor(color: .brown, name: "brown"),
        MyColor(color: .orange, name: "orange"),
        MyColor(color: .gray, name: "gray")
        ]
    
    var currentColor: MyColor = MyColor(color: .white, name: "white")
    
    var currentIndex = 0
    
    func randomColor() -> UIColor {
        let randIndex = Int(arc4random_uniform(UInt32(colors.count)))
        
        let randColor = colors[randIndex]
        currentColor = randColor
        return randColor.color
    }
    
    func nextColor() -> UIColor {
        currentIndex += 1
        if currentIndex >= colors.count {
            currentIndex = 0
        }
        return colors[currentIndex].color
    }
    
    
    
    
    
}
