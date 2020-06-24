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
    let author, title, description: String
    let url: String
    let urlToImage: String?
    let publishedAt: String
    let content: String?
}
