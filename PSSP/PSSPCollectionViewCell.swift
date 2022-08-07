//
//  PSSPCollectionViewCell.swift
//  PSSP
//
//  Created by Mutlu Aydin on 7/23/22.
//

import UIKit

class PSSPCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PSSPCollectionViewCell"
    
    private let buttonView = PSSPButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(buttonView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        buttonView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    
    
}
