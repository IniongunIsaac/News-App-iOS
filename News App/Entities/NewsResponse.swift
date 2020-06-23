//
//  NewsResponse.swift
//  News App
//
//  Created by Isaac Iniongun on 23/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import Foundation

struct NewsResponse: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}
