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
    
    // MARK: - 셀 아이디
    
    static let id = "CategoryButtonCell"
    
    // MARK: - 서브카테고리 버튼 타이틀 데이터
    
    private let subcategories = CategoryDataGenerator.subcategories
    
    // MARK: - 스크롤 뷰 설정
    
    private lazy var scrollView = UIScrollView().then {
        $0.showsHorizontalScrollIndicator = false
    }
    
    // MARK: - 서브카테고리 버튼 스택 뷰 설정
    
    private lazy var buttonStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.spacing = 10
        $0.alignment = .fill
        $0.distribution = .fillProportionally
    }
    
    // MARK: - 서브카테고리 버튼 클릭 이벤트 핸들러
    
    var onButtonClicked: ((String) -> Void)?
    
    // MARK: - 초기화 메서드
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 레이아웃 서브뷰
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setCellBottomShadow()
    }
    
    // MARK: - 버튼 액션
    
    @objc private func buttonTapped(_ sender: UIButton) {
        if let title = sender.titleLabel?.text {
            onButtonClicked?(title)
        }
    }
    
}

// MARK: - UI 설정

private extension CategoryButtonCell {
    
    func configureUI() {
        backgroundView = UIView()
        backgroundView?.backgroundColor = .white
        addSubview(scrollView)
        
        setupScrollView()
        createButtons()
    }
    
}

// MARK: - 셀 UI 설정

private extension CategoryButtonCell {
    
    func setCellBottomShadow() {
        let shadowPath = UIBezierPath()
        let shadowHeight: CGFloat = 3.0
        shadowPath.move(to: CGPoint(x: 0, y: bounds.height))
        shadowPath.addLine(to: CGPoint(x: bounds.width, y: bounds.height))
        shadowPath.addLine(to: CGPoint(x: bounds.width, y: bounds.height + shadowHeight))
        shadowPath.addLine(to: CGPoint(x: 0, y: bounds.height + shadowHeight))
        shadowPath.close()
        
        layer.shadowPath = shadowPath.cgPath
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 3
        layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    
}

// MARK: - 스크롤 뷰 UI 설정

private extension CategoryButtonCell {
    
    func setupScrollView() {
        scrollView.addSubview(buttonStackView)
        
        scrollView.snp.makeConstraints {
            $0.top.bottom.equalTo(10)
            $0.left.right.equalToSuperview()
        }
        
        buttonStackView.snp.makeConstraints {
            $0.top.bottom.equalTo(scrollView)
            $0.left.right.equalToSuperview().inset(20)
            $0.height.equalTo(40)
        }
    }
    
}

// MARK: - 서브카테고리 버튼 설정

private extension CategoryButtonCell {
    
    func createButton(withTitle title: String) -> UIButton {
        let button = UIButton().then {
            var config = UIButton.Configuration.filled()
            config.title = title
            config.baseBackgroundColor = .black
            config.baseForegroundColor = .white
            config.contentInsets = NSDirectionalEdgeInsets(
                top: 0,
                leading: 20,
                bottom: 0, 
                trailing: 20
            )
            
            $0.configuration = config
            $0.clipsToBounds = true
            $0.layer.cornerRadius = 10
            $0.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
        return button
    }
    
    func createButtons() {
        for subcategory in subcategories {
            let button = createButton(withTitle: subcategory)
            buttonStackView.addArrangedSubview(button)
        }
    }
    
}
