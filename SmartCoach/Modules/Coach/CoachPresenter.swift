//
//  CoachPresenter.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import UIKit

class CoachPresenter {
    weak var view: CoachViewController?
    var interector: CoachInterector!
    var router: CoachRouter
    
    init(view: CoachViewController, router: CoachRouter) {
        self.view = view
        self.router = router
    }
    
    func updateView() {
        interector.fetchAchievements()
    }
    
    func update(_ achievements: [AchievementModel]) {
        view?.set(achievements)
    }
}
