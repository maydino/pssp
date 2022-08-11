//
//  PSSPLabel.swift
//  PSSP
//
//  Created by Mutlu Aydin on 8/10/22.
//

import UIKit

class PSSPLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlignment: NSTextAlignment, fontSize: CGFloat, title: String) {
        super .init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize)
        self.text = title
        configure()
        
    }
    
    func configure() {
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.85
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false

        
    }
}
