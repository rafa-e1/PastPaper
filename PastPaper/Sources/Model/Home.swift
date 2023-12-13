//
//  Home.swift
//  PastPaper
//
//  Created by Rafael on 12/13/23.
//

import Foundation

struct Home {
    let category: String
}

struct CategorySection {
    let lists: [Home]
    
    static func generateData() -> [CategorySection] {
        return [
            CategorySection(lists: [
                Home(category: "한식"),
                Home(category: "양식"),
                Home(category: "중식"),
                Home(category: "일식"),
                Home(category: "분식"),
                Home(category: "기타")
            ]),
            
            CategorySection(lists: [
                Home(category: "고깃집"),
                Home(category: "횟집"),
                Home(category: "요리주점"),
                Home(category: "족발/보쌈"),
                Home(category: "곱창/막창")
            ]),
            
            CategorySection(lists: [
                Home(category: "돈가스"),
                Home(category: "치킨/피자"),
                Home(category: "맥주/호프")
            ]),
            
            CategorySection(lists: [
                Home(category: "다이어트"),
                Home(category: "패스트푸드"),
                Home(category: "카페/디저트")
            ])
        ]
    }
}
