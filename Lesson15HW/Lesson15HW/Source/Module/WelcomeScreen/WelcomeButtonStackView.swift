//
//  WelcomeButtonStackView.swift
//  Lesson15HW
//
//  Created by Алина Власенко on 10.04.2024.
//

import UIKit

class WelcomeButtonStackView: UIStackView {
    
    var didTabToSignInButtonComplition: (() -> ())?
    var didTabToSignUpButtonComplition: (() -> ())?
    var didTabToSkipButtonComplition: (() -> ())?
    
    // MARK: - UI
    private lazy var signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(didTabToSignInButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(didTabToSignUpButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var skipButton: UIButton = {
        let button = UIButton()
        button.setTitle("Skip", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.systemBlue, for: .normal)
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(didTabToSkipButton), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
        applyConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Add Subviews
    private func addSubviews() {
        [signInButton, signUpButton, skipButton]
            .forEach { self.addArrangedSubview($0) }
    }
    
    // MARK: - Actions
    @objc private func didTabToSignInButton() {
        didTabToSignInButtonComplition?()
        print("WelcomeButtonStackView -> didTabToSignInButton")
    }
    
    @objc private func didTabToSignUpButton() {
        didTabToSignUpButtonComplition?()
        print("WelcomeButtonStackView -> didTabToSignUpButton")
    }
    
    @objc private func didTabToSkipButton() {
        didTabToSkipButtonComplition?()
        print("WelcomeButtonStackView -> didTabToSkipButton")
    }
    
    // MARK: - Apply Constraints
    private func applyConstraints() {
        
        [signInButton, signUpButton, skipButton]
            .forEach {
                $0.translatesAutoresizingMaskIntoConstraints = false
                $0.heightAnchor.constraint(equalToConstant: 50).isActive = true;}
    }
}
