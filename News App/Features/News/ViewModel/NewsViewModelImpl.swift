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
    let disposeBag = DisposeBag()
    
    init(newsRepo: INewsRepo) {
        self.newsRepo = newsRepo
        getNews()
    }
    
    var articles: PublishSubject<[Article]> = PublishSubject()
    var errorMessage: PublishSubject<String> = PublishSubject()
    
    fileprivate func getNews() {
        newsRepo.getNews().subscribe(onNext: { [weak self] newsResponse in
            self?.articles.onNext(newsResponse.articles)
        }, onError: { [weak self] error in
            self?.errorMessage.onNext(error.localizedDescription)
        }).disposed(by: disposeBag)
    }
}
