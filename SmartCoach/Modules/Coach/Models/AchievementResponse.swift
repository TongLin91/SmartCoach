//
//  AchievementResponse.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import Foundation

struct AchievementResponse: Codable {
    var success: Bool
    var status: Int
    var achievements: [AchievementModel] = []
    
    enum CodingKeys: String, CodingKey {
        case success, status, achievements
    }
}
