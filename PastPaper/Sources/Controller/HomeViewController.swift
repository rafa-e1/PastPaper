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
    
    private var categoriesForSection0: [Category] = Category.categoriesForSection0()
    private var categoriesForSection1: [Category] = Category.categoriesForSection1()
    private var categoriesForSection2: [Category] = Category.categoriesForSection2()
    private var categoriesForSection3: [Category] = Category.categoriesForSection3()
    
    private lazy var tableView = UITableView(frame: .zero, style: .insetGrouped).then {
        $0.backgroundColor = #colorLiteral(red: 0.9647058845, green: 0.9647058845, blue: 0.9647058845, alpha: 1)
        $0.separatorStyle = .none
        $0.rowHeight = 50
        $0.dataSource = self
        $0.delegate = self
        $0.register(HomeCell.self, forCellReuseIdentifier: HomeCell.id)
    }
    
    private let lastSection: [Category] = Category.categoriesForSection3()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
}

extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return categoriesForSection0.count
        case 1:
            return categoriesForSection1.count
        case 2:
            return categoriesForSection2.count
        case 3:
            return categoriesForSection3.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: HomeCell.id,
            for: indexPath
        ) as? HomeCell else { return UITableViewCell() }
        let category: Category
        switch indexPath.section {
        case 0:
            category = categoriesForSection0[indexPath.row]
        case 1:
            category = categoriesForSection1[indexPath.row]
        case 2:
            category = categoriesForSection2[indexPath.row]
        case 3:
            category = categoriesForSection3[indexPath.row]
        default:
            fatalError("Unknown section")
        }
        cell.configure(category)
        cell.selectionStyle = .none
        return cell
    }
    
}

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
        let category: Category
        switch indexPath.section {
        case 0:
            category = categoriesForSection0[indexPath.row]
        case 1:
            category = categoriesForSection1[indexPath.row]
        case 2:
            category = categoriesForSection2[indexPath.row]
        case 3:
            category = categoriesForSection3[indexPath.row]
        default:
            return
        }
        
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
