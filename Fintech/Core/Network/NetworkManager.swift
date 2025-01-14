//
//  NetworkManager.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation
import Alamofire

protocol NetworkManager {
    func request(_ service: BaseService) async throws
    func performRequest<T: Decodable>(_: URLRequest) async throws -> T
    func performUpload(_: URLRequest) async throws
}
