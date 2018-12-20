//
//  MockAchievementResponse.swift
//  SmartCoachTests
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import Foundation
@testable import SmartCoach

class MockAchievementResponse {
    let validResponse: AchievementResponse
    let invalidResponse: AchievementResponse
    
    init() {
        let mockData = AchievementModel(id: 4,
                                        level: "1",
                                        progress: 10,
                                        total: 50,
                                        backgroundImageURL: "https://cdn.zeplin.io/5a5f7e1b4f9f24b874e0f19f/screens/C850B103-B8C5-4518-8631-168BB42FFBBD.png",
                                        accessible: true)
        
        validResponse = AchievementResponse(success: true, status: 200, achievements: [mockData])
        invalidResponse = AchievementResponse(success: false, status: 900, achievements: [])
    }
}
