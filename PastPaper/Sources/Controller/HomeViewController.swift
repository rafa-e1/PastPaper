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
    
    // MARK: - 카테고리 데이터
    
    private let categoriesModel = CategoriesModel()
    private let lastSection: [Category] = Category.categoriesForSection3()
    
    // MARK: - 테이블 뷰 설정
    
    private lazy var tableView = UITableView(frame: .zero, style: .insetGrouped).then {
        $0.backgroundColor = #colorLiteral(red: 0.9647058845, green: 0.9647058845, blue: 0.9647058845, alpha: 1)
        $0.separatorStyle = .none
        $0.rowHeight = 50
        $0.dataSource = self
        $0.delegate = self
        $0.register(HomeCell.self, forCellReuseIdentifier: HomeCell.id)
    }
    
    // MARK: - 생명주기
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI()
    }
    
}

// MARK: - 데이터 소스 구현

extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categoriesModel.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoriesModel.sections[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: HomeCell.id,
            for: indexPath
        ) as? HomeCell else { return UITableViewCell() }
        let category = categoriesModel.sections[indexPath.section][indexPath.row]
        cell.configure(category)
        cell.selectionStyle = .none
        return cell
    }
    
}

// MARK: - 델리게이트 구현

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

// MARK: - UI 설정

private extension HomeViewController {
    
    func configureUI() {
        configureNavigationBar()
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints {
            $0.edges.equalTo(view)
        }
        
        tableView.reloadData()
    }
    
}

// MARK: - 네비게이션 바 설정

private extension HomeViewController {
    
    func configureNavigationBar() {
        setNavigationBarTitle()
        setNavigationBarShadow()
    }
    
    func setNavigationBarTitle() {
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.topItem?.title = "맛집족보"
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.largeTitleTextAttributes = [
            .foregroundColor: UIColor.black
        ]
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setNavigationBarShadow() {
        navigationController?.navigationBar.layer.masksToBounds = false
        navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        navigationController?.navigationBar.layer.shadowOpacity = 0.2
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 4)
        navigationController?.navigationBar.layer.shadowRadius = 2
    }
    
}
