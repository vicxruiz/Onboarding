//
//  SignInViewController.swift
//  Onboarding
//
//  Created by Victor  on 5/21/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

class SignInViewController: UIViewController {
    //MARK: Properties
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var newUserSignUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    //Updates button ui
    private func updateUI() {
        loginButton.layer.masksToBounds = true
        loginButton.layer.cornerRadius = 10
    }
    
    //MARK: Actions
    
    //Navigaiton logic after button is pressed
    @IBAction func loginButtonPressed(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "hasViewedOnboarding")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeNavigationController") as? HomeNavigationController {
            present(homeViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
