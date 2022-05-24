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
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 8
        return view
    }()
    
    private lazy var emailContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private lazy var passwordContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
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
        
        view.addSubview(stackView)
        setupStackViewConstraints()
    }
    
    private func setupStackViewConstraints() {
        stackView.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor)
    }
    
    private func setupLogoImageViewConstraints() {
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
    }

}
