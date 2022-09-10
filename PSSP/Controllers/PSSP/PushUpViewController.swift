//
//  PushUpViewController.swift
//  PSSP
//
//  Created by Mutlu Aydin on 8/9/22.
//

import UIKit

class PushUpViewController: UIViewController {

    var sevenDaysAverage = UtilityFuncs()
    
    private let pushUpImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "pushUp")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let enterCompletedLabel = PSSPLabel()
    private let pushUpTextField = PSSPTextField()
    private let sevenDaysAvgLabel = PSSPLabel()
    private let thirtyDaysAvgLabel = PSSPLabel()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .psspBackgroundColor
        
        pushUpImageConfiguration()
        completedLabelConfiguration()

        pushUpTextFieldConfiguration()
        sevenDaysAvgLabelConfiguration()
        thirtyDaysAvgLabelConfiguration()

    }
   
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
    
    func sevenDaysAvgLabelConfiguration() {
        sevenDaysAvgLabel.translatesAutoresizingMaskIntoConstraints = false
        sevenDaysAvgLabel.text = "Seven Days: \(sevenDaysAverage.sevenDaysAverage()) "
                
        view.addSubview(sevenDaysAvgLabel)
        
        NSLayoutConstraint.activate([
            sevenDaysAvgLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            sevenDaysAvgLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            sevenDaysAvgLabel.topAnchor.constraint(equalTo: pushUpTextField.bottomAnchor, constant: 50),
            sevenDaysAvgLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    func thirtyDaysAvgLabelConfiguration() {
        thirtyDaysAvgLabel.translatesAutoresizingMaskIntoConstraints = false
        thirtyDaysAvgLabel.text = "Thirty Days: \(sevenDaysAverage.sevenDaysAverage()) "
        
        view.addSubview(thirtyDaysAvgLabel)
        
        NSLayoutConstraint.activate([
            thirtyDaysAvgLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            thirtyDaysAvgLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            thirtyDaysAvgLabel.topAnchor.constraint(equalTo: sevenDaysAvgLabel.bottomAnchor, constant: 25),
            thirtyDaysAvgLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    

}
