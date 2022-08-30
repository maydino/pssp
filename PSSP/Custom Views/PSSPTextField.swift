//
//  PSSPTextField.swift
//  PSSP
//
//  Created by Mutlu Aydin on 7/21/22.
//

import UIKit

class PSSPTextField: UITextField {


    override init(frame: CGRect) {
        super.init(frame: frame)
        
        textFieldConfigure()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func textFieldConfigure() {
        
        textColor = .label
        tintColor = .label
        layer.cornerRadius = 10
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 10
        returnKeyType = .done
        keyboardType = .asciiCapableNumberPad
        
        backgroundColor = .psspCollectionCellColor
        autocorrectionType = .no
        
        placeholder = "0"
        
        
    }
    
}
