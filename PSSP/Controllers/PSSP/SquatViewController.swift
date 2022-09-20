//
//  SquatViewController.swift
//  PSSP
//
//  Created by Mutlu Aydin on 8/28/22.
//

import UIKit

final class SquatViewController: UIViewController {
    
    let pushUpImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "pushUp")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        pushUpImageConfiguration()

    }
   
    func pushUpImageConfiguration() {
        
        
        view.addSubview(pushUpImage)
        
        NSLayoutConstraint.activate([
            
            pushUpImage.widthAnchor.constraint(equalToConstant: view.bounds.width*0.6),
            pushUpImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            pushUpImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            pushUpImage.heightAnchor.constraint(equalToConstant: view.bounds.width*0.6)
        
        ])
        
        
    }
    

}
