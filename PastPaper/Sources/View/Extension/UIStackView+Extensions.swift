//
//  UIStackView+Extensions.swift
//  PastPaper
//
//  Created by Rafael on 12/17/23.
//

import UIKit

extension UIStackView {
    
    func configureStackView(
        alignment: Alignment,
        axis: NSLayoutConstraint.Axis,
        distribution: Distribution,
        spacing: CGFloat?
    ) {
        self.alignment = alignment
        self.axis = axis
        self.distribution = distribution
        self.spacing = spacing ?? 0
    }
    
}
