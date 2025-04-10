//
//  UserRepoImpl.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation
import Combine
import Resolver

class UserRepoImpl: UserRepo {
    
    @Injected var manager: NetworkManager
    
    func fetchUser() async throws {
        
//        try await manager.request(.user(.getUser))
        print("this is the real one")
        
    }
    
    func updateUser(_: ResponseUser) async throws {
        
    }
    
    
}
