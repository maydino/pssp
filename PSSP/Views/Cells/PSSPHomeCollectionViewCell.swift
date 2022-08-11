//
//  PSSPCollectionViewCell.swift
//  PSSP
//
//  Created by Mutlu Aydin on 7/23/22.
//

import UIKit

class PSSPHomeCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PSSPCollectionViewCell"
    
//    private let buttonView = PSSPButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        contentView.addSubview(buttonView)
        layer.backgroundColor = UIColor.white.cgColor
        configure()
        shadows()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
//        buttonView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
    }
    private func shadows() {
        layer.cornerRadius = 10
        layer.shadowRadius = 5
        layer.shadowColor = UIColor.white.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 4, height: 4)
        layer.backgroundColor = UIColor.blueColor.cgColor
        layer.masksToBounds = false
        
    }
    
    
    
}
