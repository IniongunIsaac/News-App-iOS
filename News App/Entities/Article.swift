//
//  Article.swift
//  News App
//
//  Created by Isaac Iniongun on 23/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import Foundation

struct Article: Codable {
    let source: Source
    let author, title, articleDescription: String
    let url: String
    let urlToImage: String
    let publishedAt: Date
    let content: String

    enum CodingKeys: String, CodingKey {
        case source, author, title
        case articleDescription = "description"
        case url, urlToImage, publishedAt, content
    }
}
