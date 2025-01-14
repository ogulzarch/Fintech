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
        
        register { UserRepoImpl() }
            .implements(UserRepo.self)
            .scope(.cached)
        
    }
}
