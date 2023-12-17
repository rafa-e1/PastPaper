//
//  BookmarkViewController.swift
//  PastPaper
//
//  Created by Rafael on 12/8/23.
//

import UIKit

import SnapKit
import Then

final class BookmarkViewController: UIViewController {
    
    private lazy var bookmarkLabel = UILabel().then {
        $0.text = "즐겨찾기"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 40, weight: .bold)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        view.addSubview(bookmarkLabel)
        
        bookmarkLabel.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
}
