//
//  RequestTokenResponse.swift
//  TheMovieManager
//
//  Created by Pinar Unsal on 5/11/21.
//  Copyright © 2021 Udacity. All rights reserved.
//

import Foundation

struct RequestTokenResponse: Codable {
    let success: Bool
    let expiresAt: String
    let requestToken: String
    
    enum CodingKeys: String, CodingKey {
        case success
        case expiresAt = "expires_at"
        case requestToken  = "request_token"
    }
}
