//
//  RemoteDataSourceConstants.swift
//  News App
//
//  Created by Isaac Iniongun on 24/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import Foundation

struct RemoteDataSourceConstants {
    
    fileprivate static let BASE_URL = "https://newsapi.org/v2/"
    fileprivate static let NEWS_API_KEY = "f36dad6d62634b02b6ef39ed38dc23a3"
    
    static let NEWS_URL = "\(BASE_URL)everything?q=bitcoin&apiKey=\(NEWS_API_KEY)&pageSize=50"
    
}
