//
//  URLBuilder.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/9/25.
//

import Foundation
import Resolver
import Alamofire

@propertyWrapper 
struct URLBuilder {
    
    @Injected var tokens: SharedTokens
//    @Injected var baseUrlFactory: BaseURLProvider
    
    var path: String
    var method: HTTPMethod = .get
    
    var wrappedValue: Result<URLRequest, Error> {
        // run some validations on the path
//        if let hasError = pathReturnsErrors(path) {
//            return .failure(hasError)
//        }
        
        var modifiedPath = path // look for tokens to replace inside the path
        tokens.getItems().enumerated().forEach { item in 
            let key = item.element.key
            let value = item.element.value
            if path.contains(key) {
                modifiedPath = replace(in: modifiedPath, token: key, with: value)
            }
        }
        
        // build the final url or error
        return createURL(from: modifiedPath)
    }
    
    init(path: String, method: HTTPMethod) {
        self.path = path 
        self.method = method
    }
    
    init(path: String) {
        self.path = path
    }
    
    /** Run some validations on the path passed in */
//    private func pathReturnsErrors(_ path: String) -> Error? {
//        if path.starts(with: "/") {
//            return AppErrors.network(.malformedURL("Path should not start with /: \(path)"))
//        }
//        
//        return nil
//    }
    
    private func replace(in path: String, token: String, with replacement: String) -> String {
        return path.replacingOccurrences(of: token, with: replacement)
    }
    
    private func createURL(from path: String) -> Result<URLRequest, Error> {
        do {
            var url = URL(string: "http://www.google.com")
            url?.appendPathComponent(path)
            return .success(try URLRequest(url: url!, method: method))
        } catch {
            return .failure(error)
        }
    }
}
