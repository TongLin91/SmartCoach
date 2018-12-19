//
//  AchievementModel.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import Foundation

struct AchievementModel: Codable {
    
    var id: Int
    var level: String
    var progress: Int
    var total: Int
    var backgroundImageURL: String
    var accessible: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case level
        case progress
        case total
        case backgroundImageURL = "bg_image_url"
        case accessible
    }
}
