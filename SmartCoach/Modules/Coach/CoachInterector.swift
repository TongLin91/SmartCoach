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
    
    init(presenter: CoachPresenter) {
        self.presenter = presenter
    }
    
    func fetchAchievements() {

    }
}
