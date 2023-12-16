//
//  RestaurantCell.swift
//  PastPaper
//
//  Created by Rafael on 12/10/23.
//

import UIKit

import SnapKit
import Then

class RestaurantCell: UICollectionViewCell {
    
    // MARK: - 셀 아이디
    
    static let id = "RestaurantCell"
    
    // MARK: - 가게 이미지 뷰 설정
    
    private lazy var colorView = UIView().then {
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        $0.layer.masksToBounds = false
        $0.layer.shadowOffset = CGSize(width: 0, height: 2)
        $0.layer.shadowOpacity = 0.5
        $0.layer.shadowColor = UIColor.black.cgColor
        $0.layer.shadowRadius = 2
    }
    
    // MARK: - 북마크 버튼 설정
    
    private lazy var bookmarkButton = UIButton(type: .custom).then {
        $0.setImage(UIImage(systemName: "bookmark")?
            .withTintColor(.white, renderingMode: .alwaysOriginal)
            .withConfiguration(
                UIImage.SymbolConfiguration(
                    pointSize: 30,
                    weight: .light)
            ), for: .normal
        )
        $0.addTarget(self, action: #selector(toggleBookmark), for: .touchUpInside)
    }
    
    // MARK: - 가게 이름 설정
    
    private lazy var nameLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 17, weight: .bold)
        $0.numberOfLines = 1
    }
    
    // MARK: - 가게 설명 설정
    
    private lazy var descriptionLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 14)
        $0.numberOfLines = 3
    }
    
    // MARK: - 가게 별(평점) 이미지 뷰 설정
    
    private lazy var starImage = UIImageView().then {
        $0.image = UIImage(named: "star")
        $0.contentMode = .scaleAspectFit
    }
    
    // MARK: - 가게 평점 레이블 설정
    
    private lazy var ratingLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 14)
    }
    
    // MARK: - 가게 평점 스택 뷰 설정
    
    private lazy var ratingView = UIStackView(arrangedSubviews: [starImage, ratingLabel]).then {
        $0.alignment = .fill
        $0.spacing = 5
        $0.axis = .horizontal
        $0.distribution = .fillEqually
    }
    
    // MARK: - 초기화 메서드
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 레이아웃 서브뷰
    
    override func layoutSubviews() {
        super.layoutSubviews()
        colorView.layer.shadowPath = UIBezierPath(
            roundedRect: colorView.bounds,
            cornerRadius: 10
        ).cgPath
    }
    
    // MARK: - 셀 재사용 준비
    
    override func prepareForReuse() {
        super.prepareForReuse()
        prepare(color: nil, name: nil, description: nil, rating: nil)
    }
    
    // MARK: - 북마크 버튼 토글 액션
    
    @objc private func toggleBookmark() {
        let isBookmarked = bookmarkButton.currentImage == UIImage(systemName: "bookmark.fill")?
            .withTintColor(.white, renderingMode: .alwaysOriginal)
            .withConfiguration(UIImage.SymbolConfiguration(pointSize: 30, weight: .light))
        let newImageName = isBookmarked ? "bookmark" : "bookmark.fill"
        bookmarkButton.setImage(UIImage(systemName: newImageName)?
            .withTintColor(.white, renderingMode: .alwaysOriginal)
            .withConfiguration(UIImage.SymbolConfiguration(
                pointSize: 30,
                weight: .light
            )), for: .normal
        )
    }
    
}

// MARK: - 데이터 구성

extension RestaurantCell {
    
    func prepare(color: UIColor?, name: String?, description: String?, rating: Double?) {
        colorView.backgroundColor = color
        nameLabel.text = name
        descriptionLabel.text = description
        
        if let rating = rating {
            let formattedRating = String(format: "%.1f", rating)
            ratingLabel.text = "\(formattedRating)"
        } else {
            ratingLabel.text = "N/A"
        }
    }
    
}



// MARK: - UI 설정

private extension RestaurantCell {
    
    func configureUI() {
        addSubview(colorView)
        colorView.addSubview(bookmarkButton)
        addSubview(nameLabel)
        addSubview(descriptionLabel)
        addSubview(ratingView)
        
        makeConstraints()
    }
    
    func makeConstraints() {
        colorView.snp.makeConstraints {
            $0.top.equalTo(10)
            $0.left.right.equalToSuperview()
        }
        
        bookmarkButton.snp.makeConstraints {
            $0.bottom.equalTo(colorView.snp.bottom).inset(10)
            $0.right.equalTo(colorView.snp.right).inset(10)
        }
        
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(colorView.snp.bottom).offset(5)
            $0.left.right.equalToSuperview()
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(5)
            $0.left.right.equalToSuperview()
        }
        
        ratingView.snp.makeConstraints {
            $0.top.equalTo(descriptionLabel.snp.bottom).offset(5)
            $0.left.bottom.equalToSuperview()
        }
    }
    
}
