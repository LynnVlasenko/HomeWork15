//
//  SignUpViewController.swift
//  Lesson15HW
//
//  Created by Алина Власенко on 10.04.2024.
//

import UIKit

class SignUpViewController: UIViewController {

    let contentView = SignUpContentView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        // setup UI Elements
        addSubviews()
        applyConstraints()
    }
    
    // MARK: - Add Subviews
    private func addSubviews() {
        view.addSubview(contentView)
    }
    
    // MARK: - Apply Constraints
    private func applyConstraints() {
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        let contentViewConstraints = [
            contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contentView.widthAnchor.constraint(equalTo: view.widthAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 330)
        ]
        
        NSLayoutConstraint.activate(contentViewConstraints)
    }

}
