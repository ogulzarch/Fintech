//
//  AccountService.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/14/25.
//

import Foundation

enum AccountService {
    case getAllAccounts
    case getAccountDetails
    case updateAccount
    case deleteAccount
    
    func asURLRequest() throws -> URLRequest {
        switch self {
        case .getAllAccounts:
            return try RequestLogin().asURLRequest()
        case .getAccountDetails:
            return try RequestLogin().asURLRequest()
        case .updateAccount:
            return try RequestLogin().asURLRequest()
        case .deleteAccount:
            return try RequestLogin().asURLRequest()
        }
    }
}
