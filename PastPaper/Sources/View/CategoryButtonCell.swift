//
//  CategoryButtonCell.swift
//  PastPaper
//
//  Created by Rafael on 12/16/23.
//

import UIKit

import SnapKit
import Then

class CategoryButtonCell: UITableViewHeaderFooterView {
    
    static let id = "CategoryButtonCell"
    private let subcategories = Category.subcategories
    
    private lazy var scrollView = UIScrollView().then {
        $0.showsHorizontalScrollIndicator = false
    }
    
    private lazy var buttonStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.spacing = 10
        $0.alignment = .fill
        $0.distribution = .fillProportionally
    }
    
    var onButtonClicked: ((String) -> Void)?
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
        setupScrollView()
        createButtons()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        backgroundView = UIView()
        backgroundView?.backgroundColor = .white
        addSubview(scrollView)
    }
    
    private func setupScrollView() {
        scrollView.addSubview(buttonStackView)
        
        scrollView.snp.makeConstraints { make in
            make.top.bottom.equalTo(10)
            make.left.right.equalToSuperview()
        }
        
        buttonStackView.snp.makeConstraints { make in
            make.top.bottom.equalTo(scrollView)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(40)
        }
    }
    
    private func createButtons() {
        for subcategory in subcategories {
            let button = createButton(withTitle: subcategory)
            buttonStackView.addArrangedSubview(button)
        }
    }
    
    private func createButton(withTitle title: String) -> UIButton {
        let button = UIButton().then {
            var config = UIButton.Configuration.filled()
            config.title = title
            config.baseBackgroundColor = .black
            config.baseForegroundColor = .white
            config.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
            
            $0.configuration = config
            $0.clipsToBounds = true
            $0.layer.cornerRadius = 10
            
            $0.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
        return button
    }
    
    @objc private func buttonTapped(_ sender: UIButton) {
        if let title = sender.titleLabel?.text {
            onButtonClicked?(title)
        }
    }
    
}
