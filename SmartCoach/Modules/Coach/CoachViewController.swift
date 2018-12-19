//
//  CoachViewController.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import UIKit

class CoachViewController: UIViewController {

    var presenter: CoachPresenter?
    let dataSource = CoachDataSource()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter?.updateView()
    }
    
    func set(_ achievements: [AchievementModel]) {
        dataSource.achievements = achievements
        collectionView.reloadData()
        if achievements.isEmpty {
        }
    }
    
    private func setup() {
        navigationItem.title = "Smart Investing"
        navigationItem.rightBarButtonItem = infoBarButton
        collectionView.dataSource = dataSource
        collectionView.delegate = self
    }
    
    lazy var backBarButton: UIBarButtonItem = {
        let button = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.bookmarks, target: self, action: nil)
        return button
    }()
    
    lazy var infoBarButton: UIBarButtonItem = {
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
        
        return button
    }()
}

extension CoachViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.bounds.size.width * 0.85,
                      height: collectionView.bounds.size.height * 0.29)
    }
    
}
