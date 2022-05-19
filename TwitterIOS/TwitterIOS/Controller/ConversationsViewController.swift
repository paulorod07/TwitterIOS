//
//  ConversationsViewController.swift
//  TwitterIOS
//
//  Created by Paulo Rodrigues on 18/05/22.
//

import UIKit

class ConversationsViewController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Helpers
    
    func setupUI() {
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    }
    
}
