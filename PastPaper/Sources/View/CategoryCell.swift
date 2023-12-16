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
    
    // MARK: - 셀 아이디
    
    static let id = "CategoryCell"
    
    // MARK: - 가게 데이터
    
    private var restaurants: [Restaurant] = []
    
    // MARK: - 가게 이미지 임시 데이터
    
    private var colors = [UIColor]()
    
    // MARK: - 서브카테고리 제목 설정
    
    private lazy var titleLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 25, weight: .semibold)
    }
    
    // MARK: - 전체보기 버튼 설정
    
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
    
    // MARK: - 컬렉션 뷰 설정
    
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
        $0.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        $0.backgroundColor = .clear
        $0.dataSource = self
        $0.register(
            RestaurantCell.self,
            forCellWithReuseIdentifier: RestaurantCell.id
        )
    }
    
    // MARK: - 초기화 메서드
    
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
    
    // MARK: - 셀 재사용 준비
    
    override func prepareForReuse() {
        super.prepareForReuse()
        prepare(subTitle: nil, colors: [], stores: [])
    }
    
}

// MARK: - 데이터 소스 구현

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
            withReuseIdentifier: RestaurantCell.id,
            for: indexPath
        ) as? RestaurantCell else {
            return UICollectionViewCell()
        }
        
        let store = restaurants[indexPath.item]
        let color = colors[indexPath.item % colors.count]
        cell.prepare(
            color: color,
            name: store.name,
            description: store.description,
            rating: store.rating
        )
        
        return cell
    }
    
}

// MARK: - 데이터 구성

extension CategoryCell {
    
    func prepare(subTitle: String?, colors: [UIColor], stores: [Restaurant]) {
        titleLabel.text = subTitle
        self.colors = colors
        self.restaurants = stores
        collectionView.reloadData()
    }
    
}
