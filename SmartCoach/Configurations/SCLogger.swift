//
//  SCLogger.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import os

class SCLogger {
    @discardableResult init(_ message: StaticString, for type: OSLogType) {
        os_log(message, log: .default, type: type)
    }
}
