//
//  BlackViewController.swift
//  Lesson15HW
//
//  Created by Алина Власенко on 10.04.2024.
//

import UIKit

class BlackViewController: UIViewController {
    
    private lazy var goToGreenButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go To Green Screen", for: .normal)
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(didTabToGoToGreenButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        // setup UI Elements
        addSubviews()
        applyConstraints()
    }
    
    // MARK: - Add Subviews
    private func addSubviews() {
        view.addSubview(goToGreenButton)
    }
    
    // MARK: - Actions
    @objc private func didTabToGoToGreenButton() {
        let greenVC = GreenViewController()
        self.navigationController?.pushViewController(greenVC, animated: true)
        print("BlackViewController -> didTabToGoToGreenButton")
    }
    
    // MARK: - Apply Constraints
    private func applyConstraints() {
        
        goToGreenButton.translatesAutoresizingMaskIntoConstraints = false
        
        let goToGreenButtonConstraints = [
            goToGreenButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -180),
            goToGreenButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            goToGreenButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            goToGreenButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        NSLayoutConstraint.activate(goToGreenButtonConstraints)
    }
}

