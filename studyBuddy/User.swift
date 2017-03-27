//
//  User.swift
//  studyBuddy
//
//  Created by Ekko Lin on 3/26/17.
//  Copyright © 2017 CodePath. All rights reserved.
//

import UIKit
import Parse

class User: NSObject {
    var username: String            // Store username of the account
    var name: String                // Store user's nickname
    var emailAddress: String        // Store email address
    var courses: NSDictionary!      // Store courses under user account
    var profileImage: URL?          // Store profile's background image
    var totalHours: Int = 0         // Store hours studied
    var questions: NSDictionary!    // Store questions
    
    // Initialize information
    init(user: PFObject) {
        username = user["username"] as! String
        name = user["name"] as! String
        emailAddress = user["emailAddress"] as! String
        courses = user["courses"] as! NSDictionary
        totalHours = user["totalStudiedHours"] as! Int
        questions = user["questions"] as! NSDictionary

        // Profile image
        let profileUrlString = user["profileImage"] as? String
        if let profileUrlString = profileUrlString {
            profileImage = URL(string: profileUrlString)!
        }
    }
    
    // Logout setting
    static let userDidLogOut = NSNotification.Name(rawValue: "UserDidLogout")
    
    
}
