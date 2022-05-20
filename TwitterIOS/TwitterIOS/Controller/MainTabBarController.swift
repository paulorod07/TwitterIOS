//
//  MainTabBarController.swift
//  TwitterIOS
//
//  Created by Paulo Rodrigues on 18/05/22.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    // MARK: - Properties
    
    private var actionButtonPadding: CGFloat = 56
    
    lazy var actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .twitterBlue
        button.tintColor = .white
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.layer.cornerRadius = actionButtonPadding / 2
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers()
        setupUI()
    }
    
    // MARK: - Selectors
    
    @objc func actionButtonTapped() {
        print("printed")
    }
    
    // MARK: - Helpers
    
    private func setupUI() {
        view.addSubview(actionButton)
        setupActionButtonConstraints()
    }
    
    private func setupActionButtonConstraints() {
        NSLayoutConstraint.activate([
            actionButton.heightAnchor.constraint(equalToConstant: actionButtonPadding),
            actionButton.widthAnchor.constraint(equalToConstant: actionButtonPadding),
            actionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64),
            actionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ])
    }
    
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
        navigationBarAppearance.backgroundColor = .white
        
        navigationController.navigationBar.standardAppearance = navigationBarAppearance
        navigationController.navigationBar.scrollEdgeAppearance = navigationBarAppearance
        
        return navigationController
    }

}
