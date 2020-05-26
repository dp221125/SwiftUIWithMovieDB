//
//  APIDetail.swift
//  SwiftUIWithMovieDB
//
//  Created by Seokho on 2020/05/26.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case delete = "DELETE"
}

protocol APIDetail {
    var httpMethod: HTTPMethod { get }
    var host: String { get }
    var path: String { get }
    var parameters: [String: Any] { get }
}
extension APIDetail {
    
    var httpMethod: HTTPMethod {
        return .get
    }
    
    var urlString: String {
        return "https://\(host)/\(path)"
    }
}
