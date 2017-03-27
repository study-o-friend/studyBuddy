//
//  CoursesViewController.swift
//  studyBuddy
//
//  Created by Ekko Lin on 3/26/17.
//  Copyright © 2017 CodePath. All rights reserved.
//

import UIKit
import Parse

class CoursesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    var courses: [Course]!
    let refreshControl = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Table view setting
        tableView.delegate = self
        tableView.dataSource = self
        
        // Refresh
//        refreshControl.addTarget(self, action: #selector(refreshControlAction(refreshControl:)), for: UIControlEvents.valueChanged)
        tableView.insertSubview(refreshControl, at: 0)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Table view override methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if courses != nil {
            return courses!.count
        }else {
            return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CourseCell", for: indexPath) as! CourseCell
        // Receive course information
//        cell.course = self.courses[indexPath.row]
        return cell;
    }
    
    
    // Refresh control action
    private func refreshControlAction(refreshControl: UIRefreshControl) {
        // Fetch data
        // Stop refreshing
        refreshControl.endRefreshing()
    }
    
    
    // Receive data from database
    private func fetchCourse() {
        
    }
    
    
    @IBAction func onLogoutBarButton(_ sender: UIBarButtonItem) {
        PFUser.logOutInBackground { (error) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                // Missing NotificationCenter
                self.dismiss(animated: true, completion: nil)
                print("Logout successfully")
            }
        }
    }
    
    
    @IBAction func onStudyButton(_ sender: UIButton) {
        
    }

    
    @IBAction func onEmojiImageView(_ sender: UITapGestureRecognizer) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
