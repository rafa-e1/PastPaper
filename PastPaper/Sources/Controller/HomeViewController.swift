//
//  HomeViewController.swift
//  PastPaper
//
//  Created by Rafael on 12/7/23.
//

import UIKit

import SnapKit
import Then

final class HomeViewController: UIViewController {
    
    // MARK: - Category Data
    
    private let categoriesModel = CategoriesModel()
    private let lastSection: [Category] = Category.categoriesForSection3()
    
    // MARK: - UI Components
    
    private lazy var tableView = UITableView(frame: .zero, style: .insetGrouped).then {
        $0.backgroundColor = #colorLiteral(red: 0.9647058845, green: 0.9647058845, blue: 0.9647058845, alpha: 1)
        $0.separatorStyle = .none
        $0.rowHeight = 50
        $0.dataSource = self
        $0.delegate = self
        $0.register(HomeCell.self, forCellReuseIdentifier: HomeCell.identifier)
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI()
    }
    
}

// MARK: - Data Source

extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categoriesModel.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoriesModel.sections[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: HomeCell.identifier,
            for: indexPath
        ) as? HomeCell else { return UITableViewCell() }
        let category = categoriesModel.sections[indexPath.section][indexPath.row]
        cell.configure(with: category)
        cell.selectionStyle = .none
        return cell
    }
    
}

// MARK: - Delegate

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == lastSection.count {
            return 70 // 탭 바 높이 + 10포인트
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20 // 여백의 높이 설정
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView() // 투명한 뷰를 반환하여 실제로 보이지 않도록 함
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = categoriesModel.sections[indexPath.section][indexPath.row]
        
        let restaurantVC = RestaurantViewController()
        restaurantVC.title = category.category
        restaurantVC.category = category
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(
            title: "",
            style: .plain,
            target: nil,
            action: nil
        )
        navigationController?.pushViewController(restaurantVC, animated: true)
    }
    
}

// MARK: - UI Setup

private extension HomeViewController {
    
    func setupUI() {
        setupNavigationBar()
        setupTableView()
    }
    
}

// MARK: - Navigation Bar Configuration Extensions

private extension HomeViewController {
    
    func setupNavigationBar() {
        configureNavigationBarTitle()
        configureNavigationBarShadow()
    }
    
    func configureNavigationBarTitle() {
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.topItem?.title = "맛집족보"
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.largeTitleTextAttributes = [
            .foregroundColor: UIColor.black
        ]
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func configureNavigationBarShadow() {
        navigationController?.navigationBar.layer.masksToBounds = false
        navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        navigationController?.navigationBar.layer.shadowOpacity = 0.2
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 4)
        navigationController?.navigationBar.layer.shadowRadius = 2
    }
    
}

// MARK: - Table View Configuration Extensions

private extension HomeViewController {
    
    func setupTableView() {
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints {
            $0.edges.equalTo(view)
        }
        
        tableView.reloadData()
    }
    
}
