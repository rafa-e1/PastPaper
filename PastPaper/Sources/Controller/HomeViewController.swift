//
//  HomeViewController.swift
//  PastPaper
//
//  Created by Rafael on 12/7/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        setupUI()
    }
    
}

private extension HomeViewController {
    func setupNavigationBar() {
        configureNavigationBarTitle()
    }
    
    func configureNavigationBarTitle() {
        navigationController?.navigationBar.topItem?.title = "맛집족보"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setupUI() {
        view.backgroundColor = .systemBackground
    }
}