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
    
    
    private let avgContainerView = SevenAndThirtyDaysContainer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .psspBackgroundColor
        
        pushUpImageConfiguration()
        completedLabelConfiguration()

        pushUpTextFieldConfiguration()
        
        
        avgDaysContainerViewConfiguration()

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
    
    
    // Average Days ContainerView Configuration
    func avgDaysContainerViewConfiguration() {
        avgContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(avgContainerView)
        
        NSLayoutConstraint.activate([
            avgContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            avgContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            avgContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -15),
            avgContainerView.topAnchor.constraint(equalTo: pushUpTextField.bottomAnchor, constant: 10)
        ])
    }
    
    

}
