//
//  NewsInjections.swift
//  News App
//
//  Created by Isaac Iniongun on 24/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

struct NewsInjections {
    
    static func setup(container: Container) {
        
        container.register(INewsRemoteDataSource.self) { _ in NewsRemoteDataSourceImpl() }
        
        container.register(INewsRepo.self) { res in
            NewsRepoImpl(newRemoteDataSource: res.resolve(INewsRemoteDataSource.self)!)
        }
        
        container.register(INewsViewModel.self) { res in
            NewsViewModelImpl(newsRepo: res.resolve(INewsRepo.self)!)
        }
        
        container.storyboardInitCompleted(NewsViewController.self) { res, cntrl in
            cntrl.newsViewModel = res.resolve(INewsViewModel.self)
        }
    }
    
}
