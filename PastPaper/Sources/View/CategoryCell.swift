//
//  CategoryCell.swift
//  PastPaper
//
//  Created by Rafael on 12/10/23.
//

import UIKit

import SnapKit
import Then

class CategoryCell: UITableViewCell {
    
    // MARK: - Identifiers
    
    static let id = "CategoryCell"
    
    // MARK: - Restaurant Data
    
    private var restaurants: [Restaurant] = []
    
    // MARK: - Temporary Data for Restaurant Images
    
    private var colors = [UIColor]()
    
    // MARK: - UI Components
    
    private lazy var titleLabel = UILabel().then {
        $0.configureLabel(
            font: UIFont.systemFont(ofSize: 25.0, weight: .semibold),
            textColor: .black
        )
    }
    
    private lazy var seeAllButton = UIButton(type: .custom).then {
        $0.setAttributedTitle(
            NSAttributedString(
                string: "전체보기",
                attributes: [
                    .font: UIFont.systemFont(ofSize: 15.0, weight: .semibold),
                    .foregroundColor: UIColor.black,
                    .underlineStyle: NSUnderlineStyle.single.rawValue
                ]
            ), for: .normal
        )
    }
    
    private lazy var collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout().then {
            let layout = $0 as UICollectionViewFlowLayout
            layout.scrollDirection = .horizontal
            layout.itemSize = CGSize(width: 300, height: 350)
            layout.minimumLineSpacing = 10.0
            layout.minimumInteritemSpacing = 10.0
        }
    ).then {
        $0.showsHorizontalScrollIndicator = false
        $0.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 20)
        $0.backgroundColor = .clear
        $0.dataSource = self
        $0.register(
            RestaurantCell.self,
            forCellWithReuseIdentifier: RestaurantCell.identifier
        )
    }
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Cell Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        configure(subTitle: nil, colors: [], stores: [])
    }
    
    // MARK: - Configuration
    
    func configure(subTitle: String?, colors: [UIColor], stores: [Restaurant]) {
        titleLabel.text = subTitle
        self.colors = colors
        self.restaurants = stores
        collectionView.reloadData()
    }
    
}

// MARK: - Data Source

extension CategoryCell: UICollectionViewDataSource {
    
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        return restaurants.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: RestaurantCell.identifier,
            for: indexPath
        ) as? RestaurantCell else {
            return UICollectionViewCell()
        }
        
        let store = restaurants[indexPath.item]
        let color = colors[indexPath.item % colors.count]
        cell.configure(
            color: color,
            name: store.name,
            description: store.description,
            rating: store.rating
        )
        
        return cell
    }
    
}

// MARK: - UI Setup

private extension CategoryCell {
    
    func setupUI() {
        backgroundColor = .white
        addSubviews()
        setConstraints()
    }
    
    func addSubviews() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(seeAllButton)
        contentView.addSubview(collectionView)
    }
    
    func setConstraints() {
        titleLabel.snp.makeConstraints {
            $0.top.left.equalTo(20)
        }
        
        seeAllButton.snp.makeConstraints {
            $0.centerY.equalTo(titleLabel.snp.centerY)
            $0.right.equalToSuperview().inset(20)
        }
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom)
            $0.left.bottom.right.equalToSuperview()
        }
    }
    
}
