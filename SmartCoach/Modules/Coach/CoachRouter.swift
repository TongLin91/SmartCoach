//
//  CoachRouter.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import UIKit

class CoachRouter {
    static private var storyboard: UIStoryboard {
        return UIStoryboard(name:"CoachViewController",bundle: Bundle.main)
    }
    
    class func makeCoachViewController() -> UIViewController {
        let coachVC = storyboard.instantiateInitialViewController() as! CoachViewController
        
        let presenter = CoachPresenter(view: coachVC, router: CoachRouter())
        let interactor = CoachInterector()
        
        interactor.presenter = presenter
        presenter.interector = interactor
        coachVC.presenter = presenter

        return coachVC;
    }
    
    class func makeCoachNavigationController() -> UINavigationController {
        return MainNavigationController(rootViewController: makeCoachViewController())
    }
}
