//
//  SCLogger.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import os

class SCLogger {
    @discardableResult init(_ message: String, for type: OSLogType) {
        let text = message.copy() as! StaticString
        os_log(text, log: .default, type: type)
    }
}
