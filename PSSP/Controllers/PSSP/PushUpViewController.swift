//
//  PushUpViewController.swift
//  PSSP
//
//  Created by Mutlu Aydin on 8/9/22.
//

import UIKit

class PushUpViewController: UIViewController {

    private let pushUpImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "pushUp")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let pushUpTextField = PSSPTextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .psspBackgroundColor
        pushUpImageConfiguration()
        pushUpTextFieldConfiguration()

    }
   
    func pushUpImageConfiguration() {
        view.addSubview(pushUpImage)
        pushUpImage.layer.cornerRadius = 10
        pushUpImage.layer.masksToBounds = true
        
        NSLayoutConstraint.activate([
            
            pushUpImage.widthAnchor.constraint(equalToConstant: view.bounds.width*0.6),
            pushUpImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            pushUpImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            pushUpImage.heightAnchor.constraint(equalToConstant: view.bounds.width*0.6)
        
        ])
    }
    
    func pushUpTextFieldConfiguration() {
        pushUpTextField.translatesAutoresizingMaskIntoConstraints = false
        
        pushUpTextField.dropShadow(color: .shadowColor!, opacity: 0.5, offSet: CGSize(width: 5, height: 5), radius: 6)
        
        view.addSubview(pushUpTextField)
        
        NSLayoutConstraint.activate([
            
            pushUpTextField.widthAnchor.constraint(equalToConstant: 200),
            pushUpTextField.topAnchor.constraint(equalTo: pushUpImage.bottomAnchor, constant: 20),
            pushUpTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            pushUpTextField.heightAnchor.constraint(equalToConstant: 50)
        
        ])
        
    }
}
