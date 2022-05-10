//
//  ViewController.swift
//  NetmeraiOS
//
//  Created by Elif Yürektürk on 27.01.2022.
//

import UIKit
import Netmera
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Call this method with needed notification types
        
        
        
        let user = MyNetmeraUser()
        user.userId = "elift"
        //standart attribute
        user.email = "elif.yurekturk@netmera.com"
        //custom attribute
        user.testAttribute = "test data"
        Netmera.update(user)
        
        
        // Generate event instance
        // This can be any NetmeraEvent subclass
        //standart event
        let event = NetmeraLoginEvent(userId: "elif")
        // Send event
        Netmera.send(event!)
        
        //custom event
        let customEvent = TestEvent()
        Netmera.send(customEvent)
        
        
        //for geofence & location
        // Request location authorization
        Netmera.requestLocationAuthorization()
        
        // inbox fetch
        let filter = NetmeraInboxFilter()
        // Default value is NetmeraInboxStatusRead | NetmeraInboxStatusUnread
        filter.status = NetmeraInboxStatus.all
        // Default value is NSUIntegerMax
        filter.pageSize = 20
        // Default value is nil
        filter.categories = ["category_1", "category_2"]
        // Default value is NO
        filter.shouldIncludeExpiredObjects = true
        
        
        Netmera.fetchInbox(using: filter, completion: {(_ inbox: NetmeraInbox, _ error: Error?) -> Void in
                    if error != nil {
                        print("Error : \(String(describing: error?.localizedDescription))")
                    }
                    // Store returned inbox object for future operations
               // var localInbox: NetmeraInbox?  //local inbox definition global variable
               //alttaki satırı yorum satırına almayınca hata veriyor !!!
               // localInbox = inbox
                })
    }


}

