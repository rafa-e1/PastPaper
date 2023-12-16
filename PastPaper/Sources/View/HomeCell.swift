//
//  HomeCell.swift
//  PastPaper
//
//  Created by Rafael on 12/13/23.
//

import UIKit

import SnapKit
import Then

class HomeCell: UITableViewCell {
    
    static let id = "HomeCell"
    
    private lazy var categoryLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 20.0, weight: .bold)
        $0.textColor = .black
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.backgroundColor = .white
        contentView.addSubview(categoryLabel)
        
        categoryLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(20)
        }
    }
    
    func configure(_ data: Category) {
        categoryLabel.text = data.category
    }
    
}
