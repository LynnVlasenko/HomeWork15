//
//  MainTabbarViewController.swift
//  Lesson15HW
//
//  Created by Алина Власенко on 10.04.2024.
//

import UIKit

class MainTabbarViewController: UITabBarController {
    
    //MARK: - Override
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setUpControllers()
        configureTabBar()
    }
    
    //MARK: - Set Up Controllers
    private func setUpControllers() {
        
        // Set Up WhiteViewController
        let whiteVC = WhiteViewController()
        whiteVC.title = "White Screen"
        whiteVC.navigationItem.largeTitleDisplayMode = .always
        
        let vc1  = UINavigationController(rootViewController: whiteVC)
        vc1.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "phone"),
            selectedImage: UIImage(systemName: "phone.fill"))
        
        vc1.navigationBar.prefersLargeTitles = true
        vc1.navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.systemYellow
        ]
        
        // Set Up BrownViewController()
        let brownVC = BrownViewController()
        brownVC.title = "Brown Screen"
        brownVC.navigationItem.largeTitleDisplayMode = .always
        
        let vc2  = UINavigationController(rootViewController: brownVC)
        vc2.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "message"),
            selectedImage: UIImage(systemName: "message.fill"))
        
        vc2.navigationBar.prefersLargeTitles = true
        vc2.navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        
        // Set Up BlackViewController()
        let blackVC = BlackViewController()
        blackVC.title = "Black Screen"
        blackVC.navigationItem.largeTitleDisplayMode = .always
        
        let vc3 = UINavigationController(rootViewController: blackVC)
        vc3.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "star"),
            selectedImage: UIImage(systemName: "star.fill"))
        
        vc3.navigationBar.prefersLargeTitles = true
        vc3.navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.systemGreen
        ]
        
        //set Controllers
        setViewControllers([vc1, vc2, vc3], animated: true)
    }
    
    //MARK: - Configure Tab Bar
    private func configureTabBar() {
        tabBar.tintColor = .systemBlue
        tabBar.unselectedItemTintColor = .lightGray
    }
}
