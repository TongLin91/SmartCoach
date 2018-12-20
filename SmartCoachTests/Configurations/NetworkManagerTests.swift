//
//  NetworkManagerTests.swift
//  SmartCoachTests
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import XCTest
@testable import SmartCoach

class NetworkManagerTests: XCTestCase {
    
    let validImageURL = URL(string: "https://cdn.zeplin.io/5a5f7e1b4f9f24b874e0f19f/screens/341E40C8-1C2A-400C-B67D-F490B74BDD81.png")!
    let invalidImageURL = URL(string: "https://cdn.zeplin.io/5a5f7e1b4f9f24b874e0f19f/screens/noImage.png")!
    
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testFetchAchievements() {
        let response = NetworkManager.fetchAchievements()
        
        XCTAssertNotNil(response)
    }

    func testDownloadImageSuccess() {
        let expect = expectation(description: "Download Image Data Success")
        NetworkManager.downloadImage(validImageURL) { (data, error) in
            XCTAssertNil(error)
            let image = UIImage(data: data!)
            XCTAssertNotNil(image)
            expect.fulfill()
        }
        
        waitForExpectations(timeout: 10, handler: nil)
    }
    
    func testDownloadImageFailure() {
        let expect = expectation(description: "Download Image Data Fail")
        NetworkManager.downloadImage(invalidImageURL) { (data, error) in
            XCTAssertNil(error)
            let image = UIImage(data: data!)
            XCTAssertNil(image)
            expect.fulfill()
        }
        
        waitForExpectations(timeout: 10, handler: nil)
    }
}
