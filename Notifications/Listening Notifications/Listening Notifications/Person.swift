//
//  Person.swift
//  Listening Notifications
//
//  Created by Domenico Solazzo on 15/05/15.
//  License MIT
//

import UIKit

class Person: NSObject {

    // Properties
    var firstName: String?
    var lastName: String?
    
    //- MARK: Initializer
    override init(){
        super.init()
        
    }
    
    //- MARK: Notification selectors
    // Listening for the notification for setting the object's properties
    func handleSetPersonInfoNotification(notification:NSNotification){
        self.firstName = notification.userInfo![AppDelegate.personInfoKeyFirstName()] as? String
        self.lastName = notification.userInfo![AppDelegate.personInfoKeyLastName()] as? String
    }
    
}
