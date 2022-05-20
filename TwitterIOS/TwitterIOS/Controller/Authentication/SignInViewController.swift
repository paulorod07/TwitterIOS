//
//  SignInViewController.swift
//  TwitterIOS
//
//  Created by Paulo Rodrigues on 20/05/22.
//

import UIKit

class SignInViewController: UIViewController {
    
    // MARK: - Properties
    
    private lazy var logoImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "TwitterLogo")
        view.contentMode = .scaleAspectFit
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Helpers
    
    private func setupUI() {
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(logoImageView)
        setupLogoImageViewConstraints()
        
        let logoImageViewDimensions: CGFloat = 150
        logoImageView.setDimensions(width: logoImageViewDimensions,
                                    height: logoImageViewDimensions)
    }
    
    private func setupLogoImageViewConstraints() {
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
    }

}
