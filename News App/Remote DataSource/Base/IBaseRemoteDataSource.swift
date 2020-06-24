//
//  IBaseRemoteDataSource.swift
//  News App
//
//  Created by Isaac Iniongun on 24/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift

protocol IBaseRemoteDataSource {
    
    func makeAPIRequest<T: Codable>(responseType: T.Type, url: String, method: HTTPMethod, params: [String : Any]?,
    encoding: ParameterEncoding) -> Observable<T>
    
}
