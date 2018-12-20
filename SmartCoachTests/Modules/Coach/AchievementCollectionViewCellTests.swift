//
//  AchievementCollectionViewCellTests.swift
//  SmartCoachTests
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import XCTest
@testable import SmartCoach

class AchievementCollectionViewCellTests: XCTestCase {
    
    var collectionView: UICollectionView?
    
    var cell: AchievementCollectionViewCell? {
        let cell = collectionView?.dequeueReusableCell(withReuseIdentifier: AchievementCollectionViewCell.identifier, for: IndexPath(row: 0, section: 0)) as? AchievementCollectionViewCell
        cell?.reloadInputViews()
        return cell
    }
    
    override func setUp() {
        super.setUp()
        let coachViewController = CoachRouter.makeCoachViewController() as? CoachViewController
        coachViewController?.loadView()
        collectionView = coachViewController?.collectionView
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func testPrecheck() {
        let cell = self.cell
        cell?.prepareForReuse()
        XCTAssertNotNil(cell)
        XCTAssertNil(cell?.backgroundImageView.image)
    }

    func testCellLayout() {
        let cell = self.cell
        let achievement = MockAchievementResponse().validResponse.achievements[0]
        cell?.layoutSubviews()
        cell?.layout(achievement)

        XCTAssertEqual(cell?.levelLabel.text, achievement.level)
        XCTAssertEqual(cell?.currentProgressLabel.text, "\(achievement.progress) pts")
        XCTAssertEqual(cell?.totalProgressLabel.text, "\(achievement.total) pts")
        XCTAssertEqual(cell?.achievementProgressView.progress, Float(achievement.progress)/Float(achievement.total))
    }
}
