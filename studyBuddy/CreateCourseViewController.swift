//
//  CreateCourseViewController.swift
//  studyBuddy
//
//  Created by Ekko Lin on 3/26/17.
//  Copyright © 2017 CodePath. All rights reserved.
//

import UIKit

class CreateCourseViewController: UIViewController {

    @IBOutlet weak var courseNameField: UITextField!
    @IBOutlet weak var startDateField: UITextField!
    @IBOutlet weak var endDateField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onSubmitButton(_ sender: UIButton) {
        // Dismiss when finish editing
        dismiss(animated: true, completion: nil)
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
