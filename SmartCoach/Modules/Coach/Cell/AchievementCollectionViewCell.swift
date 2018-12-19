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
    
    @IBOutlet weak var levelContainerView: UIView!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var achievementProgressView: SCProgressView!
    @IBOutlet weak var currentProgressLabel: UILabel!
    @IBOutlet weak var totalProgressLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        backgroundImageView.image = nil
        removeBlockView()
    }
    
    override func layoutSubviews() {

        super.layoutSubviews()
        achievementProgressView.trackTintColor = .scWhiteColor()
        achievementProgressView.progressTintColor = .scGreenColor()
        applyRoundedCorner()
        levelContainerView.applyRoundedCorner(to: levelContainerView.bounds.size.height/2)
    }
    
    func layout(_ achievement: AchievementModel) {
        self.achievement = achievement
        
        levelLabel.text = achievement.level
        currentProgressLabel.text = "\(achievement.progress) pts"
        totalProgressLabel.text = "\(achievement.total) pts"
        achievementProgressView.setProgress(Float(achievement.progress)/Float(achievement.total), animated: true)
        
        if let imageURL = URL(string: achievement.backgroundImageURL) {
            NetworkManager.downloadImage(imageURL) { (data, error) in
                if let _ = error {
                    SCLogger("Image request fail with error", for: .error)
                } else if let data = data {
                    DispatchQueue.main.async {
                        self.backgroundImageView.image = UIImage(data: data)
                    }
                }
            }
        }
        
        if !achievement.accessible {
            showBlockView()
        }
    }
    
    private func showBlockView() {
        accessBlokerView.frame = self.bounds
        self.addSubview(accessBlokerView)
    }
    
    private func removeBlockView() {
        accessBlokerView.removeFromSuperview()
    }
    
    lazy var accessBlokerView: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .scLightGrayColor()
        view.alpha = 0.6
        return view
    }()
}
