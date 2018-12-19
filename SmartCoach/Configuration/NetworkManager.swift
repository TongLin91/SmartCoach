//
//  NetworkManager.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import Foundation

class NetworkManager {
    class func fetchAchievements() -> AchievementResponse? {
        do {
            let file = Bundle.main.url(forResource: "achievements", withExtension: "json")!
            let data = try Data(contentsOf: file)
            let response = try JSONDecoder().decode(AchievementResponse.self, from: data)
                
            return response
        } catch {
            SCLogger("Fail to generate achievement request", for: .fault)
        }
        return nil
    }
}
