//
//  Resolver.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation
import Resolver

extension Resolver: ResolverRegistering {
    
    public static func registerAllServices() {
        
        if DEBUG {
            register { UserRepoImpl() }
                .implements(UserRepo.self)
                .scope(.application)
            
            
        } UNIT_TEST {
            register { UserRepoFake() }
                .implements(UserRepo.self)
                .scope(.cached)
        }
        
        register { NetworkManagerImpl() }
            .implements(NetworkManager.self)
            .scope(.application)
        
    }
}
