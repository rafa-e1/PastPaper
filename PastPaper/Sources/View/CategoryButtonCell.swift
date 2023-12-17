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
    
    // MARK: - Identifiers
    
    static let id = "CategoryButtonCell"
    
    // MARK: - Subcategory Button Title Data
    
    private let subcategories = CategoryDataGenerator.subcategories
    
    // MARK: - UI Components
    
    private lazy var scrollView = UIScrollView().then {
        $0.showsHorizontalScrollIndicator = false
    }
    
    private lazy var subcategoryButtons = UIStackView().then {
        $0.configureStackView(
            alignment: .fill,
            axis: .horizontal,
            distribution: .fillProportionally,
            spacing: 10
        )
    }
    
    // MARK: - Subcategory Button Click Handler
    
    var onButtonClicked: ((String) -> Void)?
    
    // MARK: - Initializers
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout Subviews
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setCellBottomShadow()
    }
    
    // MARK: - Button Action
    
    @objc private func subcategoryButtonTapped(_ sender: UIButton) {
        if let title = sender.titleLabel?.text {
            onButtonClicked?(title)
        }
    }
    
}

// MARK: - UI Setup

private extension CategoryButtonCell {
    
    func setupUI() {
        backgroundView = UIView()
        backgroundView?.backgroundColor = .white
        addSubviews()
        setConstraints()
        createButtons()
    }
    
    func addSubviews() {
        addSubview(scrollView)
        scrollView.addSubview(subcategoryButtons)
    }
    
    func setConstraints() {
        scrollView.snp.makeConstraints {
            $0.top.bottom.equalToSuperview().inset(10)
            $0.left.right.equalToSuperview()
        }
        
        subcategoryButtons.snp.makeConstraints {
            $0.edges.equalTo(scrollView).inset(UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20))
            $0.height.equalTo(40)
        }
    }
    
}

// MARK: - UIButton Configuration Extensions

private extension CategoryButtonCell {
    
    func createButtons() {
        subcategories.forEach { subcategory in
            let button = createButton(withTitle: subcategory)
            subcategoryButtons.addArrangedSubview(button)
        }
    }

    func createButton(withTitle title: String) -> UIButton {
        return UIButton().then {
            $0.configureButton(
                configuration: .filled(),
                title: title,
                backgroundColor: .black,
                foregroundColor: .white,
                contentInsets: .init(top: 0, leading: 20, bottom: 0, trailing: 20)
            )
            $0.configureCornerRadius(true, cornerRadius: 10)
            $0.addTarget(self, action: #selector(subcategoryButtonTapped), for: .touchUpInside)
        }
    }

    func setCellBottomShadow() {
        layer.applyBottomShadow()
    }
    
}
