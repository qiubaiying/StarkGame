//
//  UIColor+Extenions.swift
//  High Rise
//
//  Created by 邱柏荧 on 2017/4/26.
//  Copyright © 2017年 Ray Wenderlich. All rights reserved.
//

import Foundation

extension Chameleon {

    var newColor: UIColor {
        return .randomFlat()
    }
    
    class func gitRGB(_ color: UIColor) -> (CGFloat, CGFloat, CGFloat) {
        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var alpha: CGFloat = 0.0
        
        color.getRed(&r, green: &g, blue: &b, alpha: &alpha)

        return (r, g, b)
    }
    
    

}
