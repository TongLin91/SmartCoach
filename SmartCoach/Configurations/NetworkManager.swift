//
//  NetworkManager.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import Foundation

public typealias CompletionHandler = (_ data: Data?,_ error: Error?)->()

class NetworkManager {
    class func fetchAchievements() -> AchievementResponse? {
        do {
            if let file = Bundle.main.url(forResource: "achievements", withExtension: "json") {
                let data = try Data(contentsOf: file)
                let response = try JSONDecoder().decode(AchievementResponse.self, from: data)
                return response
            } else {
                SCLogger("Can not find achievements.json file", for: .error)
            }
        } catch {
            SCLogger("Fail to generate achievement request", for: .error)
        }
        return nil
    }
    
    class func downloadImage(_ url: URL, completion: @escaping (CompletionHandler)) {
        let session = URLSession.shared
        let request = URLRequest(url: url,
                                 cachePolicy: .returnCacheDataElseLoad,
                                 timeoutInterval: 10.0)
        session.dataTask(with: request, completionHandler: { data, _, error in
            completion(data, error)
        }).resume()
    }
}
