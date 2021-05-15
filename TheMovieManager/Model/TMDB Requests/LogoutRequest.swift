//
//  LogoutRequest.swift
//  TheMovieManager
//
//  Created by Pinar Unsal on 5/11/21.
//  Copyright © 2021 Udacity. All rights reserved.
//

import Foundation

struct LogoutRequest: Codable {
    let sessionId: String
    
    enum CodingKeys: String, CodingKey {
        case sessionId = "session_id"
    }
}

