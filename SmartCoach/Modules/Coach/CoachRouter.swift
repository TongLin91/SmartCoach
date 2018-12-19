//
//  CoachRouter.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import UIKit

class CoachRouter {
    class func makeCoachViewController() -> UIViewController {
        let coachVC = storyboard.instantiateInitialViewController() as! CoachViewController
        
        let presenter = CoachPresenter(view: coachVC, router: CoachRouter())
        let interactor = CoachInterector(presenter: presenter)
        
        presenter.interector = interactor
        coachVC.presenter = presenter

        return coachVC;
    }
    
    class func makeCoachNavigationController() -> UINavigationController {
        return UINavigationController(rootViewController: makeCoachViewController())
    }
    
    static var storyboard: UIStoryboard{
        return UIStoryboard(name:"CoachViewController",bundle: Bundle.main)
    }
}
