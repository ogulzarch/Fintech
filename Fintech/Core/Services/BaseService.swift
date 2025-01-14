//
//  UserService.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation

enum BaseService {
    case user(UserService)
    case account(AccountService)
    case auth(AuthService)
    
    func asURLRequest() throws -> URLRequest {
        switch self {
        case .user(let service):
            return try service.asURLRequest()
        case .auth(let service):
            return try service.asURLRequest()
        case .account(let service):
            return try service.asURLRequest()
        }
    }
}
