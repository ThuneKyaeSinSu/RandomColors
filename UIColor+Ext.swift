//
//  UIColor+Ext.swift
//  RandomColors
//
//  Created by Thelma on 12/02/2024.
//

import UIKit

extension UIColor{
    static func randomColors()-> UIColor{
        var randomColor = UIColor(red: CGFloat.random(in: 0...1.0),
                                  green: CGFloat.random(in: 0...1.0),
                                  blue: CGFloat.random(in: 0...1.0),
                                  alpha: CGFloat.random(in: 0...1.0))
        return randomColor
    }
}
