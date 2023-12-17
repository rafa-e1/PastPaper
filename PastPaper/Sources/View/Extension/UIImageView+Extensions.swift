//
//  UIImageView+Extensions.swift
//  PastPaper
//
//  Created by Rafael on 12/17/23.
//

import UIKit

extension UIImageView {
    
    func configureImage(image: UIImage?, contentMode: ContentMode) {
        self.image = image
        self.contentMode = contentMode
    }
    
}
