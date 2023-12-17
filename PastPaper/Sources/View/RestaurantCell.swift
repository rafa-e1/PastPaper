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
    
    // MARK: - Identifiers
    
    static let identifier = "RestaurantCell"
    
    // MARK: - UI Components
    
    private lazy var colorView = UIView().then {
        $0.configureCornerRadius(true, cornerRadius: 10)
        $0.configureShadow(
            false,
            shadowColor: .black,
            shadowOffset: CGSize(width: 0, height: 2),
            shadowOpacity: 0.5,
            shadowRadius: 2.0
        )
    }
    
    private lazy var bookmarkButton = UIButton(type: .custom).then {
        $0.configureBookmarkButton(target: self)
    }
    
    private lazy var nameLabel = UILabel().then {
        $0.configureLabel(font: .systemFont(ofSize: 17, weight: .bold), textColor: .black, lines: 1)
    }
    
    private lazy var descriptionLabel = UILabel().then {
        $0.configureLabel(font: .systemFont(ofSize: 14), textColor: .black, lines: 3)
    }
    
    private lazy var starImage = UIImageView().then {
        $0.configureImage(image: UIImage(named: "star"), contentMode: .scaleAspectFit)
    }
    
    private lazy var ratingLabel = UILabel().then {
        $0.configureLabel(font: .systemFont(ofSize: 14), textColor: .black)
    }
    
    private lazy var ratingView = UIStackView(arrangedSubviews: [starImage, ratingLabel]).then {
        $0.configureStackView(
            alignment: .fill,
            axis: .horizontal,
            distribution: .fillEqually,
            spacing: 5
        )
    }
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout Subviews
    
    override func layoutSubviews() {
        super.layoutSubviews()
        colorView.layer.shadowPath = UIBezierPath(
            roundedRect: colorView.bounds,
            cornerRadius: 10
        ).cgPath
    }
    
    // MARK: - Cell Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        configure(color: nil, name: nil, description: nil, rating: nil)
    }
    
    // MARK: - Configuration
    func configure(color: UIColor?, name: String?, description: String?, rating: Double?) {
        colorView.backgroundColor = color
        nameLabel.text = name
        descriptionLabel.text = description
        ratingLabel.text = rating.map { String(format: "%.1f", $0) } ?? "N/A"
    }
    
    // MARK: - Button Action
    
    @objc func toggleBookmark() {
        bookmarkButton.toggleBookmarkState()
    }
    
}

// MARK: - UI Setup

private extension RestaurantCell {
    
    func setupUI() {
        addSubviews()
        setConstraints()
    }
    
    func addSubviews() {
        addSubview(colorView)
        colorView.addSubview(bookmarkButton)
        addSubview(nameLabel)
        addSubview(descriptionLabel)
        addSubview(ratingView)
    }
    
    func setConstraints() {
        colorViewConstraints()
        bookmarkButtonConstraints()
        nameLabelConstraints()
        descriptionLabelConstraints()
        ratingViewConstraints()
    }
    
    func colorViewConstraints() {
        colorView.snp.makeConstraints {
            $0.top.equalTo(10)
            $0.left.right.equalToSuperview()
        }
    }
    
    func bookmarkButtonConstraints() {
        bookmarkButton.snp.makeConstraints {
            $0.bottom.equalTo(colorView.snp.bottom).inset(10)
            $0.right.equalTo(colorView.snp.right).inset(10)
        }
    }
    
    func nameLabelConstraints() {
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(colorView.snp.bottom).offset(5)
            $0.left.right.equalToSuperview()
        }
    }
    
    func descriptionLabelConstraints() {
        descriptionLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(5)
            $0.left.right.equalToSuperview()
        }
    }
    
    func ratingViewConstraints() {
        ratingView.snp.makeConstraints {
            $0.top.equalTo(descriptionLabel.snp.bottom).offset(5)
            $0.left.bottom.equalToSuperview()
        }
    }
    
}

// MARK: - UIButton Configuration Extensions

private extension UIButton {
    
    func configureBookmarkButton(target: RestaurantCell) {
        setImage(UIImage(systemName: "bookmark")?
            .withTintColor(.white, renderingMode: .alwaysOriginal)
            .withConfiguration(
                UIImage.SymbolConfiguration(pointSize: 30, weight: .light)
            ), for: .normal
        )
        addTarget(target, action: #selector(target.toggleBookmark), for: .touchUpInside)
    }
    
    func toggleBookmarkState() {
        let isBookmarked = currentImage == UIImage(systemName: "bookmark.fill")?
            .withTintColor(.white, renderingMode: .alwaysOriginal)
            .withConfiguration(UIImage.SymbolConfiguration(pointSize: 30, weight: .light))
        let newImageName = isBookmarked ? "bookmark" : "bookmark.fill"
        setImage(UIImage(systemName: newImageName)?
            .withTintColor(.white, renderingMode: .alwaysOriginal)
            .withConfiguration(UIImage.SymbolConfiguration(
                pointSize: 30,
                weight: .light
            )), for: .normal
        )
    }
    
}
