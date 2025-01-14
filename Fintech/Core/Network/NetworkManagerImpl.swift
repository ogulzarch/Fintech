//
//  NetworkManagerImpl.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation
import Alamofire

class NetworkManagerImpl: NetworkManager {
    
    let session: URLSession
    let decoder: JSONDecoder
    
    init() {
        self.session = URLSession.shared
        self.decoder = JSONDecoder()
    }
    
    func request(_ service: BaseService) async throws {
        let request = try service.asURLRequest()
    }
    
    func performRequest<T: Decodable>(_ request: URLRequest) async throws -> T {
        let (data, response) = try await session.data(for: request)
        return try decoder.decode(T.self, from: data)
    }
    
    func performUpload(_: URLRequest) async throws {
        
    }
}
