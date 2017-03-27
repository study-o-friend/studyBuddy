//
//  CourseCell.swift
//  studyBuddy
//
//  Created by Ekko Lin on 3/26/17.
//  Copyright © 2017 CodePath. All rights reserved.
//

import UIKit

class CourseCell: UITableViewCell {

    @IBOutlet weak var courseNameLabel: UILabel!
    @IBOutlet weak var studyHourLabel: UILabel!
    @IBOutlet weak var statusEmojiView: UIImageView!
    
    /*
    var course: Course {
        didSet {
            courseNameLabel.text! = course.courseName
            studyHourLabel.text! = String(course.studyHours)
            
            // Set status emoji
            if course.grade > 5.0 && course.grade <= 10.0 {
                statusEmojiView = UIImageView(image: UIImage(named: "slightly-smiling-face"))
            } else if course.grade < 5.0 && course.grade >= 0.0 {
                statusEmojiView = UIImageView(image: UIImage(named: "disappointed-face"))
            } else {
                print("Invalid grade")
            }
        }
    }*/

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
