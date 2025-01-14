//
//  RequestLogin.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/7/25.
//

import Foundation
import Alamofire
import Resolver
import Network

struct RequestLogin: URLRequestConvertible {
    
    @URLBuilder(path: "api/\(Tokens.userId)")
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
