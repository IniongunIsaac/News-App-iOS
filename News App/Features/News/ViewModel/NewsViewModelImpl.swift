//
//  NewsViewModelImpl.swift
//  News App
//
//  Created by Isaac Iniongun on 24/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class NewsViewModelImpl: INewsViewModel {
    
    let newsRepo: INewsRepo
    
    init(newsRepo: INewsRepo) {
        self.newsRepo = newsRepo
    }
    
    var articles: PublishSubject<[Article]> = PublishSubject()
}
