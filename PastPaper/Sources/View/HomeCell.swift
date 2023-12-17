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
    
    // MARK: - Identifiers
    
    static let identifier = "HomeCell"
    
    // MARK: - UI Components
    
    private lazy var categoryLabel = UILabel().then {
        $0.configureLabel(font: .systemFont(ofSize: 20.0, weight: .bold), textColor: .black)
    }
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Configuration
    
    func configure(with category: Category) {
        categoryLabel.text = category.category
    }
    
}

// MARK: - UI Setup

private extension HomeCell {
    
    func setupUI() {
        contentView.backgroundColor = .white
        contentView.addSubview(categoryLabel)
        setConstraints()
    }
    
    func setConstraints() {
        categoryLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.left.equalTo(20)
        }
    }
    
}
