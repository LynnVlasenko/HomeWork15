//
//  SignUpContentView.swift
//  Lesson15HW
//
//  Created by Алина Власенко on 10.04.2024.
//

import UIKit

class SignUpContentView: UIView {
    
    private let signUpLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 44, weight: .black)
        label.text = "Sign Up"
        label.textColor = .systemTeal
        return label
    }()
    
    let contentStackView = SignUpTextFieldStackView() // add stack view
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupScrollView()
        addSubviews()
        applyConstraints()
    }
    
    required init? (coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Add Subviews
    private func addSubviews() {
        addSubview(signUpLabel)
        addSubview(contentStackView)
    }
    
    private func setupScrollView() {
        contentStackView.axis = .vertical
        contentStackView.alignment = .fill
        contentStackView.distribution = .fill
        contentStackView.spacing = 10
        contentStackView.contentMode = .scaleToFill
        contentStackView.isLayoutMarginsRelativeArrangement = true
    }
    
    // MARK: - Aapply Constraints
    private func applyConstraints() {
        
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let signInLabelConstraints = [
            signUpLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            signUpLabel.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let scrollViewConstraints = [
            contentStackView.topAnchor.constraint(equalTo: signUpLabel.bottomAnchor, constant: 50),
            contentStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentStackView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6)
        ]
        
        
        NSLayoutConstraint.activate(signInLabelConstraints)
        NSLayoutConstraint.activate(scrollViewConstraints)
    }
}
