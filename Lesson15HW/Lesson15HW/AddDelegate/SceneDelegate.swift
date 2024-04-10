//
//  SceneDelegate.swift
//  Lesson15HW
//
//  Created by Алина Власенко on 10.04.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
        let initialVc = WelcomeViewController()
        let navigationController = UINavigationController(rootViewController: initialVc)
        navigationController.isNavigationBarHidden = true
            
        window.rootViewController = navigationController
    
        self.window = window
        
        window.makeKeyAndVisible()
    }
}

