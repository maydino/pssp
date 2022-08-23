//
//  PSSPStatsCollectionViewCell.swift
//  PSSP
//
//  Created by Mutlu Aydin on 8/10/22.
//

import UIKit

class PSSPStatsCollectionViewCell: UICollectionViewCell {
   
    static let identifier = "PSSPStatsCollectionViewCell"
    
    private let thirtyLabel = PSSPLabel(textAlignment: .center, fontSize: 20, title: "test")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        shadows()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    private func configure() {
        addSubview(thirtyLabel)
        layer.backgroundColor = UIColor.psspCollectionCellColor?.cgColor
        
        NSLayoutConstraint.activate([
            thirtyLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            thirtyLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            thirtyLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            thirtyLabel.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    private func shadows() {
        
        layer.cornerRadius = 10
        layer.shadowRadius = 5
        layer.shadowColor = UIColor.shadowColor?.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 4, height: 4)
        layer.masksToBounds = false
        
    }
    
    
}
