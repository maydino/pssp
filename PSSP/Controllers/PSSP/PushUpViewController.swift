//
//  PushUpViewController.swift
//  PSSP
//
//  Created by Mutlu Aydin on 8/9/22.
//

import UIKit

final class PushUpViewController: UIViewController {

    var sevenDaysAverage = MemoryManagement()
    
    private let pushUpImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "pushUp")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let enterCompletedLabel = PSSPLabel()
    private let pushUpTextField = PSSPTextField()
    private let sevenDaysAvgLabel = PSSPLabel()
    
    private let sevenDaysAvgCountLabel = PSSPLabel()
    
    private let thirtyDaysAvgLabel = PSSPLabel()
    private let thirtyDaysAvgCountLabel = PSSPLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .psspBackgroundColor
        
        pushUpImageConfiguration()
        completedLabelConfiguration()

        pushUpTextFieldConfiguration()
        sevenDaysAvgLabelConfiguration()
        sevenDaysAvgCountLabelConfiguration()
        thirtyDaysAvgLabelConfiguration()
        thirtyDaysAvgCountLabelConfiguration()

    }
   
    // MARK: - UI Configuration Functions
    
    // Push Up Image View Configuration
    func pushUpImageConfiguration() {
        view.addSubview(pushUpImage)
        pushUpImage.layer.cornerRadius = 10
        pushUpImage.layer.masksToBounds = true
        
        NSLayoutConstraint.activate([
            pushUpImage.widthAnchor.constraint(equalToConstant: view.bounds.width*0.6),
            pushUpImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            pushUpImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            pushUpImage.heightAnchor.constraint(equalToConstant: view.bounds.width*0.6)
        ])
    }
    
    // Enter Completed Push Ups Label Configuration
    func completedLabelConfiguration() {
        enterCompletedLabel.translatesAutoresizingMaskIntoConstraints = false
        enterCompletedLabel.text = "Enter Completed Push Ups"
        enterCompletedLabel.textAlignment = .center
                
        view.addSubview(enterCompletedLabel)
        
        NSLayoutConstraint.activate([
            enterCompletedLabel.widthAnchor.constraint(equalToConstant: view.bounds.width*0.8),
            enterCompletedLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            enterCompletedLabel.topAnchor.constraint(equalTo: pushUpImage.bottomAnchor, constant: 25),
            enterCompletedLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    // Push Up Text Field Configuration
    func pushUpTextFieldConfiguration() {
        pushUpTextField.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(pushUpTextField)
        
        NSLayoutConstraint.activate([
            pushUpTextField.widthAnchor.constraint(equalToConstant: 100),
            pushUpTextField.topAnchor.constraint(equalTo: enterCompletedLabel.bottomAnchor, constant: 10),
            pushUpTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            pushUpTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    // Seven Days Average Label Configuration
    func sevenDaysAvgLabelConfiguration() {
        sevenDaysAvgLabel.translatesAutoresizingMaskIntoConstraints = false
        sevenDaysAvgLabel.text = "Seven Days Average"
                
        view.addSubview(sevenDaysAvgLabel)
        
        NSLayoutConstraint.activate([
            sevenDaysAvgLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            sevenDaysAvgLabel.topAnchor.constraint(equalTo: pushUpTextField.bottomAnchor, constant: 50),
            sevenDaysAvgLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    // Seven Days Average Count Label Configuration
    func sevenDaysAvgCountLabelConfiguration() {
        sevenDaysAvgCountLabel.translatesAutoresizingMaskIntoConstraints = false
        sevenDaysAvgCountLabel.text = "\(sevenDaysAverage.userDefault.object(forKey: "todayPushes")) Place Holder"
        
        view.addSubview(sevenDaysAvgCountLabel)
        
        NSLayoutConstraint.activate([
            sevenDaysAvgCountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            sevenDaysAvgCountLabel.topAnchor.constraint(equalTo: sevenDaysAvgLabel.bottomAnchor, constant: 15),
            sevenDaysAvgCountLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    // Thirty Days Average Label Configuration
    func thirtyDaysAvgLabelConfiguration() {
        thirtyDaysAvgLabel.translatesAutoresizingMaskIntoConstraints = false
        thirtyDaysAvgLabel.text = "Thirty Days"
        
        view.addSubview(thirtyDaysAvgLabel)
        
        NSLayoutConstraint.activate([
            thirtyDaysAvgLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            thirtyDaysAvgLabel.topAnchor.constraint(equalTo: sevenDaysAvgCountLabel.bottomAnchor, constant: 25),
            thirtyDaysAvgLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    // Thirty Days Average Count Label Configuration
    func thirtyDaysAvgCountLabelConfiguration() {
        thirtyDaysAvgCountLabel.translatesAutoresizingMaskIntoConstraints = false
        thirtyDaysAvgCountLabel.text = "\(sevenDaysAverage.userDefault.object(forKey: "todayPushes")) Place Holder"
        
        view.addSubview(thirtyDaysAvgCountLabel)
        
        NSLayoutConstraint.activate([
            thirtyDaysAvgCountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            thirtyDaysAvgCountLabel.topAnchor.constraint(equalTo: thirtyDaysAvgLabel.bottomAnchor, constant: 15),
            thirtyDaysAvgCountLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    

}
