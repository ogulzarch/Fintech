//
//  SharedTokens.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation
import Combine

struct Tokens {
    static let userId = "userId"
    static let sessionId = "sessionId"
}

struct SharedToken {
    let key: String
    let value: String
}

protocol SharedTokens {
    
    var items: CurrentValueSubject<[SharedToken], Never> { get }
    
    func removeAll()
    func addItem(_: SharedToken)
    func getItems() -> [SharedToken]
}
