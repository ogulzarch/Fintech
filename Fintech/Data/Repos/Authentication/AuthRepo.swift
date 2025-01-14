//
//  AuthRepo.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation
import Resolver

protocol AuthRepo {
    
    func login(userId: String, passcode: String) async throws -> ResponseUser
    func logout() async throws
}
