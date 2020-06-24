//
//  BaseRemoteDataSourceImpl.swift
//  News App
//
//  Created by Isaac Iniongun on 24/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import Foundation
import Alamofire
import RxAlamofire
import RxSwift

class BaseRemoteDataSourceImpl: IBaseRemoteDataSource {
    
    fileprivate let disposeBag = DisposeBag()
    
    func makeAPIRequest<T>(responseType: T.Type, url: String, method: HTTPMethod, params: [String : Any]?, encoding: ParameterEncoding) -> Observable<T> where T : Decodable, T : Encodable {
        
        let manager = SessionManager.default
        
        return manager.rx.request(method, url, parameters: params, encoding: encoding)
            .validate(statusCode: 200 ..< 499)
            .debug()
            .responseString()
            .flatMap { (_, responseString) -> Observable<T> in
                do {
                    //map the result of `responseString` above to the `responseType`
                    let requestResponse = try responseType.mapTo(jsonString: responseString)!
                    
                    //return result in `requestResponse` above in the `successHandler`
                    return Observable.just(requestResponse)
                    
                } catch let error {
                    throw error
                }
        }
        
    }
    
}
