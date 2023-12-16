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
    
    // MARK: - 셀 아이디
    
    static let id = "HomeCell"
    
    // MARK: - 카테고리 타이틀 설정
    
    private lazy var categoryLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 20.0, weight: .bold)
        $0.textColor = .black
    }
    
    // MARK: - 초기화 메서드
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - 데이터 구성

extension HomeCell {
    
    func configure(_ data: Category) {
        categoryLabel.text = data.category
    }
    
}

// MARK: - UI 설정

private extension HomeCell {
    
    func configureUI() {
        contentView.backgroundColor = .white
        contentView.addSubview(categoryLabel)
        
        categoryLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(20)
        }
    }
    
}
