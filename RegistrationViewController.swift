//
//  RegistrationViewController.swift
//  NavDemo
//
//  Created by Justin on 5/31/16.
//  Copyright © 2016 Justin. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var Failure: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Register"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RegisterButtonTapped(sender: UIButton) {
        let email = emailField.text
        let password = passwordField.text
        let (failure_message, user) = UserController.sharedInstance.registerUser(email!, newPassword: password!)
        
        if (user != nil) {
            print("User registered view registration view")
        }
        if (failure_message != nil){
            Failure.text = failure_message
            print("\(failure_message)")
        }
    }

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
