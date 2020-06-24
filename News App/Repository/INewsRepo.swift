//
//  INewsRepo.swift
//  News App
//
//  Created by Isaac Iniongun on 24/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import Foundation
import RxSwift

protocol INewsRepo {
    func getNews() -> Observable<NewsResponse>
}
