//
//  UIView+Ext.swift
//  PSSP
//
//  Created by Mutlu Aydin on 8/28/22.
//

import UIKit

extension UIView {

  func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1) {
      
    layer.masksToBounds = false
    layer.shadowColor = color.cgColor
    layer.borderColor = color.cgColor
    layer.shadowOpacity = opacity
    layer.shadowOffset = offSet
    layer.shadowRadius = radius

  }
}


