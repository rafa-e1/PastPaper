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
    
    private lazy var tableView = UITableView(frame: .zero, style: .insetGrouped).then {
        $0.backgroundColor = #colorLiteral(red: 0.9647058845, green: 0.9647058845, blue: 0.9647058845, alpha: 1)
        $0.separatorStyle = .none
        $0.rowHeight = 50
        $0.dataSource = self
        $0.delegate = self
        $0.register(HomeCell.self, forCellReuseIdentifier: HomeCell.id)
    }
    
    private var data: [CategorySection] = CategorySection.generateData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
}

extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.data[section].lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: HomeCell.id,
            for: indexPath
        ) as! HomeCell
        let section = data[indexPath.section]
        let home = section.lists[indexPath.row]
        cell.configure(home)
        cell.selectionStyle = .none
        return cell
    }
    
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == self.data.count - 1 {
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
    
}

private extension HomeViewController {
    
    func configureNavigationBar() {
        setNavigationBarTitle()
        setNavigationBarShadow()
    }
    
    func setNavigationBarTitle() {
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
