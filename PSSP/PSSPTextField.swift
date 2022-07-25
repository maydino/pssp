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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        layer.borderColor = UIColor.systemPink.cgColor
        layer.borderWidth = 2
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title1)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 10
        
        backgroundColor = .systemBlue
        autocorrectionType = .no
        
        placeholder = "0"
        
        
    }
    
}
