//
//  SharedTokensImpl.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation
import Combine

class SharedTokensImpl: SharedTokens {
    
    var items = CurrentValueSubject<[SharedToken], Never>([])
    
    func removeAll() {
        self.items.value = []
    }
    
    func addItem(_ token: SharedToken) {
        self.items.value.append(token)
    }
    
    func getItems() -> [SharedToken] {
        return self.items.value
    }
}
