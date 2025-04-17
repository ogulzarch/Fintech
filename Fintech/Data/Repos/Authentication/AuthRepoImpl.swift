//
//  AuthRepoImpl.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation

class AuthRepoImpl: AuthRepo {
    
    func login(userId: String, passcode: String) async throws -> ResponseUser {
        
        return ResponseUser(userId: "", userName: "")
    }
    
    func logout() async throws {
        
    }
    
    
}
