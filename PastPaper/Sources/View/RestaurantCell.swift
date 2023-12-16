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
    
    static let id = "RestaurantCell"
    
    private lazy var colorView = UIView().then {
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        $0.layer.masksToBounds = false
        $0.layer.shadowOffset = CGSize(width: 0, height: 2)
        $0.layer.shadowOpacity = 0.5
        $0.layer.shadowColor = UIColor.black.cgColor
        $0.layer.shadowRadius = 2
    }
    
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
    
    private lazy var nameLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 17, weight: .bold)
        $0.numberOfLines = 1
    }
    
    private lazy var descriptionLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 14)
        $0.numberOfLines = 3
    }
    
    private lazy var starImage = UIImageView().then {
        $0.image = UIImage(named: "star")
        $0.contentMode = .scaleAspectFit
    }
    
    private lazy var ratingLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 14)
    }
    
    private lazy var ratingView = UIStackView(arrangedSubviews: [starImage, ratingLabel]).then {
        $0.alignment = .fill
        $0.spacing = 5
        $0.axis = .horizontal
        $0.distribution = .fillEqually
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(colorView)
        colorView.addSubview(bookmarkButton)
        addSubview(nameLabel)
        addSubview(descriptionLabel)
        addSubview(ratingView)
        
        colorView.snp.makeConstraints { make in
            make.top.equalTo(10)
            make.left.right.equalToSuperview()
        }
        
        bookmarkButton.snp.makeConstraints { make in
            make.bottom.equalTo(colorView.snp.bottom).inset(10)
            make.right.equalTo(colorView.snp.right).inset(10)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(colorView.snp.bottom).offset(5)
            make.left.right.equalToSuperview()
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(5)
            make.left.right.equalToSuperview()
        }
        
        ratingView.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(5)
            make.left.bottom.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        colorView.layer.shadowPath = UIBezierPath(
            roundedRect: colorView.bounds,
            cornerRadius: 10
        ).cgPath
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        prepare(color: nil, name: nil, description: nil, rating: nil)
    }
    
    func prepare(color: UIColor?, name: String?, description: String?, rating: Double?) {
        colorView.backgroundColor = color
        nameLabel.text = name
        descriptionLabel.text = description
        ratingLabel.text = "Rating: \(rating ?? 5.0)"
        
        if let rating = rating {
            let formattedRating = String(format: "%.1f", rating)
            ratingLabel.text = "\(formattedRating)"
        } else {
            ratingLabel.text = "N/A"
        }
    }
    
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
