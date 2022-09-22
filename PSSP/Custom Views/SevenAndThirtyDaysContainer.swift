//
//  SevenAndThirtyDaysContainer.swift
//  PSSP
//
//  Created by Mutlu Aydin on 9/20/22.
//

import UIKit

class SevenAndThirtyDaysContainer: UIView {

    private let sevenDaysAvgLabel = PSSPLabel()
    private let sevenDaysAvgCountLabel = PSSPLabel()
    private let thirtyDaysAvgLabel = PSSPLabel()
    private let thirtyDaysAvgCountLabel = PSSPLabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        
        sevenDaysAvgLabelConfiguration()
        sevenDaysAvgCountLabelConfiguration()
        thirtyDaysAvgLabelConfiguration()
        thirtyDaysAvgCountLabelConfiguration()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
    }
    
    
    // Seven Days Average Label Configuration
    func sevenDaysAvgLabelConfiguration() {
        sevenDaysAvgLabel.translatesAutoresizingMaskIntoConstraints = false
        sevenDaysAvgLabel.text = "Seven Days Average"
                
        addSubview(sevenDaysAvgLabel)
        
        NSLayoutConstraint.activate([
            sevenDaysAvgLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            sevenDaysAvgLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            sevenDaysAvgLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    // Seven Days Average Count Label Configuration
    func sevenDaysAvgCountLabelConfiguration() {
        sevenDaysAvgCountLabel.translatesAutoresizingMaskIntoConstraints = false
        sevenDaysAvgCountLabel.text = "00000"
        
        addSubview(sevenDaysAvgCountLabel)
        
        NSLayoutConstraint.activate([
            sevenDaysAvgCountLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            sevenDaysAvgCountLabel.topAnchor.constraint(equalTo: sevenDaysAvgLabel.bottomAnchor, constant: 15),
            sevenDaysAvgCountLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    // Thirty Days Average Label Configuration
    func thirtyDaysAvgLabelConfiguration() {
        thirtyDaysAvgLabel.translatesAutoresizingMaskIntoConstraints = false
        thirtyDaysAvgLabel.text = "Thirty Days"
        
        addSubview(thirtyDaysAvgLabel)
        
        NSLayoutConstraint.activate([
            thirtyDaysAvgLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            thirtyDaysAvgLabel.topAnchor.constraint(equalTo: sevenDaysAvgCountLabel.bottomAnchor, constant: 25),
            thirtyDaysAvgLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    // Thirty Days Average Count Label Configuration
    func thirtyDaysAvgCountLabelConfiguration() {
        thirtyDaysAvgCountLabel.translatesAutoresizingMaskIntoConstraints = false
        thirtyDaysAvgCountLabel.text = "00000"
        
        addSubview(thirtyDaysAvgCountLabel)
        
        NSLayoutConstraint.activate([
            thirtyDaysAvgCountLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            thirtyDaysAvgCountLabel.topAnchor.constraint(equalTo: thirtyDaysAvgLabel.bottomAnchor, constant: 15),
            thirtyDaysAvgCountLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    
}
