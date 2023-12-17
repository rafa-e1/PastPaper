//
//  CALayer+Extensions.swift
//  PastPaper
//
//  Created by Rafael on 12/17/23.
//

import UIKit

extension CALayer {
    
    func applyBottomShadow() {
        shadowPath = UIBezierPath(
            rect: CGRect(x: 0, y: bounds.maxY, width: bounds.width, height: 3)
        ).cgPath
        shadowColor = UIColor.black.cgColor
        shadowOpacity = 0.5
        shadowRadius = 3
        shadowOffset = CGSize(width: 0, height: 0)
    }
    
}
