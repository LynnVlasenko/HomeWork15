//
//  WelcomeViewController+SetupButtons.swift
//  Lesson15HW
//
//  Created by Алина Власенко on 10.04.2024.
//

import UIKit

extension WelcomeViewController {
    
    func setupButtons() {
        // didTabToSignInButtonComplition
        contentView.contentStackView.didTabToSignInButtonComplition = { [weak self] in
            guard let self = self else { return }
            let signInVC = SignInViewController()
            self.navigationController?.pushViewController(signInVC, animated: true)
            navigationController?.isNavigationBarHidden = false
        }
        
        // didTabToSignUpButtonComplition
        contentView.contentStackView.didTabToSignUpButtonComplition = { [weak self] in
            guard let self = self else { return }
            let signUpVC = SignUpViewController()
            self.navigationController?.pushViewController(signUpVC, animated: true)
            navigationController?.isNavigationBarHidden = false
        }
    }
}
