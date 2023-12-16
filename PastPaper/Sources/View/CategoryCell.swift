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
    
    static let id = "CategoryCell"
    
    private var stores: [Store] = []
    private let nameLabelHeight: CGFloat = 50
    
    private lazy var titleLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 25, weight: .semibold)
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
            layout.itemSize = CGSize(width: 300, height: 300 + nameLabelHeight)
            layout.minimumLineSpacing = 10.0
            layout.minimumInteritemSpacing = 10.0
        }
    ).then {
        $0.showsHorizontalScrollIndicator = false
        $0.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        $0.backgroundColor = .clear
        $0.dataSource = self
        $0.register(
            RestaurantCell.self,
            forCellWithReuseIdentifier: RestaurantCell.id
        )
    }
    
    private var colors = [UIColor]()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .white
        contentView.addSubview(titleLabel)
        contentView.addSubview(seeAllButton)
        contentView.addSubview(collectionView)
        
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
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        prepare(subTitle: nil, colors: [], stores: [])
    }
    
    func prepare(subTitle: String?, colors: [UIColor], stores: [Store]) {
        titleLabel.text = subTitle
        self.colors = colors
        self.stores = stores
        collectionView.reloadData()
    }
    
}

extension CategoryCell: UICollectionViewDataSource {
    
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        return stores.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: RestaurantCell.id,
            for: indexPath
        ) as? RestaurantCell else {
            return UICollectionViewCell()
        }
        
        let store = self.stores[indexPath.item]
        let color = self.colors[indexPath.item % colors.count]
        cell.prepare(
            color: color,
            name: store.name,
            description: store.description,
            rating: store.rating
        )
        
        return cell
    }
    
}
