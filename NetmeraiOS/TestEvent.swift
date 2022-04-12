//
//  TestEvent.swift
//  NetmeraiOS
//
//  Created by Elif Yürektürk on 28.01.2022.
//

import Foundation
//
//  TestEvent.swift
//  Netmera
//
//  Copyright © 2022 Netmera. All rights reserved.
//

import Netmera

let kTestEventKey: String = "vsz"

class TestEvent: NetmeraEvent {

    @objc var testEventName: String = ""
    override class func keyPathPropertySelectorMapping() -> [AnyHashable: Any] {
        return[
            "ea": NSStringFromSelector(#selector(getter: self.testEventName))
        ]
    }

    override var eventKey : String {
        return kTestEventKey
    }
}
