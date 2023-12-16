//
//  RestaurantViewController.swift
//  PastPaper
//
//  Created by Rafael on 12/13/23.
//

import UIKit

import SnapKit
import Then

final class RestaurantViewController: UIViewController {
    
    var category: Category?
    private var stores: [Store] = []
    
    private lazy var tableView = UITableView().then {
        $0.backgroundColor = .white
        $0.separatorStyle = .none
        $0.rowHeight = 400
        $0.estimatedRowHeight = UITableView.automaticDimension
        $0.dataSource = self
        $0.delegate = self
        $0.register(
            CategoryButtonCell.self,
            forHeaderFooterViewReuseIdentifier: CategoryButtonCell.id
        )
        $0.register(CategoryCell.self, forCellReuseIdentifier: CategoryCell.id)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.bottom.left.right.equalToSuperview()
        }
        tableView.reloadData()
        navigationController?.navigationBar.tintColor = .black
        navigationItem.largeTitleDisplayMode = .never
    }
    
}

extension RestaurantViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let subcategories = category?.subcategory else { return 0 }
        return subcategories.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: CategoryCell.id,
            for: indexPath
        ) as? CategoryCell, let category = category else {
            return UITableViewCell()
        }
        
        let subcategory = category.subcategory[indexPath.row]
        let stores = category.storeInfo
        let colors = category.colors
        
        cell.prepare(subTitle: subcategory, colors: colors, stores: stores)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard section == 0, 
            let headerView = tableView.dequeueReusableHeaderFooterView(
                withIdentifier: CategoryButtonCell.id
            ) as? CategoryButtonCell else {
            return nil
        }
        headerView.onButtonClicked = { [weak self] title in
            self?.scrollToCategory(title)
        }
        return headerView
    }
    
    private func scrollToCategory(_ title: String) {
        guard let index = category?.subcategory.firstIndex(where: { $0 == title }) else {
            print("카테고리를 찾을 수 없음")
            return
        }
        let indexPath = IndexPath(row: index, section: 0)
        tableView.scrollToRow(at: indexPath, at: .top, animated: true)
    }
    
}

extension RestaurantViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
}
