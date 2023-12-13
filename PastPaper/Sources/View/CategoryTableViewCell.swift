//
//  CategoryTableViewCell.swift
//  PastPaper
//
//  Created by Rafael on 12/10/23.
//

import UIKit

import SnapKit
import Then

final class CategoryTableViewCell: UITableViewCell {
    
    static let id = "CategoryTableViewCell"
    
    private let titleLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 20, weight: .semibold)
    }
    
    private lazy var collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout().then {
            $0.scrollDirection = .horizontal
            $0.minimumLineSpacing = 2.0
            $0.minimumInteritemSpacing = 5.0
            $0.itemSize = CGSize(width: 150, height: 180)
        }
    ).then {
        $0.showsHorizontalScrollIndicator = false
        $0.contentInset = .init(top: 10, left: 10, bottom: 10, right: 10)
        $0.backgroundColor = .clear
        $0.dataSource = self
        $0.register(
            ColorCollectionViewCell.self,
            forCellWithReuseIdentifier: ColorCollectionViewCell.id
        )
    }
    
    private let bottomPaddingView = UIView().then {
        $0.backgroundColor = .white
    }
    
    private var colorModelList = [ColorModel]()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .white
        self.contentView.addSubview(self.titleLabel)
        self.contentView.addSubview(self.collectionView)
        self.contentView.addSubview(self.bottomPaddingView)
        
        self.titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.left.equalToSuperview().inset(10)
        }
        
        self.collectionView.snp.makeConstraints {
            $0.top.equalTo(self.titleLabel.snp.bottom)
            $0.left.right.equalToSuperview()
        }
        
        self.bottomPaddingView.snp.makeConstraints {
            $0.left.right.bottom.equalToSuperview()
            $0.top.equalTo(self.collectionView.snp.bottom)
            $0.height.equalTo(10).priority(999)
        }

    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.prepare(subTitle: nil, colorModelList: [])
    }
    
    func prepare(subTitle: String?, colorModelList: [ColorModel]) {
        self.titleLabel.text = subTitle
        self.colorModelList = colorModelList
        self.collectionView.reloadData()
    }
    
}

extension CategoryTableViewCell: UICollectionViewDataSource {
    
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        self.colorModelList.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: ColorCollectionViewCell.id,
            for: indexPath
        ) as! ColorCollectionViewCell
        let colorModel = self.colorModelList[indexPath.item]
        cell.prepare(color: colorModel.color, name: colorModel.name)
        return cell
    }
    
}
