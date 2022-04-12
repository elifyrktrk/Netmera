//
//  MyNetmeraUser.swift
//  NetmeraiOS
//
//  Created by Elif Yürektürk on 28.01.2022.
//

import Foundation
import Netmera

class MyNetmeraUser: NetmeraUser {

    @objc var testAttribute: String = ""

    override class func keyPathPropertySelectorMapping() -> [AnyHashable: Any] {
        return[
            "fy" : NSStringFromSelector(#selector(getter: self.testAttribute)),
        ]
    }
}
