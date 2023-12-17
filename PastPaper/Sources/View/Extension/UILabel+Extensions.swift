//
//  UILabel+Extensions.swift
//  PastPaper
//
//  Created by Rafael on 12/17/23.
//

import UIKit

extension UILabel {
    
    func configureLabel(font: UIFont, textColor: UIColor, lines: Int = 0) {
        self.font = font
        self.textColor = textColor
        numberOfLines = lines
    }
    
}
