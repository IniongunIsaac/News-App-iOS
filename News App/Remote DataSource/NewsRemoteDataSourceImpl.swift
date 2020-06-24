//
//  NewsRemoteDataSourceImpl.swift
//  News App
//
//  Created by Isaac Iniongun on 24/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire

class NewsRemoteDataSourceImpl: BaseRemoteDataSourceImpl, INewsRemoteDataSource {
    
    override init() { }
    
    func getNews() -> Observable<NewsResponse> {
        makeAPIRequest(responseType: NewsResponse.self, url: RemoteDataSourceConstants.NEWS_URL, method: .get, params: nil, encoding: JSONEncoding.default)
    }
}
