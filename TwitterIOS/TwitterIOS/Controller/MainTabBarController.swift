//
//  MainTabBarController.swift
//  TwitterIOS
//
//  Created by Paulo Rodrigues on 18/05/22.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers()
        tabBar.backgroundColor = .systemGray
    }
    
    // MARK: - Helpers
    
    func setupViewControllers() {
        let feedViewController = FeedViewController()
        
        let navigationController = templateNavigationController(image: UIImage(named: "home_unselected"), rootViewController: feedViewController)
        
        let exploreViewController = ExploreViewController()
        
        let navigationController2 = templateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: exploreViewController)
        
        let notificationsViewController = NotificationsViewController()
        
        let navigationController3 = templateNavigationController(image: UIImage(named: "like_unselected"), rootViewController: notificationsViewController)
        
        let conversationsViewController = ConversationsViewController()
        
        let navigationController4 = templateNavigationController(image: UIImage(named: "ic_mail_outline_white_2x-1"), rootViewController: conversationsViewController)
        
        viewControllers = [
            navigationController,
            navigationController2,
            navigationController3,
            navigationController4
        ]
    }
    
    func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.tabBarItem.image = image
        
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.backgroundColor = .systemGray
        
        navigationController.navigationBar.standardAppearance = navigationBarAppearance
        navigationController.navigationBar.scrollEdgeAppearance = navigationBarAppearance
        
        return navigationController
    }

}
