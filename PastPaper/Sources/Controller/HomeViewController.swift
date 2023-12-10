//
//  HomeViewController.swift
//  PastPaper
//
//  Created by Rafael on 12/7/23.
//

import UIKit

import SnapKit
import Then

class HomeViewController: UIViewController {
    
    private lazy var tableView = UITableView().then {
        $0.backgroundColor = .white
        $0.separatorStyle = .none
        $0.rowHeight = 220
        $0.dataSource = self
        $0.delegate = self
        $0.register(CategoryTableViewCell.self, forCellReuseIdentifier: CategoryTableViewCell.id)
        $0.register(
            MainCategoryHeaderView.self,
            forHeaderFooterViewReuseIdentifier: MainCategoryHeaderView.id
        )
    }
    
    private var dataSource = [CategoryModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.tableView)
        setupNavigationBar()
        self.tableView.snp.makeConstraints {
            $0.edges.equalTo(self.view)
        }
        self.dataSource = sampleModel
        self.tableView.reloadData()
    }
    
}

extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.dataSource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.dataSource[section].subCategoryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: CategoryTableViewCell.id,
            for: indexPath
        ) as! CategoryTableViewCell
        let row = self.dataSource[indexPath.section].subCategoryList[indexPath.row]
        cell.prepare(subTitle: row.name, colorModelList: row.colors)
        return cell
    }
    
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(
        _ tableView: UITableView,
        viewForHeaderInSection section: Int
    ) -> UIView? {
        let cell = tableView.dequeueReusableHeaderFooterView(
            withIdentifier: MainCategoryHeaderView.id
        ) as! MainCategoryHeaderView
        cell.prepare(title: self.dataSource[section].name)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == self.dataSource.count - 1 {
            return 70 // 탭 바 높이 + 10포인트
        }
        return 0
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView() // 투명한 뷰를 반환하여 실제로 보이지 않도록 함
    }
    
}

private extension HomeViewController {
    
    func setupNavigationBar() {
        setupNavigationBarTitle()
    }
    
    func setupNavigationBarTitle() {
        navigationController?.navigationBar.topItem?.title = "맛집족보"
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
}
