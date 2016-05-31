//
//  LoggedInViewController.swift
//  NavDemo
//
//  Created by Justin on 5/31/16.
//  Copyright © 2016 Justin. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {
    
    @IBAction func logOutPressed(sender: UIButton) {
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.navigateToLandingNavigationController()
    }
    
    override func viewDidLoad() {
        var user = UserController.sharedInstance.logged_in_user
        print(user)
        greetingLabel.text = "Welcome, \(user!.email)"
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var greetingLabel: UILabel!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
