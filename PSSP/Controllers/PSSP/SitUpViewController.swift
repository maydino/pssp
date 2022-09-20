//
//  SitUpViewController.swift
//  PSSP
//
//  Created by Mutlu Aydin on 8/28/22.
//

import UIKit

final class SitUpViewController: UIViewController {
    
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        button.setTitle("test button", for: .normal)
        button.backgroundColor = .red

        button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        button.dropShadow(color: .white, opacity: 0.5, offSet: CGSize(width: 5, height: 5), radius: 5)
        view.addSubview(button)
        
    }
    

    

}
