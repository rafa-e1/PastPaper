//
//  CategoryModel.swift
//  PastPaper
//
//  Created by Rafael on 12/10/23.
//

import UIKit

struct CategoryModel {
    let name: String
    let subCategoryList: [SubCategory]
}

struct SubCategory {
    let name: String
    let colors: [ColorModel]
}

struct ColorModel {
    let name: String
    let color: UIColor
}

let sampleModel = [
    CategoryModel(
        name: "한식",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "양식",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "중식",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "일식",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "분식",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "기타",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    // -------------------------------------
    
    CategoryModel(
        name: "고깃집",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "횟집",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "요리주점",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "족발/보쌈",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "곱창/막창",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    // -------------------------------------------
    
    CategoryModel(
        name: "돈가스",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "치킨/피자",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "맥주/호프",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    // ------------------------------------------
    
    CategoryModel(
        name: "다이어트",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "패스트푸드",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "신규",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
        ]
    ),
    
    CategoryModel(
        name: "카페/디저트",
        subCategoryList: [
            SubCategory(
                name: "혼자서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "둘이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "여러 명이서 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "간단하게 먹기 좋은 곳",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "가성비 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "분위기 甲",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
                name: "24시",
                colors: UIColor.getRandomColorList().map { ColorModel(name: "컬러(\($0.hexString))", color: $0) }
            ),
            SubCategory(
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
