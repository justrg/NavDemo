//
//  LandingViewController.swift
//  NavDemo
//
//  Created by Justin on 5/31/16.
//  Copyright © 2016 Justin. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "LANDING"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func LoginButtonTapped(sender: UIButton) {
        print("Login Button Tapped")
        let lvc = LoginViewController(nibName: "LoginViewController", bundle: nil)
        self.navigationController?.pushViewController(lvc, animated: true)
    }

    @IBAction func registerButtonTapped(sender: UIButton) {
        print("Register Button Tapped")
        let rvc = RegistrationViewController(nibName: "RegistrationViewController", bundle: nil)
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
