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
    }
    
    // MARK: - private
    
    private func setup() {
        navigationItem.title = "Smart Investing"
        navigationItem.leftBarButtonItem = backBarButton
        navigationItem.rightBarButtonItem = infoBarButton
        collectionView.dataSource = dataSource
        collectionView.delegate = self
    }
    
    // MARK: - Lazy var
    
    lazy var backBarButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(named: "icon_backArrow"), style: .plain, target: self, action: nil)
        return button
    }()
    
    lazy var infoBarButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(named: "icon_info"), style: .plain, target: self, action: nil)
        return button
    }()
}

// MARK: - UICollectionViewDelegateFlowLayout
extension CoachViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.bounds.size.width * 0.85,
                      height: collectionView.bounds.size.height * 0.29)
    }
}
