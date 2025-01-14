//
//  UserService.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation

enum UserService {
    case getUser
    case updateUser(ResponseUser)
    
    func asURLRequest() throws -> URLRequest {
        switch self {
        case .getUser:
            return try RequestLogin().asURLRequest()
        case .updateUser(let user):
            return try RequestLogin().asURLRequest()
        }
    }
}
