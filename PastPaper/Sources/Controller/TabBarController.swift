//
//  TabBarController.swift
//  PastPaper
//
//  Created by Rafael on 12/8/23.
//

//
//  TabBarController.swift
//  PastPaper
//
//  Created by Rafael on 12/8/23.
//

import UIKit

class TabBarController: UITabBarController {
    
    private lazy var homeVC: UIViewController = {
        let vc = HomeViewController()
        let navigationController = UINavigationController(rootViewController: vc)
        return navigationController
    }()
    
    private lazy var bookmarkVC: UIViewController = {
        let vc = BookmarkViewController()
        return vc
    }()
    
    private lazy var settingVC: UIViewController = {
        let vc = SettingViewController()
        return vc
    }()
    
    private let customTabBarView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 30
        
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.systemGray.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize(width: 0, height: 1)
        view.layer.shadowRadius = 2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var homeButton: UIButton = {
        return createTabBarButton(imageName: "house")
    }()
    
    private lazy var bookmarkButton: UIButton = {
        return createTabBarButton(imageName: "bookmark")
    }()
    
    private lazy var settingButton: UIButton = {
        return createTabBarButton(imageName: "gearshape")
    }()
    
    private lazy var tabBarButtons: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [
                homeButton,
                bookmarkButton,
                settingButton
            ]
        )
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        setupAddTarget()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        customTabBarView.frame = tabBar.bounds
    }
    
    private func configureUI() {
        view.backgroundColor = .systemBackground
        viewControllers = [homeVC, bookmarkVC, settingVC]
        
        addSubviews()
        setupConstraints()
    }
    
}

// MARK: - Configure Tab Bar Button

extension TabBarController {
    private func createTabBarButton(imageName: String) -> UIButton {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: imageName)?
            .withTintColor(.black, renderingMode: .alwaysOriginal)
            .withConfiguration(
                UIImage.SymbolConfiguration(
                    pointSize: 30.0, weight: .regular
                )
            ), for: .normal
        )
        return button
    }
}

// MARK: - Button Actions

extension TabBarController {
    private func setupAddTarget() {
        homeButton.addTarget(
            self,
            action: #selector(homeButtonTapped),
            for: .touchUpInside
        )
        
        bookmarkButton.addTarget(
            self,
            action: #selector(bookmarkButtonTapped),
            for: .touchUpInside
        )
        
        settingButton.addTarget(
            self,
            action: #selector(settingButtonTapped),
            for: .touchUpInside
        )
    }
    
    @objc private func homeButtonTapped() {
        selectedIndex = 0
    }
    
    @objc private func bookmarkButtonTapped() {
        selectedIndex = 1
    }
    
    @objc private func settingButtonTapped() {
        selectedIndex = 2
    }
}

// MARK: - Setup UI

extension TabBarController {
    private func addSubviews() {
        tabBar.addSubview(customTabBarView)
        customTabBarView.addSubview(tabBarButtons)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            customTabBarView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customTabBarView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 20
            ),
            customTabBarView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5
            ),
            customTabBarView.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        NSLayoutConstraint.activate([
            tabBarButtons.centerXAnchor.constraint(equalTo: customTabBarView.centerXAnchor),
            tabBarButtons.leadingAnchor.constraint(equalTo: customTabBarView.leadingAnchor),
            tabBarButtons.bottomAnchor.constraint(equalTo: customTabBarView.bottomAnchor),
            tabBarButtons.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
