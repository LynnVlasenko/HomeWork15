//
//  BrownViewController.swift
//  Lesson15HW
//
//  Created by Алина Власенко on 10.04.2024.
//

import UIKit

class BrownViewController: UIViewController {
    
    private lazy var goToRedButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go To Red Screen", for: .normal)
        button.backgroundColor = .systemRed
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(didTabToGoToRedButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBrown
        
        // setup UI Elements
        addSubviews()
        applyConstraints()
    }
    
    // MARK: - Add Subviews
    private func addSubviews() {
        view.addSubview(goToRedButton)
    }
    
    // MARK: - Actions
    @objc private func didTabToGoToRedButton() {
        let redVC = RedViewController()
        self.navigationController?.pushViewController(redVC, animated: true)
        print("BrownViewController -> didTabToGoToRedButton")
    }
    
    // MARK: - Apply Constraints
    private func applyConstraints() {
        
        goToRedButton.translatesAutoresizingMaskIntoConstraints = false
        
        let goToRedButtonConstraints = [
            goToRedButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -180),
            goToRedButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            goToRedButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            goToRedButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        NSLayoutConstraint.activate(goToRedButtonConstraints)
    }
}
