//
//  Article.swift
//  News-App
//
//  Created by Albert . on 16/09/21.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article : Decodable {
    let title : String?
    let description : String?
}
