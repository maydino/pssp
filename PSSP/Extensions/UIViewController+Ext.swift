//
//  UIViewController+Ext.swift
//  PSSP
//
//  Created by Mutlu Aydin on 8/16/22.
//

import UIKit

extension UIViewController {
    
    func presentPSSPAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        
        DispatchQueue.main.async {
            
            let alertVC = PSSPAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
            
        }
        
    }
    
}
