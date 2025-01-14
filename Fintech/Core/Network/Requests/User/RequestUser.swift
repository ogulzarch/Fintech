//
//  RequestUser.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/14/25.
//

import Foundation
import Alamofire

struct RequestUser: URLRequestConvertible {
    
    @URLBuilder(path: "https://jsonplaceholder.typicode.com/users/1", method: .get)
    var url: Result<URLRequest, Error>
    
    func asURLRequest() throws -> URLRequest {
        switch url {
        case .success(let url):
            return try url.asURLRequest()
        case .failure(let error):
            throw error
        }
    }
    
}
