//
//  PostSession.swift
//  TheMovieManager
//
//  Created by Pinar Unsal on 5/11/21.
//  Copyright © 2021 Udacity. All rights reserved.
//

import Foundation

struct PostSession: Codable {
    let requestToken: String
    
    enum CodingKeys: String, CodingKey {
        case requestToken = "request_token"
    }
}
