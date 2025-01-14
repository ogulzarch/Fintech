//
//  UserRepo.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation
import Combine

protocol UserRepo {
    
    func fetchUser() async throws
    func updateUser(_: ResponseUser) async throws
}
