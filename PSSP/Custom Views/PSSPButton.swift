//
//  PSSPButton.swift
//  PSSP
//
//  Created by Mutlu Aydin on 7/19/22.
//

import UIKit

class PSSPButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        shadows()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor) {
        super.init(frame: .zero)
        self.backgroundColor = .psspBackgroundColor
        configure()
        shadows()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        titleLabel?.textColor = .label
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        translatesAutoresizingMaskIntoConstraints = false
    }
    private func shadows() {
        layer.shadowRadius = 5
        layer.shadowColor = UIColor.shadowColor?.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 4, height: 4)
        layer.backgroundColor = UIColor.shadowColor?.cgColor
        layer.masksToBounds = false
        
    }
}
