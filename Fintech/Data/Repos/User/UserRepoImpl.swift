//
//  UserRepoImpl.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation
import Combine
import Resolver
import Alamofire

class UserRepoImpl: UserRepo {
    
    @Injected var manager: NetworkManager
    
    func fetchUser() async throws {
        
//        try await manager.request(.user(.getUser))
        print("this is the real one")
        
//        URLSession.shared.dataTask(with: URLRequest(url: URL(string: "https://google.com")!)) { data, response, error in
//            
//            print(data)
//        }.resume()
        
        AF.request("https://google.com").response { response in
            print(response)
        }
        
    }
    
    func updateUser(_: ResponseUser) async throws {
        
    }
}
