//
//  AchievementCollectionViewCell.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import UIKit

class AchievementCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "AchievementCollectionViewCellIdentifier"
    var achievement: AchievementModel!
    
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var achievementProgressView: UIProgressView!
    @IBOutlet weak var currentProgressLabel: UILabel!
    @IBOutlet weak var totalProgressLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    

    
    override func prepareForReuse() {
        super.prepareForReuse()
        backgroundImageView.image = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.clipsToBounds = false
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 5
    }
    
    func layout(_ achievement: AchievementModel) {
        self.achievement = achievement
        
        
    }
}
