//
//  SessionResponse.swift
//  TheMovieManager
//
//  Created by Pinar Unsal on 5/11/21.
//  Copyright © 2021 Udacity. All rights reserved.
//

import Foundation

struct SessionResponse: Codable {
    let success: Bool
    let sessionId: String
    
    enum CodingKeys: String, CodingKey {
        case success
        case sessionId = "session_id"
    }
}
