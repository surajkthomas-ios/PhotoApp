//
//  signupError.swift
//  PhotoAPP
//
//  Created by suraj thomas on 19/10/22.
//

import Foundation
enum SignupError: LocalizedError, Equatable {
    
    case invalidResponseModel
    case invalidRequestURLString
    case failedRequest(description: String)
    
    var errorDescription: String? {
        switch self {
        case .failedRequest(let description):
            return description
        case .invalidResponseModel, .invalidRequestURLString:
            return ""
        }
    }
    
}
