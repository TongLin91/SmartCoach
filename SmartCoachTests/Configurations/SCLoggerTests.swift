//
//  SCLoggerTests.swift
//  SmartCoachTests
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import XCTest
@testable import SmartCoach

class SCLoggerTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testLoggerInit() {
        SCLogger("Testing debug log", for: .debug)
        SCLogger("Testing debug log", for: .error)
        SCLogger("Testing debug log", for: .fault)
    }
}
