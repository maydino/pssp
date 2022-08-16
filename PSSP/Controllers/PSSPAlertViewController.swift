//
//  PSSPAlertViewController.swift
//  PSSP
//
//  Created by Mutlu Aydin on 8/14/22.
//

import UIKit

class PSSPAlertViewController: UIViewController {

    let containerView = UIView()
    let titleLabel = PSSPTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = PSSPBodyLabel(textAlignment: .center)
    let actionButton = PSSPButton(backgroundColor: .systemGray, title: "Ok")
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    let padding: CGFloat = 10
    
    init (title: String, message: String, buttonTitle: String) {
        super .init(nibName: nil, bundle: nil)
        self.title = title
        self.message = message
        self.buttonTitle = buttonTitle
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .psspBackgroundColor
        configureContainerView()
        configureTitleLabel()
        configureActionButton()
        configureMessageLabel()
    }
    
    func configureContainerView() {
        view.addSubview(containerView)
        
        containerView.backgroundColor = .psspBackgroundColor
        containerView.layer.cornerRadius = 12
        containerView.layer.borderWidth = 2
        containerView.layer.borderColor = UIColor.white.cgColor
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            containerView.widthAnchor.constraint(equalToConstant: view.bounds.width/2),
            containerView.heightAnchor.constraint(equalToConstant: view.bounds.height/4)
            
        ])
    }
    
    func configureTitleLabel() {
        containerView.addSubview(titleLabel)
        titleLabel.text = alertTitle ?? "Oppps! Try again."
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            titleLabel.centerYAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.centerXAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: view.bounds.height / 5)
            
        ])
    }
    
    func configureActionButton() {
        
        containerView.addSubview(actionButton)
        actionButton.setTitle(buttonTitle ?? "Ok", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissViewController), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0),
            actionButton.leadingAnchor.constraint(equalTo: containerView.centerXAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 28)
            
        ])
        
    }
    
    func configureMessageLabel() {
        
        containerView.addSubview(messageLabel)
        messageLabel.text = message ?? "Opps! with body label"
        messageLabel.numberOfLines = 4
        
        NSLayoutConstraint.activate([
            messageLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor, constant: 0),
            messageLabel.leadingAnchor.constraint(equalTo: containerView.centerXAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            messageLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding),
        ])
        
    }
    
    @objc func dismissViewController() {
        dismiss(animated: true)
    }
  
}
