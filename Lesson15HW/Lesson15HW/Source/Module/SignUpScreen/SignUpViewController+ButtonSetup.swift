//
//  SignUpViewController+ButtonSetup.swift
//  Lesson15HW
//
//  Created by Алина Власенко on 10.04.2024.
//

import UIKit

extension SignUpViewController {
    
    func setupButtons() {
        // didTabSignUpToGoButtonComplition
        contentView.contentStackView.didTabSignUpToGoButtonComplition = { [weak self] in
            guard let self = self else { return }
            let mainTabbarVC = MainTabbarViewController()
            self.navigationController?.pushViewController(mainTabbarVC, animated: true)
            navigationController?.isNavigationBarHidden = true
        }
    }
}
