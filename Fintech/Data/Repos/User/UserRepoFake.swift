//
//  UserRepoFake.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 3/24/25.
//

import Foundation
import Combine
import Resolver

class UserRepoFake: UserRepo {
    
    @Injected var manager: NetworkManager
    
    func fetchUser() async throws {
        
//        try await manager.request(.user(.getUser))
        print("this is the Fake one")
    }
    
    func updateUser(_: ResponseUser) async throws {
        
    }
    
    
}
