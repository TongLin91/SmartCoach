//
//  CoachInterector.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import Foundation

class CoachInterector {
    weak var presenter: CoachPresenter?
    
    func fetchAchievements() {
        guard let response = NetworkManager.fetchAchievements() else { return }
        
        if response.success {
            presenter?.update(response.achievements)
        } else {
            SCLogger("Achievement request fail with error", for: .error)
        }
    }
}
