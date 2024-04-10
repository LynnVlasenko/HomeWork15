//
//  WhiteViewController.swift
//  Lesson15HW
//
//  Created by Алина Власенко on 10.04.2024.
//

import UIKit

class WhiteViewController: UIViewController {
    
    private lazy var goToYellowButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go To Yellow Screen ->", for: .normal)
        button.backgroundColor = .systemYellow
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(didTabToGoToYellowButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // setup UI Elements
        addSubviews()
        applyConstraints()
    }
    
    // MARK: - Add Subviews
    private func addSubviews() {
        view.addSubview(goToYellowButton)
    }
    
    @objc private func didTabToGoToYellowButton() {
        print("WhiteViewController -> didTabToGoToYellowButton")
    }
    
    // MARK: - Apply Constraints
    private func applyConstraints() {
        
        goToYellowButton.translatesAutoresizingMaskIntoConstraints = false
        
        let goToYellowButtonConstraints = [
            goToYellowButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -180),
            goToYellowButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            goToYellowButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            goToYellowButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        NSLayoutConstraint.activate(goToYellowButtonConstraints)
    }
}
