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
        tabBar.backgroundColor = .systemPink
    }
    
    // MARK: - Helpers
    
    func setupViewControllers() {
        let feedViewController = FeedViewController()
        let exploreViewController = ExploreViewController()
        let notificationsViewController = NotificationsViewController()
        let conversationsViewController = ConversationsViewController()
        
        viewControllers = [
            feedViewController,
            exploreViewController,
            notificationsViewController,
            conversationsViewController
        ]
    }

}
