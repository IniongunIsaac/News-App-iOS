//
//  RemoteDataSource+Extensions.swift
//  News App
//
//  Created by Isaac Iniongun on 24/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import Foundation

extension Decodable {
    ///Maps JSON String to actual Decodable Object
    ///throws an exception if mapping fails
    static func mapTo(jsonString: String) throws -> Self? {
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(Self.self, from: Data(jsonString.utf8))
    }
}
