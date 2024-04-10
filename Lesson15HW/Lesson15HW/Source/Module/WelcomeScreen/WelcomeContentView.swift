//
//  WelcomeContentView.swift
//  Lesson15HW
//
//  Created by Алина Власенко on 10.04.2024.
//

import UIKit

class WelcomeContentView: UIView {

    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 44, weight: .black)
        label.text = "Welcome"
        label.textColor = .systemTeal
        return label
    }()
    
    let contentStackView = WelcomeButtonStackView() // add stack view
    
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
        addSubview(welcomeLabel)
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

    // MARK: - Apply Constraints
    private func applyConstraints() {
        
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let welcomeLabelConstraints = [
            welcomeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let scrollViewConstraints = [
            contentStackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 50),
            contentStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentStackView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6)
        ]
        
        
        NSLayoutConstraint.activate(welcomeLabelConstraints)
        NSLayoutConstraint.activate(scrollViewConstraints)
    }
}
