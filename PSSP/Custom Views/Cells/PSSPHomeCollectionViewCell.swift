//
//  PSSPCollectionViewCell.swift
//  PSSP
//
//  Created by Mutlu Aydin on 7/23/22.
//

import UIKit

class PSSPHomeCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PSSPCollectionViewCell"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        dropShadow(color: .shadowColor!, opacity: 0.5, offSet: CGSize(width: 5, height: 5), radius: 6)    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        layer.backgroundColor = UIColor.psspCollectionCellColor?.cgColor

    }
    
    
    
    
}
