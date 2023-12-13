//
//  Category.swift
//  PastPaper
//
//  Created by Rafael on 12/10/23.
//

import UIKit

struct Category {
    let name: String
    let subcategoryList: [Subcategory]
}

struct Subcategory {
    let name: String
    let colors: [ColorModel]
}

struct ColorModel {
    let name: String
    let color: UIColor
}

let sampleModel = [
    Category(
        name: "한식",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "양식",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "중식",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "일식",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "분식",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "기타",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    // -------------------------------------
    
    Category(
        name: "고깃집",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "횟집",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "요리주점",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "족발/보쌈",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "곱창/막창",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    // -------------------------------------------
    
    Category(
        name: "돈가스",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "치킨/피자",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "맥주/호프",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    // ------------------------------------------
    
    Category(
        name: "다이어트",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "패스트푸드",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    Category(
        name: "카페/디저트",
        subcategoryList: [
            Subcategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            Subcategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    )
]

extension UIColor {
    static var randomColor: UIColor {
        UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
    }
    
    static func getRandomColorList() -> [UIColor] {
        (0...((10...30).randomElement() ?? 10))
            .map { _ in Self.randomColor }
    }
    
    var hexString: String {
        let components = self.cgColor.components
        let r = components?[0] ?? 0.0
        let g = components?[1] ?? 0.0
        let b = components?[2] ?? 0.0
        return String(
            format: "#%02lX%02lX%02lX",
            lroundf(Float(r * 255)),
            lroundf(Float(g * 255)),
            lroundf(Float(b * 255))
        )
    }
}
