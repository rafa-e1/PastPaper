//
//  UIButton+Extensions.swift
//  PastPaper
//
//  Created by Rafael on 12/17/23.
//

import UIKit

extension UIButton {
    
    func configureButton(
        configuration: UIButton.Configuration,
        title: String,
        backgroundColor: UIColor,
        foregroundColor: UIColor,
        contentInsets: NSDirectionalEdgeInsets
    ) {
        var config = configuration
        config.title = title
        config.baseBackgroundColor = backgroundColor
        config.baseForegroundColor = foregroundColor
        config.contentInsets = contentInsets
        self.configuration = config
    }
    
}
