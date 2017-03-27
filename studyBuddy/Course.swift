//
//  Course.swift
//  studyBuddy
//
//  Created by Ekko Lin on 3/26/17.
//  Copyright © 2017 CodePath. All rights reserved.
//

import UIKit
import Parse

class Course: NSObject {
    var grade: Double = 0.0
    var studyHours: Double = 0.0
    var courseName: String
    var tasks: NSDictionary
    
    
    // Initialize
    init(course : PFObject) {
        grade = course["grade"] as! Double
        studyHours = course["studyHours"] as! Double
        courseName = course["courseName"] as! String
        tasks = course["tasks"] as! NSDictionary
    }
    
    
}
