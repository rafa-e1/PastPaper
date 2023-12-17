//
//  DataModel.swift
//  PastPaper
//
//  Created by Rafael on 12/17/23.
//

import UIKit

// MARK: - Models

struct CategoriesModel {
    var sections: [[Category]] = [
        Category.categoriesForSection0(),
        Category.categoriesForSection1(),
        Category.categoriesForSection2(),
        Category.categoriesForSection3(),
    ]
}

struct Restaurant {
    let name: String
    let description: String
    let rating: Double
}

struct Category {
    let category: String
    let subcategory: [String]
    let colors: [UIColor]
    let storeInfo: [Restaurant]
}

// MARK: - Data Generators

struct CategoryDataGenerator {
    static let subcategories = [
        "혼밥하기 좋은 곳",
        "둘이서 먹기 좋은 곳",
        "여러 명이서 먹기 좋은 곳",
        "간단하게 먹기 좋은 곳",
        "가성비 甲",
        "분위기 甲",
        "24시",
        "신규"
    ]

    static func categoriesForSection(with categoryNames: [String]) -> [Category] {
        return categoryNames.map { categoryName in
            Category(
                category: categoryName,
                subcategory: subcategories,
                colors: ColorUtility.generateRandomColors(count: 10),
                storeInfo: generateStores(for: categoryName)
            )
        }
    }

    static func generateStores(for categoryName: String) -> [Restaurant] {
        return (1...10).map { index in
            Restaurant(
                name: "\(categoryName) Store #\(index)",
                description:
                """
                This is \(categoryName) Store #\(index).
                Here you can find a variety of dishes and enjoy a wonderful dining experience.
                """,
                rating: Double.random(in: 3.0...5.0)
            )
        }
    }
}

// MARK: - Utilities

struct ColorUtility {
    static func generateRandomColors(count: Int) -> [UIColor] {
        return (0..<count).map { _ in randomColor }
    }

    static var randomColor: UIColor {
        return UIColor(
            red: CGFloat(drand48()),
            green: CGFloat(drand48()),
            blue: CGFloat(drand48()),
            alpha: 1.0
        )
    }
}

// MARK: - Category Extensions

extension Category {
    
    static func categoriesForSection0() -> [Category] {
        let categoryNames = ["한식", "양식", "중식", "일식", "분식", "기타"]
        return CategoryDataGenerator.categoriesForSection(with: categoryNames)
    }

    static func categoriesForSection1() -> [Category] {
        let categoryNames = ["고깃집", "횟집", "요리주점", "족발/보쌈", "곱창/막창"]
        return CategoryDataGenerator.categoriesForSection(with: categoryNames)
    }

    static func categoriesForSection2() -> [Category] {
        let categoryNames = ["돈까스", "치킨/피자", "맥주/호프"]
        return CategoryDataGenerator.categoriesForSection(with: categoryNames)
    }

    static func categoriesForSection3() -> [Category] {
        let categoryNames = ["다이어트", "패스트푸드", "카페/디저트"]
        return CategoryDataGenerator.categoriesForSection(with: categoryNames)
    }
    
}
