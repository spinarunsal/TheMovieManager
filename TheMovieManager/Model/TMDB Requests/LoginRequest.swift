//
//  LoginRequest.swift
//  TheMovieManager
//
//  Created by Pinar Unsal on 5/11/21.
//  Copyright © 2021 Udacity. All rights reserved.
//

import Foundation

struct LoginRequest: Codable {
    let username: String
    let password: String
    let requestToken: String
    
    enum CodingKeys: String, CodingKey {
        case username
        case password
        case requestToken = "request_token"
    }
}
