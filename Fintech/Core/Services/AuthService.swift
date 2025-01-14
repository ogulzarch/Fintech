//
//  AuthService.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/14/25.
//

import Foundation

enum AuthService {
    case login
    case logout
    
    func asURLRequest() throws -> URLRequest {
        switch self {
        case .login:
            return try RequestLogin().asURLRequest()
        case .logout:
            return try RequestLogin().asURLRequest()
        }
    }
}
